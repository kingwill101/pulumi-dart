// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigCloudrunConfig {
  final pulumi.Input<bool> disabled;
  final pulumi.Input<String> loadBalancerType;

  /// Creates a new [GetClusterAddonsConfigCloudrunConfig].
  /// [disabled] Required.
  /// [loadBalancerType] Required.
  const GetClusterAddonsConfigCloudrunConfig({
    required this.disabled,
    required this.loadBalancerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
      'loadBalancerType': loadBalancerType,
    };
  }

  factory GetClusterAddonsConfigCloudrunConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigCloudrunConfig(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      loadBalancerType: pulumi.Input.fromValue(map['loadBalancerType'] as String),
    );
  }
}
