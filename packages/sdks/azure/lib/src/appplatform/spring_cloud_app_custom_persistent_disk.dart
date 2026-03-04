// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudAppCustomPersistentDisk {
  /// These are the mount options for a persistent disk.
  final pulumi.Input<List<String>>? mountOptions;

  /// The mount path of the persistent disk.
  final pulumi.Input<String> mountPath;

  /// Indicates whether the persistent disk is a readOnly one.
  final pulumi.Input<bool>? readOnlyEnabled;

  /// The share name of the Azure File share.
  final pulumi.Input<String> shareName;

  /// The name of the Spring Cloud Storage.
  final pulumi.Input<String> storageName;

  /// Creates a new [SpringCloudAppCustomPersistentDisk].
  /// [mountOptions] These are the mount options for a persistent disk.
  /// [mountPath] The mount path of the persistent disk.
  /// [readOnlyEnabled] Indicates whether the persistent disk is a readOnly one.
  /// [shareName] The share name of the Azure File share.
  /// [storageName] The name of the Spring Cloud Storage.
  SpringCloudAppCustomPersistentDisk({
    this.mountOptions,
    required this.mountPath,
    this.readOnlyEnabled,
    required this.shareName,
    required this.storageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountOptions': ?mountOptions,
      'mountPath': mountPath,
      'readOnlyEnabled': ?readOnlyEnabled,
      'shareName': shareName,
      'storageName': storageName,
    };
  }

  factory SpringCloudAppCustomPersistentDisk.fromMap(Map<String, dynamic> map) {
    return SpringCloudAppCustomPersistentDisk(
      mountOptions: (() {
        final guardedValue = map['mountOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
      readOnlyEnabled: (() {
        final guardedValue = map['readOnlyEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      shareName: pulumi.Input.fromValue(map['shareName'] as String),
      storageName: pulumi.Input.fromValue(map['storageName'] as String),
    );
  }
}
