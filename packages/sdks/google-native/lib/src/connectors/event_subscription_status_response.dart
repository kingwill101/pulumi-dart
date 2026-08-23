// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// EventSubscription Status denotes the status of the EventSubscription resource.
class EventSubscriptionStatusResponse {
  /// Description of the state.
  final pulumi.Input<String> description;
  /// State of Event Subscription resource.
  final pulumi.Input<String> state;

  /// Creates a new [EventSubscriptionStatusResponse].
  /// [description] Description of the state.
  /// [state] State of Event Subscription resource.
  const EventSubscriptionStatusResponse({
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
      description: pulumi.Input.fromValue(map['description'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
