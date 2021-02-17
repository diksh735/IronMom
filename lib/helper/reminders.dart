import 'package:iron_mom/model/reminder_model.dart';
import 'package:intl/intl.dart';

List<ReminderModel> getReminders() {
  List<ReminderModel> reminder = new List<ReminderModel>();
  ReminderModel reminderModel = new ReminderModel();

  reminderModel = new ReminderModel();
  reminderModel.month = DateFormat.MMM().format(DateTime.now());
  reminderModel.date = DateFormat.d().format(DateTime.now());
  reminderModel.message =
      'Ask your health care provider for hemoglobin and Ferritin levels';
  reminder.add(reminderModel);

  reminderModel = new ReminderModel();
  reminderModel.month = DateFormat.MMM().format(DateTime.now());
  reminderModel.date = DateFormat.d().format(DateTime.now());
  reminderModel.message = 'Next monthly checkup';
  reminder.add(reminderModel);

  reminderModel = new ReminderModel();
  reminderModel.month = DateFormat.MMM().format(DateTime.now());
  reminderModel.date = DateFormat.d().format(DateTime.now());
  reminderModel.message = 'Monthly iron supplement at morning';
  reminder.add(reminderModel);

  reminderModel = new ReminderModel();
  reminderModel.month = DateFormat.MMM().format(DateTime.now());
  reminderModel.date = DateFormat.d().format(DateTime.now());
  reminderModel.message = 'Monthly iron supplement at morning';
  reminder.add(reminderModel);

  return reminder;
}
