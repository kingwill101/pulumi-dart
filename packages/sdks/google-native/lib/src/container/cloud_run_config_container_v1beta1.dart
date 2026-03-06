// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_run_config_load_balancer_type_container_v1beta1.dart';

/// Configuration options for the Cloud Run feature.
class CloudRunConfigContainerV1beta1 {
  /// Whether Cloud Run addon is enabled for this cluster.
  final pulumi.Input<bool>? disabled;
  /// Which load balancer type is installed for Cloud Run.
  final pulumi.Input<CloudRunConfigLoadBalancerTypeContainerV1beta1>? loadBalancerType;

  /// Creates a new [CloudRunConfigContainerV1beta1].
  /// [disabled] Whether Cloud Run addon is enabled for this cluster.
  /// [loadBalancerType] Which load balancer type is installed for Cloud Run.
  const CloudRunConfigContainerV1beta1({
    this.disabled,
    this.loadBalancerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'loadBalancerType': ?pulumi.Input.mapOptionalInputValue<CloudRunConfigLoadBalancerTypeContainerV1beta1, String>(loadBalancerType, (value) => value.wireValue),
    };
  }

  factory CloudRunConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return CloudRunConfigContainerV1beta1(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      loadBalancerType: (() { final guardedValue = map['loadBalancerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudRunConfigLoadBalancerTypeContainerV1beta1.fromValue(guardedValue as String)); })(),
    );
  }
}

