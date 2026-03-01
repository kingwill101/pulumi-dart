// ignore_for_file: unused_element, unnecessary_cast


/// AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
class AzureFileVolumeSource {
  /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;
  /// secretName is the  name of secret that contains Azure Storage Account Name and Key
  final String secretName;
  /// shareName is the azure share Name
  final String shareName;

  /// Creates a new [AzureFileVolumeSource].
  /// [readOnly] readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  /// [secretName] secretName is the  name of secret that contains Azure Storage Account Name and Key
  /// [shareName] shareName is the azure share Name
  AzureFileVolumeSource({
    this.readOnly,
    required this.secretName,
    required this.shareName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readOnly': ?readOnly,
      'secretName': secretName,
      'shareName': shareName,
    };
  }

  factory AzureFileVolumeSource.fromMap(Map<String, dynamic> map) {
    return AzureFileVolumeSource(
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      secretName: map['secretName'] as String,
      shareName: map['shareName'] as String,
    );
  }
}

