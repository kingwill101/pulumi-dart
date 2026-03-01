// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_get_zone_virtual_network_link_get_zone_virtual_network_link_args_doc}
/// Arguments for getZoneVirtualNetworkLink.
/// {@endtemplate}
/// {@macro pulumi_privatedns_get_zone_virtual_network_link_get_zone_virtual_network_link_args_doc}
class GetZoneVirtualNetworkLinkArgs {
  /// The name of the Private DNS Zone Virtual Network Link.
  final pulumi.Input<String> name;
  /// The name of the Private DNS zone (without a terminating dot).
  final pulumi.Input<String> privateDnsZoneName;
  /// Specifies the resource group where the Private DNS Zone exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetZoneVirtualNetworkLinkArgs].
  /// [name] The name of the Private DNS Zone Virtual Network Link.
  /// [privateDnsZoneName] The name of the Private DNS zone (without a terminating dot).
  /// [resourceGroupName] Specifies the resource group where the Private DNS Zone exists.
  GetZoneVirtualNetworkLinkArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> privateDnsZoneName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      privateDnsZoneName = pulumi.Input.asInput<String>(privateDnsZoneName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'privateDnsZoneName': privateDnsZoneName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetZoneVirtualNetworkLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneVirtualNetworkLinkArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      privateDnsZoneName: pulumi.Output.create<String>(map['privateDnsZoneName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

