// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIamPolicy.
class GetIamPolicyResult {
  /// (Computed) The etag of the IAM policy.
  final String? etag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// (Computed) The policy data
  final String? policyData;
  final String? project;

  /// Creates a new [GetIamPolicyResult].
  /// [etag] (Computed) The etag of the IAM policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policyData] (Computed) The policy data
  /// [project] Optional.
  const GetIamPolicyResult({
    this.etag,
    this.id,
    this.policyData,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'id': ?id,
      'policyData': ?policyData,
      'project': ?project,
    };
  }

  factory GetIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetIamPolicyResult(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyData: (() { final guardedValue = map['policyData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
