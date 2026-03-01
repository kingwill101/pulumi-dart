// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatasetIamPolicy.
class GetDatasetIamPolicyResult {
  final String datasetId;
  /// (Computed) The etag of the IAM policy.
  final String etag;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (Computed) The policy data
  final String policyData;
  final String project;

  /// Creates a new [GetDatasetIamPolicyResult].
  /// [datasetId] Required.
  /// [etag] (Computed) The etag of the IAM policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policyData] (Computed) The policy data
  /// [project] Required.
  GetDatasetIamPolicyResult({
    required this.datasetId,
    required this.etag,
    required this.id,
    required this.policyData,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'etag': etag,
      'id': id,
      'policyData': policyData,
      'project': project,
    };
  }

  factory GetDatasetIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetIamPolicyResult(
      datasetId: map['datasetId'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      policyData: map['policyData'] as String,
      project: map['project'] as String,
    );
  }
}

