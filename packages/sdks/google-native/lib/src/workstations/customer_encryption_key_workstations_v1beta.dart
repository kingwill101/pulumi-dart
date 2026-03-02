// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A customer-managed encryption key (CMEK) for the Compute Engine resources of the associated workstation configuration. Specify the name of your Cloud KMS encryption key and the default service account. We recommend that you use a separate service account and follow [Cloud KMS best practices](https://cloud.google.com/kms/docs/separation-of-duties).
class CustomerEncryptionKeyWorkstationsV1beta {
  /// Immutable. The name of the Google Cloud KMS encryption key. For example, `"projects/PROJECT_ID/locations/REGION/keyRings/KEY_RING/cryptoKeys/KEY_NAME"`. The key must be in the same region as the workstation configuration.
  final pulumi.Input<String>? kmsKey;
  /// Immutable. The service account to use with the specified KMS key. We recommend that you use a separate service account and follow KMS best practices. For more information, see [Separation of duties](https://cloud.google.com/kms/docs/separation-of-duties) and `gcloud kms keys add-iam-policy-binding` [`--member`](https://cloud.google.com/sdk/gcloud/reference/kms/keys/add-iam-policy-binding#--member).
  final pulumi.Input<String>? kmsKeyServiceAccount;

  /// Creates a new [CustomerEncryptionKeyWorkstationsV1beta].
  /// [kmsKey] Immutable. The name of the Google Cloud KMS encryption key. For example, `"projects/PROJECT_ID/locations/REGION/keyRings/KEY_RING/cryptoKeys/KEY_NAME"`. The key must be in the same region as the workstation configuration.
  /// [kmsKeyServiceAccount] Immutable. The service account to use with the specified KMS key. We recommend that you use a separate service account and follow KMS best practices. For more information, see [Separation of duties](https://cloud.google.com/kms/docs/separation-of-duties) and `gcloud kms keys add-iam-policy-binding` [`--member`](https://cloud.google.com/sdk/gcloud/reference/kms/keys/add-iam-policy-binding#--member).
  CustomerEncryptionKeyWorkstationsV1beta({
    this.kmsKey,
    this.kmsKeyServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': ?kmsKey,
      'kmsKeyServiceAccount': ?kmsKeyServiceAccount,
    };
  }

  factory CustomerEncryptionKeyWorkstationsV1beta.fromMap(Map<String, dynamic> map) {
    return CustomerEncryptionKeyWorkstationsV1beta(
      kmsKey: map['kmsKey'] == null ? null : (map['kmsKey']! as String).input(),
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] == null ? null : (map['kmsKeyServiceAccount']! as String).input(),
    );
  }
}

