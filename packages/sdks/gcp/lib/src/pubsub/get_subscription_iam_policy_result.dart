// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubscriptionIamPolicy.
class GetSubscriptionIamPolicyResult {
  /// (Computed) The etag of the IAM policy.
  final String? etag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// (Computed) The policy data
  final String? policyData;
  final String? project;
  final String? subscription;

  /// Creates a new [GetSubscriptionIamPolicyResult].
  /// [etag] (Computed) The etag of the IAM policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policyData] (Computed) The policy data
  /// [project] Optional.
  /// [subscription] Optional.
  const GetSubscriptionIamPolicyResult({
    this.etag,
    this.id,
    this.policyData,
    this.project,
    this.subscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'id': ?id,
      'policyData': ?policyData,
      'project': ?project,
      'subscription': ?subscription,
    };
  }

  factory GetSubscriptionIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionIamPolicyResult(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyData: (() { final guardedValue = map['policyData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subscription: (() { final guardedValue = map['subscription']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
