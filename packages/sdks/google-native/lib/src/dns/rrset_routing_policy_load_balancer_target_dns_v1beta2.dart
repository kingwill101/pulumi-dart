// ignore_for_file: unused_element, unnecessary_cast

import 'rrset_routing_policy_load_balancer_target_ip_protocol_dns_v1beta2.dart';
import 'rrset_routing_policy_load_balancer_target_load_balancer_type_dns_v1beta2.dart';

/// The configuration for an individual load balancer to health check.
class RRSetRoutingPolicyLoadBalancerTargetDnsV1beta2 {
  /// The frontend IP address of the load balancer to health check.
  final String? ipAddress;
  /// The protocol of the load balancer to health check.
  final RRSetRoutingPolicyLoadBalancerTargetIpProtocolDnsV1beta2? ipProtocol;
  final String? kind;
  /// The type of load balancer specified by this target. This value must match the configuration of the load balancer located at the LoadBalancerTarget's IP address, port, and region. Use the following: - *regionalL4ilb*: for a regional internal passthrough Network Load Balancer. - *regionalL7ilb*: for a regional internal Application Load Balancer. - *globalL7ilb*: for a global internal Application Load Balancer.
  final RRSetRoutingPolicyLoadBalancerTargetLoadBalancerTypeDnsV1beta2? loadBalancerType;
  /// The fully qualified URL of the network that the load balancer is attached to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network} .
  final String? networkUrl;
  /// The configured port of the load balancer.
  final String? port;
  /// The project ID in which the load balancer is located.
  final String? project;
  /// The region in which the load balancer is located.
  final String? region;

  /// Creates a new [RRSetRoutingPolicyLoadBalancerTargetDnsV1beta2].
  /// [ipAddress] The frontend IP address of the load balancer to health check.
  /// [ipProtocol] The protocol of the load balancer to health check.
  /// [kind] Optional.
  /// [loadBalancerType] The type of load balancer specified by this target. This value must match the configuration of the load balancer located at the LoadBalancerTarget's IP address, port, and region. Use the following: - *regionalL4ilb*: for a regional internal passthrough Network Load Balancer. - *regionalL7ilb*: for a regional internal Application Load Balancer. - *globalL7ilb*: for a global internal Application Load Balancer.
  /// [networkUrl] The fully qualified URL of the network that the load balancer is attached to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network} .
  /// [port] The configured port of the load balancer.
  /// [project] The project ID in which the load balancer is located.
  /// [region] The region in which the load balancer is located.
  RRSetRoutingPolicyLoadBalancerTargetDnsV1beta2({
    this.ipAddress,
    this.ipProtocol,
    this.kind,
    this.loadBalancerType,
    this.networkUrl,
    this.port,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'ipProtocol': ?ipProtocol == null ? null : ipProtocol!.value,
      'kind': ?kind,
      'loadBalancerType': ?loadBalancerType == null ? null : loadBalancerType!.value,
      'networkUrl': ?networkUrl,
      'port': ?port,
      'project': ?project,
      'region': ?region,
    };
  }

  factory RRSetRoutingPolicyLoadBalancerTargetDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyLoadBalancerTargetDnsV1beta2(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      ipProtocol: map['ipProtocol'] == null ? null : RRSetRoutingPolicyLoadBalancerTargetIpProtocolDnsV1beta2.fromValue(map['ipProtocol'] as String),
      kind: map['kind'] == null ? null : map['kind'] as String,
      loadBalancerType: map['loadBalancerType'] == null ? null : RRSetRoutingPolicyLoadBalancerTargetLoadBalancerTypeDnsV1beta2.fromValue(map['loadBalancerType'] as String),
      networkUrl: map['networkUrl'] == null ? null : map['networkUrl'] as String,
      port: map['port'] == null ? null : map['port'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

