// ignore_for_file: unused_element, unnecessary_cast


class V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidateFileGcs {
  /// Bucket of the Cloud Storage object.
  final String bucket;
  /// Generation number of the Cloud Storage object.
  final String? generation;
  /// Name of the Cloud Storage object.
  final String object;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidateFileGcs].
  /// [bucket] Bucket of the Cloud Storage object.
  /// [generation] Generation number of the Cloud Storage object.
  /// [object] Name of the Cloud Storage object.
  V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidateFileGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generation': ?generation,
      'object': object,
    };
  }

  factory V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidateFileGcs.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidateFileGcs(
      bucket: map['bucket'] as String,
      generation: map['generation'] == null ? null : map['generation'] as String,
      object: map['object'] as String,
    );
  }
}

