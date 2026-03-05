// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClientCloudKmsConfig {
  /// A Cloud KMS key is a named object containing one or more key versions, along
  /// with metadata for the key. A key exists on exactly one key ring tied to a
  /// specific location.
  final pulumi.Input<String> key;
  /// Each version of a key contains key material used for encryption or signing.
  /// A key's version is represented by an integer, starting at 1. To decrypt data
  /// or verify a signature, you must use the same key version that was used to
  /// encrypt or sign the data.
  final pulumi.Input<String>? keyVersion;
  /// Location name of the key ring, e.g. "us-west1".
  final pulumi.Input<String> kmsLocation;
  /// The Google Cloud project id of the project where the kms key stored. If empty,
  /// the kms key is stored at the same project as customer's project and ecrypted
  /// with CMEK, otherwise, the kms key is stored in the tenant project and
  /// encrypted with GMEK.
  final pulumi.Input<String>? kmsProjectId;
  /// A key ring organizes keys in a specific Google Cloud location and allows you to
  /// manage access control on groups of keys. A key ring's name does not need to be
  /// unique across a Google Cloud project, but must be unique within a given location.
  final pulumi.Input<String> kmsRing;

  /// Creates a new [ClientCloudKmsConfig].
  /// [key] A Cloud KMS key is a named object containing one or more key versions, along
  /// [keyVersion] Each version of a key contains key material used for encryption or signing.
  /// [kmsLocation] Location name of the key ring, e.g. "us-west1".
  /// [kmsProjectId] The Google Cloud project id of the project where the kms key stored. If empty,
  /// [kmsRing] A key ring organizes keys in a specific Google Cloud location and allows you to
  ClientCloudKmsConfig({
    required this.key,
    this.keyVersion,
    required this.kmsLocation,
    this.kmsProjectId,
    required this.kmsRing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'keyVersion': ?keyVersion,
      'kmsLocation': kmsLocation,
      'kmsProjectId': ?kmsProjectId,
      'kmsRing': kmsRing,
    };
  }

  factory ClientCloudKmsConfig.fromMap(Map<String, dynamic> map) {
    return ClientCloudKmsConfig(
      key: pulumi.Input.fromValue(map['key'] as String),
      keyVersion: (() { final guardedValue = map['keyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsLocation: pulumi.Input.fromValue(map['kmsLocation'] as String),
      kmsProjectId: (() { final guardedValue = map['kmsProjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsRing: pulumi.Input.fromValue(map['kmsRing'] as String),
    );
  }
}

