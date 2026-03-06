// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_orchestrated_virtual_machine_scale_set_identity.dart';
import 'get_orchestrated_virtual_machine_scale_set_network_interface.dart';

/// Result data returned by getOrchestratedVirtualMachineScaleSet.
class GetOrchestratedVirtualMachineScaleSetResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A `identity` block as defined below.
  final List<GetOrchestratedVirtualMachineScaleSetIdentity> identities;
  /// The Azure Region in which this Orchestrated Virtual Machine Scale Set exists.
  final String location;
  /// The name of the public IP address configuration
  final String name;
  /// A list of `network_interface` blocks as defined below.
  final List<GetOrchestratedVirtualMachineScaleSetNetworkInterface> networkInterfaces;
  final String resourceGroupName;

  /// Creates a new [GetOrchestratedVirtualMachineScaleSetResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [location] The Azure Region in which this Orchestrated Virtual Machine Scale Set exists.
  /// [name] The name of the public IP address configuration
  /// [networkInterfaces] A list of `network_interface` blocks as defined below.
  /// [resourceGroupName] Required.
  const GetOrchestratedVirtualMachineScaleSetResult({
    required this.id,
    required this.identities,
    required this.location,
    required this.name,
    required this.networkInterfaces,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'identities': pulumi.Input.encodeList<GetOrchestratedVirtualMachineScaleSetIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'location': location,
      'name': name,
      'networkInterfaces': pulumi.Input.encodeList<GetOrchestratedVirtualMachineScaleSetNetworkInterface, Map<String, dynamic>>(networkInterfaces, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetOrchestratedVirtualMachineScaleSetResult.fromMap(Map<String, dynamic> map) {
    return GetOrchestratedVirtualMachineScaleSetResult(
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetOrchestratedVirtualMachineScaleSetIdentity>(map['identities']!, (value) => GetOrchestratedVirtualMachineScaleSetIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      networkInterfaces: pulumi.Input.decodeList<GetOrchestratedVirtualMachineScaleSetNetworkInterface>(map['networkInterfaces']!, (value) => GetOrchestratedVirtualMachineScaleSetNetworkInterface.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

