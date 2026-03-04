// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sets the `data` field as the HTTP body for delivery.
class NoWrapperResponse {
  /// Optional. When true, writes the Pub/Sub message metadata to `x-goog-pubsub-:` headers of the HTTP request. Writes the Pub/Sub message attributes to `:` headers of the HTTP request.
  final pulumi.Input<bool> writeMetadata;

  /// Creates a new [NoWrapperResponse].
  /// [writeMetadata] Optional. When true, writes the Pub/Sub message metadata to `x-goog-pubsub-:` headers of the HTTP request. Writes the Pub/Sub message attributes to `:` headers of the HTTP request.
  NoWrapperResponse({required this.writeMetadata});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'writeMetadata': writeMetadata};
  }

  factory NoWrapperResponse.fromMap(Map<String, dynamic> map) {
    return NoWrapperResponse(
      writeMetadata: pulumi.Input.fromValue(map['writeMetadata'] as bool),
    );
  }
}
