// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesGoogleCloudStorageConnectionProperties {
  /// The service account key Cloud Storage file containing the
  /// credentials required to use Google Cloud Storage.
  final pulumi.Input<String?>? serviceAccountKeyFile;
  /// The technology type.
  final pulumi.Input<String?>? technologyType;

  /// Creates a new [GoldengateConnectionPropertiesGoogleCloudStorageConnectionProperties].
  /// [serviceAccountKeyFile] The service account key Cloud Storage file containing the
  /// [technologyType] The technology type.
  const GoldengateConnectionPropertiesGoogleCloudStorageConnectionProperties({
    this.serviceAccountKeyFile,
    this.technologyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccountKeyFile': ?serviceAccountKeyFile,
      'technologyType': ?technologyType,
    };
  }

  factory GoldengateConnectionPropertiesGoogleCloudStorageConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesGoogleCloudStorageConnectionProperties(
      serviceAccountKeyFile: (() { final guardedValue = map['serviceAccountKeyFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
