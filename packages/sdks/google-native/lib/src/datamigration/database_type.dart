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
      'engine': ?pulumi.Input.mapOptionalInputValue<DatabaseTypeEngine, String>(engine, (value) => value.value),
      'provider': ?pulumi.Input.mapOptionalInputValue<DatabaseTypeProvider, String>(provider, (value) => value.value),
    };
  }

  factory DatabaseType.fromMap(Map<String, dynamic> map) {
    return DatabaseType(
      engine: map['engine'] == null ? null : (DatabaseTypeEngine.fromValue(map['engine']! as String)).input(),
      provider: map['provider'] == null ? null : (DatabaseTypeProvider.fromValue(map['provider']! as String)).input(),
    );
  }
}

