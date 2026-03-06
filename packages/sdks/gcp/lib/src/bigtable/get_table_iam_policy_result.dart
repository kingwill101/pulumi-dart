// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTableIamPolicy.
class GetTableIamPolicyResult {
  /// (Computed) The etag of the IAM policy.
  final String etag;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceName;
  /// (Computed) The policy data
  final String policyData;
  final String project;
  final String table;

  /// Creates a new [GetTableIamPolicyResult].
  /// [etag] (Computed) The etag of the IAM policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceName] Required.
  /// [policyData] (Computed) The policy data
  /// [project] Required.
  /// [table] Required.
  const GetTableIamPolicyResult({
    required this.etag,
    required this.id,
    required this.instanceName,
    required this.policyData,
    required this.project,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': id,
      'instanceName': instanceName,
      'policyData': policyData,
      'project': project,
      'table': table,
    };
  }

  factory GetTableIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetTableIamPolicyResult(
      etag: map['etag'] as String,
      id: map['id'] as String,
      instanceName: map['instanceName'] as String,
      policyData: map['policyData'] as String,
      project: map['project'] as String,
      table: map['table'] as String,
    );
  }
}

