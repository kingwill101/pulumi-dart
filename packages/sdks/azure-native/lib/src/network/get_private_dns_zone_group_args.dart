// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_private_dns_zone_group_args_doc}
/// Arguments for getPrivateDnsZoneGroup.
/// {@endtemplate}
/// {@macro pulumi_network_get_private_dns_zone_group_args_doc}
class GetPrivateDnsZoneGroupArgs {
  /// The name of the private dns zone group.
  final pulumi.Input<String> privateDnsZoneGroupName;
  /// The name of the private endpoint.
  final pulumi.Input<String> privateEndpointName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateDnsZoneGroupArgs].
  /// [privateDnsZoneGroupName] The name of the private dns zone group.
  /// [privateEndpointName] The name of the private endpoint.
  /// [resourceGroupName] The name of the resource group.
  GetPrivateDnsZoneGroupArgs({
    required this.privateDnsZoneGroupName,
    required this.privateEndpointName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateDnsZoneGroupName': privateDnsZoneGroupName,
      'privateEndpointName': privateEndpointName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateDnsZoneGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateDnsZoneGroupArgs(
      privateDnsZoneGroupName: pulumi.Input.fromValue(map['privateDnsZoneGroupName'] as String),
      privateEndpointName: pulumi.Input.fromValue(map['privateEndpointName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

