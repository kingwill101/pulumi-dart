// ignore_for_file: unused_element, unnecessary_cast


class HubEventListener {
  /// Specifies the event hub name to receive the events.
  final String eventhubName;
  /// Specifies the event hub namespace name to receive the events.
  final String eventhubNamespaceName;
  /// Specifies the list of system events. Supported values are `connected` and `disconnected`.
  final List<String>? systemEventNameFilters;
  /// Specifies the list of matching user event names. `["*"]` can be used to match all events.
  final List<String>? userEventNameFilters;

  /// Creates a new [HubEventListener].
  /// [eventhubName] Specifies the event hub name to receive the events.
  /// [eventhubNamespaceName] Specifies the event hub namespace name to receive the events.
  /// [systemEventNameFilters] Specifies the list of system events. Supported values are `connected` and `disconnected`.
  /// [userEventNameFilters] Specifies the list of matching user event names. `["*"]` can be used to match all events.
  HubEventListener({
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
      eventhubName: map['eventhubName'] as String,
      eventhubNamespaceName: map['eventhubNamespaceName'] as String,
      systemEventNameFilters: map['systemEventNameFilters'] == null ? null : (map['systemEventNameFilters'] as List).cast<String>(),
      userEventNameFilters: map['userEventNameFilters'] == null ? null : (map['userEventNameFilters'] as List).cast<String>(),
    );
  }
}

