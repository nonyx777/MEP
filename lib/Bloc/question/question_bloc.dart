import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'question_event.dart';
part 'question_state.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  QuestionBloc() : super(QuestionInitialState()) {
    on<GetQuestions>((event, emit) {
      emit(QuestionLoadingState());
      for (int i = 0; i < 10; i++) {
        print('getting ready');
      }
      emit(QuestionSuccessState());
    });
  }
}
