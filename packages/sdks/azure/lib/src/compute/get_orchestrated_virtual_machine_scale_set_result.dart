// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_orchestrated_virtual_machine_scale_set_identity.dart';
import 'get_orchestrated_virtual_machine_scale_set_network_interface.dart';
import 'get_orchestrated_virtual_machine_scale_set_sku_profile.dart';

/// Result data returned by getOrchestratedVirtualMachineScaleSet.
class GetOrchestratedVirtualMachineScaleSetResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `identity` block as defined below.
  final List<GetOrchestratedVirtualMachineScaleSetIdentity>? identities;
  /// The Azure Region in which this Orchestrated Virtual Machine Scale Set exists.
  final String? location;
  /// The name of the VM size.
  final String? name;
  /// A list of `networkInterface` blocks as defined below.
  final List<GetOrchestratedVirtualMachineScaleSetNetworkInterface>? networkInterfaces;
  final String? resourceGroupName;
  /// A `skuProfile` block as defined below.
  final List<GetOrchestratedVirtualMachineScaleSetSkuProfile>? skuProfiles;

  /// Creates a new [GetOrchestratedVirtualMachineScaleSetResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [location] The Azure Region in which this Orchestrated Virtual Machine Scale Set exists.
  /// [name] The name of the VM size.
  /// [networkInterfaces] A list of `networkInterface` blocks as defined below.
  /// [resourceGroupName] Optional.
  /// [skuProfiles] A `skuProfile` block as defined below.
  const GetOrchestratedVirtualMachineScaleSetResult({
    this.id,
    this.identities,
    this.location,
    this.name,
    this.networkInterfaces,
    this.resourceGroupName,
    this.skuProfiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOrchestratedVirtualMachineScaleSetIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'networkInterfaces': ?(() { final guardedValue = networkInterfaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOrchestratedVirtualMachineScaleSetNetworkInterface, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupName': ?resourceGroupName,
      'skuProfiles': ?(() { final guardedValue = skuProfiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOrchestratedVirtualMachineScaleSetSkuProfile, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetOrchestratedVirtualMachineScaleSetResult.fromMap(Map<String, dynamic> map) {
    return GetOrchestratedVirtualMachineScaleSetResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOrchestratedVirtualMachineScaleSetIdentity>(guardedValue, (value) => GetOrchestratedVirtualMachineScaleSetIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOrchestratedVirtualMachineScaleSetNetworkInterface>(guardedValue, (value) => GetOrchestratedVirtualMachineScaleSetNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuProfiles: (() { final guardedValue = map['skuProfiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOrchestratedVirtualMachineScaleSetSkuProfile>(guardedValue, (value) => GetOrchestratedVirtualMachineScaleSetSkuProfile.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
