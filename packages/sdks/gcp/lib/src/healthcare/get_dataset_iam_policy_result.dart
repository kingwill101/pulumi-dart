// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatasetIamPolicy.
class GetDatasetIamPolicyResult {
  final String? datasetId;
  /// (Computed) The etag of the IAM policy.
  final String? etag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// (Computed) The policy data
  final String? policyData;

  /// Creates a new [GetDatasetIamPolicyResult].
  /// [datasetId] Optional.
  /// [etag] (Computed) The etag of the IAM policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policyData] (Computed) The policy data
  const GetDatasetIamPolicyResult({
    this.datasetId,
    this.etag,
    this.id,
    this.policyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': ?datasetId,
      'etag': ?etag,
      'id': ?id,
      'policyData': ?policyData,
    };
  }

  factory GetDatasetIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetIamPolicyResult(
      datasetId: (() { final guardedValue = map['datasetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyData: (() { final guardedValue = map['policyData']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
