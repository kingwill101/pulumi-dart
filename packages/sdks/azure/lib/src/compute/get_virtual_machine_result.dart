// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_machine_identity.dart';

/// Result data returned by getVirtualMachine.
class GetVirtualMachineResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `identity` block as defined below.
  final List<GetVirtualMachineIdentity>? identities;
  final String? location;
  final String? name;
  /// The power state of the virtual machine.
  final String? powerState;
  /// The Primary Private IP Address assigned to this Virtual Machine.
  final String? privateIpAddress;
  /// A list of Private IP Addresses assigned to this Virtual Machine.
  final List<String>? privateIpAddresses;
  /// The Primary Public IP Address assigned to this Virtual Machine.
  final String? publicIpAddress;
  /// A list of the Public IP Addresses assigned to this Virtual Machine.
  final List<String>? publicIpAddresses;
  final String? resourceGroupName;

  /// Creates a new [GetVirtualMachineResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [location] Optional.
  /// [name] Optional.
  /// [powerState] The power state of the virtual machine.
  /// [privateIpAddress] The Primary Private IP Address assigned to this Virtual Machine.
  /// [privateIpAddresses] A list of Private IP Addresses assigned to this Virtual Machine.
  /// [publicIpAddress] The Primary Public IP Address assigned to this Virtual Machine.
  /// [publicIpAddresses] A list of the Public IP Addresses assigned to this Virtual Machine.
  /// [resourceGroupName] Optional.
  const GetVirtualMachineResult({
    this.id,
    this.identities,
    this.location,
    this.name,
    this.powerState,
    this.privateIpAddress,
    this.privateIpAddresses,
    this.publicIpAddress,
    this.publicIpAddresses,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVirtualMachineIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'powerState': ?powerState,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAddresses': ?privateIpAddresses,
      'publicIpAddress': ?publicIpAddress,
      'publicIpAddresses': ?publicIpAddresses,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetVirtualMachineResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVirtualMachineIdentity>(guardedValue, (value) => GetVirtualMachineIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      powerState: (() { final guardedValue = map['powerState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateIpAddresses: (() { final guardedValue = map['privateIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      publicIpAddress: (() { final guardedValue = map['publicIpAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicIpAddresses: (() { final guardedValue = map['publicIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
