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
      mountOptions: map['mountOptions'] == null ? null : ((map['mountOptions'] as List).cast<String>()).input(),
      mountPath: (map['mountPath'] as String).input(),
      readOnlyEnabled: map['readOnlyEnabled'] == null ? null : (map['readOnlyEnabled'] as bool).input(),
      shareName: (map['shareName'] as String).input(),
      storageName: (map['storageName'] as String).input(),
    );
  }
}

