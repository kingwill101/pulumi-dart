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
  const DatabasePostgresqlConfigPgbouncer({
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
      autodbIdleTimeout: (() { final guardedValue = map['autodbIdleTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      autodbMaxDbConnections: (() { final guardedValue = map['autodbMaxDbConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      autodbPoolMode: (() { final guardedValue = map['autodbPoolMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autodbPoolSize: (() { final guardedValue = map['autodbPoolSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ignoreStartupParameters: (() { final guardedValue = map['ignoreStartupParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      minPoolSize: (() { final guardedValue = map['minPoolSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serverIdleTimeout: (() { final guardedValue = map['serverIdleTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serverLifetime: (() { final guardedValue = map['serverLifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serverResetQueryAlways: (() { final guardedValue = map['serverResetQueryAlways']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

