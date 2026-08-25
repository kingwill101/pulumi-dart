// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatabaseIamPolicy.
class GetDatabaseIamPolicyResult {
  final String? database;
  /// (Computed) The etag of the IAM policy.
  final String? etag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instance;
  /// (Computed) The policy data
  final String? policyData;
  final String? project;

  /// Creates a new [GetDatabaseIamPolicyResult].
  /// [database] Optional.
  /// [etag] (Computed) The etag of the IAM policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instance] Optional.
  /// [policyData] (Computed) The policy data
  /// [project] Optional.
  const GetDatabaseIamPolicyResult({
    this.database,
    this.etag,
    this.id,
    this.instance,
    this.policyData,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'etag': ?etag,
      'id': ?id,
      'instance': ?instance,
      'policyData': ?policyData,
      'project': ?project,
    };
  }

  factory GetDatabaseIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseIamPolicyResult(
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyData: (() { final guardedValue = map['policyData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
