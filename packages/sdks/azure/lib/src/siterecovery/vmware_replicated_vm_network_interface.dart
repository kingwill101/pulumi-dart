// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VmwareReplicatedVmNetworkInterface {
  /// Whether this `network_interface` is primary for the replicated VM.
  final pulumi.Input<bool> isPrimary;
  /// Mac address of the network interface of source VM.
  final pulumi.Input<String> sourceMacAddress;
  /// Static IP to assign when a failover is done.
  final pulumi.Input<String>? targetStaticIp;
  /// Name of the subnet to use when a failover is done.
  final pulumi.Input<String>? targetSubnetName;
  /// Name of the subnet to use when a test failover is done.
  final pulumi.Input<String>? testSubnetName;

  /// Creates a new [VmwareReplicatedVmNetworkInterface].
  /// [isPrimary] Whether this `network_interface` is primary for the replicated VM.
  /// [sourceMacAddress] Mac address of the network interface of source VM.
  /// [targetStaticIp] Static IP to assign when a failover is done.
  /// [targetSubnetName] Name of the subnet to use when a failover is done.
  /// [testSubnetName] Name of the subnet to use when a test failover is done.
  VmwareReplicatedVmNetworkInterface({
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
      isPrimary: (map['isPrimary'] as bool).input(),
      sourceMacAddress: (map['sourceMacAddress'] as String).input(),
      targetStaticIp: map['targetStaticIp'] == null ? null : (map['targetStaticIp']! as String).input(),
      targetSubnetName: map['targetSubnetName'] == null ? null : (map['targetSubnetName']! as String).input(),
      testSubnetName: map['testSubnetName'] == null ? null : (map['testSubnetName']! as String).input(),
    );
  }
}

