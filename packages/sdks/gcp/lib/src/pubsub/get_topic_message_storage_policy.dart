// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTopicMessageStoragePolicy {
  /// A list of IDs of GCP regions where messages that are published to
  /// the topic may be persisted in storage. Messages published by
  /// publishers running in non-allowed GCP regions (or running outside
  /// of GCP altogether) will be routed for storage in one of the
  /// allowed regions. An empty list means that no regions are allowed,
  /// and is not a valid configuration.
  final pulumi.Input<List<String>> allowedPersistenceRegions;
  /// If true, 'allowedPersistenceRegions' is also used to enforce in-transit
  /// guarantees for messages. That is, Pub/Sub will fail topics.publish
  /// operations on this topic and subscribe operations on any subscription
  /// attached to this topic in any region that is not in 'allowedPersistenceRegions'.
  final pulumi.Input<bool> enforceInTransit;

  /// Creates a new [GetTopicMessageStoragePolicy].
  /// [allowedPersistenceRegions] A list of IDs of GCP regions where messages that are published to
  /// [enforceInTransit] If true, 'allowedPersistenceRegions' is also used to enforce in-transit
  GetTopicMessageStoragePolicy({
    required this.allowedPersistenceRegions,
    required this.enforceInTransit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPersistenceRegions': allowedPersistenceRegions,
      'enforceInTransit': enforceInTransit,
    };
  }

  factory GetTopicMessageStoragePolicy.fromMap(Map<String, dynamic> map) {
    return GetTopicMessageStoragePolicy(
      allowedPersistenceRegions: ((map['allowedPersistenceRegions'] as List).cast<String>()).input(),
      enforceInTransit: (map['enforceInTransit'] as bool).input(),
    );
  }
}

