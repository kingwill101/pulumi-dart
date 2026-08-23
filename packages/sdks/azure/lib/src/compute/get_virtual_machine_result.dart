// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_machine_identity.dart';

/// Result data returned by getVirtualMachine.
class GetVirtualMachineResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A `identity` block as defined below.
  final List<GetVirtualMachineIdentity> identities;
  final String location;
  final String name;
  /// The power state of the virtual machine.
  final String powerState;
  /// The Primary Private IP Address assigned to this Virtual Machine.
  final String privateIpAddress;
  /// A list of Private IP Addresses assigned to this Virtual Machine.
  final List<String> privateIpAddresses;
  /// The Primary Public IP Address assigned to this Virtual Machine.
  final String publicIpAddress;
  /// A list of the Public IP Addresses assigned to this Virtual Machine.
  final List<String> publicIpAddresses;
  final String resourceGroupName;

  /// Creates a new [GetVirtualMachineResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [location] Required.
  /// [name] Required.
  /// [powerState] The power state of the virtual machine.
  /// [privateIpAddress] The Primary Private IP Address assigned to this Virtual Machine.
  /// [privateIpAddresses] A list of Private IP Addresses assigned to this Virtual Machine.
  /// [publicIpAddress] The Primary Public IP Address assigned to this Virtual Machine.
  /// [publicIpAddresses] A list of the Public IP Addresses assigned to this Virtual Machine.
  /// [resourceGroupName] Required.
  const GetVirtualMachineResult({
    required this.id,
    required this.identities,
    required this.location,
    required this.name,
    required this.powerState,
    required this.privateIpAddress,
    required this.privateIpAddresses,
    required this.publicIpAddress,
    required this.publicIpAddresses,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'identities': pulumi.Input.encodeList<GetVirtualMachineIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'location': location,
      'name': name,
      'powerState': powerState,
      'privateIpAddress': privateIpAddress,
      'privateIpAddresses': privateIpAddresses,
      'publicIpAddress': publicIpAddress,
      'publicIpAddresses': publicIpAddresses,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetVirtualMachineResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineResult(
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetVirtualMachineIdentity>(map['identities']!, (value) => GetVirtualMachineIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      powerState: map['powerState'] as String,
      privateIpAddress: map['privateIpAddress'] as String,
      privateIpAddresses: (map['privateIpAddresses'] as List).cast<String>(),
      publicIpAddress: map['publicIpAddress'] as String,
      publicIpAddresses: (map['publicIpAddresses'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}
