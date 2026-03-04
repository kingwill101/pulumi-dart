// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_postgresql_ssl.dart';

class ConnectionProfilePostgresql {
  /// If the connected database is an AlloyDB instance, use this field to provide the AlloyDB cluster ID.
  final pulumi.Input<String>? alloydbClusterId;

  /// If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.
  final pulumi.Input<String>? cloudSqlId;

  /// The IP or hostname of the source MySQL database.
  final pulumi.Input<String>? host;

  /// (Output)
  /// Output only. If the source is a Cloud SQL database, this field indicates the network architecture it's associated with.
  final pulumi.Input<String>? networkArchitecture;

  /// Input only. The password for the user that Database Migration Service will be using to connect to the database.
  /// This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? password;

  /// (Output)
  /// Output only. Indicates If this connection profile password is stored.
  final pulumi.Input<bool>? passwordSet;

  /// The network port of the source MySQL database.
  final pulumi.Input<int>? port;

  /// SSL configuration for the destination to connect to the source database.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfilePostgresqlSsl>? ssl;

  /// The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  final pulumi.Input<String>? username;

  /// Creates a new [ConnectionProfilePostgresql].
  /// [alloydbClusterId] If the connected database is an AlloyDB instance, use this field to provide the AlloyDB cluster ID.
  /// [cloudSqlId] If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.
  /// [host] The IP or hostname of the source MySQL database.
  /// [networkArchitecture] (Output)
  /// [password] Input only. The password for the user that Database Migration Service will be using to connect to the database.
  /// [passwordSet] (Output)
  /// [port] The network port of the source MySQL database.
  /// [ssl] SSL configuration for the destination to connect to the source database.
  /// [username] The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  ConnectionProfilePostgresql({
    this.alloydbClusterId,
    this.cloudSqlId,
    this.host,
    this.networkArchitecture,
    this.password,
    this.passwordSet,
    this.port,
    this.ssl,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alloydbClusterId': ?alloydbClusterId,
      'cloudSqlId': ?cloudSqlId,
      'host': ?host,
      'networkArchitecture': ?networkArchitecture,
      'password': ?password,
      'passwordSet': ?passwordSet,
      'port': ?port,
      'ssl':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionProfilePostgresqlSsl,
            Map<String, dynamic>
          >(ssl, (value) => value.toMap()),
      'username': ?username,
    };
  }

  factory ConnectionProfilePostgresql.fromMap(Map<String, dynamic> map) {
    return ConnectionProfilePostgresql(
      alloydbClusterId: (() {
        final guardedValue = map['alloydbClusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudSqlId: (() {
        final guardedValue = map['cloudSqlId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      host: (() {
        final guardedValue = map['host'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkArchitecture: (() {
        final guardedValue = map['networkArchitecture'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      passwordSet: (() {
        final guardedValue = map['passwordSet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ssl: (() {
        final guardedValue = map['ssl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionProfilePostgresqlSsl.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
