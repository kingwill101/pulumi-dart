// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalClusterStorageLvpShareConfigLvpConfig {
  /// The host machine path.
  final pulumi.Input<String> path;
  /// The StorageClass name that PVs will be created with.
  final pulumi.Input<String> storageClass;

  /// Creates a new [BareMetalClusterStorageLvpShareConfigLvpConfig].
  /// [path] The host machine path.
  /// [storageClass] The StorageClass name that PVs will be created with.
  const BareMetalClusterStorageLvpShareConfigLvpConfig({
    required this.path,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'storageClass': storageClass,
    };
  }

  factory BareMetalClusterStorageLvpShareConfigLvpConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterStorageLvpShareConfigLvpConfig(
      path: pulumi.Input.fromValue(map['path'] as String),
      storageClass: pulumi.Input.fromValue(map['storageClass'] as String),
    );
  }
}
