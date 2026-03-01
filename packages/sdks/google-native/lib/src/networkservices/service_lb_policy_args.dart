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
  ServiceLbPolicyArgs({
    pulumi.Output<ServiceLbPolicyAutoCapacityDrain>? autoCapacityDrain,
    pulumi.Output<String>? description,
    pulumi.Output<ServiceLbPolicyFailoverConfig>? failoverConfig,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<ServiceLbPolicyLoadBalancingAlgorithm>? loadBalancingAlgorithm,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> serviceLbPolicyId,
  }) :
      autoCapacityDrain = pulumi.Input.asOptionalInput<ServiceLbPolicyAutoCapacityDrain>(autoCapacityDrain),
      description = pulumi.Input.asOptionalInput<String>(description),
      failoverConfig = pulumi.Input.asOptionalInput<ServiceLbPolicyFailoverConfig>(failoverConfig),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      loadBalancingAlgorithm = pulumi.Input.asOptionalInput<ServiceLbPolicyLoadBalancingAlgorithm>(loadBalancingAlgorithm),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceLbPolicyId = pulumi.Input.asInput<String>(serviceLbPolicyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCapacityDrain': ?pulumi.Input.mapOptionalInputValue<ServiceLbPolicyAutoCapacityDrain, Map<String, dynamic>>(autoCapacityDrain, (value) => value.toMap()),
      'description': ?description,
      'failoverConfig': ?pulumi.Input.mapOptionalInputValue<ServiceLbPolicyFailoverConfig, Map<String, dynamic>>(failoverConfig, (value) => value.toMap()),
      'labels': ?labels,
      'loadBalancingAlgorithm': ?pulumi.Input.mapOptionalInputValue<ServiceLbPolicyLoadBalancingAlgorithm, String>(loadBalancingAlgorithm, (value) => value.value),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'serviceLbPolicyId': serviceLbPolicyId,
    };
  }

  factory ServiceLbPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServiceLbPolicyArgs(
      autoCapacityDrain: map['autoCapacityDrain'] == null ? null : pulumi.Output.create<ServiceLbPolicyAutoCapacityDrain>(ServiceLbPolicyAutoCapacityDrain.fromMap((map['autoCapacityDrain'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      failoverConfig: map['failoverConfig'] == null ? null : pulumi.Output.create<ServiceLbPolicyFailoverConfig>(ServiceLbPolicyFailoverConfig.fromMap((map['failoverConfig'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      loadBalancingAlgorithm: map['loadBalancingAlgorithm'] == null ? null : pulumi.Output.create<ServiceLbPolicyLoadBalancingAlgorithm>(ServiceLbPolicyLoadBalancingAlgorithm.fromValue(map['loadBalancingAlgorithm'] as String)),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceLbPolicyId: pulumi.Output.create<String>(map['serviceLbPolicyId'] as String),
    );
  }
}

