// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_load_balancer_target_ip_protocol.dart';
import 'rrset_routing_policy_load_balancer_target_load_balancer_type.dart';

/// The configuration for an individual load balancer to health check.
class RRSetRoutingPolicyLoadBalancerTarget {
  /// The frontend IP address of the load balancer to health check.
  final pulumi.Input<String>? ipAddress;
  /// The protocol of the load balancer to health check.
  final pulumi.Input<RRSetRoutingPolicyLoadBalancerTargetIpProtocol>? ipProtocol;
  final pulumi.Input<String>? kind;
  /// The type of load balancer specified by this target. This value must match the configuration of the load balancer located at the LoadBalancerTarget's IP address, port, and region. Use the following: - *regionalL4ilb*: for a regional internal passthrough Network Load Balancer. - *regionalL7ilb*: for a regional internal Application Load Balancer. - *globalL7ilb*: for a global internal Application Load Balancer.
  final pulumi.Input<RRSetRoutingPolicyLoadBalancerTargetLoadBalancerType>? loadBalancerType;
  /// The fully qualified URL of the network that the load balancer is attached to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network} .
  final pulumi.Input<String>? networkUrl;
  /// The configured port of the load balancer.
  final pulumi.Input<String>? port;
  /// The project ID in which the load balancer is located.
  final pulumi.Input<String>? project;
  /// The region in which the load balancer is located.
  final pulumi.Input<String>? region;

  /// Creates a new [RRSetRoutingPolicyLoadBalancerTarget].
  /// [ipAddress] The frontend IP address of the load balancer to health check.
  /// [ipProtocol] The protocol of the load balancer to health check.
  /// [kind] Optional.
  /// [loadBalancerType] The type of load balancer specified by this target. This value must match the configuration of the load balancer located at the LoadBalancerTarget's IP address, port, and region. Use the following: - *regionalL4ilb*: for a regional internal passthrough Network Load Balancer. - *regionalL7ilb*: for a regional internal Application Load Balancer. - *globalL7ilb*: for a global internal Application Load Balancer.
  /// [networkUrl] The fully qualified URL of the network that the load balancer is attached to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network} .
  /// [port] The configured port of the load balancer.
  /// [project] The project ID in which the load balancer is located.
  /// [region] The region in which the load balancer is located.
  const RRSetRoutingPolicyLoadBalancerTarget({
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
      'ipProtocol': ?pulumi.Input.mapOptionalInputValue<RRSetRoutingPolicyLoadBalancerTargetIpProtocol, String>(ipProtocol, (value) => value.wireValue),
      'kind': ?kind,
      'loadBalancerType': ?pulumi.Input.mapOptionalInputValue<RRSetRoutingPolicyLoadBalancerTargetLoadBalancerType, String>(loadBalancerType, (value) => value.wireValue),
      'networkUrl': ?networkUrl,
      'port': ?port,
      'project': ?project,
      'region': ?region,
    };
  }

  factory RRSetRoutingPolicyLoadBalancerTarget.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyLoadBalancerTarget(
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipProtocol: (() { final guardedValue = map['ipProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RRSetRoutingPolicyLoadBalancerTargetIpProtocol.fromValue(guardedValue as String)); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerType: (() { final guardedValue = map['loadBalancerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RRSetRoutingPolicyLoadBalancerTargetLoadBalancerType.fromValue(guardedValue as String)); })(),
      networkUrl: (() { final guardedValue = map['networkUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

