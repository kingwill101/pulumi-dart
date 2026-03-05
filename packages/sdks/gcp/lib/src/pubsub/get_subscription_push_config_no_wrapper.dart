// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSubscriptionPushConfigNoWrapper {
  /// When true, writes the Pub/Sub message metadata to
  /// 'x-goog-pubsub-&lt;KEY&gt;:&lt;VAL&gt;' headers of the HTTP request. Writes the
  /// Pub/Sub message attributes to '&lt;KEY&gt;:&lt;VAL&gt;' headers of the HTTP request.
  final pulumi.Input<bool> writeMetadata;

  /// Creates a new [GetSubscriptionPushConfigNoWrapper].
  /// [writeMetadata] When true, writes the Pub/Sub message metadata to
  GetSubscriptionPushConfigNoWrapper({
    required this.writeMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'writeMetadata': writeMetadata,
    };
  }

  factory GetSubscriptionPushConfigNoWrapper.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionPushConfigNoWrapper(
      writeMetadata: pulumi.Input.fromValue(map['writeMetadata'] as bool),
    );
  }
}

