// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_mysql_ssl.dart';

class ConnectionProfileMysql {
  /// If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.
  final pulumi.Input<String>? cloudSqlId;
  /// The IP or hostname of the source MySQL database.
  final pulumi.Input<String>? host;
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
  final pulumi.Input<ConnectionProfileMysqlSsl>? ssl;
  /// The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  final pulumi.Input<String>? username;

  /// Creates a new [ConnectionProfileMysql].
  /// [cloudSqlId] If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.
  /// [host] The IP or hostname of the source MySQL database.
  /// [password] Input only. The password for the user that Database Migration Service will be using to connect to the database.
  /// [passwordSet] (Output)
  /// [port] The network port of the source MySQL database.
  /// [ssl] SSL configuration for the destination to connect to the source database.
  /// [username] The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  ConnectionProfileMysql({
    this.cloudSqlId,
    this.host,
    this.password,
    this.passwordSet,
    this.port,
    this.ssl,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSqlId': ?cloudSqlId,
      'host': ?host,
      'password': ?password,
      'passwordSet': ?passwordSet,
      'port': ?port,
      'ssl': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileMysqlSsl, Map<String, dynamic>>(ssl, (value) => value.toMap()),
      'username': ?username,
    };
  }

  factory ConnectionProfileMysql.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileMysql(
      cloudSqlId: (() { final guardedValue = map['cloudSqlId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSet: (() { final guardedValue = map['passwordSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ssl: (() { final guardedValue = map['ssl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileMysqlSsl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

