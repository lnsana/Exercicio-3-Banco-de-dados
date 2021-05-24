use seu_banco;

INSERT INTO cidade_estado (cidade, estado)
VALUES 
    ("São Paulo", "SP"),
    ("Rio de Janeiro", "RJ"),
    ("Mauá", "SP"),
    ("Espirito Santo", "ES"),
    ("João Pessoa", "PB" );

INSERT INTO clientes (email, nome, whatsapp, senha)
VALUES 
    ("Pedro.gomes123@gmail.com", "Pedro Gomes da Silva", "11987345120", "pedro123"),
    ("Julia.soares@gmail.com", "Julia Soares", "11983128520", "123julinha"),
    ("Larissa.ferraz21@gmail.com", "Larissa Ferraz", "11926482639", "ferraz000"),
    ("Paulo.brito@gmail.com", "Paulo Jose Brito", "11977483509", "britinho2122"),
    ("Ricardo.alves123@gmail.com", "Ricardo Alves", "11989945120", "ricardinho03");

INSERT INTO departamentos (nome)
VALUES 
    ("Ferramentas"),
    ("Eletronicos"),
    ("Acessorios"),
    ("Moveis"),
    ("Games");

INSERT INTO enderecos (tipo, tipo_logradouro, logradouro, numero, bairro, complemento, cep, cidade_estado_id, cliente_id)
VALUES 
    ("Residencial", "Rua", "Monte Alegre", "143", "Amoreira","12", "13233-102", "5", "1"),
    ("Residencial", "Avenida", "Joaquim Peres", "1093", "Gonzalves", "1", "14031-329", "6", "2"),
    ("Residencial", "Rua", "Porto Novo", "93", "Vila Maria", "9", "11666-500", "7", "3"),
    ("Comercial", "Avenida", "Maestro Heitor de Carvalho", "988", "Massaguaçu", "4", "11677-040", "8", "4"),
    ("Residencial", "Rua", "Paulo Campana", "18", "Massaguaçu", "2", "17207-690", "9", "5");

INSERT INTO produtos (codigo, descricao, preco, disponivel, destaque, departamento_id)
VALUES
    ("15883", "CADEADO SEGURANCA PARA NOTEBOOK HLD F\u0026K LLAVE", "65", "1", "0", "1"),
    ("11719", "ALICATE PARA CRIMPAR TL-315 3 EM 1", "15", "1", "1", "1"),
    ("27695", "CAMERA DE SEGURANCA XIAOMI MI HOME MJSXJ09CM 2K WIFI PANORAMICO 360 BRANCO", "36", "1", "1", "2"),
    ("12263", "CAMERA WEBCAM LOGITECH C270 HD 960-000694", "41", "1", "1", "2"),
    ("19141", "CAMERA WEBCAM RAZER  RZ19-02320100-R3U1 KIYO 720P", "91", "0", "0", "2"),
    ("16845", "BASTAO SELFIE BLUETOOTH HAVIT HV-BTM33 PRETO", "8", "1", "1", "3"),
    ("8971", "BATERIA GOLINE ALKALINE 9V 500MAH", "1", "1", "1", "3"),
    ("2762", "BOLSA P/NOTEBOOK 15 TARGUS TST598BT-70 FEMENINO PRETO", "48", "1", "0", "3"),
    ("27065", "CADEIRA GAMER HAVIT 922 GAMENOTE VERMELHO", "185", "1", "0", "4"),
    ("20437", "CADEIRA GAMER MTEK MK01 PRETO/AZUL", "175", "0", "0", "4"),
    ("23734", "CONSOLE NINTENDO SWITCH LITE DH-S-YAZAA AMARELO", "205", "0", "0", "5"),
    ("26335", "CONSOLE SONY PS4 SLIM 1TB CUH-2215B PRETO BIVOLT", "382", "1", "1", "5");

INSERT INTO pedidos_status (status)
VALUES 
     ("Novo Pedido"),
     ("Cancelado"),
     ("Aguardando Pagamento"),
     ("Pagamento Autorizado"),
     ("Pagamento Negado"),
     ("Em Separação"),
     ("Em Transporte"),
     ("Entregue");

INSERT INTO pedidos (codigo, data, pedido_status_id, cliente_id)
VALUES 
     ("15883", now(), "1", "1"),
     ("11719", now(), "2", "2"),
     ("27695", now(), "3", "3"), 
     ("26335", now(), "4", "4"),
     ("16845", now(), "5", "5");

INSERT INTO estoque (produto_id, quantidade)
VALUES
     ("1", "21"),
     ("2", "200"),
     ("3", "10"),
     ("4", "43"),
     ("5", "0"),
     ("6", "8"),
     ("7", "45"),
     ("8", "87"),
     ("9", "291"),
     ("10", "0"),
     ("11", "0"),
     ("12", "17");

INSERT INTO produtos_pedido (quantidade, preco_total, produto_id, pedido_id)
VALUES
    ("3", "130", "1", "1"),
    ("2", "30", "2", "1"),
    ("1", "36", "3", "2"),
    ("2", "82", "4", "3"),
    ("2", "16", "6", "4"),
    ("4", "4", "6", "5");
