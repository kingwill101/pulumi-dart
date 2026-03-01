// ignore_for_file: unused_element, unnecessary_cast


class GetAppTemplateVolume {
  /// Mount options used while mounting the AzureFile.
  final String mountOptions;
  /// The name of the Container App.
  final String name;
  /// The name of the `AzureFile` storage.
  final String storageName;
  /// The type of storage volume.
  final String storageType;

  /// Creates a new [GetAppTemplateVolume].
  /// [mountOptions] Mount options used while mounting the AzureFile.
  /// [name] The name of the Container App.
  /// [storageName] The name of the `AzureFile` storage.
  /// [storageType] The type of storage volume.
  GetAppTemplateVolume({
    required this.mountOptions,
    required this.name,
    required this.storageName,
    required this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountOptions': mountOptions,
      'name': name,
      'storageName': storageName,
      'storageType': storageType,
    };
  }

  factory GetAppTemplateVolume.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateVolume(
      mountOptions: map['mountOptions'] as String,
      name: map['name'] as String,
      storageName: map['storageName'] as String,
      storageType: map['storageType'] as String,
    );
  }
}

