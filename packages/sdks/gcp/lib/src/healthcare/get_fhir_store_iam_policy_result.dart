// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFhirStoreIamPolicy.
class GetFhirStoreIamPolicyResult {
  /// (Computed) The etag of the IAM policy.
  final String? etag;
  final String? fhirStoreId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// (Computed) The policy data
  final String? policyData;

  /// Creates a new [GetFhirStoreIamPolicyResult].
  /// [etag] (Computed) The etag of the IAM policy.
  /// [fhirStoreId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policyData] (Computed) The policy data
  const GetFhirStoreIamPolicyResult({
    this.etag,
    this.fhirStoreId,
    this.id,
    this.policyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'fhirStoreId': ?fhirStoreId,
      'id': ?id,
      'policyData': ?policyData,
    };
  }

  factory GetFhirStoreIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetFhirStoreIamPolicyResult(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fhirStoreId: (() { final guardedValue = map['fhirStoreId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyData: (() { final guardedValue = map['policyData']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
