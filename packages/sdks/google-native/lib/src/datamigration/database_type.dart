// ignore_for_file: unused_element, unnecessary_cast

import 'database_type_engine.dart';
import 'database_type_provider.dart';

/// A message defining the database engine and provider.
class DatabaseType {
  /// The database engine.
  final DatabaseTypeEngine? engine;
  /// The database provider.
  final DatabaseTypeProvider? provider;

  /// Creates a new [DatabaseType].
  /// [engine] The database engine.
  /// [provider] The database provider.
  DatabaseType({
    this.engine,
    this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?engine == null ? null : engine!.value,
      'provider': ?provider == null ? null : provider!.value,
    };
  }

  factory DatabaseType.fromMap(Map<String, dynamic> map) {
    return DatabaseType(
      engine: map['engine'] == null ? null : DatabaseTypeEngine.fromValue(map['engine'] as String),
      provider: map['provider'] == null ? null : DatabaseTypeProvider.fromValue(map['provider'] as String),
    );
  }
}

