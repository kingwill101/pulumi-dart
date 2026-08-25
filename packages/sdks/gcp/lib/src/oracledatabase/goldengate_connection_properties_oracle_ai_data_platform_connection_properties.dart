// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesOracleAiDataPlatformConnectionProperties {
  /// Connection URL. It must start with 'jdbc:spark://'
  final pulumi.Input<String?>? connectionUrl;
  /// The content of the private key file (PEM file)
  /// corresponding to the API key of the fingerprint.
  final pulumi.Input<String?>? privateKeyFile;
  /// The passphrase of the private key.
  final pulumi.Input<String?>? privateKeyPassphraseSecret;
  /// The fingerprint of the API Key of the user specified by the user_id.
  final pulumi.Input<String?>? publicKeyFingerprint;
  /// The name of the region. e.g.: us-ashburn-1
  final pulumi.Input<String?>? region;
  /// The technology type of OracleAiDataPlatformConnection.
  final pulumi.Input<String?>? technologyType;
  /// The OCID of the related OCI tenancy.
  final pulumi.Input<String?>? tenancyId;
  /// Specifies that the user intends to authenticate to the instance using a
  /// resource principal.
  final pulumi.Input<bool?>? useResourcePrincipal;
  /// The OCID of the OCI user who will access.
  final pulumi.Input<String?>? userId;

  /// Creates a new [GoldengateConnectionPropertiesOracleAiDataPlatformConnectionProperties].
  /// [connectionUrl] Connection URL. It must start with 'jdbc:spark://'
  /// [privateKeyFile] The content of the private key file (PEM file)
  /// [privateKeyPassphraseSecret] The passphrase of the private key.
  /// [publicKeyFingerprint] The fingerprint of the API Key of the user specified by the user_id.
  /// [region] The name of the region. e.g.: us-ashburn-1
  /// [technologyType] The technology type of OracleAiDataPlatformConnection.
  /// [tenancyId] The OCID of the related OCI tenancy.
  /// [useResourcePrincipal] Specifies that the user intends to authenticate to the instance using a
  /// [userId] The OCID of the OCI user who will access.
  const GoldengateConnectionPropertiesOracleAiDataPlatformConnectionProperties({
    this.connectionUrl,
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
      'connectionUrl': ?connectionUrl,
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

  factory GoldengateConnectionPropertiesOracleAiDataPlatformConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesOracleAiDataPlatformConnectionProperties(
      connectionUrl: (() { final guardedValue = map['connectionUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
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
