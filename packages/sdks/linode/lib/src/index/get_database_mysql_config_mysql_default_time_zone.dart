// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseMysqlConfigMysqlDefaultTimeZone {
  final String description;
  final String example;
  final int maxLength;
  final int minLength;
  final String pattern;
  final bool requiresRestart;
  final String type;

  /// Creates a new [GetDatabaseMysqlConfigMysqlDefaultTimeZone].
  /// [description] Required.
  /// [example] Required.
  /// [maxLength] Required.
  /// [minLength] Required.
  /// [pattern] Required.
  /// [requiresRestart] Required.
  /// [type] Required.
  GetDatabaseMysqlConfigMysqlDefaultTimeZone({
    required this.description,
    required this.example,
    required this.maxLength,
    required this.minLength,
    required this.pattern,
    required this.requiresRestart,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'example': example,
      'maxLength': maxLength,
      'minLength': minLength,
      'pattern': pattern,
      'requiresRestart': requiresRestart,
      'type': type,
    };
  }

  factory GetDatabaseMysqlConfigMysqlDefaultTimeZone.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlConfigMysqlDefaultTimeZone(
      description: map['description'] as String,
      example: map['example'] as String,
      maxLength: map['maxLength'] as int,
      minLength: map['minLength'] as int,
      pattern: map['pattern'] as String,
      requiresRestart: map['requiresRestart'] as bool,
      type: map['type'] as String,
    );
  }
}

