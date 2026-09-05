// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountGeoLocation {
  /// The failover priority of the region. A failover priority of `0` indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists. Changing this causes the location to be re-provisioned and cannot be changed for the location with failover priority `0`.
  final pulumi.Input<int> failoverPriority;
  /// The CosmosDB Account ID.
  final pulumi.Input<String?>? id;
  /// The name of the Azure region to host replicated data.
  final pulumi.Input<String> location;
  /// Should zone redundancy be enabled for this region? Defaults to `false`.
  ///
  /// &gt; **Note:** You cannot change zone redundancy in a region that has already been added to a Cosmos DB account. If you wish to change this setting in a deployed region without recreating the account, you can [follow the steps outlined in the official documentation](https://learn.microsoft.com/azure/cosmos-db/enable-zone-redundancy?tabs=portal#enable-zone-redundancy-on-an-existing-account).
  final pulumi.Input<bool?>? zoneRedundant;

  /// Creates a new [AccountGeoLocation].
  /// [failoverPriority] The failover priority of the region. A failover priority of `0` indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists. Changing this causes the location to be re-provisioned and cannot be changed for the location with failover priority `0`.
  /// [id] The CosmosDB Account ID.
  /// [location] The name of the Azure region to host replicated data.
  /// [zoneRedundant] Should zone redundancy be enabled for this region? Defaults to `false`.
  const AccountGeoLocation({
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
      failoverPriority: pulumi.Input.fromValue((map['failoverPriority'] as num).toInt()),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
