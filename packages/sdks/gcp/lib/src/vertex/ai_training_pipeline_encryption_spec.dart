// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiTrainingPipelineEncryptionSpec {
  /// The Cloud KMS resource identifier of the customer-managed encryption key used to protect the training pipeline.
  final pulumi.Input<String> kmsKeyName;

  /// Creates a new [AiTrainingPipelineEncryptionSpec].
  /// [kmsKeyName] The Cloud KMS resource identifier of the customer-managed encryption key used to protect the training pipeline.
  const AiTrainingPipelineEncryptionSpec({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory AiTrainingPipelineEncryptionSpec.fromMap(Map<String, dynamic> map) {
    return AiTrainingPipelineEncryptionSpec(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
    );
  }
}
