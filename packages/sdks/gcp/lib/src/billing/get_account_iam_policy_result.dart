// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccountIamPolicy.
class GetAccountIamPolicyResult {
  final String billingAccountId;
  /// (Computed) The etag of the IAM policy.
  final String etag;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (Computed) The policy data
  final String policyData;

  /// Creates a new [GetAccountIamPolicyResult].
  /// [billingAccountId] Required.
  /// [etag] (Computed) The etag of the IAM policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policyData] (Computed) The policy data
  const GetAccountIamPolicyResult({
    required this.billingAccountId,
    required this.etag,
    required this.id,
    required this.policyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'etag': etag,
      'id': id,
      'policyData': policyData,
    };
  }

  factory GetAccountIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetAccountIamPolicyResult(
      billingAccountId: map['billingAccountId'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      policyData: map['policyData'] as String,
    );
  }
}
