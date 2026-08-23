// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigSliceControllerConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterAddonsConfigSliceControllerConfig].
  /// [enabled] Required.
  const GetClusterAddonsConfigSliceControllerConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterAddonsConfigSliceControllerConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigSliceControllerConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
