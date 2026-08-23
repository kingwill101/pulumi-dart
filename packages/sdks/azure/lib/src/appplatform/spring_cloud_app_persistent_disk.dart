// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudAppPersistentDisk {
  /// Specifies the mount path of the persistent disk. Defaults to `/persistent`.
  final pulumi.Input<String>? mountPath;
  /// Specifies the size of the persistent disk in GB. Possible values are between `0` and `50`.
  final pulumi.Input<int> sizeInGb;

  /// Creates a new [SpringCloudAppPersistentDisk].
  /// [mountPath] Specifies the mount path of the persistent disk. Defaults to `/persistent`.
  /// [sizeInGb] Specifies the size of the persistent disk in GB. Possible values are between `0` and `50`.
  const SpringCloudAppPersistentDisk({
    this.mountPath,
    required this.sizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': ?mountPath,
      'sizeInGb': sizeInGb,
    };
  }

  factory SpringCloudAppPersistentDisk.fromMap(Map<String, dynamic> map) {
    return SpringCloudAppPersistentDisk(
      mountPath: (() { final guardedValue = map['mountPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeInGb: pulumi.Input.fromValue(map['sizeInGb'] as int),
    );
  }
}
