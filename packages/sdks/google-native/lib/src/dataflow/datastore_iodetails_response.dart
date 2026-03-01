// ignore_for_file: unused_element, unnecessary_cast


/// Metadata for a Datastore connector used by the job.
class DatastoreIODetailsResponse {
  /// Namespace used in the connection.
  final String namespace;
  /// ProjectId accessed in the connection.
  final String project;

  /// Creates a new [DatastoreIODetailsResponse].
  /// [namespace] Namespace used in the connection.
  /// [project] ProjectId accessed in the connection.
  DatastoreIODetailsResponse({
    required this.namespace,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': namespace,
      'project': project,
    };
  }

  factory DatastoreIODetailsResponse.fromMap(Map<String, dynamic> map) {
    return DatastoreIODetailsResponse(
      namespace: map['namespace'] as String,
      project: map['project'] as String,
    );
  }
}

