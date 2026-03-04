// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableEncryptionConfiguration {
  /// The self link or full name of a key which should be used to encrypt this table. Note that the default bigquery service account will need to have encrypt/decrypt permissions on this key - you may want to see the gcp.bigquery.getDefaultServiceAccount datasource and the gcp.kms.CryptoKeyIAMBinding resource.
  final pulumi.Input<String> kmsKeyName;

  /// The self link or full name of the kms key version used to encrypt this table.
  final pulumi.Input<String> kmsKeyVersion;

  /// Creates a new [GetTableEncryptionConfiguration].
  /// [kmsKeyName] The self link or full name of a key which should be used to encrypt this table. Note that the default bigquery service account will need to have encrypt/decrypt permissions on this key - you may want to see the gcp.bigquery.getDefaultServiceAccount datasource and the gcp.kms.CryptoKeyIAMBinding resource.
  /// [kmsKeyVersion] The self link or full name of the kms key version used to encrypt this table.
  GetTableEncryptionConfiguration({
    required this.kmsKeyName,
    required this.kmsKeyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
      'kmsKeyVersion': kmsKeyVersion,
    };
  }

  factory GetTableEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return GetTableEncryptionConfiguration(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
      kmsKeyVersion: pulumi.Input.fromValue(map['kmsKeyVersion'] as String),
    );
  }
}
