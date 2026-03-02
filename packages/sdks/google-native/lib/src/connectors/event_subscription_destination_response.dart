// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'end_point_response.dart';

/// Message for EventSubscription Destination to act on receiving an event
class EventSubscriptionDestinationResponse {
  /// OPTION 1: Hit an endpoint when we receive an event.
  final pulumi.Input<EndPointResponse> endpoint;
  /// Service account needed for runtime plane to trigger IP workflow.
  final pulumi.Input<String> serviceAccount;
  /// type of the destination
  final pulumi.Input<String> type;

  /// Creates a new [EventSubscriptionDestinationResponse].
  /// [endpoint] OPTION 1: Hit an endpoint when we receive an event.
  /// [serviceAccount] Service account needed for runtime plane to trigger IP workflow.
  /// [type] type of the destination
  EventSubscriptionDestinationResponse({
    required this.endpoint,
    required this.serviceAccount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': pulumi.Input.mapInputValue<EndPointResponse, Map<String, dynamic>>(endpoint, (value) => value.toMap()),
      'serviceAccount': serviceAccount,
      'type': type,
    };
  }

  factory EventSubscriptionDestinationResponse.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionDestinationResponse(
      endpoint: (EndPointResponse.fromMap((map['endpoint'] as Map).cast<String, dynamic>())).input(),
      serviceAccount: (map['serviceAccount'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

