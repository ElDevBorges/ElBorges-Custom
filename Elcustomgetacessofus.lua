

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
