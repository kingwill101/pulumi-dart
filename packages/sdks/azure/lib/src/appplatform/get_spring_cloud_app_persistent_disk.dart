// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSpringCloudAppPersistentDisk {
  /// The mount path of the persistent disk.
  final pulumi.Input<String> mountPath;
  /// The size of the persistent disk in GB.
  final pulumi.Input<int> sizeInGb;

  /// Creates a new [GetSpringCloudAppPersistentDisk].
  /// [mountPath] The mount path of the persistent disk.
  /// [sizeInGb] The size of the persistent disk in GB.
  const GetSpringCloudAppPersistentDisk({
    required this.mountPath,
    required this.sizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'sizeInGb': sizeInGb,
    };
  }

  factory GetSpringCloudAppPersistentDisk.fromMap(Map<String, dynamic> map) {
    return GetSpringCloudAppPersistentDisk(
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
      sizeInGb: pulumi.Input.fromValue(map['sizeInGb'] as int),
    );
  }
}

