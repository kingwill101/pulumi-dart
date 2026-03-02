// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_run_config_load_balancer_type.dart';

/// Configuration options for the Cloud Run feature.
class CloudRunConfig {
  /// Whether Cloud Run addon is enabled for this cluster.
  final pulumi.Input<bool>? disabled;
  /// Which load balancer type is installed for Cloud Run.
  final pulumi.Input<CloudRunConfigLoadBalancerType>? loadBalancerType;

  /// Creates a new [CloudRunConfig].
  /// [disabled] Whether Cloud Run addon is enabled for this cluster.
  /// [loadBalancerType] Which load balancer type is installed for Cloud Run.
  CloudRunConfig({
    this.disabled,
    this.loadBalancerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'loadBalancerType': ?pulumi.Input.mapOptionalInputValue<CloudRunConfigLoadBalancerType, String>(loadBalancerType, (value) => value.value),
    };
  }

  factory CloudRunConfig.fromMap(Map<String, dynamic> map) {
    return CloudRunConfig(
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      loadBalancerType: map['loadBalancerType'] == null ? null : (CloudRunConfigLoadBalancerType.fromValue(map['loadBalancerType']! as String)).input(),
    );
  }
}

