// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKeyRingIamPolicy.
class GetKeyRingIamPolicyResult {
  /// (Computed) The etag of the IAM policy.
  final String? etag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? keyRingId;
  /// (Computed) The policy data
  final String? policyData;

  /// Creates a new [GetKeyRingIamPolicyResult].
  /// [etag] (Computed) The etag of the IAM policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyRingId] Optional.
  /// [policyData] (Computed) The policy data
  const GetKeyRingIamPolicyResult({
    this.etag,
    this.id,
    this.keyRingId,
    this.policyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'id': ?id,
      'keyRingId': ?keyRingId,
      'policyData': ?policyData,
    };
  }

  factory GetKeyRingIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetKeyRingIamPolicyResult(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyRingId: (() { final guardedValue = map['keyRingId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyData: (() { final guardedValue = map['policyData']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
