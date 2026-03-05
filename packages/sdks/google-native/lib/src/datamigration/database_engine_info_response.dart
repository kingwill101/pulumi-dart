// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The type and version of a source or destination database.
class DatabaseEngineInfoResponse {
  /// Engine type.
  final pulumi.Input<String> engine;
  /// Engine version, for example "12.c.1".
  final pulumi.Input<String> version;

  /// Creates a new [DatabaseEngineInfoResponse].
  /// [engine] Engine type.
  /// [version] Engine version, for example "12.c.1".
  DatabaseEngineInfoResponse({
    required this.engine,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': engine,
      'version': version,
    };
  }

  factory DatabaseEngineInfoResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseEngineInfoResponse(
      engine: pulumi.Input.fromValue(map['engine'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

