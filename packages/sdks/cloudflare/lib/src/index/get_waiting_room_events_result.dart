// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWaitingRoomEventsResult {
  final pulumi.Input<String> createdOn;
  /// If set, the event will override the waiting room's `customPageHtml` property while it is active. If null, the event will inherit it.
  final pulumi.Input<String> customPageHtml;
  /// A note that you can use to add more details about the event.
  final pulumi.Input<String> description;
  /// If set, the event will override the waiting room's `disableSessionRenewal` property while it is active. If null, the event will inherit it.
  final pulumi.Input<bool> disableSessionRenewal;
  /// An ISO 8601 timestamp that marks the end of the event.
  final pulumi.Input<String> eventEndTime;
  /// An ISO 8601 timestamp that marks the start of the event. At this time, queued users will be processed with the event's configuration. The start time must be at least one minute before `eventEndTime`.
  final pulumi.Input<String> eventStartTime;
  final pulumi.Input<String> id;
  final pulumi.Input<String> modifiedOn;
  /// A unique name to identify the event. Only alphanumeric characters, hyphens and underscores are allowed.
  final pulumi.Input<String> name;
  /// If set, the event will override the waiting room's `newUsersPerMinute` property while it is active. If null, the event will inherit it. This can only be set if the event's `totalActiveUsers` property is also set.
  final pulumi.Input<int> newUsersPerMinute;
  /// An ISO 8601 timestamp that marks when to begin queueing all users before the event starts. The prequeue must start at least five minutes before `eventStartTime`.
  final pulumi.Input<String> prequeueStartTime;
  /// If set, the event will override the waiting room's `queueingMethod` property while it is active. If null, the event will inherit it.
  final pulumi.Input<String> queueingMethod;
  /// If set, the event will override the waiting room's `sessionDuration` property while it is active. If null, the event will inherit it.
  final pulumi.Input<int> sessionDuration;
  /// If enabled, users in the prequeue will be shuffled randomly at the `eventStartTime`. Requires that `prequeueStartTime` is not null. This is useful for situations when many users will join the event prequeue at the same time and you want to shuffle them to ensure fairness. Naturally, it makes the most sense to enable this feature when the `queueingMethod` during the event respects ordering such as **fifo**, or else the shuffling may be unnecessary.
  final pulumi.Input<bool> shuffleAtEventStart;
  /// Suspends or allows an event. If set to `true`, the event is ignored and traffic will be handled based on the waiting room configuration.
  final pulumi.Input<bool> suspended;
  /// If set, the event will override the waiting room's `totalActiveUsers` property while it is active. If null, the event will inherit it. This can only be set if the event's `newUsersPerMinute` property is also set.
  final pulumi.Input<int> totalActiveUsers;
  /// If set, the event will override the waiting room's `turnstileAction` property while it is active. If null, the event will inherit it.
  /// Available values: "log", "infiniteQueue".
  final pulumi.Input<String> turnstileAction;
  /// If set, the event will override the waiting room's `turnstileMode` property while it is active. If null, the event will inherit it.
  /// Available values: "off", "invisible", "visible*non*interactive", "visibleManaged".
  final pulumi.Input<String> turnstileMode;

  /// Creates a new [GetWaitingRoomEventsResult].
  /// [createdOn] Required.
  /// [customPageHtml] If set, the event will override the waiting room's `customPageHtml` property while it is active. If null, the event will inherit it.
  /// [description] A note that you can use to add more details about the event.
  /// [disableSessionRenewal] If set, the event will override the waiting room's `disableSessionRenewal` property while it is active. If null, the event will inherit it.
  /// [eventEndTime] An ISO 8601 timestamp that marks the end of the event.
  /// [eventStartTime] An ISO 8601 timestamp that marks the start of the event. At this time, queued users will be processed with the event's configuration. The start time must be at least one minute before `eventEndTime`.
  /// [id] Required.
  /// [modifiedOn] Required.
  /// [name] A unique name to identify the event. Only alphanumeric characters, hyphens and underscores are allowed.
  /// [newUsersPerMinute] If set, the event will override the waiting room's `newUsersPerMinute` property while it is active. If null, the event will inherit it. This can only be set if the event's `totalActiveUsers` property is also set.
  /// [prequeueStartTime] An ISO 8601 timestamp that marks when to begin queueing all users before the event starts. The prequeue must start at least five minutes before `eventStartTime`.
  /// [queueingMethod] If set, the event will override the waiting room's `queueingMethod` property while it is active. If null, the event will inherit it.
  /// [sessionDuration] If set, the event will override the waiting room's `sessionDuration` property while it is active. If null, the event will inherit it.
  /// [shuffleAtEventStart] If enabled, users in the prequeue will be shuffled randomly at the `eventStartTime`. Requires that `prequeueStartTime` is not null. This is useful for situations when many users will join the event prequeue at the same time and you want to shuffle them to ensure fairness. Naturally, it makes the most sense to enable this feature when the `queueingMethod` during the event respects ordering such as **fifo**, or else the shuffling may be unnecessary.
  /// [suspended] Suspends or allows an event. If set to `true`, the event is ignored and traffic will be handled based on the waiting room configuration.
  /// [totalActiveUsers] If set, the event will override the waiting room's `totalActiveUsers` property while it is active. If null, the event will inherit it. This can only be set if the event's `newUsersPerMinute` property is also set.
  /// [turnstileAction] If set, the event will override the waiting room's `turnstileAction` property while it is active. If null, the event will inherit it.
  /// [turnstileMode] If set, the event will override the waiting room's `turnstileMode` property while it is active. If null, the event will inherit it.
  const GetWaitingRoomEventsResult({
    required this.createdOn,
    required this.customPageHtml,
    required this.description,
    required this.disableSessionRenewal,
    required this.eventEndTime,
    required this.eventStartTime,
    required this.id,
    required this.modifiedOn,
    required this.name,
    required this.newUsersPerMinute,
    required this.prequeueStartTime,
    required this.queueingMethod,
    required this.sessionDuration,
    required this.shuffleAtEventStart,
    required this.suspended,
    required this.totalActiveUsers,
    required this.turnstileAction,
    required this.turnstileMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': createdOn,
      'customPageHtml': customPageHtml,
      'description': description,
      'disableSessionRenewal': disableSessionRenewal,
      'eventEndTime': eventEndTime,
      'eventStartTime': eventStartTime,
      'id': id,
      'modifiedOn': modifiedOn,
      'name': name,
      'newUsersPerMinute': newUsersPerMinute,
      'prequeueStartTime': prequeueStartTime,
      'queueingMethod': queueingMethod,
      'sessionDuration': sessionDuration,
      'shuffleAtEventStart': shuffleAtEventStart,
      'suspended': suspended,
      'totalActiveUsers': totalActiveUsers,
      'turnstileAction': turnstileAction,
      'turnstileMode': turnstileMode,
    };
  }

  factory GetWaitingRoomEventsResult.fromMap(Map<String, dynamic> map) {
    return GetWaitingRoomEventsResult(
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      customPageHtml: pulumi.Input.fromValue(map['customPageHtml'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      disableSessionRenewal: pulumi.Input.fromValue(map['disableSessionRenewal'] as bool),
      eventEndTime: pulumi.Input.fromValue(map['eventEndTime'] as String),
      eventStartTime: pulumi.Input.fromValue(map['eventStartTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      newUsersPerMinute: pulumi.Input.fromValue((map['newUsersPerMinute'] as num).toInt()),
      prequeueStartTime: pulumi.Input.fromValue(map['prequeueStartTime'] as String),
      queueingMethod: pulumi.Input.fromValue(map['queueingMethod'] as String),
      sessionDuration: pulumi.Input.fromValue((map['sessionDuration'] as num).toInt()),
      shuffleAtEventStart: pulumi.Input.fromValue(map['shuffleAtEventStart'] as bool),
      suspended: pulumi.Input.fromValue(map['suspended'] as bool),
      totalActiveUsers: pulumi.Input.fromValue((map['totalActiveUsers'] as num).toInt()),
      turnstileAction: pulumi.Input.fromValue(map['turnstileAction'] as String),
      turnstileMode: pulumi.Input.fromValue(map['turnstileMode'] as String),
    );
  }
}
