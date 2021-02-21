import 'package:iron_mom/model/question_model.dart';

List<QuestionModel> generateItems(int numberOfItems) {
  return List.generate(
    numberOfItems,
    (int index) {
      return QuestionModel(
        headerValue: 'Panel $index',
        expandedValue: 'This is item number $index',
      );
    },
  );
}
