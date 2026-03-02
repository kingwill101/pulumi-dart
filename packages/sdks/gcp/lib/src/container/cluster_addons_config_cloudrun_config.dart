// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAddonsConfigCloudrunConfig {
  /// The status of the CloudRun addon. It is disabled by default. Set `disabled=false` to enable.
  final pulumi.Input<bool> disabled;
  /// The load balancer type of CloudRun ingress service. It is external load balancer by default.
  /// Set `load_balancer_type=LOAD_BALANCER_TYPE_INTERNAL` to configure it as internal load balancer.
  final pulumi.Input<String>? loadBalancerType;

  /// Creates a new [ClusterAddonsConfigCloudrunConfig].
  /// [disabled] The status of the CloudRun addon. It is disabled by default. Set `disabled=false` to enable.
  /// [loadBalancerType] The load balancer type of CloudRun ingress service. It is external load balancer by default.
  ClusterAddonsConfigCloudrunConfig({
    required this.disabled,
    this.loadBalancerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
      'loadBalancerType': ?loadBalancerType,
    };
  }

  factory ClusterAddonsConfigCloudrunConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigCloudrunConfig(
      disabled: (map['disabled'] as bool).input(),
      loadBalancerType: map['loadBalancerType'] == null ? null : (map['loadBalancerType']! as String).input(),
    );
  }
}

