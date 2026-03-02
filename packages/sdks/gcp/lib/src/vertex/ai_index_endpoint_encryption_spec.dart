// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiIndexEndpointEncryptionSpec {
  /// Required. The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. The key needs to be in the same region as where the compute resource is created.
  final pulumi.Input<String> kmsKeyName;

  /// Creates a new [AiIndexEndpointEncryptionSpec].
  /// [kmsKeyName] Required. The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. The key needs to be in the same region as where the compute resource is created.
  AiIndexEndpointEncryptionSpec({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory AiIndexEndpointEncryptionSpec.fromMap(Map<String, dynamic> map) {
    return AiIndexEndpointEncryptionSpec(
      kmsKeyName: (map['kmsKeyName'] as String).input(),
    );
  }
}

