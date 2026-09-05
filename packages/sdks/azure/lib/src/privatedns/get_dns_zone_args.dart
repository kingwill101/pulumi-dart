// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_get_dns_zone_get_dns_zone_args_doc}
/// Arguments for getDnsZone.
/// {@endtemplate}
/// {@macro pulumi_privatedns_get_dns_zone_get_dns_zone_args_doc}
class GetDnsZoneArgs {
  /// The name of the Private DNS Zone.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where the Private DNS Zone exists.
  /// If the Name of the Resource Group is not provided, the first Private DNS Zone from the list of Private
  /// DNS Zones in your subscription that matches `name` will be returned.
  final pulumi.Input<String?>? resourceGroupName;
  /// A mapping of tags for the zone.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [GetDnsZoneArgs].
  /// [name] The name of the Private DNS Zone.
  /// [resourceGroupName] The Name of the Resource Group where the Private DNS Zone exists.
  /// [tags] A mapping of tags for the zone.
  const GetDnsZoneArgs({
    required this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetDnsZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsZoneArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
