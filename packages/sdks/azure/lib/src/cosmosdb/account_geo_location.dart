// ignore_for_file: unused_element, unnecessary_cast


class AccountGeoLocation {
  /// The failover priority of the region. A failover priority of `0` indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists. Changing this causes the location to be re-provisioned and cannot be changed for the location with failover priority `0`.
  final int failoverPriority;
  /// The CosmosDB Account ID.
  final String? id;
  /// The name of the Azure region to host replicated data.
  final String location;
  /// Should zone redundancy be enabled for this region? Defaults to `false`.
  final bool? zoneRedundant;

  /// Creates a new [AccountGeoLocation].
  /// [failoverPriority] The failover priority of the region. A failover priority of `0` indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists. Changing this causes the location to be re-provisioned and cannot be changed for the location with failover priority `0`.
  /// [id] The CosmosDB Account ID.
  /// [location] The name of the Azure region to host replicated data.
  /// [zoneRedundant] Should zone redundancy be enabled for this region? Defaults to `false`.
  AccountGeoLocation({
    required this.failoverPriority,
    this.id,
    required this.location,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverPriority': failoverPriority,
      'id': ?id,
      'location': location,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory AccountGeoLocation.fromMap(Map<String, dynamic> map) {
    return AccountGeoLocation(
      failoverPriority: map['failoverPriority'] as int,
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] as String,
      zoneRedundant: map['zoneRedundant'] == null ? null : map['zoneRedundant'] as bool,
    );
  }
}

