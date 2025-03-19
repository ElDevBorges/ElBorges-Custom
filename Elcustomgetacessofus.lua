-- Flag para verificar se a chave foi validada
keyValidated = false

local function script()
   


local urls = {
    "http://38.46.142.218:8080/Elcustom/1_ FiltroBattleenc.lua",
    "http://38.46.142.218:8080/Elcustom/2_Painelenc.lua",
    "http://38.46.142.218:8080/Elcustom/time_spell_enemy.lua",
    "http://38.46.142.218:8080/Elcustom/PVPenc.lua",
    "http://38.46.142.218:8080/Elcustom/atackTargetenc.lua",
    "http://38.46.142.218:8080/Elcustom/Jumpenc.lua",
    "http://38.46.142.218:8080/Elcustom/Utilidadesenc.lua",
    "http://38.46.142.218:8080/Elcustom/senseenc.lua",
    "http://38.46.142.218:8080/Elcustom/Escadas.lua"
}

local currentIndex = 1

local function loadNextScript()
    if currentIndex > #urls then
        print("Todos os scripts foram carregados com sucesso.")
        return
    end

    local url = urls[currentIndex]
    print("Carregando script " .. currentIndex .. ": " .. url)

    -- Realiza a requisição HTTP para o script
    modules.corelib.HTTP.get(url, function(script)
        if not script or script == "" then
            print("Erro: resposta vazia para o script " .. currentIndex)
            return
        end

        -- Carrega e executa o script
        local func, err = loadstring(script)
        if not func then
            print("Erro ao carregar o script " .. currentIndex .. ": " .. err)
            return
        end

        local success, execErr = pcall(func)
        if not success then
            print("Erro ao executar o script " .. currentIndex .. ": " .. execErr)
            return
        end

        print("Script " .. currentIndex .. " carregado e executado com sucesso.")

        -- Avança para o próximo script
        currentIndex = currentIndex + 1
        loadNextScript()  -- Chama a função novamente para carregar o próximo
    end)
end

-- Começa a execução do carregamento dos scripts
loadNextScript()


end

-- Flag para verificar se a chave foi validada
keyValidated = false
local userKeyInput = "cfb802f"  -- Exemplo de chave fornecida

-- Função para validar a chave remotamente
local function validate_key_remotely(userKeyInput, callback)
    local HTTP = modules.corelib.HTTP
    local server_url = "http://38.46.142.218:5001/use-key?key=" .. userKeyInput

    -- Faz a requisição GET para validação da chave
    HTTP.get(server_url, function(response)
        if response then
            local responseData = json.parse(response)
            -- Se o "success" da resposta for false, chama o callback com "false"
            if responseData.success == false then
                callback(false, responseData.message)  -- Resposta do servidor com erro
            else
                callback(true, "Chave válida.")  -- Chave válida
            end
        else
            warn("Erro na requisição ao servidor. Verifique a conexão.")
            callback(false, "Erro de conexão.")  -- Caso a requisição não tenha retornado resposta
        end
    end)
end

-- Função para exibir a janela de validação da chave
local function showKeyValidationWindow()
    if keyValidated then
        return  -- Se a chave já foi validada, não exibe a janela
    end

    keyPanelInterface:show()

    -- Evento ao clicar no botão
    keyPanelInterface.confirmButton.onClick = function(widget)
        userKeyInput = keyPanelInterface.inputField:getText()

        if userKeyInput and userKeyInput ~= "" then
            warn("Validando chave...")
            -- Valida a chave remotamente
            validate_key_remotely(userKeyInput, function(isValid, message)
                if isValid then
                    keyValidated = true  -- Marca que a chave foi validada
                    warn(message)  -- Mensagem do servidor
                    script()  -- Executa o script após validação
                    keyPanelInterface:hide()  -- Fecha a janela de validação
                else
                    warn(message)  -- Exibe a mensagem de erro
                end
            end)
        else
            warn("Insira uma chave válida.")
        end
    end
end



