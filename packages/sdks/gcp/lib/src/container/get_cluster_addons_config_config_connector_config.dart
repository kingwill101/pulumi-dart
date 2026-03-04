// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigConfigConnectorConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterAddonsConfigConfigConnectorConfig].
  /// [enabled] Required.
  GetClusterAddonsConfigConfigConnectorConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetClusterAddonsConfigConfigConnectorConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterAddonsConfigConfigConnectorConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
