// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabasePostgresqlConfigPgbouncer {
  final pulumi.Input<int>? autodbIdleTimeout;
  final pulumi.Input<int>? autodbMaxDbConnections;
  final pulumi.Input<String>? autodbPoolMode;
  final pulumi.Input<int>? autodbPoolSize;
  final pulumi.Input<List<String>>? ignoreStartupParameters;
  final pulumi.Input<int>? minPoolSize;
  final pulumi.Input<int>? serverIdleTimeout;
  final pulumi.Input<int>? serverLifetime;
  final pulumi.Input<bool>? serverResetQueryAlways;

  /// Creates a new [DatabasePostgresqlConfigPgbouncer].
  /// [autodbIdleTimeout] Optional.
  /// [autodbMaxDbConnections] Optional.
  /// [autodbPoolMode] Optional.
  /// [autodbPoolSize] Optional.
  /// [ignoreStartupParameters] Optional.
  /// [minPoolSize] Optional.
  /// [serverIdleTimeout] Optional.
  /// [serverLifetime] Optional.
  /// [serverResetQueryAlways] Optional.
  DatabasePostgresqlConfigPgbouncer({
    this.autodbIdleTimeout,
    this.autodbMaxDbConnections,
    this.autodbPoolMode,
    this.autodbPoolSize,
    this.ignoreStartupParameters,
    this.minPoolSize,
    this.serverIdleTimeout,
    this.serverLifetime,
    this.serverResetQueryAlways,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autodbIdleTimeout': ?autodbIdleTimeout,
      'autodbMaxDbConnections': ?autodbMaxDbConnections,
      'autodbPoolMode': ?autodbPoolMode,
      'autodbPoolSize': ?autodbPoolSize,
      'ignoreStartupParameters': ?ignoreStartupParameters,
      'minPoolSize': ?minPoolSize,
      'serverIdleTimeout': ?serverIdleTimeout,
      'serverLifetime': ?serverLifetime,
      'serverResetQueryAlways': ?serverResetQueryAlways,
    };
  }

  factory DatabasePostgresqlConfigPgbouncer.fromMap(Map<String, dynamic> map) {
    return DatabasePostgresqlConfigPgbouncer(
      autodbIdleTimeout: map['autodbIdleTimeout'] == null ? null : (map['autodbIdleTimeout']! as int).input(),
      autodbMaxDbConnections: map['autodbMaxDbConnections'] == null ? null : (map['autodbMaxDbConnections']! as int).input(),
      autodbPoolMode: map['autodbPoolMode'] == null ? null : (map['autodbPoolMode']! as String).input(),
      autodbPoolSize: map['autodbPoolSize'] == null ? null : (map['autodbPoolSize']! as int).input(),
      ignoreStartupParameters: map['ignoreStartupParameters'] == null ? null : ((map['ignoreStartupParameters']! as List).cast<String>()).input(),
      minPoolSize: map['minPoolSize'] == null ? null : (map['minPoolSize']! as int).input(),
      serverIdleTimeout: map['serverIdleTimeout'] == null ? null : (map['serverIdleTimeout']! as int).input(),
      serverLifetime: map['serverLifetime'] == null ? null : (map['serverLifetime']! as int).input(),
      serverResetQueryAlways: map['serverResetQueryAlways'] == null ? null : (map['serverResetQueryAlways']! as bool).input(),
    );
  }
}

