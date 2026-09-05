// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_network_allowed_subnet.dart';
import 'get_virtual_network_subnet_override.dart';

/// Result data returned by getVirtualNetwork.
class GetVirtualNetworkResult {
  /// The list of subnets enabled for the virtual network as defined below.
  final List<GetVirtualNetworkAllowedSubnet>? allowedSubnets;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? labName;
  final String? name;
  final String? resourceGroupName;
  /// The list of permission overrides for the subnets as defined below.
  final List<GetVirtualNetworkSubnetOverride>? subnetOverrides;
  /// The unique immutable identifier of the virtual network.
  final String? uniqueIdentifier;

  /// Creates a new [GetVirtualNetworkResult].
  /// [allowedSubnets] The list of subnets enabled for the virtual network as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labName] Optional.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [subnetOverrides] The list of permission overrides for the subnets as defined below.
  /// [uniqueIdentifier] The unique immutable identifier of the virtual network.
  const GetVirtualNetworkResult({
    this.allowedSubnets,
    this.id,
    this.labName,
    this.name,
    this.resourceGroupName,
    this.subnetOverrides,
    this.uniqueIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSubnets': ?(() { final guardedValue = allowedSubnets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVirtualNetworkAllowedSubnet, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'labName': ?labName,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'subnetOverrides': ?(() { final guardedValue = subnetOverrides; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVirtualNetworkSubnetOverride, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'uniqueIdentifier': ?uniqueIdentifier,
    };
  }

  factory GetVirtualNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkResult(
      allowedSubnets: (() { final guardedValue = map['allowedSubnets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVirtualNetworkAllowedSubnet>(guardedValue, (value) => GetVirtualNetworkAllowedSubnet.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labName: (() { final guardedValue = map['labName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetOverrides: (() { final guardedValue = map['subnetOverrides']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVirtualNetworkSubnetOverride>(guardedValue, (value) => GetVirtualNetworkSubnetOverride.fromMap((value as Map).cast<String, dynamic>())); })(),
      uniqueIdentifier: (() { final guardedValue = map['uniqueIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
