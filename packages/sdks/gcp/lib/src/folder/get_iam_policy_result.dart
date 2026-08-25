// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIamPolicy.
class GetIamPolicyResult {
  /// (Computed) The etag of the IAM policy.
  final String? etag;
  final String? folder;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// (Computed) The policy data
  final String? policyData;

  /// Creates a new [GetIamPolicyResult].
  /// [etag] (Computed) The etag of the IAM policy.
  /// [folder] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policyData] (Computed) The policy data
  const GetIamPolicyResult({
    this.etag,
    this.folder,
    this.id,
    this.policyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'folder': ?folder,
      'id': ?id,
      'policyData': ?policyData,
    };
  }

  factory GetIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetIamPolicyResult(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyData: (() { final guardedValue = map['policyData']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
