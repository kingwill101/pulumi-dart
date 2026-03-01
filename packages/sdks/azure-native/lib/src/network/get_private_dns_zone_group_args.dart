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
    required pulumi.Output<String> privateDnsZoneGroupName,
    required pulumi.Output<String> privateEndpointName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      privateDnsZoneGroupName = pulumi.Input.asInput<String>(privateDnsZoneGroupName),
      privateEndpointName = pulumi.Input.asInput<String>(privateEndpointName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateDnsZoneGroupName': privateDnsZoneGroupName,
      'privateEndpointName': privateEndpointName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateDnsZoneGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateDnsZoneGroupArgs(
      privateDnsZoneGroupName: pulumi.Output.create<String>(map['privateDnsZoneGroupName'] as String),
      privateEndpointName: pulumi.Output.create<String>(map['privateEndpointName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

