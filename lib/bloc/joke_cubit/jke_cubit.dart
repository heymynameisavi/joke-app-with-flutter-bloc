import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/jokes_model.dart';
import '../../services/joke_service.dart';
import 'joke_states.dart';

class JokeCubit extends Cubit<JokeState> {
  JokeCubit() : super(JokeState(jokeModel: JokeModel(), showAnswer: false));

  JokeService jokeService = JokeService();

  Future<void> jokeData() async {
    var jokeModel = await jokeService.getJokeData();
    emit(state.copyWith(jokeModel: jokeModel, showAnswer: false));
  }

  showAnswer() {
    emit(state.copyWith(showAnswer: true));
  }
}