// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details needed to configure a reverse SSH tunnel between the source and destination databases. These details will be used when calling the generateSshScript method (see https://cloud.google.com/database-migration/docs/reference/rest/v1/projects.locations.migrationJobs/generateSshScript) to produce the script that will help set up the reverse SSH tunnel, and to set up the VPC peering between the Cloud SQL private network and the VPC.
class ReverseSshConnectivityResponse {
  /// The name of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.
  final pulumi.Input<String> vm;

  /// The IP of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.
  final pulumi.Input<String> vmIp;

  /// The forwarding port of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.
  final pulumi.Input<int> vmPort;

  /// The name of the VPC to peer with the Cloud SQL private network.
  final pulumi.Input<String> vpc;

  /// Creates a new [ReverseSshConnectivityResponse].
  /// [vm] The name of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.
  /// [vmIp] The IP of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.
  /// [vmPort] The forwarding port of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.
  /// [vpc] The name of the VPC to peer with the Cloud SQL private network.
  ReverseSshConnectivityResponse({
    required this.vm,
    required this.vmIp,
    required this.vmPort,
    required this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vm': vm,
      'vmIp': vmIp,
      'vmPort': vmPort,
      'vpc': vpc,
    };
  }

  factory ReverseSshConnectivityResponse.fromMap(Map<String, dynamic> map) {
    return ReverseSshConnectivityResponse(
      vm: pulumi.Input.fromValue(map['vm'] as String),
      vmIp: pulumi.Input.fromValue(map['vmIp'] as String),
      vmPort: pulumi.Input.fromValue(map['vmPort'] as int),
      vpc: pulumi.Input.fromValue(map['vpc'] as String),
    );
  }
}
