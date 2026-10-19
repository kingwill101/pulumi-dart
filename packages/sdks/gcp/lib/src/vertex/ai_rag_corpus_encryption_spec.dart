// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiRagCorpusEncryptionSpec {
  /// Required. The Cloud KMS resource identifier of the customer managed
  /// encryption key used to protect the resource. Has the form:
  /// projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key.
  /// The key needs to be in the same region as where the resource is
  /// created.
  final pulumi.Input<String> kmsKeyName;

  /// Creates a new [AiRagCorpusEncryptionSpec].
  /// [kmsKeyName] Required. The Cloud KMS resource identifier of the customer managed
  const AiRagCorpusEncryptionSpec({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory AiRagCorpusEncryptionSpec.fromMap(Map<String, dynamic> map) {
    return AiRagCorpusEncryptionSpec(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
    );
  }
}
