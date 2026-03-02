// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetEncryptionSpec {
  /// KMS encryption key that is used to secure this dataset and its sub-resources. The key used for
  /// encryption and the dataset must be in the same location. If empty, the default Google encryption
  /// key will be used to secure this dataset. The format is
  /// projects/{projectId}/locations/{locationId}/keyRings/{keyRingId}/cryptoKeys/{keyId}.
  final pulumi.Input<String>? kmsKeyName;

  /// Creates a new [DatasetEncryptionSpec].
  /// [kmsKeyName] KMS encryption key that is used to secure this dataset and its sub-resources. The key used for
  DatasetEncryptionSpec({
    this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': ?kmsKeyName,
    };
  }

  factory DatasetEncryptionSpec.fromMap(Map<String, dynamic> map) {
    return DatasetEncryptionSpec(
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName']! as String).input(),
    );
  }
}

