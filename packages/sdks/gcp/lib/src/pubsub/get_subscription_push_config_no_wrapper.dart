// ignore_for_file: unused_element, unnecessary_cast


class GetSubscriptionPushConfigNoWrapper {
  /// When true, writes the Pub/Sub message metadata to
  /// 'x-goog-pubsub-<KEY>:<VAL>' headers of the HTTP request. Writes the
  /// Pub/Sub message attributes to '<KEY>:<VAL>' headers of the HTTP request.
  final bool writeMetadata;

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
      writeMetadata: map['writeMetadata'] as bool,
    );
  }
}

