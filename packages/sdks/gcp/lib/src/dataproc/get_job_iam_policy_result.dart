// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getJobIamPolicy.
class GetJobIamPolicyResult {
  /// (Computed) The etag of the IAM policy.
  final String? etag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? jobId;
  /// (Computed) The policy data
  final String? policyData;
  final String? project;
  final String? region;

  /// Creates a new [GetJobIamPolicyResult].
  /// [etag] (Computed) The etag of the IAM policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [jobId] Optional.
  /// [policyData] (Computed) The policy data
  /// [project] Optional.
  /// [region] Optional.
  const GetJobIamPolicyResult({
    this.etag,
    this.id,
    this.jobId,
    this.policyData,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'id': ?id,
      'jobId': ?jobId,
      'policyData': ?policyData,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetJobIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetJobIamPolicyResult(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jobId: (() { final guardedValue = map['jobId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyData: (() { final guardedValue = map['policyData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
