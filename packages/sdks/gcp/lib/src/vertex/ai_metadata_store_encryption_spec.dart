// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiMetadataStoreEncryptionSpec {
  /// Required. The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource.
  /// Has the form: projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key. The key needs to be in the same region as where the resource is created.
  final pulumi.Input<String>? kmsKeyName;

  /// Creates a new [AiMetadataStoreEncryptionSpec].
  /// [kmsKeyName] Required. The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource.
  AiMetadataStoreEncryptionSpec({
    this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': ?kmsKeyName,
    };
  }

  factory AiMetadataStoreEncryptionSpec.fromMap(Map<String, dynamic> map) {
    return AiMetadataStoreEncryptionSpec(
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName']! as String).input(),
    );
  }
}

