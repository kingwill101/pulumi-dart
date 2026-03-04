// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_network_allowed_subnet.dart';
import 'get_virtual_network_subnet_override.dart';

/// Result data returned by getVirtualNetwork.
class GetVirtualNetworkResult {
  /// The list of subnets enabled for the virtual network as defined below.
  final List<GetVirtualNetworkAllowedSubnet> allowedSubnets;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String labName;
  final String name;
  final String resourceGroupName;

  /// The list of permission overrides for the subnets as defined below.
  final List<GetVirtualNetworkSubnetOverride> subnetOverrides;

  /// The unique immutable identifier of the virtual network.
  final String uniqueIdentifier;

  /// Creates a new [GetVirtualNetworkResult].
  /// [allowedSubnets] The list of subnets enabled for the virtual network as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labName] Required.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [subnetOverrides] The list of permission overrides for the subnets as defined below.
  /// [uniqueIdentifier] The unique immutable identifier of the virtual network.
  GetVirtualNetworkResult({
    required this.allowedSubnets,
    required this.id,
    required this.labName,
    required this.name,
    required this.resourceGroupName,
    required this.subnetOverrides,
    required this.uniqueIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSubnets':
          pulumi.Input.encodeList<
            GetVirtualNetworkAllowedSubnet,
            Map<String, dynamic>
          >(allowedSubnets, (value) => value.toMap()),
      'id': id,
      'labName': labName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'subnetOverrides':
          pulumi.Input.encodeList<
            GetVirtualNetworkSubnetOverride,
            Map<String, dynamic>
          >(subnetOverrides, (value) => value.toMap()),
      'uniqueIdentifier': uniqueIdentifier,
    };
  }

  factory GetVirtualNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkResult(
      allowedSubnets: pulumi.Input.decodeList<GetVirtualNetworkAllowedSubnet>(
        map['allowedSubnets']!,
        (value) => GetVirtualNetworkAllowedSubnet.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      labName: map['labName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      subnetOverrides: pulumi.Input.decodeList<GetVirtualNetworkSubnetOverride>(
        map['subnetOverrides']!,
        (value) => GetVirtualNetworkSubnetOverride.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      uniqueIdentifier: map['uniqueIdentifier'] as String,
    );
  }
}
