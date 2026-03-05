// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the configs for local persistent volumes (PVs).
class BareMetalLvpConfig {
  /// The host machine path.
  final pulumi.Input<String> path;
  /// The StorageClass name that PVs will be created with.
  final pulumi.Input<String> storageClass;

  /// Creates a new [BareMetalLvpConfig].
  /// [path] The host machine path.
  /// [storageClass] The StorageClass name that PVs will be created with.
  BareMetalLvpConfig({
    required this.path,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'storageClass': storageClass,
    };
  }

  factory BareMetalLvpConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalLvpConfig(
      path: pulumi.Input.fromValue(map['path'] as String),
      storageClass: pulumi.Input.fromValue(map['storageClass'] as String),
    );
  }
}

