// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getHl7V2StoreIamPolicy.
class GetHl7V2StoreIamPolicyResult {
  /// (Computed) The etag of the IAM policy.
  final String? etag;
  final String? hl7V2StoreId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// (Computed) The policy data
  final String? policyData;

  /// Creates a new [GetHl7V2StoreIamPolicyResult].
  /// [etag] (Computed) The etag of the IAM policy.
  /// [hl7V2StoreId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policyData] (Computed) The policy data
  const GetHl7V2StoreIamPolicyResult({
    this.etag,
    this.hl7V2StoreId,
    this.id,
    this.policyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'hl7V2StoreId': ?hl7V2StoreId,
      'id': ?id,
      'policyData': ?policyData,
    };
  }

  factory GetHl7V2StoreIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetHl7V2StoreIamPolicyResult(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hl7V2StoreId: (() { final guardedValue = map['hl7V2StoreId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyData: (() { final guardedValue = map['policyData']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
