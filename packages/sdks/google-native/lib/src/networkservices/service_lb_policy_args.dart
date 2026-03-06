// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_lb_policy_auto_capacity_drain.dart';
import 'service_lb_policy_failover_config.dart';
import 'service_lb_policy_load_balancing_algorithm.dart';

/// {@template pulumi_networkservices_v1beta1_service_lb_policy_args_doc}
/// The set of arguments for ServiceLbPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_service_lb_policy_args_doc}
class ServiceLbPolicyArgs {
  /// Optional. Configuration to automatically move traffic away for unhealthy IG/NEG for the associated Backend Service.
  final pulumi.Input<ServiceLbPolicyAutoCapacityDrain>? autoCapacityDrain;
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// Optional. Configuration related to health based failover.
  final pulumi.Input<ServiceLbPolicyFailoverConfig>? failoverConfig;
  /// Optional. Set of label tags associated with the ServiceLbPolicy resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Optional. The type of load balancing algorithm to be used. The default behavior is WATERFALL_BY_REGION.
  final pulumi.Input<ServiceLbPolicyLoadBalancingAlgorithm>? loadBalancingAlgorithm;
  final pulumi.Input<String>? location;
  /// Name of the ServiceLbPolicy resource. It matches pattern `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Required. Short name of the ServiceLbPolicy resource to be created. E.g. for resource name `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`. the id is value of {service_lb_policy_name}
  final pulumi.Input<String> serviceLbPolicyId;

  /// Creates a new [ServiceLbPolicyArgs].
  /// [autoCapacityDrain] Optional. Configuration to automatically move traffic away for unhealthy IG/NEG for the associated Backend Service.
  /// [description] Optional. A free-text description of the resource. Max length 1024 characters.
  /// [failoverConfig] Optional. Configuration related to health based failover.
  /// [labels] Optional. Set of label tags associated with the ServiceLbPolicy resource.
  /// [loadBalancingAlgorithm] Optional. The type of load balancing algorithm to be used. The default behavior is WATERFALL_BY_REGION.
  /// [location] Optional.
  /// [name] Name of the ServiceLbPolicy resource. It matches pattern `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
  /// [project] Optional.
  /// [serviceLbPolicyId] Required. Short name of the ServiceLbPolicy resource to be created. E.g. for resource name `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`. the id is value of {service_lb_policy_name}
  const ServiceLbPolicyArgs({
    this.autoCapacityDrain,
    this.description,
    this.failoverConfig,
    this.labels,
    this.loadBalancingAlgorithm,
    this.location,
    this.name,
    this.project,
    required this.serviceLbPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCapacityDrain': ?pulumi.Input.mapOptionalInputValue<ServiceLbPolicyAutoCapacityDrain, Map<String, dynamic>>(autoCapacityDrain, (value) => value.toMap()),
      'description': ?description,
      'failoverConfig': ?pulumi.Input.mapOptionalInputValue<ServiceLbPolicyFailoverConfig, Map<String, dynamic>>(failoverConfig, (value) => value.toMap()),
      'labels': ?labels,
      'loadBalancingAlgorithm': ?pulumi.Input.mapOptionalInputValue<ServiceLbPolicyLoadBalancingAlgorithm, String>(loadBalancingAlgorithm, (value) => value.wireValue),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'serviceLbPolicyId': serviceLbPolicyId,
    };
  }

  factory ServiceLbPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServiceLbPolicyArgs(
      autoCapacityDrain: (() { final guardedValue = map['autoCapacityDrain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceLbPolicyAutoCapacityDrain.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failoverConfig: (() { final guardedValue = map['failoverConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceLbPolicyFailoverConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      loadBalancingAlgorithm: (() { final guardedValue = map['loadBalancingAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceLbPolicyLoadBalancingAlgorithm.fromValue(guardedValue as String)); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceLbPolicyId: pulumi.Input.fromValue(map['serviceLbPolicyId'] as String),
    );
  }
}

