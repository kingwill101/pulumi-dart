// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClusterIamPolicy.
class GetClusterIamPolicyResult {
  final String cluster;
  /// (Computed) The etag of the IAM policy.
  final String etag;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (Computed) The policy data
  final String policyData;
  final String project;
  final String region;

  /// Creates a new [GetClusterIamPolicyResult].
  /// [cluster] Required.
  /// [etag] (Computed) The etag of the IAM policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policyData] (Computed) The policy data
  /// [project] Required.
  /// [region] Required.
  const GetClusterIamPolicyResult({
    required this.cluster,
    required this.etag,
    required this.id,
    required this.policyData,
    required this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'etag': etag,
      'id': id,
      'policyData': policyData,
      'project': project,
      'region': region,
    };
  }

  factory GetClusterIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetClusterIamPolicyResult(
      cluster: map['cluster'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      policyData: map['policyData'] as String,
      project: map['project'] as String,
      region: map['region'] as String,
    );
  }
}

