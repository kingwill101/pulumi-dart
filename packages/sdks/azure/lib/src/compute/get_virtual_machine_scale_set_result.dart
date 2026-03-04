// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_machine_scale_set_identity.dart';
import 'get_virtual_machine_scale_set_instance.dart';
import 'get_virtual_machine_scale_set_network_interface.dart';

/// Result data returned by getVirtualMachineScaleSet.
class GetVirtualMachineScaleSetResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A `identity` block as defined below.
  final List<GetVirtualMachineScaleSetIdentity> identities;

  /// A list of `instances` blocks as defined below.
  final List<GetVirtualMachineScaleSetInstance> instances;

  /// The Azure Region in which this Virtual Machine Scale Set exists.
  final String location;

  /// The name of the public IP address configuration
  final String name;

  /// A list of `network_interface` blocks as defined below.
  final List<GetVirtualMachineScaleSetNetworkInterface> networkInterfaces;
  final String resourceGroupName;

  /// Creates a new [GetVirtualMachineScaleSetResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [instances] A list of `instances` blocks as defined below.
  /// [location] The Azure Region in which this Virtual Machine Scale Set exists.
  /// [name] The name of the public IP address configuration
  /// [networkInterfaces] A list of `network_interface` blocks as defined below.
  /// [resourceGroupName] Required.
  GetVirtualMachineScaleSetResult({
    required this.id,
    required this.identities,
    required this.instances,
    required this.location,
    required this.name,
    required this.networkInterfaces,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'identities':
          pulumi.Input.encodeList<
            GetVirtualMachineScaleSetIdentity,
            Map<String, dynamic>
          >(identities, (value) => value.toMap()),
      'instances':
          pulumi.Input.encodeList<
            GetVirtualMachineScaleSetInstance,
            Map<String, dynamic>
          >(instances, (value) => value.toMap()),
      'location': location,
      'name': name,
      'networkInterfaces':
          pulumi.Input.encodeList<
            GetVirtualMachineScaleSetNetworkInterface,
            Map<String, dynamic>
          >(networkInterfaces, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetVirtualMachineScaleSetResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineScaleSetResult(
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetVirtualMachineScaleSetIdentity>(
        map['identities']!,
        (value) => GetVirtualMachineScaleSetIdentity.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      instances: pulumi.Input.decodeList<GetVirtualMachineScaleSetInstance>(
        map['instances']!,
        (value) => GetVirtualMachineScaleSetInstance.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      location: map['location'] as String,
      name: map['name'] as String,
      networkInterfaces:
          pulumi.Input.decodeList<GetVirtualMachineScaleSetNetworkInterface>(
            map['networkInterfaces']!,
            (value) => GetVirtualMachineScaleSetNetworkInterface.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}
