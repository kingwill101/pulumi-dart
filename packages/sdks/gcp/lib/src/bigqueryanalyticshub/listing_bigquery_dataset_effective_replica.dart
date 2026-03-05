// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListingBigqueryDatasetEffectiveReplica {
  /// The name of the location this data exchange listing.
  final pulumi.Input<String>? location;
  /// Output-only. Indicates that this replica is the primary replica.
  /// Possible values: PRIMARY_STATE_UNSPECIFIED, PRIMARY_REPLICA
  final pulumi.Input<String>? primaryState;
  /// Output-only. Assigned by Analytics Hub based on real BigQuery replication state.
  /// Possible values: REPLICA_STATE_UNSPECIFIED, READY_TO_USE, UNAVAILABLE
  final pulumi.Input<String>? replicaState;

  /// Creates a new [ListingBigqueryDatasetEffectiveReplica].
  /// [location] The name of the location this data exchange listing.
  /// [primaryState] Output-only. Indicates that this replica is the primary replica.
  /// [replicaState] Output-only. Assigned by Analytics Hub based on real BigQuery replication state.
  ListingBigqueryDatasetEffectiveReplica({
    this.location,
    this.primaryState,
    this.replicaState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'primaryState': ?primaryState,
      'replicaState': ?replicaState,
    };
  }

  factory ListingBigqueryDatasetEffectiveReplica.fromMap(Map<String, dynamic> map) {
    return ListingBigqueryDatasetEffectiveReplica(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryState: (() { final guardedValue = map['primaryState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaState: (() { final guardedValue = map['replicaState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

