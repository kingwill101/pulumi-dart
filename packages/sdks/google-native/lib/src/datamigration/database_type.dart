// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_type_engine.dart';
import 'database_type_provider.dart';

/// A message defining the database engine and provider.
class DatabaseType {
  /// The database engine.
  final pulumi.Input<DatabaseTypeEngine>? engine;
  /// The database provider.
  final pulumi.Input<DatabaseTypeProvider>? provider;

  /// Creates a new [DatabaseType].
  /// [engine] The database engine.
  /// [provider] The database provider.
  DatabaseType({
    this.engine,
    this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?pulumi.Input.mapOptionalInputValue<DatabaseTypeEngine, String>(engine, (value) => value.wireValue),
      'provider': ?pulumi.Input.mapOptionalInputValue<DatabaseTypeProvider, String>(provider, (value) => value.wireValue),
    };
  }

  factory DatabaseType.fromMap(Map<String, dynamic> map) {
    return DatabaseType(
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseTypeEngine.fromValue(guardedValue as String)); })(),
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseTypeProvider.fromValue(guardedValue as String)); })(),
    );
  }
}

