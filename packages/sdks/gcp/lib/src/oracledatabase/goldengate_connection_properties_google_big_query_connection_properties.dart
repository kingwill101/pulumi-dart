// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesGoogleBigQueryConnectionProperties {
  /// The service account key file Cloud Storage containing the
  /// credentials required to use Google BigQuery.
  final pulumi.Input<String>? serviceAccountKeyFile;
  /// The technology type.
  final pulumi.Input<String>? technologyType;

  /// Creates a new [GoldengateConnectionPropertiesGoogleBigQueryConnectionProperties].
  /// [serviceAccountKeyFile] The service account key file Cloud Storage containing the
  /// [technologyType] The technology type.
  const GoldengateConnectionPropertiesGoogleBigQueryConnectionProperties({
    this.serviceAccountKeyFile,
    this.technologyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccountKeyFile': ?serviceAccountKeyFile,
      'technologyType': ?technologyType,
    };
  }

  factory GoldengateConnectionPropertiesGoogleBigQueryConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesGoogleBigQueryConnectionProperties(
      serviceAccountKeyFile: (() { final guardedValue = map['serviceAccountKeyFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
