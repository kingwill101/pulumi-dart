// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountGeoLocation {
  /// The failover priority of the region. A failover priority of `0` indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists. Changing this causes the location to be re-provisioned and cannot be changed for the location with failover priority `0`.
  final pulumi.Input<int> failoverPriority;
  /// The CosmosDB Account ID.
  final pulumi.Input<String>? id;
  /// The name of the Azure region to host replicated data.
  final pulumi.Input<String> location;
  /// Should zone redundancy be enabled for this region? Defaults to `false`.
  final pulumi.Input<bool>? zoneRedundant;

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
      failoverPriority: (map['failoverPriority'] as int).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      location: (map['location'] as String).input(),
      zoneRedundant: map['zoneRedundant'] == null ? null : (map['zoneRedundant'] as bool).input(),
    );
  }
}

