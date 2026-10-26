// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueryTemplateEncryptionConfiguration {
  /// The KMS key used to encrypt the query template.
  /// Format: `projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}`
  final pulumi.Input<String> kmsKeyName;

  /// Creates a new [QueryTemplateEncryptionConfiguration].
  /// [kmsKeyName] The KMS key used to encrypt the query template.
  const QueryTemplateEncryptionConfiguration({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory QueryTemplateEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return QueryTemplateEncryptionConfiguration(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
    );
  }
}
