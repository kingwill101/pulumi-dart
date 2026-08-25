// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTableIamPolicy.
class GetTableIamPolicyResult {
  /// (Computed) The etag of the IAM policy.
  final String? etag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceName;
  /// (Computed) The policy data
  final String? policyData;
  final String? project;
  final String? table;

  /// Creates a new [GetTableIamPolicyResult].
  /// [etag] (Computed) The etag of the IAM policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceName] Optional.
  /// [policyData] (Computed) The policy data
  /// [project] Optional.
  /// [table] Optional.
  const GetTableIamPolicyResult({
    this.etag,
    this.id,
    this.instanceName,
    this.policyData,
    this.project,
    this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'id': ?id,
      'instanceName': ?instanceName,
      'policyData': ?policyData,
      'project': ?project,
      'table': ?table,
    };
  }

  factory GetTableIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetTableIamPolicyResult(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceName: (() { final guardedValue = map['instanceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyData: (() { final guardedValue = map['policyData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      table: (() { final guardedValue = map['table']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
