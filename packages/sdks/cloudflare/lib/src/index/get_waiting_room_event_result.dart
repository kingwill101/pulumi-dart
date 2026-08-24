// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWaitingRoomEvent.
class GetWaitingRoomEventResult {
  final String? createdOn;
  /// If set, the event will override the waiting room's `customPageHtml` property while it is active. If null, the event will inherit it.
  final String? customPageHtml;
  /// A note that you can use to add more details about the event.
  final String? description;
  /// If set, the event will override the waiting room's `disableSessionRenewal` property while it is active. If null, the event will inherit it.
  final bool? disableSessionRenewal;
  /// An ISO 8601 timestamp that marks the end of the event.
  final String? eventEndTime;
  final String? eventId;
  /// An ISO 8601 timestamp that marks the start of the event. At this time, queued users will be processed with the event's configuration. The start time must be at least one minute before `eventEndTime`.
  final String? eventStartTime;
  /// The ID of this resource.
  final String? id;
  final String? modifiedOn;
  /// A unique name to identify the event. Only alphanumeric characters, hyphens and underscores are allowed.
  final String? name;
  /// If set, the event will override the waiting room's `newUsersPerMinute` property while it is active. If null, the event will inherit it. This can only be set if the event's `totalActiveUsers` property is also set.
  final int? newUsersPerMinute;
  /// An ISO 8601 timestamp that marks when to begin queueing all users before the event starts. The prequeue must start at least five minutes before `eventStartTime`.
  final String? prequeueStartTime;
  /// If set, the event will override the waiting room's `queueingMethod` property while it is active. If null, the event will inherit it.
  final String? queueingMethod;
  /// If set, the event will override the waiting room's `sessionDuration` property while it is active. If null, the event will inherit it.
  final int? sessionDuration;
  /// If enabled, users in the prequeue will be shuffled randomly at the `eventStartTime`. Requires that `prequeueStartTime` is not null. This is useful for situations when many users will join the event prequeue at the same time and you want to shuffle them to ensure fairness. Naturally, it makes the most sense to enable this feature when the `queueingMethod` during the event respects ordering such as **fifo**, or else the shuffling may be unnecessary.
  final bool? shuffleAtEventStart;
  /// Suspends or allows an event. If set to `true`, the event is ignored and traffic will be handled based on the waiting room configuration.
  final bool? suspended;
  /// If set, the event will override the waiting room's `totalActiveUsers` property while it is active. If null, the event will inherit it. This can only be set if the event's `newUsersPerMinute` property is also set.
  final int? totalActiveUsers;
  /// If set, the event will override the waiting room's `turnstileAction` property while it is active. If null, the event will inherit it.
  /// Available values: "log", "infiniteQueue".
  final String? turnstileAction;
  /// If set, the event will override the waiting room's `turnstileMode` property while it is active. If null, the event will inherit it.
  /// Available values: "off", "invisible", "visible*non*interactive", "visibleManaged".
  final String? turnstileMode;
  final String? waitingRoomId;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetWaitingRoomEventResult].
  /// [createdOn] Optional.
  /// [customPageHtml] If set, the event will override the waiting room's `customPageHtml` property while it is active. If null, the event will inherit it.
  /// [description] A note that you can use to add more details about the event.
  /// [disableSessionRenewal] If set, the event will override the waiting room's `disableSessionRenewal` property while it is active. If null, the event will inherit it.
  /// [eventEndTime] An ISO 8601 timestamp that marks the end of the event.
  /// [eventId] Optional.
  /// [eventStartTime] An ISO 8601 timestamp that marks the start of the event. At this time, queued users will be processed with the event's configuration. The start time must be at least one minute before `eventEndTime`.
  /// [id] The ID of this resource.
  /// [modifiedOn] Optional.
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
  /// [waitingRoomId] Optional.
  /// [zoneId] Identifier.
  const GetWaitingRoomEventResult({
    this.createdOn,
    this.customPageHtml,
    this.description,
    this.disableSessionRenewal,
    this.eventEndTime,
    this.eventId,
    this.eventStartTime,
    this.id,
    this.modifiedOn,
    this.name,
    this.newUsersPerMinute,
    this.prequeueStartTime,
    this.queueingMethod,
    this.sessionDuration,
    this.shuffleAtEventStart,
    this.suspended,
    this.totalActiveUsers,
    this.turnstileAction,
    this.turnstileMode,
    this.waitingRoomId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': ?createdOn,
      'customPageHtml': ?customPageHtml,
      'description': ?description,
      'disableSessionRenewal': ?disableSessionRenewal,
      'eventEndTime': ?eventEndTime,
      'eventId': ?eventId,
      'eventStartTime': ?eventStartTime,
      'id': ?id,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'newUsersPerMinute': ?newUsersPerMinute,
      'prequeueStartTime': ?prequeueStartTime,
      'queueingMethod': ?queueingMethod,
      'sessionDuration': ?sessionDuration,
      'shuffleAtEventStart': ?shuffleAtEventStart,
      'suspended': ?suspended,
      'totalActiveUsers': ?totalActiveUsers,
      'turnstileAction': ?turnstileAction,
      'turnstileMode': ?turnstileMode,
      'waitingRoomId': ?waitingRoomId,
      'zoneId': ?zoneId,
    };
  }

  factory GetWaitingRoomEventResult.fromMap(Map<String, dynamic> map) {
    return GetWaitingRoomEventResult(
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customPageHtml: (() { final guardedValue = map['customPageHtml']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disableSessionRenewal: (() { final guardedValue = map['disableSessionRenewal']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      eventEndTime: (() { final guardedValue = map['eventEndTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventId: (() { final guardedValue = map['eventId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventStartTime: (() { final guardedValue = map['eventStartTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      newUsersPerMinute: (() { final guardedValue = map['newUsersPerMinute']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      prequeueStartTime: (() { final guardedValue = map['prequeueStartTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queueingMethod: (() { final guardedValue = map['queueingMethod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sessionDuration: (() { final guardedValue = map['sessionDuration']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      shuffleAtEventStart: (() { final guardedValue = map['shuffleAtEventStart']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      suspended: (() { final guardedValue = map['suspended']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      totalActiveUsers: (() { final guardedValue = map['totalActiveUsers']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      turnstileAction: (() { final guardedValue = map['turnstileAction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      turnstileMode: (() { final guardedValue = map['turnstileMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      waitingRoomId: (() { final guardedValue = map['waitingRoomId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
