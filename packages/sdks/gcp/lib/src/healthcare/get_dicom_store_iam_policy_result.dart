// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDicomStoreIamPolicy.
class GetDicomStoreIamPolicyResult {
  final String? dicomStoreId;
  /// (Computed) The etag of the IAM policy.
  final String? etag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// (Computed) The policy data
  final String? policyData;

  /// Creates a new [GetDicomStoreIamPolicyResult].
  /// [dicomStoreId] Optional.
  /// [etag] (Computed) The etag of the IAM policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policyData] (Computed) The policy data
  const GetDicomStoreIamPolicyResult({
    this.dicomStoreId,
    this.etag,
    this.id,
    this.policyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dicomStoreId': ?dicomStoreId,
      'etag': ?etag,
      'id': ?id,
      'policyData': ?policyData,
    };
  }

  factory GetDicomStoreIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetDicomStoreIamPolicyResult(
      dicomStoreId: (() { final guardedValue = map['dicomStoreId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyData: (() { final guardedValue = map['policyData']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
