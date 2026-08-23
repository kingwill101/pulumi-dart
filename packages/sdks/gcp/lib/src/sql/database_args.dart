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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [instance] The name of the Cloud SQL instance. This does not include the project
  /// [name] The name of the database in the Cloud SQL instance.
  /// [project] The ID of the project in which the resource belongs.
  const DatabaseArgs({
    this.charset,
    this.collation,
    this.deletionPolicy,
    required this.instance,
    this.name,
    this.project,
  });

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
      charset: (() { final guardedValue = map['charset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
