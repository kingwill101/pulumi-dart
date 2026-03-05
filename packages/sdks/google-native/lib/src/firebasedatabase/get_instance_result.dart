// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getInstance.
class GetInstanceResult {
  /// Output Only. The globally unique hostname of the database.
  final String databaseUrl;

  /// The fully qualified resource name of the database instance, in the form: `projects/{project-number}/locations/{location-id}/instances/{database-id}`.
  final String name;

  /// The resource name of the project this instance belongs to. For example: `projects/{project-number}`.
  final String project;

  /// The database's lifecycle state. Read-only.
  final String state;

  /// Immutable. The database instance type. On creation only USER_DATABASE is allowed, which is also the default when omitted.
  final String type;

  /// Creates a new [GetInstanceResult].
  /// [databaseUrl] Output Only. The globally unique hostname of the database.
  /// [name] The fully qualified resource name of the database instance, in the form: `projects/{project-number}/locations/{location-id}/instances/{database-id}`.
  /// [project] The resource name of the project this instance belongs to. For example: `projects/{project-number}`.
  /// [state] The database's lifecycle state. Read-only.
  /// [type] Immutable. The database instance type. On creation only USER_DATABASE is allowed, which is also the default when omitted.
  GetInstanceResult({
    required this.databaseUrl,
    required this.name,
    required this.project,
    required this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseUrl': databaseUrl,
      'name': name,
      'project': project,
      'state': state,
      'type': type,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      databaseUrl: map['databaseUrl'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      state: map['state'] as String,
      type: map['type'] as String,
    );
  }
}
