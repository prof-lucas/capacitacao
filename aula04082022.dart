import "dart:convert";

void main() {
  Map<String, dynamic> dados = {};
 /* dados = {
    "nome": "Lucas",
    "idade": 39,
    "linguagensQuePrograma": ["c", "dart", 12, false],
    "jogos": {
      "ps5": {
        "fifa22": {"ano": 2022, "genero": "esportes", "eDificil": false},
        "goW": {"ano": 2019, "genero": "ação", "eDificil": true},
        "2k22": {"ano": 2022, "genero": "esportes", "eDificil": true}
      },
      "nintendo": {
        "mario": {"ano": 1985, "genero": "plataforma", "eDificil": true},
        "goal": {"ano": 1986, "genero": "esportes", "eDificil": true},
        "doubleDragon": {"ano": 1987, "genero": "plataforma", "eDificil": false}
      }
    },
    "comidasQueGosto": [
      {
        "nome": "hamburguer",
        "origem": "Alemanha",
        "preco": 20,
        "comeuEssaSemana": true
      },
      {
        "nome": "pizza",
        "origem": "Itália",
        "preco": 50,
        "comeuEssaSemana": false
      },
      {
        "nome": "sashimi",
        "origem": "Japão",
        "preco": 40,
        "comeuEssaSemana": false
      }
    ]
  };*/
  String dadosReq = """
  {
    "nome": "Lucas",
    "idade": 39,
    "linguagensQuePrograma": ["c", "dart", 12, false],
    "jogos": {
      "ps5": {
        "fifa22": {"ano": 2022, "genero": "esportes", "eDificil": false},
        "goW": {"ano": 2019, "genero": "ação", "eDificil": true},
        "2k22": {"ano": 2022, "genero": "esportes", "eDificil": true}
      },
      "nintendo": {
        "mario": {"ano": 1985, "genero": "plataforma", "eDificil": true},
        "goal": {"ano": 1986, "genero": "esportes", "eDificil": true},
        "doubleDragon": {"ano": 1987, "genero": "plataforma", "eDificil": false}
      }
    },
    "comidasQueGosto": [
      {
        "nome": "hamburguer",
        "origem": "Alemanha",
        "preco": 20,
        "comeuEssaSemana": true
      },
      {
        "nome": "pizza",
        "origem": "Itália",
        "preco": 50,
        "comeuEssaSemana": false
      },
      {
        "nome": "sashimi",
        "origem": "Japão",
        "preco": 40,
        "comeuEssaSemana": false
      }
    ]
  }
  """;
dados =  json.decode(dadosReq);
// print(dados.keys);
  /*for(dynamic linguagem in dados['linguagensQuePrograma']){
    print(linguagem.runtimeType);
    print(linguagem);
  }*/

  //  print(dados["comidasQueGosto"][0]["nome"]);
/*  for(Map<String,dynamic> comida in dados["comidasQueGosto"]){
    comida["comeuEssaSemana"]
      ? print("Eu já comi ${comida["nome"]} essa semana")
      :print("Eu quero ${comida["nome"]} essa semana");
  }*/

//  print(dados["jogos"]["ps5"].keys);
 for(String k in dados["jogos"]["ps5"].keys){
   print("O jogo $k foi lançado em ${dados["jogos"]["ps5"][k]["ano"]} e seu gênero é ${dados["jogos"]["ps5"][k]["genero"]}");
 } 
}
