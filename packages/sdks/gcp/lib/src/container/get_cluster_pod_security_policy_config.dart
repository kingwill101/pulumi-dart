// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterPodSecurityPolicyConfig {
  /// Enable the PodSecurityPolicy controller for this cluster. If enabled, pods must be valid under a PodSecurityPolicy to be created.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterPodSecurityPolicyConfig].
  /// [enabled] Enable the PodSecurityPolicy controller for this cluster. If enabled, pods must be valid under a PodSecurityPolicy to be created.
  GetClusterPodSecurityPolicyConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetClusterPodSecurityPolicyConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterPodSecurityPolicyConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
