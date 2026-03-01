// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseMysqlConfigMysqlSqlMode {
  final String description;
  final String example;
  final int maxLength;
  final String pattern;
  final bool requiresRestart;
  final String type;

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
      description: map['description'] as String,
      example: map['example'] as String,
      maxLength: map['maxLength'] as int,
      pattern: map['pattern'] as String,
      requiresRestart: map['requiresRestart'] as bool,
      type: map['type'] as String,
    );
  }
}

