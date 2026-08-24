// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_waiting_room_event_waiting_room_event_args_doc}
/// The set of arguments for WaitingRoomEvent.
/// {@endtemplate}
/// {@macro pulumi_index_waiting_room_event_waiting_room_event_args_doc}
class WaitingRoomEventArgs {
  /// If set, the event will override the waiting room's `customPageHtml` property while it is active. If null, the event will inherit it.
  final pulumi.Input<String?>? customPageHtml;
  /// A note that you can use to add more details about the event.
  final pulumi.Input<String?>? description;
  /// If set, the event will override the waiting room's `disableSessionRenewal` property while it is active. If null, the event will inherit it.
  final pulumi.Input<bool?>? disableSessionRenewal;
  /// An ISO 8601 timestamp that marks the end of the event.
  final pulumi.Input<String> eventEndTime;
  /// An ISO 8601 timestamp that marks the start of the event. At this time, queued users will be processed with the event's configuration. The start time must be at least one minute before `eventEndTime`.
  final pulumi.Input<String> eventStartTime;
  /// A unique name to identify the event. Only alphanumeric characters, hyphens and underscores are allowed.
  final pulumi.Input<String> name;
  /// If set, the event will override the waiting room's `newUsersPerMinute` property while it is active. If null, the event will inherit it. This can only be set if the event's `totalActiveUsers` property is also set.
  final pulumi.Input<int?>? newUsersPerMinute;
  /// An ISO 8601 timestamp that marks when to begin queueing all users before the event starts. The prequeue must start at least five minutes before `eventStartTime`.
  final pulumi.Input<String?>? prequeueStartTime;
  /// If set, the event will override the waiting room's `queueingMethod` property while it is active. If null, the event will inherit it.
  final pulumi.Input<String?>? queueingMethod;
  /// If set, the event will override the waiting room's `sessionDuration` property while it is active. If null, the event will inherit it.
  final pulumi.Input<int?>? sessionDuration;
  /// If enabled, users in the prequeue will be shuffled randomly at the `eventStartTime`. Requires that `prequeueStartTime` is not null. This is useful for situations when many users will join the event prequeue at the same time and you want to shuffle them to ensure fairness. Naturally, it makes the most sense to enable this feature when the `queueingMethod` during the event respects ordering such as **fifo**, or else the shuffling may be unnecessary.
  final pulumi.Input<bool?>? shuffleAtEventStart;
  /// Suspends or allows an event. If set to `true`, the event is ignored and traffic will be handled based on the waiting room configuration.
  final pulumi.Input<bool?>? suspended;
  /// If set, the event will override the waiting room's `totalActiveUsers` property while it is active. If null, the event will inherit it. This can only be set if the event's `newUsersPerMinute` property is also set.
  final pulumi.Input<int?>? totalActiveUsers;
  /// If set, the event will override the waiting room's `turnstileAction` property while it is active. If null, the event will inherit it.
  /// Available values: "log", "infiniteQueue".
  final pulumi.Input<String?>? turnstileAction;
  /// If set, the event will override the waiting room's `turnstileMode` property while it is active. If null, the event will inherit it.
  /// Available values: "off", "invisible", "visible*non*interactive", "visibleManaged".
  final pulumi.Input<String?>? turnstileMode;
  final pulumi.Input<String> waitingRoomId;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [WaitingRoomEventArgs].
  /// [customPageHtml] If set, the event will override the waiting room's `customPageHtml` property while it is active. If null, the event will inherit it.
  /// [description] A note that you can use to add more details about the event.
  /// [disableSessionRenewal] If set, the event will override the waiting room's `disableSessionRenewal` property while it is active. If null, the event will inherit it.
  /// [eventEndTime] An ISO 8601 timestamp that marks the end of the event.
  /// [eventStartTime] An ISO 8601 timestamp that marks the start of the event. At this time, queued users will be processed with the event's configuration. The start time must be at least one minute before `eventEndTime`.
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
  /// [waitingRoomId] Required.
  /// [zoneId] Identifier.
  const WaitingRoomEventArgs({
    this.customPageHtml,
    this.description,
    this.disableSessionRenewal,
    required this.eventEndTime,
    required this.eventStartTime,
    required this.name,
    this.newUsersPerMinute,
    this.prequeueStartTime,
    this.queueingMethod,
    this.sessionDuration,
    this.shuffleAtEventStart,
    this.suspended,
    this.totalActiveUsers,
    this.turnstileAction,
    this.turnstileMode,
    required this.waitingRoomId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPageHtml': ?customPageHtml,
      'description': ?description,
      'disableSessionRenewal': ?disableSessionRenewal,
      'eventEndTime': eventEndTime,
      'eventStartTime': eventStartTime,
      'name': name,
      'newUsersPerMinute': ?newUsersPerMinute,
      'prequeueStartTime': ?prequeueStartTime,
      'queueingMethod': ?queueingMethod,
      'sessionDuration': ?sessionDuration,
      'shuffleAtEventStart': ?shuffleAtEventStart,
      'suspended': ?suspended,
      'totalActiveUsers': ?totalActiveUsers,
      'turnstileAction': ?turnstileAction,
      'turnstileMode': ?turnstileMode,
      'waitingRoomId': waitingRoomId,
      'zoneId': zoneId,
    };
  }

  factory WaitingRoomEventArgs.fromMap(Map<String, dynamic> map) {
    return WaitingRoomEventArgs(
      customPageHtml: (() { final guardedValue = map['customPageHtml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableSessionRenewal: (() { final guardedValue = map['disableSessionRenewal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      eventEndTime: pulumi.Input.fromValue(map['eventEndTime'] as String),
      eventStartTime: pulumi.Input.fromValue(map['eventStartTime'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      newUsersPerMinute: (() { final guardedValue = map['newUsersPerMinute']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      prequeueStartTime: (() { final guardedValue = map['prequeueStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueingMethod: (() { final guardedValue = map['queueingMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionDuration: (() { final guardedValue = map['sessionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      shuffleAtEventStart: (() { final guardedValue = map['shuffleAtEventStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      suspended: (() { final guardedValue = map['suspended']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      totalActiveUsers: (() { final guardedValue = map['totalActiveUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      turnstileAction: (() { final guardedValue = map['turnstileAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      turnstileMode: (() { final guardedValue = map['turnstileMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      waitingRoomId: pulumi.Input.fromValue(map['waitingRoomId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
