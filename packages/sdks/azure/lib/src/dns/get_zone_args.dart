// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_zone_get_zone_args_doc}
/// Arguments for getZone.
/// {@endtemplate}
/// {@macro pulumi_dns_get_zone_get_zone_args_doc}
class GetZoneArgs {
  /// The name of the DNS Zone.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where the DNS Zone exists.
  /// If the Name of the Resource Group is not provided, the first DNS Zone from the list of DNS Zones
  /// in your subscription that matches `name` will be returned.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [GetZoneArgs].
  /// [name] The name of the DNS Zone.
  /// [resourceGroupName] The Name of the Resource Group where the DNS Zone exists.
  GetZoneArgs({
    required this.name,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
    );
  }
}

