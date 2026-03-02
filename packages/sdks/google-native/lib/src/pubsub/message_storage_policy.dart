// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A policy constraining the storage of messages published to the topic.
class MessageStoragePolicy {
  /// Optional. A list of IDs of Google Cloud regions where messages that are published to the topic may be persisted in storage. Messages published by publishers running in non-allowed Google Cloud regions (or running outside of Google Cloud altogether) are routed for storage in one of the allowed regions. An empty list means that no regions are allowed, and is not a valid configuration.
  final pulumi.Input<List<String>>? allowedPersistenceRegions;
  /// Optional. If true, `allowed_persistence_regions` is also used to enforce in-transit guarantees for messages. That is, Pub/Sub will fail Publish operations on this topic and subscribe operations on any subscription attached to this topic in any region that is not in `allowed_persistence_regions`.
  final pulumi.Input<bool>? enforceInTransit;

  /// Creates a new [MessageStoragePolicy].
  /// [allowedPersistenceRegions] Optional. A list of IDs of Google Cloud regions where messages that are published to the topic may be persisted in storage. Messages published by publishers running in non-allowed Google Cloud regions (or running outside of Google Cloud altogether) are routed for storage in one of the allowed regions. An empty list means that no regions are allowed, and is not a valid configuration.
  /// [enforceInTransit] Optional. If true, `allowed_persistence_regions` is also used to enforce in-transit guarantees for messages. That is, Pub/Sub will fail Publish operations on this topic and subscribe operations on any subscription attached to this topic in any region that is not in `allowed_persistence_regions`.
  MessageStoragePolicy({
    this.allowedPersistenceRegions,
    this.enforceInTransit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPersistenceRegions': ?allowedPersistenceRegions,
      'enforceInTransit': ?enforceInTransit,
    };
  }

  factory MessageStoragePolicy.fromMap(Map<String, dynamic> map) {
    return MessageStoragePolicy(
      allowedPersistenceRegions: map['allowedPersistenceRegions'] == null ? null : ((map['allowedPersistenceRegions']! as List).cast<String>()).input(),
      enforceInTransit: map['enforceInTransit'] == null ? null : (map['enforceInTransit']! as bool).input(),
    );
  }
}

