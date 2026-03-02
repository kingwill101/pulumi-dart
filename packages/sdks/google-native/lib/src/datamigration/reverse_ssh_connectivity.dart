// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details needed to configure a reverse SSH tunnel between the source and destination databases. These details will be used when calling the generateSshScript method (see https://cloud.google.com/database-migration/docs/reference/rest/v1/projects.locations.migrationJobs/generateSshScript) to produce the script that will help set up the reverse SSH tunnel, and to set up the VPC peering between the Cloud SQL private network and the VPC.
class ReverseSshConnectivity {
  /// The name of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.
  final pulumi.Input<String>? vm;
  /// The IP of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.
  final pulumi.Input<String> vmIp;
  /// The forwarding port of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.
  final pulumi.Input<int> vmPort;
  /// The name of the VPC to peer with the Cloud SQL private network.
  final pulumi.Input<String>? vpc;

  /// Creates a new [ReverseSshConnectivity].
  /// [vm] The name of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.
  /// [vmIp] The IP of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.
  /// [vmPort] The forwarding port of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.
  /// [vpc] The name of the VPC to peer with the Cloud SQL private network.
  ReverseSshConnectivity({
    this.vm,
    required this.vmIp,
    required this.vmPort,
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vm': ?vm,
      'vmIp': vmIp,
      'vmPort': vmPort,
      'vpc': ?vpc,
    };
  }

  factory ReverseSshConnectivity.fromMap(Map<String, dynamic> map) {
    return ReverseSshConnectivity(
      vm: map['vm'] == null ? null : (map['vm']! as String).input(),
      vmIp: (map['vmIp'] as String).input(),
      vmPort: (map['vmPort'] as int).input(),
      vpc: map['vpc'] == null ? null : (map['vpc']! as String).input(),
    );
  }
}

