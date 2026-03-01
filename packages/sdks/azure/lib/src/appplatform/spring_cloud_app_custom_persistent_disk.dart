// ignore_for_file: unused_element, unnecessary_cast


class SpringCloudAppCustomPersistentDisk {
  /// These are the mount options for a persistent disk.
  final List<String>? mountOptions;
  /// The mount path of the persistent disk.
  final String mountPath;
  /// Indicates whether the persistent disk is a readOnly one.
  final bool? readOnlyEnabled;
  /// The share name of the Azure File share.
  final String shareName;
  /// The name of the Spring Cloud Storage.
  final String storageName;

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
      mountOptions: map['mountOptions'] == null ? null : (map['mountOptions'] as List).cast<String>(),
      mountPath: map['mountPath'] as String,
      readOnlyEnabled: map['readOnlyEnabled'] == null ? null : map['readOnlyEnabled'] as bool,
      shareName: map['shareName'] as String,
      storageName: map['storageName'] as String,
    );
  }
}

