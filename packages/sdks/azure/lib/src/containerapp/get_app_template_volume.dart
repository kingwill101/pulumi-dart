// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppTemplateVolume {
  /// Mount options used while mounting the AzureFile.
  final pulumi.Input<String> mountOptions;

  /// The name of the Container App.
  final pulumi.Input<String> name;

  /// The name of the `AzureFile` storage.
  final pulumi.Input<String> storageName;

  /// The type of storage volume.
  final pulumi.Input<String> storageType;

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
      mountOptions: pulumi.Input.fromValue(map['mountOptions'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      storageName: pulumi.Input.fromValue(map['storageName'] as String),
      storageType: pulumi.Input.fromValue(map['storageType'] as String),
    );
  }
}
