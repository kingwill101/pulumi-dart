// ignore_for_file: unused_element, unnecessary_cast


class AppTemplateVolume {
  /// Mount options used while mounting the AzureFile. Must be a comma-separated string e.g. `dir_mode=0751,file_mode=0751`.
  final String? mountOptions;
  /// The name of the volume.
  final String name;
  /// The name of the `AzureFile` storage.
  final String? storageName;
  /// The type of storage volume. Possible values are `AzureFile`, `EmptyDir`, `NfsAzureFile` and `Secret`. Defaults to `EmptyDir`.
  final String? storageType;

  /// Creates a new [AppTemplateVolume].
  /// [mountOptions] Mount options used while mounting the AzureFile. Must be a comma-separated string e.g. `dir_mode=0751,file_mode=0751`.
  /// [name] The name of the volume.
  /// [storageName] The name of the `AzureFile` storage.
  /// [storageType] The type of storage volume. Possible values are `AzureFile`, `EmptyDir`, `NfsAzureFile` and `Secret`. Defaults to `EmptyDir`.
  AppTemplateVolume({
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

  factory AppTemplateVolume.fromMap(Map<String, dynamic> map) {
    return AppTemplateVolume(
      mountOptions: map['mountOptions'] == null ? null : map['mountOptions'] as String,
      name: map['name'] as String,
      storageName: map['storageName'] == null ? null : map['storageName'] as String,
      storageType: map['storageType'] == null ? null : map['storageType'] as String,
    );
  }
}

