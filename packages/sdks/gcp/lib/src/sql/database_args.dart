// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_database_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_sql_database_database_args_doc}
class DatabaseArgs {
  /// The charset value. See MySQL's
  /// [Supported Character Sets and Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)
  /// and Postgres' [Character Set Support](https://www.postgresql.org/docs/9.6/static/multibyte.html)
  /// for more details and supported values. Postgres databases only support
  /// a value of `UTF8` at creation time.
  final pulumi.Input<String>? charset;
  /// The collation value. See MySQL's
  /// [Supported Character Sets and Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)
  /// and Postgres' [Collation Support](https://www.postgresql.org/docs/9.6/static/collation.html)
  /// for more details and supported values. Postgres databases only support
  /// a value of `en_US.UTF8` at creation time.
  final pulumi.Input<String>? collation;
  /// The deletion policy for the database. Setting ABANDON allows the resource
  /// to be abandoned rather than deleted. This is useful for Postgres, where databases cannot be
  /// deleted from the API if there are users other than cloudsqlsuperuser with access. Possible
  /// values are: "ABANDON", "DELETE". Defaults to "DELETE".
  final pulumi.Input<String>? deletionPolicy;
  /// The name of the Cloud SQL instance. This does not include the project
  /// ID.
  final pulumi.Input<String> instance;
  /// The name of the database in the Cloud SQL instance.
  /// This does not include the project ID or instance name.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [DatabaseArgs].
  /// [charset] The charset value. See MySQL's
  /// [collation] The collation value. See MySQL's
  /// [deletionPolicy] The deletion policy for the database. Setting ABANDON allows the resource
  /// [instance] The name of the Cloud SQL instance. This does not include the project
  /// [name] The name of the database in the Cloud SQL instance.
  /// [project] The ID of the project in which the resource belongs.
  DatabaseArgs({
    pulumi.Output<String>? charset,
    pulumi.Output<String>? collation,
    pulumi.Output<String>? deletionPolicy,
    required pulumi.Output<String> instance,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      charset = pulumi.Input.asOptionalInput<String>(charset),
      collation = pulumi.Input.asOptionalInput<String>(collation),
      deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
      instance = pulumi.Input.asInput<String>(instance),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'charset': ?charset,
      'collation': ?collation,
      'deletionPolicy': ?deletionPolicy,
      'instance': instance,
      'name': ?name,
      'project': ?project,
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      charset: map['charset'] == null ? null : pulumi.Output.create<String>(map['charset'] as String),
      collation: map['collation'] == null ? null : pulumi.Output.create<String>(map['collation'] as String),
      deletionPolicy: map['deletionPolicy'] == null ? null : pulumi.Output.create<String>(map['deletionPolicy'] as String),
      instance: pulumi.Output.create<String>(map['instance'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

