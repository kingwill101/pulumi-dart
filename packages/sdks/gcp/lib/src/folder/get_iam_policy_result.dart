// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIamPolicy.
class GetIamPolicyResult {
  /// (Computed) The etag of the IAM policy.
  final String etag;
  final String folder;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (Computed) The policy data
  final String policyData;

  /// Creates a new [GetIamPolicyResult].
  /// [etag] (Computed) The etag of the IAM policy.
  /// [folder] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policyData] (Computed) The policy data
  const GetIamPolicyResult({
    required this.etag,
    required this.folder,
    required this.id,
    required this.policyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'folder': folder,
      'id': id,
      'policyData': policyData,
    };
  }

  factory GetIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetIamPolicyResult(
      etag: map['etag'] as String,
      folder: map['folder'] as String,
      id: map['id'] as String,
      policyData: map['policyData'] as String,
    );
  }
}

