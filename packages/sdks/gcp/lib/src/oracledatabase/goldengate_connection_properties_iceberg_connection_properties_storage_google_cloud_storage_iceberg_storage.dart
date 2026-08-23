// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageGoogleCloudStorageIcebergStorage {
  /// The bucket of Google Cloud Storage.
  final pulumi.Input<String> bucket;
  /// The project ID of Google Cloud Storage.
  final pulumi.Input<String> projectId;
  /// The service account key file of Google Cloud Storage.
  final pulumi.Input<String>? serviceAccountKeyFile;

  /// Creates a new [GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageGoogleCloudStorageIcebergStorage].
  /// [bucket] The bucket of Google Cloud Storage.
  /// [projectId] The project ID of Google Cloud Storage.
  /// [serviceAccountKeyFile] The service account key file of Google Cloud Storage.
  const GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageGoogleCloudStorageIcebergStorage({
    required this.bucket,
    required this.projectId,
    this.serviceAccountKeyFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'projectId': projectId,
      'serviceAccountKeyFile': ?serviceAccountKeyFile,
    };
  }

  factory GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageGoogleCloudStorageIcebergStorage.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageGoogleCloudStorageIcebergStorage(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      serviceAccountKeyFile: (() { final guardedValue = map['serviceAccountKeyFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
