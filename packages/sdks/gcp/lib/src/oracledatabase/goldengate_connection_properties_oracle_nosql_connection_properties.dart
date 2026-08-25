// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesOracleNosqlConnectionProperties {
  /// The content of the private key file (PEM file)
  /// corresponding to the API key of the fingerprint.
  final pulumi.Input<String?>? privateKeyFile;
  /// The passphrase of the private key.
  final pulumi.Input<String?>? privateKeyPassphraseSecret;
  /// The fingerprint of the API Key of the user specified by the userId.
  final pulumi.Input<String?>? publicKeyFingerprint;
  /// The name of the region. e.g.: us-ashburn-1
  final pulumi.Input<String?>? region;
  /// The technology type of OracleNosqlConnection.
  final pulumi.Input<String?>? technologyType;
  /// The OCID of the OCI tenancy.
  final pulumi.Input<String?>? tenancyId;
  /// Specifies that the user intends to authenticate to the instance using a
  /// resource principal.
  final pulumi.Input<bool?>? useResourcePrincipal;
  /// The OCID of the OCI user who will access the Oracle NoSQL database.
  final pulumi.Input<String?>? userId;

  /// Creates a new [GoldengateConnectionPropertiesOracleNosqlConnectionProperties].
  /// [privateKeyFile] The content of the private key file (PEM file)
  /// [privateKeyPassphraseSecret] The passphrase of the private key.
  /// [publicKeyFingerprint] The fingerprint of the API Key of the user specified by the userId.
  /// [region] The name of the region. e.g.: us-ashburn-1
  /// [technologyType] The technology type of OracleNosqlConnection.
  /// [tenancyId] The OCID of the OCI tenancy.
  /// [useResourcePrincipal] Specifies that the user intends to authenticate to the instance using a
  /// [userId] The OCID of the OCI user who will access the Oracle NoSQL database.
  const GoldengateConnectionPropertiesOracleNosqlConnectionProperties({
    this.privateKeyFile,
    this.privateKeyPassphraseSecret,
    this.publicKeyFingerprint,
    this.region,
    this.technologyType,
    this.tenancyId,
    this.useResourcePrincipal,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateKeyFile': ?privateKeyFile,
      'privateKeyPassphraseSecret': ?privateKeyPassphraseSecret,
      'publicKeyFingerprint': ?publicKeyFingerprint,
      'region': ?region,
      'technologyType': ?technologyType,
      'tenancyId': ?tenancyId,
      'useResourcePrincipal': ?useResourcePrincipal,
      'userId': ?userId,
    };
  }

  factory GoldengateConnectionPropertiesOracleNosqlConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesOracleNosqlConnectionProperties(
      privateKeyFile: (() { final guardedValue = map['privateKeyFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyPassphraseSecret: (() { final guardedValue = map['privateKeyPassphraseSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKeyFingerprint: (() { final guardedValue = map['publicKeyFingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenancyId: (() { final guardedValue = map['tenancyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useResourcePrincipal: (() { final guardedValue = map['useResourcePrincipal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
