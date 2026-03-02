// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateVolume {
  /// Mount options used while mounting the AzureFile. Must be a comma-separated string e.g. `dir_mode=0751,file_mode=0751`.
  final pulumi.Input<String>? mountOptions;
  /// The name of the volume.
  final pulumi.Input<String> name;
  /// The name of the storage to use for the volume.
  final pulumi.Input<String>? storageName;
  /// The type of storage to use for the volume. Possible values are `AzureFile`, `EmptyDir`, `NfsAzureFile` and `Secret`. Defaults to `EmptyDir`.
  final pulumi.Input<String>? storageType;

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
      mountOptions: map['mountOptions'] == null ? null : (map['mountOptions'] as String).input(),
      name: (map['name'] as String).input(),
      storageName: map['storageName'] == null ? null : (map['storageName'] as String).input(),
      storageType: map['storageType'] == null ? null : (map['storageType'] as String).input(),
    );
  }
}

