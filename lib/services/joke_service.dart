import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../constants/constants.dart';
import '../model/jokes_model.dart';

class JokeService {
  Future<JokeModel> getJokeData() async {
    dynamic jokedata;

    try {
      var headers = {
        'x-rapidapi-host': Constants.apiHost,
        'x-rapidapi-key': Constants.apiKey
      };

      var response = await http.Client().get(
          Uri.parse(
              "https://jokeapi-v2.p.rapidapi.com/joke/Programming?type=twopart"),
          headers: headers);

      var jsonResponse = json.decode(response.body);

      jokedata = JokeModel.fromJson(jsonResponse);
    } catch (error) {
      log(error.toString());
    }

    return jokedata;
  }
}