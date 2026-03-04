// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigParallelstoreCsiDriverConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterAddonsConfigParallelstoreCsiDriverConfig].
  /// [enabled] Required.
  GetClusterAddonsConfigParallelstoreCsiDriverConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetClusterAddonsConfigParallelstoreCsiDriverConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterAddonsConfigParallelstoreCsiDriverConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
