// ignore_for_file: unused_element, unnecessary_cast

import 'service_lb_policy_auto_capacity_drain_response.dart';
import 'service_lb_policy_failover_config_response.dart';

/// Result data returned by getServiceLbPolicy.
class GetServiceLbPolicyResult {
  /// Optional. Configuration to automatically move traffic away for unhealthy IG/NEG for the associated Backend Service.
  final ServiceLbPolicyAutoCapacityDrainResponse? autoCapacityDrain;
  /// The timestamp when this resource was created.
  final String? createTime;
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final String? description;
  /// Optional. Configuration related to health based failover.
  final ServiceLbPolicyFailoverConfigResponse? failoverConfig;
  /// Optional. Set of label tags associated with the ServiceLbPolicy resource.
  final Map<String, String>? labels;
  /// Optional. The type of load balancing algorithm to be used. The default behavior is WATERFALL_BY_REGION.
  final String? loadBalancingAlgorithm;
  /// Name of the ServiceLbPolicy resource. It matches pattern `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
  final String? name;
  /// The timestamp when this resource was last updated.
  final String? updateTime;

  /// Creates a new [GetServiceLbPolicyResult].
  /// [autoCapacityDrain] Optional. Configuration to automatically move traffic away for unhealthy IG/NEG for the associated Backend Service.
  /// [createTime] The timestamp when this resource was created.
  /// [description] Optional. A free-text description of the resource. Max length 1024 characters.
  /// [failoverConfig] Optional. Configuration related to health based failover.
  /// [labels] Optional. Set of label tags associated with the ServiceLbPolicy resource.
  /// [loadBalancingAlgorithm] Optional. The type of load balancing algorithm to be used. The default behavior is WATERFALL_BY_REGION.
  /// [name] Name of the ServiceLbPolicy resource. It matches pattern `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
  /// [updateTime] The timestamp when this resource was last updated.
  const GetServiceLbPolicyResult({
    this.autoCapacityDrain,
    this.createTime,
    this.description,
    this.failoverConfig,
    this.labels,
    this.loadBalancingAlgorithm,
    this.name,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCapacityDrain': ?autoCapacityDrain?.toMap(),
      'createTime': ?createTime,
      'description': ?description,
      'failoverConfig': ?failoverConfig?.toMap(),
      'labels': ?labels,
      'loadBalancingAlgorithm': ?loadBalancingAlgorithm,
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }

  factory GetServiceLbPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetServiceLbPolicyResult(
      autoCapacityDrain: (() { final guardedValue = map['autoCapacityDrain']; if (guardedValue == null) return null; return ServiceLbPolicyAutoCapacityDrainResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      failoverConfig: (() { final guardedValue = map['failoverConfig']; if (guardedValue == null) return null; return ServiceLbPolicyFailoverConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      loadBalancingAlgorithm: (() { final guardedValue = map['loadBalancingAlgorithm']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
