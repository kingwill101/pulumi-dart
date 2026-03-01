// ignore_for_file: unused_element, unnecessary_cast


/// EventSubscription Status denotes the status of the EventSubscription resource.
class EventSubscriptionStatusResponse {
  /// Description of the state.
  final String description;
  /// State of Event Subscription resource.
  final String state;

  /// Creates a new [EventSubscriptionStatusResponse].
  /// [description] Description of the state.
  /// [state] State of Event Subscription resource.
  EventSubscriptionStatusResponse({
    required this.description,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'state': state,
    };
  }

  factory EventSubscriptionStatusResponse.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionStatusResponse(
      description: map['description'] as String,
      state: map['state'] as String,
    );
  }
}

