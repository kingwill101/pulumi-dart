// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_nat_gateway_nat_gateway_args_doc}
/// The set of arguments for NatGateway.
/// {@endtemplate}
/// {@macro pulumi_network_nat_gateway_nat_gateway_args_doc}
class NatGatewayArgs {
  /// The idle timeout which should be used in minutes. Defaults to `4`.
  final pulumi.Input<int?>? idleTimeoutInMinutes;
  /// Specifies the supported Azure location where the NAT Gateway should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name of the NAT Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the name of the Resource Group in which the NAT Gateway should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU which should be used. Possible values are `Standard` and `StandardV2`. Defaults to `Standard`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? skuName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** For `Standard`, `zones` may be omitted for a no-zone deployment or set to a single Availability Zone. For more information, please see the [Azure documentation](https://learn.microsoft.com/azure/nat-gateway/nat-overview#availability-zones).
  ///
  /// &gt; **Note:** `zones` must be omitted when `skuName` is set to `StandardV2`. `StandardV2` NAT Gateways are zone-redundant by default and Azure automatically deploys across all available zones. For more information, please see the [Azure documentation](https://learn.microsoft.com/azure/nat-gateway/nat-overview#standardv2-nat-gateway).
  final pulumi.Input<List<String>?>? zones;

  /// Creates a new [NatGatewayArgs].
  /// [idleTimeoutInMinutes] The idle timeout which should be used in minutes. Defaults to `4`.
  /// [location] Specifies the supported Azure location where the NAT Gateway should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the NAT Gateway. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group in which the NAT Gateway should exist. Changing this forces a new resource to be created.
  /// [skuName] The SKU which should be used. Possible values are `Standard` and `StandardV2`. Defaults to `Standard`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zones] A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new resource to be created.
  const NatGatewayArgs({
    this.idleTimeoutInMinutes,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.skuName,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory NatGatewayArgs.fromMap(Map<String, dynamic> map) {
    return NatGatewayArgs(
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
