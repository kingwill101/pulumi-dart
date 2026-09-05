// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VmwareReplicatedVmNetworkInterface {
  /// Whether this `networkInterface` is primary for the replicated VM.
  final pulumi.Input<bool> isPrimary;
  /// Mac address of the network interface of source VM.
  final pulumi.Input<String> sourceMacAddress;
  /// Static IP to assign when a failover is done.
  final pulumi.Input<String?>? targetStaticIp;
  /// Name of the subnet to use when a failover is done.
  final pulumi.Input<String?>? targetSubnetName;
  /// Name of the subnet to use when a test failover is done.
  final pulumi.Input<String?>? testSubnetName;

  /// Creates a new [VmwareReplicatedVmNetworkInterface].
  /// [isPrimary] Whether this `networkInterface` is primary for the replicated VM.
  /// [sourceMacAddress] Mac address of the network interface of source VM.
  /// [targetStaticIp] Static IP to assign when a failover is done.
  /// [targetSubnetName] Name of the subnet to use when a failover is done.
  /// [testSubnetName] Name of the subnet to use when a test failover is done.
  const VmwareReplicatedVmNetworkInterface({
    required this.isPrimary,
    required this.sourceMacAddress,
    this.targetStaticIp,
    this.targetSubnetName,
    this.testSubnetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isPrimary': isPrimary,
      'sourceMacAddress': sourceMacAddress,
      'targetStaticIp': ?targetStaticIp,
      'targetSubnetName': ?targetSubnetName,
      'testSubnetName': ?testSubnetName,
    };
  }

  factory VmwareReplicatedVmNetworkInterface.fromMap(Map<String, dynamic> map) {
    return VmwareReplicatedVmNetworkInterface(
      isPrimary: pulumi.Input.fromValue(map['isPrimary'] as bool),
      sourceMacAddress: pulumi.Input.fromValue(map['sourceMacAddress'] as String),
      targetStaticIp: (() { final guardedValue = map['targetStaticIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetSubnetName: (() { final guardedValue = map['targetSubnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testSubnetName: (() { final guardedValue = map['testSubnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
