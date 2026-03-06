// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualMachineScaleSetInstance {
  /// The Hostname of this Virtual Machine.
  final pulumi.Input<String> computerName;
  /// The Instance ID of this Virtual Machine.
  final pulumi.Input<String> instanceId;
  /// Whether the latest model has been applied to this Virtual Machine.
  final pulumi.Input<bool> latestModelApplied;
  /// The name of this Virtual Machine Scale Set.
  final pulumi.Input<String> name;
  /// The power state of the virtual machine.
  final pulumi.Input<String> powerState;
  /// The Primary Private IP Address assigned to this Virtual Machine.
  final pulumi.Input<String> privateIpAddress;
  /// A list of Private IP Addresses assigned to this Virtual Machine.
  final pulumi.Input<List<String>> privateIpAddresses;
  /// A `public_ip_address` block as defined below.
  final pulumi.Input<String> publicIpAddress;
  /// A list of the Public IP Addresses assigned to this Virtual Machine.
  final pulumi.Input<List<String>> publicIpAddresses;
  /// The unique ID of the virtual machine.
  final pulumi.Input<String> virtualMachineId;
  /// The zones of the virtual machine.
  final pulumi.Input<String> zone;

  /// Creates a new [GetVirtualMachineScaleSetInstance].
  /// [computerName] The Hostname of this Virtual Machine.
  /// [instanceId] The Instance ID of this Virtual Machine.
  /// [latestModelApplied] Whether the latest model has been applied to this Virtual Machine.
  /// [name] The name of this Virtual Machine Scale Set.
  /// [powerState] The power state of the virtual machine.
  /// [privateIpAddress] The Primary Private IP Address assigned to this Virtual Machine.
  /// [privateIpAddresses] A list of Private IP Addresses assigned to this Virtual Machine.
  /// [publicIpAddress] A `public_ip_address` block as defined below.
  /// [publicIpAddresses] A list of the Public IP Addresses assigned to this Virtual Machine.
  /// [virtualMachineId] The unique ID of the virtual machine.
  /// [zone] The zones of the virtual machine.
  const GetVirtualMachineScaleSetInstance({
    required this.computerName,
    required this.instanceId,
    required this.latestModelApplied,
    required this.name,
    required this.powerState,
    required this.privateIpAddress,
    required this.privateIpAddresses,
    required this.publicIpAddress,
    required this.publicIpAddresses,
    required this.virtualMachineId,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computerName': computerName,
      'instanceId': instanceId,
      'latestModelApplied': latestModelApplied,
      'name': name,
      'powerState': powerState,
      'privateIpAddress': privateIpAddress,
      'privateIpAddresses': privateIpAddresses,
      'publicIpAddress': publicIpAddress,
      'publicIpAddresses': publicIpAddresses,
      'virtualMachineId': virtualMachineId,
      'zone': zone,
    };
  }

  factory GetVirtualMachineScaleSetInstance.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineScaleSetInstance(
      computerName: pulumi.Input.fromValue(map['computerName'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      latestModelApplied: pulumi.Input.fromValue(map['latestModelApplied'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      powerState: pulumi.Input.fromValue(map['powerState'] as String),
      privateIpAddress: pulumi.Input.fromValue(map['privateIpAddress'] as String),
      privateIpAddresses: pulumi.Input.fromValue((map['privateIpAddresses'] as List).cast<String>()),
      publicIpAddress: pulumi.Input.fromValue(map['publicIpAddress'] as String),
      publicIpAddresses: pulumi.Input.fromValue((map['publicIpAddresses'] as List).cast<String>()),
      virtualMachineId: pulumi.Input.fromValue(map['virtualMachineId'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}

