// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ScheduledAction resources.
class ScheduledActionState {
  /// UTC day on which cost analysis data will be emailed. Must be between `1` and `31`. This property is applicable when `frequency` is `Monthly`.
  final pulumi.Input<int>? dayOfMonth;
  /// Specifies a list of day names on which cost analysis data will be emailed. This property is applicable when frequency is `Weekly` or `Monthly`. Possible values are `Friday`, `Monday`, `Saturday`, `Sunday`, `Thursday`, `Tuesday` and `Wednesday`.
  final pulumi.Input<List<String>>? daysOfWeeks;
  /// User visible input name of the Cost Management Scheduled Action.
  final pulumi.Input<String>? displayName;
  /// Email address of the point of contact that should get the unsubscribe requests of Scheduled Action notification emails.
  final pulumi.Input<String>? emailAddressSender;
  /// Specifies a list of email addresses that will receive the Scheduled Action.
  final pulumi.Input<List<String>>? emailAddresses;
  /// Subject of the email. Length is limited to 70 characters.
  final pulumi.Input<String>? emailSubject;
  /// The end date and time of the Scheduled Action (UTC).
  final pulumi.Input<String>? endDate;
  /// Frequency of the schedule. Possible values are `Daily`, `Monthly` and `Weekly`. Value `Monthly` requires either `weeks_of_month` and `days_of_week` or `day_of_month` to be specified. Value `Weekly` requires `days_of_week` to be specified.
  final pulumi.Input<String>? frequency;
  /// UTC time at which cost analysis data will be emailed. Must be between `0` and `23`.
  final pulumi.Input<int>? hourOfDay;
  /// Message to be added in the email. Length is limited to 250 characters.
  final pulumi.Input<String>? message;
  /// The name which should be used for this Azure Cost Management Scheduled Action. Changing this forces a new Azure Cost Management Scheduled Action to be created.
  final pulumi.Input<String>? name;
  /// The start date and time of the Scheduled Action (UTC).
  final pulumi.Input<String>? startDate;
  /// The ID of the Cost Management View that is used by the Scheduled Action. Changing this forces a new resource to be created.
  final pulumi.Input<String>? viewId;
  /// Specifies a list of weeks in which cost analysis data will be emailed. This property is applicable when `frequency` is `Monthly` and used in combination with `days_of_week`. Possible values are `First`, `Fourth`, `Last`, `Second` and `Third`.
  final pulumi.Input<List<String>>? weeksOfMonths;

  /// Creates a new [ScheduledActionState].
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
  ScheduledActionState({
    pulumi.Output<int>? dayOfMonth,
    pulumi.Output<List<String>>? daysOfWeeks,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? emailAddressSender,
    pulumi.Output<List<String>>? emailAddresses,
    pulumi.Output<String>? emailSubject,
    pulumi.Output<String>? endDate,
    pulumi.Output<String>? frequency,
    pulumi.Output<int>? hourOfDay,
    pulumi.Output<String>? message,
    pulumi.Output<String>? name,
    pulumi.Output<String>? startDate,
    pulumi.Output<String>? viewId,
    pulumi.Output<List<String>>? weeksOfMonths,
  }) :
      dayOfMonth = pulumi.Input.asOptionalInput<int>(dayOfMonth),
      daysOfWeeks = pulumi.Input.asOptionalInput<List<String>>(daysOfWeeks),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      emailAddressSender = pulumi.Input.asOptionalInput<String>(emailAddressSender),
      emailAddresses = pulumi.Input.asOptionalInput<List<String>>(emailAddresses),
      emailSubject = pulumi.Input.asOptionalInput<String>(emailSubject),
      endDate = pulumi.Input.asOptionalInput<String>(endDate),
      frequency = pulumi.Input.asOptionalInput<String>(frequency),
      hourOfDay = pulumi.Input.asOptionalInput<int>(hourOfDay),
      message = pulumi.Input.asOptionalInput<String>(message),
      name = pulumi.Input.asOptionalInput<String>(name),
      startDate = pulumi.Input.asOptionalInput<String>(startDate),
      viewId = pulumi.Input.asOptionalInput<String>(viewId),
      weeksOfMonths = pulumi.Input.asOptionalInput<List<String>>(weeksOfMonths);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfMonth': ?dayOfMonth,
      'daysOfWeeks': ?daysOfWeeks,
      'displayName': ?displayName,
      'emailAddressSender': ?emailAddressSender,
      'emailAddresses': ?emailAddresses,
      'emailSubject': ?emailSubject,
      'endDate': ?endDate,
      'frequency': ?frequency,
      'hourOfDay': ?hourOfDay,
      'message': ?message,
      'name': ?name,
      'startDate': ?startDate,
      'viewId': ?viewId,
      'weeksOfMonths': ?weeksOfMonths,
    };
  }

  factory ScheduledActionState.fromMap(Map<String, dynamic> map) {
    return ScheduledActionState(
      dayOfMonth: map['dayOfMonth'] == null ? null : pulumi.Output.create<int>(map['dayOfMonth'] as int),
      daysOfWeeks: map['daysOfWeeks'] == null ? null : pulumi.Output.create<List<String>>((map['daysOfWeeks'] as List).cast<String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      emailAddressSender: map['emailAddressSender'] == null ? null : pulumi.Output.create<String>(map['emailAddressSender'] as String),
      emailAddresses: map['emailAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['emailAddresses'] as List).cast<String>()),
      emailSubject: map['emailSubject'] == null ? null : pulumi.Output.create<String>(map['emailSubject'] as String),
      endDate: map['endDate'] == null ? null : pulumi.Output.create<String>(map['endDate'] as String),
      frequency: map['frequency'] == null ? null : pulumi.Output.create<String>(map['frequency'] as String),
      hourOfDay: map['hourOfDay'] == null ? null : pulumi.Output.create<int>(map['hourOfDay'] as int),
      message: map['message'] == null ? null : pulumi.Output.create<String>(map['message'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      startDate: map['startDate'] == null ? null : pulumi.Output.create<String>(map['startDate'] as String),
      viewId: map['viewId'] == null ? null : pulumi.Output.create<String>(map['viewId'] as String),
      weeksOfMonths: map['weeksOfMonths'] == null ? null : pulumi.Output.create<List<String>>((map['weeksOfMonths'] as List).cast<String>()),
    );
  }
}

