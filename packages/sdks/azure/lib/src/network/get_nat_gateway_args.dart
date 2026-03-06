// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_nat_gateway_get_nat_gateway_args_doc}
/// Arguments for getNatGateway.
/// {@endtemplate}
/// {@macro pulumi_network_get_nat_gateway_get_nat_gateway_args_doc}
class GetNatGatewayArgs {
  /// Specifies the Name of the NAT Gateway.
  final pulumi.Input<String> name;
  /// A list of existing Public IP Address resource IDs which the NAT Gateway is using.
  final pulumi.Input<List<String>>? publicIpAddressIds;
  /// A list of existing Public IP Prefix resource IDs which the NAT Gateway is using.
  final pulumi.Input<List<String>>? publicIpPrefixIds;
  /// Specifies the name of the Resource Group where the NAT Gateway exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNatGatewayArgs].
  /// [name] Specifies the Name of the NAT Gateway.
  /// [publicIpAddressIds] A list of existing Public IP Address resource IDs which the NAT Gateway is using.
  /// [publicIpPrefixIds] A list of existing Public IP Prefix resource IDs which the NAT Gateway is using.
  /// [resourceGroupName] Specifies the name of the Resource Group where the NAT Gateway exists.
  const GetNatGatewayArgs({
    required this.name,
    this.publicIpAddressIds,
    this.publicIpPrefixIds,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'publicIpAddressIds': ?publicIpAddressIds,
      'publicIpPrefixIds': ?publicIpPrefixIds,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNatGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetNatGatewayArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      publicIpAddressIds: (() { final guardedValue = map['publicIpAddressIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      publicIpPrefixIds: (() { final guardedValue = map['publicIpPrefixIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

