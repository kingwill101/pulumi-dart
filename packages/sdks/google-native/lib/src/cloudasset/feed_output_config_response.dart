// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pubsub_destination_response.dart';

/// Output configuration for asset feed destination.
class FeedOutputConfigResponse {
  /// Destination on Pub/Sub.
  final pulumi.Input<PubsubDestinationResponse> pubsubDestination;

  /// Creates a new [FeedOutputConfigResponse].
  /// [pubsubDestination] Destination on Pub/Sub.
  FeedOutputConfigResponse({
    required this.pubsubDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsubDestination': pulumi.Input.mapInputValue<PubsubDestinationResponse, Map<String, dynamic>>(pubsubDestination, (value) => value.toMap()),
    };
  }

  factory FeedOutputConfigResponse.fromMap(Map<String, dynamic> map) {
    return FeedOutputConfigResponse(
      pubsubDestination: pulumi.Input.fromValue(PubsubDestinationResponse.fromMap((map['pubsubDestination']! as Map).cast<String, dynamic>())),
    );
  }
}

