// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource names object for load balancer and related resources.
class LoadBalancerResourceNames {
  /// The list of backend pool names. Currently, ACSS deploys only one backend pool and hence, size of this list should be 1
  final pulumi.Input<List<String>?>? backendPoolNames;
  /// The list of frontend IP configuration names. If provided as input, size of this list should be 2 for cs layer and should be 1 for database layer.
  final pulumi.Input<List<String>?>? frontendIpConfigurationNames;
  /// The list of health probe names. If provided as input, size of this list should be 2 for cs layer and should be 1 for database layer.
  final pulumi.Input<List<String>?>? healthProbeNames;
  /// The full resource name for load balancer. If this value is not provided, load balancer will be name as {ASCS/DB}-loadBalancer.
  final pulumi.Input<String?>? loadBalancerName;

  /// Creates a new [LoadBalancerResourceNames].
  /// [backendPoolNames] The list of backend pool names. Currently, ACSS deploys only one backend pool and hence, size of this list should be 1
  /// [frontendIpConfigurationNames] The list of frontend IP configuration names. If provided as input, size of this list should be 2 for cs layer and should be 1 for database layer.
  /// [healthProbeNames] The list of health probe names. If provided as input, size of this list should be 2 for cs layer and should be 1 for database layer.
  /// [loadBalancerName] The full resource name for load balancer. If this value is not provided, load balancer will be name as {ASCS/DB}-loadBalancer.
  const LoadBalancerResourceNames({
    this.backendPoolNames,
    this.frontendIpConfigurationNames,
    this.healthProbeNames,
    this.loadBalancerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPoolNames': ?backendPoolNames,
      'frontendIpConfigurationNames': ?frontendIpConfigurationNames,
      'healthProbeNames': ?healthProbeNames,
      'loadBalancerName': ?loadBalancerName,
    };
  }

  factory LoadBalancerResourceNames.fromMap(Map<String, dynamic> map) {
    return LoadBalancerResourceNames(
      backendPoolNames: (() { final guardedValue = map['backendPoolNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      frontendIpConfigurationNames: (() { final guardedValue = map['frontendIpConfigurationNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      healthProbeNames: (() { final guardedValue = map['healthProbeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loadBalancerName: (() { final guardedValue = map['loadBalancerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
