// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigCloudrunConfig {
  final pulumi.Input<bool> disabled;
  final pulumi.Input<String> loadBalancerType;

  /// Creates a new [GetClusterAddonsConfigCloudrunConfig].
  /// [disabled] Required.
  /// [loadBalancerType] Required.
  GetClusterAddonsConfigCloudrunConfig({
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
      disabled: (map['disabled'] as bool).input(),
      loadBalancerType: (map['loadBalancerType'] as String).input(),
    );
  }
}

