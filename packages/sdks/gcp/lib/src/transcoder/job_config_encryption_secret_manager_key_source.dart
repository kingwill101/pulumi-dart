// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobConfigEncryptionSecretManagerKeySource {
  /// The name of the Secret Version containing the encryption key in the following format: projects/{project}/secrets/{secret_id}/versions/{version_number}.
  final pulumi.Input<String> secretVersion;

  /// Creates a new [JobConfigEncryptionSecretManagerKeySource].
  /// [secretVersion] The name of the Secret Version containing the encryption key in the following format: projects/{project}/secrets/{secret_id}/versions/{version_number}.
  const JobConfigEncryptionSecretManagerKeySource({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretVersion': secretVersion,
    };
  }

  factory JobConfigEncryptionSecretManagerKeySource.fromMap(Map<String, dynamic> map) {
    return JobConfigEncryptionSecretManagerKeySource(
      secretVersion: pulumi.Input.fromValue(map['secretVersion'] as String),
    );
  }
}
