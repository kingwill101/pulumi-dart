// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalClusterStorageLvpNodeMountsConfig {
  /// The host machine path.
  final pulumi.Input<String> path;
  /// The StorageClass name that PVs will be created with.
  final pulumi.Input<String> storageClass;

  /// Creates a new [BareMetalClusterStorageLvpNodeMountsConfig].
  /// [path] The host machine path.
  /// [storageClass] The StorageClass name that PVs will be created with.
  BareMetalClusterStorageLvpNodeMountsConfig({
    required this.path,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'storageClass': storageClass,
    };
  }

  factory BareMetalClusterStorageLvpNodeMountsConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterStorageLvpNodeMountsConfig(
      path: pulumi.Input.fromValue(map['path'] as String),
      storageClass: pulumi.Input.fromValue(map['storageClass'] as String),
    );
  }
}

