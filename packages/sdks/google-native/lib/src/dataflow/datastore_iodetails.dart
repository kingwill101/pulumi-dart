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
  const DatastoreIODetails({
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
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
