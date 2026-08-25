// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClusterIamPolicy.
class GetClusterIamPolicyResult {
  final String? cluster;
  /// (Computed) The etag of the IAM policy.
  final String? etag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// (Computed) The policy data
  final String? policyData;
  final String? project;
  final String? region;

  /// Creates a new [GetClusterIamPolicyResult].
  /// [cluster] Optional.
  /// [etag] (Computed) The etag of the IAM policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policyData] (Computed) The policy data
  /// [project] Optional.
  /// [region] Optional.
  const GetClusterIamPolicyResult({
    this.cluster,
    this.etag,
    this.id,
    this.policyData,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster,
      'etag': ?etag,
      'id': ?id,
      'policyData': ?policyData,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetClusterIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetClusterIamPolicyResult(
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyData: (() { final guardedValue = map['policyData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
