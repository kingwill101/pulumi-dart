// ignore_for_file: unused_element, unnecessary_cast


class JobTemplateVolume {
  /// Mount options used while mounting the AzureFile. Must be a comma-separated string e.g. `dir_mode=0751,file_mode=0751`.
  final String? mountOptions;
  /// The name of the volume.
  final String name;
  /// The name of the storage to use for the volume.
  final String? storageName;
  /// The type of storage to use for the volume. Possible values are `AzureFile`, `EmptyDir`, `NfsAzureFile` and `Secret`. Defaults to `EmptyDir`.
  final String? storageType;

  /// Creates a new [JobTemplateVolume].
  /// [mountOptions] Mount options used while mounting the AzureFile. Must be a comma-separated string e.g. `dir_mode=0751,file_mode=0751`.
  /// [name] The name of the volume.
  /// [storageName] The name of the storage to use for the volume.
  /// [storageType] The type of storage to use for the volume. Possible values are `AzureFile`, `EmptyDir`, `NfsAzureFile` and `Secret`. Defaults to `EmptyDir`.
  JobTemplateVolume({
    this.mountOptions,
    required this.name,
    this.storageName,
    this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountOptions': ?mountOptions,
      'name': name,
      'storageName': ?storageName,
      'storageType': ?storageType,
    };
  }

  factory JobTemplateVolume.fromMap(Map<String, dynamic> map) {
    return JobTemplateVolume(
      mountOptions: map['mountOptions'] == null ? null : map['mountOptions'] as String,
      name: map['name'] as String,
      storageName: map['storageName'] == null ? null : map['storageName'] as String,
      storageType: map['storageType'] == null ? null : map['storageType'] as String,
    );
  }
}

