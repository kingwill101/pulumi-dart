// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseMysqlConfigMysqlInnodbLockWaitTimeout {
  final String description;
  final int example;
  final int maximum;
  final int minimum;
  final bool requiresRestart;
  final String type;

  /// Creates a new [GetDatabaseMysqlConfigMysqlInnodbLockWaitTimeout].
  /// [description] Required.
  /// [example] Required.
  /// [maximum] Required.
  /// [minimum] Required.
  /// [requiresRestart] Required.
  /// [type] Required.
  GetDatabaseMysqlConfigMysqlInnodbLockWaitTimeout({
    required this.description,
    required this.example,
    required this.maximum,
    required this.minimum,
    required this.requiresRestart,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'example': example,
      'maximum': maximum,
      'minimum': minimum,
      'requiresRestart': requiresRestart,
      'type': type,
    };
  }

  factory GetDatabaseMysqlConfigMysqlInnodbLockWaitTimeout.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlConfigMysqlInnodbLockWaitTimeout(
      description: map['description'] as String,
      example: map['example'] as int,
      maximum: map['maximum'] as int,
      minimum: map['minimum'] as int,
      requiresRestart: map['requiresRestart'] as bool,
      type: map['type'] as String,
    );
  }
}

