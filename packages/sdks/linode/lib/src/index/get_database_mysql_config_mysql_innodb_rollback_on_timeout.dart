// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseMysqlConfigMysqlInnodbRollbackOnTimeout {
  final String description;
  final bool example;
  final bool requiresRestart;
  final String type;

  /// Creates a new [GetDatabaseMysqlConfigMysqlInnodbRollbackOnTimeout].
  /// [description] Required.
  /// [example] Required.
  /// [requiresRestart] Required.
  /// [type] Required.
  GetDatabaseMysqlConfigMysqlInnodbRollbackOnTimeout({
    required this.description,
    required this.example,
    required this.requiresRestart,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'example': example,
      'requiresRestart': requiresRestart,
      'type': type,
    };
  }

  factory GetDatabaseMysqlConfigMysqlInnodbRollbackOnTimeout.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlConfigMysqlInnodbRollbackOnTimeout(
      description: map['description'] as String,
      example: map['example'] as bool,
      requiresRestart: map['requiresRestart'] as bool,
      type: map['type'] as String,
    );
  }
}

