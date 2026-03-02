// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseMysqlConfigMysqlInternalTmpMemStorageEngine {
  final pulumi.Input<String> description;
  final pulumi.Input<List<String>> enums;
  final pulumi.Input<String> example;
  final pulumi.Input<bool> requiresRestart;
  final pulumi.Input<String> type;

  /// Creates a new [GetDatabaseMysqlConfigMysqlInternalTmpMemStorageEngine].
  /// [description] Required.
  /// [enums] Required.
  /// [example] Required.
  /// [requiresRestart] Required.
  /// [type] Required.
  GetDatabaseMysqlConfigMysqlInternalTmpMemStorageEngine({
    required this.description,
    required this.enums,
    required this.example,
    required this.requiresRestart,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'enums': enums,
      'example': example,
      'requiresRestart': requiresRestart,
      'type': type,
    };
  }

  factory GetDatabaseMysqlConfigMysqlInternalTmpMemStorageEngine.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlConfigMysqlInternalTmpMemStorageEngine(
      description: (map['description'] as String).input(),
      enums: ((map['enums'] as List).cast<String>()).input(),
      example: (map['example'] as String).input(),
      requiresRestart: (map['requiresRestart'] as bool).input(),
      type: (map['type'] as String).input(),
    );
  }
}

