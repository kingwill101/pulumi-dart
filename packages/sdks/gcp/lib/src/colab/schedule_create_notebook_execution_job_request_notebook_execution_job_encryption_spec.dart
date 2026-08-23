// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobEncryptionSpec {
  /// Resource name of the Cloud KMS key used to protect the resource. The Cloud KMS key must be in the same region as the resource. It must have the format `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  final pulumi.Input<String> kmsKeyName;

  /// Creates a new [ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobEncryptionSpec].
  /// [kmsKeyName] Resource name of the Cloud KMS key used to protect the resource. The Cloud KMS key must be in the same region as the resource. It must have the format `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  const ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobEncryptionSpec({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobEncryptionSpec.fromMap(Map<String, dynamic> map) {
    return ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobEncryptionSpec(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
    );
  }
}
