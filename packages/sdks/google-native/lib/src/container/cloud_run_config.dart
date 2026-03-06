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
  const CloudRunConfig({
    this.disabled,
    this.loadBalancerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'loadBalancerType': ?pulumi.Input.mapOptionalInputValue<CloudRunConfigLoadBalancerType, String>(loadBalancerType, (value) => value.wireValue),
    };
  }

  factory CloudRunConfig.fromMap(Map<String, dynamic> map) {
    return CloudRunConfig(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      loadBalancerType: (() { final guardedValue = map['loadBalancerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudRunConfigLoadBalancerType.fromValue(guardedValue as String)); })(),
    );
  }
}

