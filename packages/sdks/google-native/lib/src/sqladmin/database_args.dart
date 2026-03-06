// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_database_details.dart';

/// {@template pulumi_sqladmin_v1_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1_database_args_doc}
class DatabaseArgs {
  /// The Cloud SQL charset value.
  final pulumi.Input<String>? charset;
  /// The Cloud SQL collation value.
  final pulumi.Input<String>? collation;
  /// This field is deprecated and will be removed from a future version of the API.
  final pulumi.Input<String>? etag;
  /// The name of the Cloud SQL instance. This does not include the project ID.
  final pulumi.Input<String> instance;
  /// This is always `sql#database`.
  final pulumi.Input<String>? kind;
  /// The name of the database in the Cloud SQL instance. This does not include the project ID or instance name.
  final pulumi.Input<String>? name;
  /// The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable.
  final pulumi.Input<String>? project;
  /// The URI of this resource.
  final pulumi.Input<String>? selfLink;
  final pulumi.Input<SqlServerDatabaseDetails>? sqlserverDatabaseDetails;

  /// Creates a new [DatabaseArgs].
  /// [charset] The Cloud SQL charset value.
  /// [collation] The Cloud SQL collation value.
  /// [etag] This field is deprecated and will be removed from a future version of the API.
  /// [instance] The name of the Cloud SQL instance. This does not include the project ID.
  /// [kind] This is always `sql#database`.
  /// [name] The name of the database in the Cloud SQL instance. This does not include the project ID or instance name.
  /// [project] The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable.
  /// [selfLink] The URI of this resource.
  /// [sqlserverDatabaseDetails] Optional.
  const DatabaseArgs({
    this.charset,
    this.collation,
    this.etag,
    required this.instance,
    this.kind,
    this.name,
    this.project,
    this.selfLink,
    this.sqlserverDatabaseDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'charset': ?charset,
      'collation': ?collation,
      'etag': ?etag,
      'instance': instance,
      'kind': ?kind,
      'name': ?name,
      'project': ?project,
      'selfLink': ?selfLink,
      'sqlserverDatabaseDetails': ?pulumi.Input.mapOptionalInputValue<SqlServerDatabaseDetails, Map<String, dynamic>>(sqlserverDatabaseDetails, (value) => value.toMap()),
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      charset: (() { final guardedValue = map['charset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlserverDatabaseDetails: (() { final guardedValue = map['sqlserverDatabaseDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlServerDatabaseDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

