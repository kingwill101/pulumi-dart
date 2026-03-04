// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for a Datastore connector used by the job.
class DatastoreIODetailsResponse {
  /// Namespace used in the connection.
  final pulumi.Input<String> namespace;

  /// ProjectId accessed in the connection.
  final pulumi.Input<String> project;

  /// Creates a new [DatastoreIODetailsResponse].
  /// [namespace] Namespace used in the connection.
  /// [project] ProjectId accessed in the connection.
  DatastoreIODetailsResponse({required this.namespace, required this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'namespace': namespace, 'project': project};
  }

  factory DatastoreIODetailsResponse.fromMap(Map<String, dynamic> map) {
    return DatastoreIODetailsResponse(
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}
