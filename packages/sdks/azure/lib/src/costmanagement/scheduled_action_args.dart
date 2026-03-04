// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costmanagement_scheduled_action_scheduled_action_args_doc}
/// The set of arguments for ScheduledAction.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_scheduled_action_scheduled_action_args_doc}
class ScheduledActionArgs {
  /// UTC day on which cost analysis data will be emailed. Must be between `1` and `31`. This property is applicable when `frequency` is `Monthly`.
  final pulumi.Input<int>? dayOfMonth;

  /// Specifies a list of day names on which cost analysis data will be emailed. This property is applicable when frequency is `Weekly` or `Monthly`. Possible values are `Friday`, `Monday`, `Saturday`, `Sunday`, `Thursday`, `Tuesday` and `Wednesday`.
  final pulumi.Input<List<String>>? daysOfWeeks;

  /// User visible input name of the Cost Management Scheduled Action.
  final pulumi.Input<String> displayName;

  /// Email address of the point of contact that should get the unsubscribe requests of Scheduled Action notification emails.
  final pulumi.Input<String> emailAddressSender;

  /// Specifies a list of email addresses that will receive the Scheduled Action.
  final pulumi.Input<List<String>> emailAddresses;

  /// Subject of the email. Length is limited to 70 characters.
  final pulumi.Input<String> emailSubject;

  /// The end date and time of the Scheduled Action (UTC).
  final pulumi.Input<String> endDate;

  /// Frequency of the schedule. Possible values are `Daily`, `Monthly` and `Weekly`. Value `Monthly` requires either `weeks_of_month` and `days_of_week` or `day_of_month` to be specified. Value `Weekly` requires `days_of_week` to be specified.
  final pulumi.Input<String> frequency;

  /// UTC time at which cost analysis data will be emailed. Must be between `0` and `23`.
  final pulumi.Input<int>? hourOfDay;

  /// Message to be added in the email. Length is limited to 250 characters.
  final pulumi.Input<String>? message;

  /// The name which should be used for this Azure Cost Management Scheduled Action. Changing this forces a new Azure Cost Management Scheduled Action to be created.
  final pulumi.Input<String>? name;

  /// The start date and time of the Scheduled Action (UTC).
  final pulumi.Input<String> startDate;

  /// The ID of the Cost Management View that is used by the Scheduled Action. Changing this forces a new resource to be created.
  final pulumi.Input<String> viewId;

  /// Specifies a list of weeks in which cost analysis data will be emailed. This property is applicable when `frequency` is `Monthly` and used in combination with `days_of_week`. Possible values are `First`, `Fourth`, `Last`, `Second` and `Third`.
  final pulumi.Input<List<String>>? weeksOfMonths;

  /// Creates a new [ScheduledActionArgs].
  /// [dayOfMonth] UTC day on which cost analysis data will be emailed. Must be between `1` and `31`. This property is applicable when `frequency` is `Monthly`.
  /// [daysOfWeeks] Specifies a list of day names on which cost analysis data will be emailed. This property is applicable when frequency is `Weekly` or `Monthly`. Possible values are `Friday`, `Monday`, `Saturday`, `Sunday`, `Thursday`, `Tuesday` and `Wednesday`.
  /// [displayName] User visible input name of the Cost Management Scheduled Action.
  /// [emailAddressSender] Email address of the point of contact that should get the unsubscribe requests of Scheduled Action notification emails.
  /// [emailAddresses] Specifies a list of email addresses that will receive the Scheduled Action.
  /// [emailSubject] Subject of the email. Length is limited to 70 characters.
  /// [endDate] The end date and time of the Scheduled Action (UTC).
  /// [frequency] Frequency of the schedule. Possible values are `Daily`, `Monthly` and `Weekly`. Value `Monthly` requires either `weeks_of_month` and `days_of_week` or `day_of_month` to be specified. Value `Weekly` requires `days_of_week` to be specified.
  /// [hourOfDay] UTC time at which cost analysis data will be emailed. Must be between `0` and `23`.
  /// [message] Message to be added in the email. Length is limited to 250 characters.
  /// [name] The name which should be used for this Azure Cost Management Scheduled Action. Changing this forces a new Azure Cost Management Scheduled Action to be created.
  /// [startDate] The start date and time of the Scheduled Action (UTC).
  /// [viewId] The ID of the Cost Management View that is used by the Scheduled Action. Changing this forces a new resource to be created.
  /// [weeksOfMonths] Specifies a list of weeks in which cost analysis data will be emailed. This property is applicable when `frequency` is `Monthly` and used in combination with `days_of_week`. Possible values are `First`, `Fourth`, `Last`, `Second` and `Third`.
  ScheduledActionArgs({
    this.dayOfMonth,
    this.daysOfWeeks,
    required this.displayName,
    required this.emailAddressSender,
    required this.emailAddresses,
    required this.emailSubject,
    required this.endDate,
    required this.frequency,
    this.hourOfDay,
    this.message,
    this.name,
    required this.startDate,
    required this.viewId,
    this.weeksOfMonths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfMonth': ?dayOfMonth,
      'daysOfWeeks': ?daysOfWeeks,
      'displayName': displayName,
      'emailAddressSender': emailAddressSender,
      'emailAddresses': emailAddresses,
      'emailSubject': emailSubject,
      'endDate': endDate,
      'frequency': frequency,
      'hourOfDay': ?hourOfDay,
      'message': ?message,
      'name': ?name,
      'startDate': startDate,
      'viewId': viewId,
      'weeksOfMonths': ?weeksOfMonths,
    };
  }

  factory ScheduledActionArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledActionArgs(
      dayOfMonth: (() {
        final guardedValue = map['dayOfMonth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      daysOfWeeks: (() {
        final guardedValue = map['daysOfWeeks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      emailAddressSender: pulumi.Input.fromValue(
        map['emailAddressSender'] as String,
      ),
      emailAddresses: pulumi.Input.fromValue(
        (map['emailAddresses'] as List).cast<String>(),
      ),
      emailSubject: pulumi.Input.fromValue(map['emailSubject'] as String),
      endDate: pulumi.Input.fromValue(map['endDate'] as String),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      hourOfDay: (() {
        final guardedValue = map['hourOfDay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startDate: pulumi.Input.fromValue(map['startDate'] as String),
      viewId: pulumi.Input.fromValue(map['viewId'] as String),
      weeksOfMonths: (() {
        final guardedValue = map['weeksOfMonths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
