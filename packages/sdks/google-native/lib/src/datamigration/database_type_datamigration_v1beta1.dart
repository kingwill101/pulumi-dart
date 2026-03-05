// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_type_engine_datamigration_v1beta1.dart';
import 'database_type_provider_datamigration_v1beta1.dart';

/// A message defining the database engine and provider.
class DatabaseTypeDatamigrationV1beta1 {
  /// The database engine.
  final pulumi.Input<DatabaseTypeEngineDatamigrationV1beta1>? engine;
  /// The database provider.
  final pulumi.Input<DatabaseTypeProviderDatamigrationV1beta1>? provider;

  /// Creates a new [DatabaseTypeDatamigrationV1beta1].
  /// [engine] The database engine.
  /// [provider] The database provider.
  DatabaseTypeDatamigrationV1beta1({
    this.engine,
    this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?pulumi.Input.mapOptionalInputValue<DatabaseTypeEngineDatamigrationV1beta1, String>(engine, (value) => value.wireValue),
      'provider': ?pulumi.Input.mapOptionalInputValue<DatabaseTypeProviderDatamigrationV1beta1, String>(provider, (value) => value.wireValue),
    };
  }

  factory DatabaseTypeDatamigrationV1beta1.fromMap(Map<String, dynamic> map) {
    return DatabaseTypeDatamigrationV1beta1(
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseTypeEngineDatamigrationV1beta1.fromValue(guardedValue as String)); })(),
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseTypeProviderDatamigrationV1beta1.fromValue(guardedValue as String)); })(),
    );
  }
}

