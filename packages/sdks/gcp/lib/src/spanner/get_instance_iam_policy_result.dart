// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getInstanceIamPolicy.
class GetInstanceIamPolicyResult {
  /// (Computed) The etag of the IAM policy.
  final String etag;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instance;
  /// (Computed) The policy data
  final String policyData;
  final String project;

  /// Creates a new [GetInstanceIamPolicyResult].
  /// [etag] (Computed) The etag of the IAM policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instance] Required.
  /// [policyData] (Computed) The policy data
  /// [project] Required.
  GetInstanceIamPolicyResult({
    required this.etag,
    required this.id,
    required this.instance,
    required this.policyData,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': id,
      'instance': instance,
      'policyData': policyData,
      'project': project,
    };
  }

  factory GetInstanceIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceIamPolicyResult(
      etag: map['etag'] as String,
      id: map['id'] as String,
      instance: map['instance'] as String,
      policyData: map['policyData'] as String,
      project: map['project'] as String,
    );
  }
}

