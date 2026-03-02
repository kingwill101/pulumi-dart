// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseEncryptionConfig {
  /// Fully qualified name of the KMS key to use to encrypt this database. This key must exist
  /// in the same location as the Spanner Database.
  final pulumi.Input<String>? kmsKeyName;
  /// Fully qualified name of the KMS keys to use to encrypt this database. The keys must exist
  /// in the same locations as the Spanner Database.
  final pulumi.Input<List<String>>? kmsKeyNames;

  /// Creates a new [DatabaseEncryptionConfig].
  /// [kmsKeyName] Fully qualified name of the KMS key to use to encrypt this database. This key must exist
  /// [kmsKeyNames] Fully qualified name of the KMS keys to use to encrypt this database. The keys must exist
  DatabaseEncryptionConfig({
    this.kmsKeyName,
    this.kmsKeyNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': ?kmsKeyName,
      'kmsKeyNames': ?kmsKeyNames,
    };
  }

  factory DatabaseEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return DatabaseEncryptionConfig(
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName'] as String).input(),
      kmsKeyNames: map['kmsKeyNames'] == null ? null : ((map['kmsKeyNames'] as List).cast<String>()).input(),
    );
  }
}

