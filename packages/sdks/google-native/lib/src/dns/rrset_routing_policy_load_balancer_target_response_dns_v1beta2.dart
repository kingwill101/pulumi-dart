// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration for an individual load balancer to health check.
class RRSetRoutingPolicyLoadBalancerTargetResponseDnsV1beta2 {
  /// The frontend IP address of the load balancer to health check.
  final pulumi.Input<String> ipAddress;
  /// The protocol of the load balancer to health check.
  final pulumi.Input<String> ipProtocol;
  final pulumi.Input<String> kind;
  /// The type of load balancer specified by this target. This value must match the configuration of the load balancer located at the LoadBalancerTarget's IP address, port, and region. Use the following: - *regionalL4ilb*: for a regional internal passthrough Network Load Balancer. - *regionalL7ilb*: for a regional internal Application Load Balancer. - *globalL7ilb*: for a global internal Application Load Balancer.
  final pulumi.Input<String> loadBalancerType;
  /// The fully qualified URL of the network that the load balancer is attached to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network} .
  final pulumi.Input<String> networkUrl;
  /// The configured port of the load balancer.
  final pulumi.Input<String> port;
  /// The project ID in which the load balancer is located.
  final pulumi.Input<String> project;
  /// The region in which the load balancer is located.
  final pulumi.Input<String> region;

  /// Creates a new [RRSetRoutingPolicyLoadBalancerTargetResponseDnsV1beta2].
  /// [ipAddress] The frontend IP address of the load balancer to health check.
  /// [ipProtocol] The protocol of the load balancer to health check.
  /// [kind] Required.
  /// [loadBalancerType] The type of load balancer specified by this target. This value must match the configuration of the load balancer located at the LoadBalancerTarget's IP address, port, and region. Use the following: - *regionalL4ilb*: for a regional internal passthrough Network Load Balancer. - *regionalL7ilb*: for a regional internal Application Load Balancer. - *globalL7ilb*: for a global internal Application Load Balancer.
  /// [networkUrl] The fully qualified URL of the network that the load balancer is attached to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network} .
  /// [port] The configured port of the load balancer.
  /// [project] The project ID in which the load balancer is located.
  /// [region] The region in which the load balancer is located.
  RRSetRoutingPolicyLoadBalancerTargetResponseDnsV1beta2({
    required this.ipAddress,
    required this.ipProtocol,
    required this.kind,
    required this.loadBalancerType,
    required this.networkUrl,
    required this.port,
    required this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'ipProtocol': ipProtocol,
      'kind': kind,
      'loadBalancerType': loadBalancerType,
      'networkUrl': networkUrl,
      'port': port,
      'project': project,
      'region': region,
    };
  }

  factory RRSetRoutingPolicyLoadBalancerTargetResponseDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyLoadBalancerTargetResponseDnsV1beta2(
      ipAddress: (map['ipAddress'] as String).input(),
      ipProtocol: (map['ipProtocol'] as String).input(),
      kind: (map['kind'] as String).input(),
      loadBalancerType: (map['loadBalancerType'] as String).input(),
      networkUrl: (map['networkUrl'] as String).input(),
      port: (map['port'] as String).input(),
      project: (map['project'] as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}

