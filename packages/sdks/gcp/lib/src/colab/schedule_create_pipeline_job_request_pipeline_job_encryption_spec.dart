// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduleCreatePipelineJobRequestPipelineJobEncryptionSpec {
  /// Resource name of the Cloud KMS key used to protect the resource. The Cloud KMS key must be in the same region as the resource. It must have the format `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  final pulumi.Input<String> kmsKeyName;

  /// Creates a new [ScheduleCreatePipelineJobRequestPipelineJobEncryptionSpec].
  /// [kmsKeyName] Resource name of the Cloud KMS key used to protect the resource. The Cloud KMS key must be in the same region as the resource. It must have the format `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  const ScheduleCreatePipelineJobRequestPipelineJobEncryptionSpec({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory ScheduleCreatePipelineJobRequestPipelineJobEncryptionSpec.fromMap(Map<String, dynamic> map) {
    return ScheduleCreatePipelineJobRequestPipelineJobEncryptionSpec(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
    );
  }
}
