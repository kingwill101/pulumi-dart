// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigNodeReadinessConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterAddonsConfigNodeReadinessConfig].
  /// [enabled] Required.
  const GetClusterAddonsConfigNodeReadinessConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterAddonsConfigNodeReadinessConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigNodeReadinessConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
