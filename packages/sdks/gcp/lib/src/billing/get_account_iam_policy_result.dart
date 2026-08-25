// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccountIamPolicy.
class GetAccountIamPolicyResult {
  final String? billingAccountId;
  /// (Computed) The etag of the IAM policy.
  final String? etag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// (Computed) The policy data
  final String? policyData;

  /// Creates a new [GetAccountIamPolicyResult].
  /// [billingAccountId] Optional.
  /// [etag] (Computed) The etag of the IAM policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policyData] (Computed) The policy data
  const GetAccountIamPolicyResult({
    this.billingAccountId,
    this.etag,
    this.id,
    this.policyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': ?billingAccountId,
      'etag': ?etag,
      'id': ?id,
      'policyData': ?policyData,
    };
  }

  factory GetAccountIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetAccountIamPolicyResult(
      billingAccountId: (() { final guardedValue = map['billingAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyData: (() { final guardedValue = map['policyData']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
