// ignore_for_file: unused_element, unnecessary_cast


class IcebergCatalogReplica {
  /// (Output)
  /// The region of the replica, e.g., `us-east1`.
  final String? region;
  /// (Output)
  /// If the IcebergCatalog is replicated to multiple regions, this describes the current state of the replica. STATE_UNKNOWN - The replica state is unknown. STATE_PRIMARY - The replica is the writable primary. STATE_PRIMARY_IN_PROGRESS - The replica has been recently assigned as the primary, but not all namespaces are writeable yet. STATE_SECONDARY - The replica is a read-only secondary replica.
  final String? state;

  /// Creates a new [IcebergCatalogReplica].
  /// [region] (Output)
  /// [state] (Output)
  IcebergCatalogReplica({
    this.region,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'state': ?state,
    };
  }

  factory IcebergCatalogReplica.fromMap(Map<String, dynamic> map) {
    return IcebergCatalogReplica(
      region: map['region'] == null ? null : map['region'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

