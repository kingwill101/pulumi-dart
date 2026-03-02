// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
class AzureFileVolumeSourcePatch {
  /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final pulumi.Input<bool>? readOnly;
  /// secretName is the  name of secret that contains Azure Storage Account Name and Key
  final pulumi.Input<String>? secretName;
  /// shareName is the azure share Name
  final pulumi.Input<String>? shareName;

  /// Creates a new [AzureFileVolumeSourcePatch].
  /// [readOnly] readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  /// [secretName] secretName is the  name of secret that contains Azure Storage Account Name and Key
  /// [shareName] shareName is the azure share Name
  AzureFileVolumeSourcePatch({
    this.readOnly,
    this.secretName,
    this.shareName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readOnly': ?readOnly,
      'secretName': ?secretName,
      'shareName': ?shareName,
    };
  }

  factory AzureFileVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return AzureFileVolumeSourcePatch(
      readOnly: map['readOnly'] == null ? null : (map['readOnly'] as bool).input(),
      secretName: map['secretName'] == null ? null : (map['secretName'] as String).input(),
      shareName: map['shareName'] == null ? null : (map['shareName'] as String).input(),
    );
  }
}

