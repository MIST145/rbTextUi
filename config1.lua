
-- Documentação:
    -- Função para exibir o UI de texto.
        -- @param text (string) O texto a ser exibido no UI.
        -- @param key (string) [Opcional] A tecla que o jogador deve pressionar para interagir.
        -- @param id (string) [Opcional] Um ID único (para criar múltiplos UIs).

        Exemplos: 
            TriggerEvent("rbTextUi:show", text)
            exports["rbTextUi"]:show(text)

            TriggerEvent("rbTextUi:show", text, key)
            exports["rbTextUi"]:show(text, key)

            TriggerEvent("rbTextUi:show", text, nil, id)
            exports["rbTextUi"]:show(text, nil, id)

            TriggerEvent("rbTextUi:show", text, key, id)
            exports["rbTextUi"]:show(text, key, id)

        Nota: Se 'key' ou 'id' não forem fornecidos, o comportamento padrão é aplicado.

    -- Função para ocultar um elemento UI com base no ID fornecido.
        -- @param id (string) [Opcional] O ID do elemento UI a ser fechado.

        Exemplos:
            TriggerEvent("rbTextUi:hide")
            exports["rbTextUi"]:hide()

            TriggerEvent("rbTextUi:hide", id)
            exports["rbTextUi"]:hide(id)

Configurações de Config = {
    -- Valores de 'compatibilidade':
        nil: Se escolher 'nil', certifique-se de que outros recursos de textUi sejam removidos ou desativados do seu servidor.
        "luke_textui": Integra os eventos de recurso de textUi de Luke.
        "cd_drawtextui": Integra os eventos de recurso DrawTextUI de CD.

    -- Para usar 'key' e 'ids' para criar múltiplos UIs, utilize nossos exports/eventos.

    -- Configuração de 'multipleUis':
        Se definido como 'true', múltiplos UIs podem ser criados sem definir explicitamente seus IDs.
        No entanto, apenas um UI por recurso é suportado. Se um segundo UI for criado, ele substitui o existente.

    -- Configuração de 'sound':
        Quando definido como 'true', um som de popup é reproduzido. O arquivo de som está localizado em rbTextUi/HTML/audio/open.mp3.

    -- Valores de 'side':
        Especifique o posicionamento do elemento UI: "top", "bottom", "right" ou "left".

    -- Configurações de tema:
    tema = {
        background = "#1b1b1bcc", -- Cor de fundo do elemento UI.
        key_background = "#FF8A00", -- Cor de fundo da tecla de interação.
        text = "#FFF", -- Cor do texto dentro do UI.
    },
}
