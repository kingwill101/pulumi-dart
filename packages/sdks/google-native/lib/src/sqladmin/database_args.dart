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
  DatabaseArgs({
    pulumi.Output<String>? charset,
    pulumi.Output<String>? collation,
    pulumi.Output<String>? etag,
    required pulumi.Output<String> instance,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? selfLink,
    pulumi.Output<SqlServerDatabaseDetails>? sqlserverDatabaseDetails,
  }) :
      charset = pulumi.Input.asOptionalInput<String>(charset),
      collation = pulumi.Input.asOptionalInput<String>(collation),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      instance = pulumi.Input.asInput<String>(instance),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      sqlserverDatabaseDetails = pulumi.Input.asOptionalInput<SqlServerDatabaseDetails>(sqlserverDatabaseDetails);

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
      charset: map['charset'] == null ? null : pulumi.Output.create<String>(map['charset'] as String),
      collation: map['collation'] == null ? null : pulumi.Output.create<String>(map['collation'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      instance: pulumi.Output.create<String>(map['instance'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      sqlserverDatabaseDetails: map['sqlserverDatabaseDetails'] == null ? null : pulumi.Output.create<SqlServerDatabaseDetails>(SqlServerDatabaseDetails.fromMap((map['sqlserverDatabaseDetails'] as Map).cast<String, dynamic>())),
    );
  }
}

