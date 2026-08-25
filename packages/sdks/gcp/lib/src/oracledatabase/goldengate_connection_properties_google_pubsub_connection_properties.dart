// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesGooglePubsubConnectionProperties {
  /// The content of the service account key file containing the
  /// credentials required to use Google Pub/Sub.
  final pulumi.Input<String?>? serviceAccountKeyFile;
  /// The technology type of GooglePubsubConnection.
  final pulumi.Input<String?>? technologyType;

  /// Creates a new [GoldengateConnectionPropertiesGooglePubsubConnectionProperties].
  /// [serviceAccountKeyFile] The content of the service account key file containing the
  /// [technologyType] The technology type of GooglePubsubConnection.
  const GoldengateConnectionPropertiesGooglePubsubConnectionProperties({
    this.serviceAccountKeyFile,
    this.technologyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccountKeyFile': ?serviceAccountKeyFile,
      'technologyType': ?technologyType,
    };
  }

  factory GoldengateConnectionPropertiesGooglePubsubConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesGooglePubsubConnectionProperties(
      serviceAccountKeyFile: (() { final guardedValue = map['serviceAccountKeyFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
