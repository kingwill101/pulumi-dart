// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MigrationJobReverseSshConnectivity {
  /// The name of the virtual machine (Compute Engine) used as the bastion server
  /// for the SSH tunnel.
  final pulumi.Input<String>? vm;
  /// The IP of the virtual machine (Compute Engine) used as the bastion server
  /// for the SSH tunnel.
  final pulumi.Input<String>? vmIp;
  /// The forwarding port of the virtual machine (Compute Engine) used as the
  /// bastion server for the SSH tunnel.
  final pulumi.Input<int>? vmPort;
  /// The name of the VPC to peer with the Cloud SQL private network.
  final pulumi.Input<String>? vpc;

  /// Creates a new [MigrationJobReverseSshConnectivity].
  /// [vm] The name of the virtual machine (Compute Engine) used as the bastion server
  /// [vmIp] The IP of the virtual machine (Compute Engine) used as the bastion server
  /// [vmPort] The forwarding port of the virtual machine (Compute Engine) used as the
  /// [vpc] The name of the VPC to peer with the Cloud SQL private network.
  MigrationJobReverseSshConnectivity({
    this.vm,
    this.vmIp,
    this.vmPort,
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vm': ?vm,
      'vmIp': ?vmIp,
      'vmPort': ?vmPort,
      'vpc': ?vpc,
    };
  }

  factory MigrationJobReverseSshConnectivity.fromMap(Map<String, dynamic> map) {
    return MigrationJobReverseSshConnectivity(
      vm: (() { final guardedValue = map['vm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmIp: (() { final guardedValue = map['vmIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmPort: (() { final guardedValue = map['vmPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vpc: (() { final guardedValue = map['vpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

