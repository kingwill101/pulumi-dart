// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperdriveConfigOrigin {
  /// Defines the Client ID of the Access token to use when connecting to the origin database.
  final pulumi.Input<String?>? accessClientId;
  /// Defines the Client Secret of the Access Token to use when connecting to the origin database. The API never returns this write-only value.
  final pulumi.Input<String?>? accessClientSecret;
  /// Set the name of your origin database.
  final pulumi.Input<String> database;
  /// Defines the host (hostname or IP) of your origin database.
  final pulumi.Input<String?>? host;
  /// Set the password needed to access your origin database. The API never returns this write-only value.
  final pulumi.Input<String> password;
  /// Defines the port of your origin database. Defaults to 5432 for PostgreSQL or 3306 for MySQL if not specified.
  final pulumi.Input<int?>? port;
  /// Specifies the URL scheme used to connect to your origin database.
  /// Available values: "postgres", "postgresql", "mysql".
  final pulumi.Input<String> scheme;
  /// The identifier of the Workers VPC Service to connect through. Hyperdrive will egress through the specified VPC Service to reach the origin database.
  final pulumi.Input<String?>? serviceId;
  /// Set the user of your origin database.
  final pulumi.Input<String> user;

  /// Creates a new [HyperdriveConfigOrigin].
  /// [accessClientId] Defines the Client ID of the Access token to use when connecting to the origin database.
  /// [accessClientSecret] Defines the Client Secret of the Access Token to use when connecting to the origin database. The API never returns this write-only value.
  /// [database] Set the name of your origin database.
  /// [host] Defines the host (hostname or IP) of your origin database.
  /// [password] Set the password needed to access your origin database. The API never returns this write-only value.
  /// [port] Defines the port of your origin database. Defaults to 5432 for PostgreSQL or 3306 for MySQL if not specified.
  /// [scheme] Specifies the URL scheme used to connect to your origin database.
  /// [serviceId] The identifier of the Workers VPC Service to connect through. Hyperdrive will egress through the specified VPC Service to reach the origin database.
  /// [user] Set the user of your origin database.
  const HyperdriveConfigOrigin({
    this.accessClientId,
    this.accessClientSecret,
    required this.database,
    this.host,
    required this.password,
    this.port,
    required this.scheme,
    this.serviceId,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessClientId': ?accessClientId,
      'accessClientSecret': ?accessClientSecret,
      'database': database,
      'host': ?host,
      'password': password,
      'port': ?port,
      'scheme': scheme,
      'serviceId': ?serviceId,
      'user': user,
    };
  }

  factory HyperdriveConfigOrigin.fromMap(Map<String, dynamic> map) {
    return HyperdriveConfigOrigin(
      accessClientId: (() { final guardedValue = map['accessClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessClientSecret: (() { final guardedValue = map['accessClientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      database: pulumi.Input.fromValue(map['database'] as String),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: pulumi.Input.fromValue(map['password'] as String),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      scheme: pulumi.Input.fromValue(map['scheme'] as String),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: pulumi.Input.fromValue(map['user'] as String),
    );
  }
}
