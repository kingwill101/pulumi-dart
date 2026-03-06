// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getArchiveDeployment.
class GetArchiveDeploymentResult {
  /// The time at which the Archive Deployment was created in milliseconds since the epoch.
  final String createdAt;
  /// Input only. The Google Cloud Storage signed URL returned from GenerateUploadUrl and used to upload the Archive zip file.
  final String gcsUri;
  /// User-supplied key-value pairs used to organize ArchiveDeployments. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final Map<String, String> labels;
  /// Name of the Archive Deployment in the following format: `organizations/{org}/environments/{env}/archiveDeployments/{id}`.
  final String name;
  /// A reference to the LRO that created this Archive Deployment in the following format: `organizations/{org}/operations/{id}`
  final String operation;
  /// The time at which the Archive Deployment was updated in milliseconds since the epoch.
  final String updatedAt;

  /// Creates a new [GetArchiveDeploymentResult].
  /// [createdAt] The time at which the Archive Deployment was created in milliseconds since the epoch.
  /// [gcsUri] Input only. The Google Cloud Storage signed URL returned from GenerateUploadUrl and used to upload the Archive zip file.
  /// [labels] User-supplied key-value pairs used to organize ArchiveDeployments. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  /// [name] Name of the Archive Deployment in the following format: `organizations/{org}/environments/{env}/archiveDeployments/{id}`.
  /// [operation] A reference to the LRO that created this Archive Deployment in the following format: `organizations/{org}/operations/{id}`
  /// [updatedAt] The time at which the Archive Deployment was updated in milliseconds since the epoch.
  const GetArchiveDeploymentResult({
    required this.createdAt,
    required this.gcsUri,
    required this.labels,
    required this.name,
    required this.operation,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'gcsUri': gcsUri,
      'labels': labels,
      'name': name,
      'operation': operation,
      'updatedAt': updatedAt,
    };
  }

  factory GetArchiveDeploymentResult.fromMap(Map<String, dynamic> map) {
    return GetArchiveDeploymentResult(
      createdAt: map['createdAt'] as String,
      gcsUri: map['gcsUri'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      operation: map['operation'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }
}

