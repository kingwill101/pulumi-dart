// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseEnginesEngine {
  /// The Managed Database engine type.
  final pulumi.Input<String> engine;
  /// The Managed Database engine ID in engine/version format.
  final pulumi.Input<String> id;
  /// The Managed Database engine version.
  final pulumi.Input<String> version;

  /// Creates a new [GetDatabaseEnginesEngine].
  /// [engine] The Managed Database engine type.
  /// [id] The Managed Database engine ID in engine/version format.
  /// [version] The Managed Database engine version.
  const GetDatabaseEnginesEngine({
    required this.engine,
    required this.id,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': engine,
      'id': id,
      'version': version,
    };
  }

  factory GetDatabaseEnginesEngine.fromMap(Map<String, dynamic> map) {
    return GetDatabaseEnginesEngine(
      engine: pulumi.Input.fromValue(map['engine'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

