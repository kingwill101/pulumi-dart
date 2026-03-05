// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Filter events by their name.
class EventNameFilterResponse {
  /// Gets or sets a list of system events. Supported events: "connected" and "disconnected". Blocking event "connect" is not supported because it requires a response.
  final pulumi.Input<List<String>>? systemEvents;
  /// Expected value is 'EventName'.
  final pulumi.Input<String> type;
  /// Gets or sets a matching pattern for event names.
  /// There are 3 kinds of patterns supported:
  /// 1. "*", it matches any event name
  /// 2. Combine multiple events with ",", for example "event1,event2", it matches events "event1" and "event2"
  /// 3. A single event name, for example, "event1", it matches "event1"
  final pulumi.Input<String>? userEventPattern;

  /// Creates a new [EventNameFilterResponse].
  /// [systemEvents] Gets or sets a list of system events. Supported events: "connected" and "disconnected". Blocking event "connect" is not supported because it requires a response.
  /// [type] Expected value is 'EventName'.
  /// [userEventPattern] Gets or sets a matching pattern for event names.
  EventNameFilterResponse({
    this.systemEvents,
    required this.type,
    this.userEventPattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemEvents': ?systemEvents,
      'type': type,
      'userEventPattern': ?userEventPattern,
    };
  }

  factory EventNameFilterResponse.fromMap(Map<String, dynamic> map) {
    return EventNameFilterResponse(
      systemEvents: (() { final guardedValue = map['systemEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userEventPattern: (() { final guardedValue = map['userEventPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

