// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_engine_info_engine.dart';

/// The type and version of a source or destination database.
class DatabaseEngineInfo {
  /// Engine type.
  final pulumi.Input<DatabaseEngineInfoEngine> engine;
  /// Engine version, for example "12.c.1".
  final pulumi.Input<String> version;

  /// Creates a new [DatabaseEngineInfo].
  /// [engine] Engine type.
  /// [version] Engine version, for example "12.c.1".
  DatabaseEngineInfo({
    required this.engine,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': pulumi.Input.mapInputValue<DatabaseEngineInfoEngine, String>(engine, (value) => value.wireValue),
      'version': version,
    };
  }

  factory DatabaseEngineInfo.fromMap(Map<String, dynamic> map) {
    return DatabaseEngineInfo(
      engine: pulumi.Input.fromValue(DatabaseEngineInfoEngine.fromValue(map['engine']! as String)),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

