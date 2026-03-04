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
      clusterName: (() {
        final guardedValue = map['clusterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbName: (() {
        final guardedValue = map['dbName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbUser: (() {
        final guardedValue = map['dbUser'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      engine: (() {
        final guardedValue = map['engine'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      production: (() {
        final guardedValue = map['production'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
