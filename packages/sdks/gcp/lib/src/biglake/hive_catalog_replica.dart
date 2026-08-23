// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HiveCatalogReplica {
  /// (Output)
  /// The region of the replica, e.g., `us-east1`.
  final pulumi.Input<String>? region;
  /// (Output)
  /// If the catalog is replicated to multiple regions, this enum describes the current state of the replica. STATE_UNSPECIFIED - The replica state is unknown. STATE_PRIMARY - The replica is the writable primary. STATE_PRIMARY_IN_PROGRESS - The replica has been recently assigned as the primary, but not all databases are writeable yet. STATE_SECONDARY - The replica is a read-only secondary replica.
  final pulumi.Input<String>? state;

  /// Creates a new [HiveCatalogReplica].
  /// [region] (Output)
  /// [state] (Output)
  const HiveCatalogReplica({
    this.region,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'state': ?state,
    };
  }

  factory HiveCatalogReplica.fromMap(Map<String, dynamic> map) {
    return HiveCatalogReplica(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
