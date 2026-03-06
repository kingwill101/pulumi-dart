// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigGcfsConfig {
  /// Whether or not GCFS is enabled
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterNodeConfigGcfsConfig].
  /// [enabled] Whether or not GCFS is enabled
  const GetClusterNodeConfigGcfsConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterNodeConfigGcfsConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigGcfsConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

