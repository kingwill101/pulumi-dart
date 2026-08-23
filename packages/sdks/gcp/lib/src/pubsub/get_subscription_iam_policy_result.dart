// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubscriptionIamPolicy.
class GetSubscriptionIamPolicyResult {
  /// (Computed) The etag of the IAM policy.
  final String etag;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (Computed) The policy data
  final String policyData;
  final String project;
  final String subscription;

  /// Creates a new [GetSubscriptionIamPolicyResult].
  /// [etag] (Computed) The etag of the IAM policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policyData] (Computed) The policy data
  /// [project] Required.
  /// [subscription] Required.
  const GetSubscriptionIamPolicyResult({
    required this.etag,
    required this.id,
    required this.policyData,
    required this.project,
    required this.subscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': id,
      'policyData': policyData,
      'project': project,
      'subscription': subscription,
    };
  }

  factory GetSubscriptionIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionIamPolicyResult(
      etag: map['etag'] as String,
      id: map['id'] as String,
      policyData: map['policyData'] as String,
      project: map['project'] as String,
      subscription: map['subscription'] as String,
    );
  }
}
