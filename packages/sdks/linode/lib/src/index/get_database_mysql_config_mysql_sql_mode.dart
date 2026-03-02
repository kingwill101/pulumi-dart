// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseMysqlConfigMysqlSqlMode {
  final pulumi.Input<String> description;
  final pulumi.Input<String> example;
  final pulumi.Input<int> maxLength;
  final pulumi.Input<String> pattern;
  final pulumi.Input<bool> requiresRestart;
  final pulumi.Input<String> type;

  /// Creates a new [GetDatabaseMysqlConfigMysqlSqlMode].
  /// [description] Required.
  /// [example] Required.
  /// [maxLength] Required.
  /// [pattern] Required.
  /// [requiresRestart] Required.
  /// [type] Required.
  GetDatabaseMysqlConfigMysqlSqlMode({
    required this.description,
    required this.example,
    required this.maxLength,
    required this.pattern,
    required this.requiresRestart,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'example': example,
      'maxLength': maxLength,
      'pattern': pattern,
      'requiresRestart': requiresRestart,
      'type': type,
    };
  }

  factory GetDatabaseMysqlConfigMysqlSqlMode.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlConfigMysqlSqlMode(
      description: (map['description'] as String).input(),
      example: (map['example'] as String).input(),
      maxLength: (map['maxLength'] as int).input(),
      pattern: (map['pattern'] as String).input(),
      requiresRestart: (map['requiresRestart'] as bool).input(),
      type: (map['type'] as String).input(),
    );
  }
}

