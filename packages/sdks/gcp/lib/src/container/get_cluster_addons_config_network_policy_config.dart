// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigNetworkPolicyConfig {
  final pulumi.Input<bool> disabled;

  /// Creates a new [GetClusterAddonsConfigNetworkPolicyConfig].
  /// [disabled] Required.
  GetClusterAddonsConfigNetworkPolicyConfig({required this.disabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disabled': disabled};
  }

  factory GetClusterAddonsConfigNetworkPolicyConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterAddonsConfigNetworkPolicyConfig(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}
