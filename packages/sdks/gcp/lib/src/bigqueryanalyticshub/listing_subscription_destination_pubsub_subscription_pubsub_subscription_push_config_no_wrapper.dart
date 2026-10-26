// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfigNoWrapper {
  /// When true, writes the Pub/Sub message metadata to `x-goog-pubsub-&lt;KEY&gt;:&lt;VAL&gt;` headers of the
  /// HTTP request. Writes the Pub/Sub message attributes to `&lt;KEY&gt;:&lt;VAL&gt;` headers of the HTTP request.
  final pulumi.Input<bool?>? writeMetadata;

  /// Creates a new [ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfigNoWrapper].
  /// [writeMetadata] When true, writes the Pub/Sub message metadata to `x-goog-pubsub-&lt;KEY&gt;:&lt;VAL&gt;` headers of the
  const ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfigNoWrapper({
    this.writeMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'writeMetadata': ?writeMetadata,
    };
  }

  factory ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfigNoWrapper.fromMap(Map<String, dynamic> map) {
    return ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfigNoWrapper(
      writeMetadata: (() { final guardedValue = map['writeMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
