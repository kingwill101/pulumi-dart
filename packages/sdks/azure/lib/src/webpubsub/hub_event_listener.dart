// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HubEventListener {
  /// Specifies the event hub name to receive the events.
  final pulumi.Input<String> eventhubName;
  /// Specifies the event hub namespace name to receive the events.
  final pulumi.Input<String> eventhubNamespaceName;
  /// Specifies the list of system events. Supported values are `connected` and `disconnected`.
  final pulumi.Input<List<String>>? systemEventNameFilters;
  /// Specifies the list of matching user event names. `["*"]` can be used to match all events.
  final pulumi.Input<List<String>>? userEventNameFilters;

  /// Creates a new [HubEventListener].
  /// [eventhubName] Specifies the event hub name to receive the events.
  /// [eventhubNamespaceName] Specifies the event hub namespace name to receive the events.
  /// [systemEventNameFilters] Specifies the list of system events. Supported values are `connected` and `disconnected`.
  /// [userEventNameFilters] Specifies the list of matching user event names. `["*"]` can be used to match all events.
  const HubEventListener({
    required this.eventhubName,
    required this.eventhubNamespaceName,
    this.systemEventNameFilters,
    this.userEventNameFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventhubName': eventhubName,
      'eventhubNamespaceName': eventhubNamespaceName,
      'systemEventNameFilters': ?systemEventNameFilters,
      'userEventNameFilters': ?userEventNameFilters,
    };
  }

  factory HubEventListener.fromMap(Map<String, dynamic> map) {
    return HubEventListener(
      eventhubName: pulumi.Input.fromValue(map['eventhubName'] as String),
      eventhubNamespaceName: pulumi.Input.fromValue(map['eventhubNamespaceName'] as String),
      systemEventNameFilters: (() { final guardedValue = map['systemEventNameFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      userEventNameFilters: (() { final guardedValue = map['userEventNameFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
