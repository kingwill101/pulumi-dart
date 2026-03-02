// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecDatabase {
  /// The name of the underlying DigitalOcean DBaaS cluster. This is required for production databases. For dev databases, if `cluster_name` is not set, a new cluster will be provisioned.
  final pulumi.Input<String>? clusterName;
  /// The name of the MySQL or PostgreSQL database to configure.
  final pulumi.Input<String>? dbName;
  /// The name of the MySQL or PostgreSQL user to configure.
  final pulumi.Input<String>? dbUser;
  /// The database engine to use (`MYSQL`, `PG`, `REDIS`, or `MONGODB`).
  final pulumi.Input<String>? engine;
  /// The name of the component.
  final pulumi.Input<String>? name;
  /// Whether this is a production or dev database.
  final pulumi.Input<bool>? production;
  /// The version of the database engine.
  final pulumi.Input<String>? version;

  /// Creates a new [GetAppSpecDatabase].
  /// [clusterName] The name of the underlying DigitalOcean DBaaS cluster. This is required for production databases. For dev databases, if `cluster_name` is not set, a new cluster will be provisioned.
  /// [dbName] The name of the MySQL or PostgreSQL database to configure.
  /// [dbUser] The name of the MySQL or PostgreSQL user to configure.
  /// [engine] The database engine to use (`MYSQL`, `PG`, `REDIS`, or `MONGODB`).
  /// [name] The name of the component.
  /// [production] Whether this is a production or dev database.
  /// [version] The version of the database engine.
  GetAppSpecDatabase({
    this.clusterName,
    this.dbName,
    this.dbUser,
    this.engine,
    this.name,
    this.production,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'dbName': ?dbName,
      'dbUser': ?dbUser,
      'engine': ?engine,
      'name': ?name,
      'production': ?production,
      'version': ?version,
    };
  }

  factory GetAppSpecDatabase.fromMap(Map<String, dynamic> map) {
    return GetAppSpecDatabase(
      clusterName: map['clusterName'] == null ? null : (map['clusterName']! as String).input(),
      dbName: map['dbName'] == null ? null : (map['dbName']! as String).input(),
      dbUser: map['dbUser'] == null ? null : (map['dbUser']! as String).input(),
      engine: map['engine'] == null ? null : (map['engine']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      production: map['production'] == null ? null : (map['production']! as bool).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

