// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiTrainingPipelineModelToUploadEncryptionSpec {
  /// The Cloud KMS resource identifier of the customer-managed encryption key used to protect the training pipeline.
  final pulumi.Input<String> kmsKeyName;

  /// Creates a new [AiTrainingPipelineModelToUploadEncryptionSpec].
  /// [kmsKeyName] The Cloud KMS resource identifier of the customer-managed encryption key used to protect the training pipeline.
  const AiTrainingPipelineModelToUploadEncryptionSpec({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory AiTrainingPipelineModelToUploadEncryptionSpec.fromMap(Map<String, dynamic> map) {
    return AiTrainingPipelineModelToUploadEncryptionSpec(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
    );
  }
}
