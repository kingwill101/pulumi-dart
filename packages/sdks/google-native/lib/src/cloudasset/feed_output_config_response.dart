// ignore_for_file: unused_element, unnecessary_cast

import 'pubsub_destination_response.dart';

/// Output configuration for asset feed destination.
class FeedOutputConfigResponse {
  /// Destination on Pub/Sub.
  final PubsubDestinationResponse pubsubDestination;

  /// Creates a new [FeedOutputConfigResponse].
  /// [pubsubDestination] Destination on Pub/Sub.
  FeedOutputConfigResponse({
    required this.pubsubDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsubDestination': pubsubDestination.toMap(),
    };
  }

  factory FeedOutputConfigResponse.fromMap(Map<String, dynamic> map) {
    return FeedOutputConfigResponse(
      pubsubDestination: PubsubDestinationResponse.fromMap((map['pubsubDestination'] as Map).cast<String, dynamic>()),
    );
  }
}

