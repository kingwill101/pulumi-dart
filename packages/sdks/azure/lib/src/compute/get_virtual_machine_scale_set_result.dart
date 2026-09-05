// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_machine_scale_set_identity.dart';
import 'get_virtual_machine_scale_set_instance.dart';
import 'get_virtual_machine_scale_set_network_interface.dart';

/// Result data returned by getVirtualMachineScaleSet.
class GetVirtualMachineScaleSetResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `identity` block as defined below.
  final List<GetVirtualMachineScaleSetIdentity>? identities;
  /// A list of `instances` blocks as defined below.
  final List<GetVirtualMachineScaleSetInstance>? instances;
  /// The Azure Region in which this Virtual Machine Scale Set exists.
  final String? location;
  /// The name of the public IP address configuration
  final String? name;
  /// A list of `networkInterface` blocks as defined below.
  final List<GetVirtualMachineScaleSetNetworkInterface>? networkInterfaces;
  final String? resourceGroupName;

  /// Creates a new [GetVirtualMachineScaleSetResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [instances] A list of `instances` blocks as defined below.
  /// [location] The Azure Region in which this Virtual Machine Scale Set exists.
  /// [name] The name of the public IP address configuration
  /// [networkInterfaces] A list of `networkInterface` blocks as defined below.
  /// [resourceGroupName] Optional.
  const GetVirtualMachineScaleSetResult({
    this.id,
    this.identities,
    this.instances,
    this.location,
    this.name,
    this.networkInterfaces,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVirtualMachineScaleSetIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'instances': ?(() { final guardedValue = instances; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVirtualMachineScaleSetInstance, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'networkInterfaces': ?(() { final guardedValue = networkInterfaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVirtualMachineScaleSetNetworkInterface, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetVirtualMachineScaleSetResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineScaleSetResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVirtualMachineScaleSetIdentity>(guardedValue, (value) => GetVirtualMachineScaleSetIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVirtualMachineScaleSetInstance>(guardedValue, (value) => GetVirtualMachineScaleSetInstance.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVirtualMachineScaleSetNetworkInterface>(guardedValue, (value) => GetVirtualMachineScaleSetNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
