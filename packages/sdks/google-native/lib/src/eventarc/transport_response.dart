// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pubsub_response.dart';

/// Represents the transport intermediaries created for the trigger to deliver events.
class TransportResponse {
  /// The Pub/Sub topic and subscription used by Eventarc as a transport intermediary.
  final pulumi.Input<PubsubResponse> pubsub;

  /// Creates a new [TransportResponse].
  /// [pubsub] The Pub/Sub topic and subscription used by Eventarc as a transport intermediary.
  const TransportResponse({
    required this.pubsub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsub': pulumi.Input.mapInputValue<PubsubResponse, Map<String, dynamic>>(pubsub, (value) => value.toMap()),
    };
  }

  factory TransportResponse.fromMap(Map<String, dynamic> map) {
    return TransportResponse(
      pubsub: pulumi.Input.fromValue(PubsubResponse.fromMap((map['pubsub']! as Map).cast<String, dynamic>())),
    );
  }
}
