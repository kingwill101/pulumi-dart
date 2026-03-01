// ignore_for_file: unused_element, unnecessary_cast

import 'pubsub_response.dart';

/// Represents the transport intermediaries created for the trigger to deliver events.
class TransportResponse {
  /// The Pub/Sub topic and subscription used by Eventarc as a transport intermediary.
  final PubsubResponse pubsub;

  /// Creates a new [TransportResponse].
  /// [pubsub] The Pub/Sub topic and subscription used by Eventarc as a transport intermediary.
  TransportResponse({
    required this.pubsub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsub': pubsub.toMap(),
    };
  }

  factory TransportResponse.fromMap(Map<String, dynamic> map) {
    return TransportResponse(
      pubsub: PubsubResponse.fromMap((map['pubsub'] as Map).cast<String, dynamic>()),
    );
  }
}

