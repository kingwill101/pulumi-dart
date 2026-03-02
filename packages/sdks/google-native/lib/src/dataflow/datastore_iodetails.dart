// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for a Datastore connector used by the job.
class DatastoreIODetails {
  /// Namespace used in the connection.
  final pulumi.Input<String>? namespace;
  /// ProjectId accessed in the connection.
  final pulumi.Input<String>? project;

  /// Creates a new [DatastoreIODetails].
  /// [namespace] Namespace used in the connection.
  /// [project] ProjectId accessed in the connection.
  DatastoreIODetails({
    this.namespace,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': ?namespace,
      'project': ?project,
    };
  }

  factory DatastoreIODetails.fromMap(Map<String, dynamic> map) {
    return DatastoreIODetails(
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

