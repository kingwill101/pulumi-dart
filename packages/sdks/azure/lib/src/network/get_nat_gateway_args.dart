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
  GetNatGatewayArgs({
    required pulumi.Output<String> name,
    pulumi.Output<List<String>>? publicIpAddressIds,
    pulumi.Output<List<String>>? publicIpPrefixIds,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      publicIpAddressIds = pulumi.Input.asOptionalInput<List<String>>(publicIpAddressIds),
      publicIpPrefixIds = pulumi.Input.asOptionalInput<List<String>>(publicIpPrefixIds),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      name: pulumi.Output.create<String>(map['name'] as String),
      publicIpAddressIds: map['publicIpAddressIds'] == null ? null : pulumi.Output.create<List<String>>((map['publicIpAddressIds'] as List).cast<String>()),
      publicIpPrefixIds: map['publicIpPrefixIds'] == null ? null : pulumi.Output.create<List<String>>((map['publicIpPrefixIds'] as List).cast<String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

