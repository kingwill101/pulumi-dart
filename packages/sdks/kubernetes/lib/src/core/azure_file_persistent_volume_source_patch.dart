// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
class AzureFilePersistentVolumeSourcePatch {
  /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final pulumi.Input<bool>? readOnly;
  /// secretName is the name of secret that contains Azure Storage Account Name and Key
  final pulumi.Input<String>? secretName;
  /// secretNamespace is the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod
  final pulumi.Input<String>? secretNamespace;
  /// shareName is the azure Share Name
  final pulumi.Input<String>? shareName;

  /// Creates a new [AzureFilePersistentVolumeSourcePatch].
  /// [readOnly] readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  /// [secretName] secretName is the name of secret that contains Azure Storage Account Name and Key
  /// [secretNamespace] secretNamespace is the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod
  /// [shareName] shareName is the azure Share Name
  AzureFilePersistentVolumeSourcePatch({
    this.readOnly,
    this.secretName,
    this.secretNamespace,
    this.shareName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readOnly': ?readOnly,
      'secretName': ?secretName,
      'secretNamespace': ?secretNamespace,
      'shareName': ?shareName,
    };
  }

  factory AzureFilePersistentVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return AzureFilePersistentVolumeSourcePatch(
      readOnly: map['readOnly'] == null ? null : (map['readOnly']! as bool).input(),
      secretName: map['secretName'] == null ? null : (map['secretName']! as String).input(),
      secretNamespace: map['secretNamespace'] == null ? null : (map['secretNamespace']! as String).input(),
      shareName: map['shareName'] == null ? null : (map['shareName']! as String).input(),
    );
  }
}

