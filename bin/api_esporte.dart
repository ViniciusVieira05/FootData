import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

class Time {

  final String strTeam;
  final String strCountry;
  final String strLeague;
  final String? strLeague2;
  final String? strLeague3;
  final String? strLeague4;
  final String strLocation;
  final String strStadium;

  Time({
    required this.strTeam,
    required this.strCountry,
    required this.strLeague,
    required this.strLeague2,
    required this.strLeague3,
    required this.strLeague4,
    required this.strLocation,
    required this.strStadium,
    
  });


  factory Time.fromJson(Map<String, dynamic> json) {
  return Time(
    strTeam: json['strTeam'],
    strCountry: json['strCountry'],
    strLeague: json['strLeague'],
    strLeague2: json['strLeague2'],
    strLeague3: json['strLeague3'],
    strLeague4: json['strLeague4'],
    strLocation: json['strLocation'],
    strStadium: json['strStadium'],
  );
}
}


void main() async {

  print('Digite o nome do time:');
  final nomeTime = stdin.readLineSync();


  final url = Uri.parse(
    'https://www.thesportsdb.com/api/v1/json/123/searchteams.php?t=$nomeTime',
  );

  try {
    final response = await http.get(url);

    final data = jsonDecode(response.body);

    print("\nAPI execultada com sucesso: ${ response.statusCode}\n");

    final time = Time.fromJson(data['teams'][0]);

    print('Nome: ${time.strTeam}');
    print('País: ${time.strCountry}');

    print('\nPrincipais Campeonatos: ');
    print('Liga: ${time.strLeague}');

    if (time.strLeague2 != null) {
      print('Liga: ${time.strLeague2}');
    } else {
      print("\nCampeonato indisponível!!");
    }

    if (time.strLeague3 != null) {
      print('Liga: ${time.strLeague3}');
    } else {
      print("\nCampeonato indisponível!!");
    }

    if (time.strLeague4 != null) {
      print('Liga: ${time.strLeague4}');
    } else {
      print("\nCampeonato indisponível!!");
    }

    print('\nLocalização: ${time.strLocation}');
    print('\nEstádio: ${time.strStadium}');
  } 
  catch (e) {
    print('Ocorreu um erro: $e');
  }


  
}