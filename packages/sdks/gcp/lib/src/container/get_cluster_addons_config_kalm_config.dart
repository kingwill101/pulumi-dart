// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigKalmConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterAddonsConfigKalmConfig].
  /// [enabled] Required.
  const GetClusterAddonsConfigKalmConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterAddonsConfigKalmConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigKalmConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
