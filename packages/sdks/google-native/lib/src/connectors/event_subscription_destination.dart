// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'end_point.dart';
import 'event_subscription_destination_type.dart';

/// Message for EventSubscription Destination to act on receiving an event
class EventSubscriptionDestination {
  /// OPTION 1: Hit an endpoint when we receive an event.
  final pulumi.Input<EndPoint>? endpoint;
  /// Service account needed for runtime plane to trigger IP workflow.
  final pulumi.Input<String>? serviceAccount;
  /// type of the destination
  final pulumi.Input<EventSubscriptionDestinationType>? type;

  /// Creates a new [EventSubscriptionDestination].
  /// [endpoint] OPTION 1: Hit an endpoint when we receive an event.
  /// [serviceAccount] Service account needed for runtime plane to trigger IP workflow.
  /// [type] type of the destination
  EventSubscriptionDestination({
    this.endpoint,
    this.serviceAccount,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?pulumi.Input.mapOptionalInputValue<EndPoint, Map<String, dynamic>>(endpoint, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'type': ?pulumi.Input.mapOptionalInputValue<EventSubscriptionDestinationType, String>(type, (value) => value.value),
    };
  }

  factory EventSubscriptionDestination.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionDestination(
      endpoint: map['endpoint'] == null ? null : (EndPoint.fromMap((map['endpoint']! as Map).cast<String, dynamic>())).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount']! as String).input(),
      type: map['type'] == null ? null : (EventSubscriptionDestinationType.fromValue(map['type']! as String)).input(),
    );
  }
}

