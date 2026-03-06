// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabasesDatabase {
  /// The charset value. See MySQL's
  /// [Supported Character Sets and Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)
  /// and Postgres' [Character Set Support](https://www.postgresql.org/docs/9.6/static/multibyte.html)
  /// for more details and supported values. Postgres databases only support
  /// a value of 'UTF8' at creation time.
  final pulumi.Input<String> charset;
  /// The collation value. See MySQL's
  /// [Supported Character Sets and Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)
  /// and Postgres' [Collation Support](https://www.postgresql.org/docs/9.6/static/collation.html)
  /// for more details and supported values. Postgres databases only support
  /// a value of 'en_US.UTF8' at creation time.
  final pulumi.Input<String> collation;
  /// The deletion policy for the database. Setting ABANDON allows the resource
  /// to be abandoned rather than deleted. This is useful for Postgres, where databases cannot be
  /// deleted from the API if there are users other than cloudsqlsuperuser with access. Possible
  /// values are: "ABANDON", "DELETE". Defaults to "DELETE".
  final pulumi.Input<String> deletionPolicy;
  /// The name of the Cloud SQL database instance in which the database belongs.
  final pulumi.Input<String> instance;
  /// The name of the database in the Cloud SQL instance.
  /// This does not include the project ID or instance name.
  final pulumi.Input<String> name;
  /// The ID of the project in which the instance belongs.
  ///
  /// &gt; **Note** This datasource performs client-side sorting to provide consistent ordering of the databases.
  final pulumi.Input<String> project;
  final pulumi.Input<String> selfLink;

  /// Creates a new [GetDatabasesDatabase].
  /// [charset] The charset value. See MySQL's
  /// [collation] The collation value. See MySQL's
  /// [deletionPolicy] The deletion policy for the database. Setting ABANDON allows the resource
  /// [instance] The name of the Cloud SQL database instance in which the database belongs.
  /// [name] The name of the database in the Cloud SQL instance.
  /// [project] The ID of the project in which the instance belongs.
  /// [selfLink] Required.
  const GetDatabasesDatabase({
    required this.charset,
    required this.collation,
    required this.deletionPolicy,
    required this.instance,
    required this.name,
    required this.project,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'charset': charset,
      'collation': collation,
      'deletionPolicy': deletionPolicy,
      'instance': instance,
      'name': name,
      'project': project,
      'selfLink': selfLink,
    };
  }

  factory GetDatabasesDatabase.fromMap(Map<String, dynamic> map) {
    return GetDatabasesDatabase(
      charset: pulumi.Input.fromValue(map['charset'] as String),
      collation: pulumi.Input.fromValue(map['collation'] as String),
      deletionPolicy: pulumi.Input.fromValue(map['deletionPolicy'] as String),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      selfLink: pulumi.Input.fromValue(map['selfLink'] as String),
    );
  }
}

