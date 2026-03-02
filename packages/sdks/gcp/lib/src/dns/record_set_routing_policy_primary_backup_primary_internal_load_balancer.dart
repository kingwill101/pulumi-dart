// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecordSetRoutingPolicyPrimaryBackupPrimaryInternalLoadBalancer {
  /// The frontend IP address of the load balancer.
  final pulumi.Input<String> ipAddress;
  /// The configured IP protocol of the load balancer. This value is case-sensitive. Possible values: ["tcp", "udp"]
  final pulumi.Input<String> ipProtocol;
  /// The type of load balancer. This value is case-sensitive. Possible values: ["regionalL4ilb", "regionalL7ilb", "globalL7ilb"]
  final pulumi.Input<String>? loadBalancerType;
  /// The fully qualified url of the network in which the load balancer belongs. This should be formatted like `projects/{project}/global/networks/{network}` or `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`.
  final pulumi.Input<String> networkUrl;
  /// The configured port of the load balancer.
  final pulumi.Input<String> port;
  /// The ID of the project in which the load balancer belongs.
  final pulumi.Input<String> project;
  /// The region of the load balancer. Only needed for regional load balancers.
  final pulumi.Input<String>? region;

  /// Creates a new [RecordSetRoutingPolicyPrimaryBackupPrimaryInternalLoadBalancer].
  /// [ipAddress] The frontend IP address of the load balancer.
  /// [ipProtocol] The configured IP protocol of the load balancer. This value is case-sensitive. Possible values: ["tcp", "udp"]
  /// [loadBalancerType] The type of load balancer. This value is case-sensitive. Possible values: ["regionalL4ilb", "regionalL7ilb", "globalL7ilb"]
  /// [networkUrl] The fully qualified url of the network in which the load balancer belongs. This should be formatted like `projects/{project}/global/networks/{network}` or `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`.
  /// [port] The configured port of the load balancer.
  /// [project] The ID of the project in which the load balancer belongs.
  /// [region] The region of the load balancer. Only needed for regional load balancers.
  RecordSetRoutingPolicyPrimaryBackupPrimaryInternalLoadBalancer({
    required this.ipAddress,
    required this.ipProtocol,
    this.loadBalancerType,
    required this.networkUrl,
    required this.port,
    required this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'ipProtocol': ipProtocol,
      'loadBalancerType': ?loadBalancerType,
      'networkUrl': networkUrl,
      'port': port,
      'project': project,
      'region': ?region,
    };
  }

  factory RecordSetRoutingPolicyPrimaryBackupPrimaryInternalLoadBalancer.fromMap(Map<String, dynamic> map) {
    return RecordSetRoutingPolicyPrimaryBackupPrimaryInternalLoadBalancer(
      ipAddress: (map['ipAddress'] as String).input(),
      ipProtocol: (map['ipProtocol'] as String).input(),
      loadBalancerType: map['loadBalancerType'] == null ? null : (map['loadBalancerType']! as String).input(),
      networkUrl: (map['networkUrl'] as String).input(),
      port: (map['port'] as String).input(),
      project: (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

