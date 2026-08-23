// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a shared resource.
class StorageDataShareAssetResponse {
  /// Source Path to be shared. It can be a folder or a blob.
  /// The asset path should contain container name followed by path within the container, e.g. /container1/logs/external.
  final pulumi.Input<String> assetPath;
  /// Consumer visible name of the original path.
  final pulumi.Input<String> displayName;

  /// Creates a new [StorageDataShareAssetResponse].
  /// [assetPath] Source Path to be shared. It can be a folder or a blob.
  /// [displayName] Consumer visible name of the original path.
  const StorageDataShareAssetResponse({
    required this.assetPath,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetPath': assetPath,
      'displayName': displayName,
    };
  }

  factory StorageDataShareAssetResponse.fromMap(Map<String, dynamic> map) {
    return StorageDataShareAssetResponse(
      assetPath: pulumi.Input.fromValue(map['assetPath'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
    );
  }
}
