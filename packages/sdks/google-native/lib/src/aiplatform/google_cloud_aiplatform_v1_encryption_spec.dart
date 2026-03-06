// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a customer-managed encryption key spec that can be applied to a top-level resource.
class GoogleCloudAiplatformV1EncryptionSpec {
  /// The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. The key needs to be in the same region as where the compute resource is created.
  final pulumi.Input<String> kmsKeyName;

  /// Creates a new [GoogleCloudAiplatformV1EncryptionSpec].
  /// [kmsKeyName] The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. The key needs to be in the same region as where the compute resource is created.
  const GoogleCloudAiplatformV1EncryptionSpec({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory GoogleCloudAiplatformV1EncryptionSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1EncryptionSpec(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
    );
  }
}

