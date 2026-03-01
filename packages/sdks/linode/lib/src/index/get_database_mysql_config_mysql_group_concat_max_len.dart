// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseMysqlConfigMysqlGroupConcatMaxLen {
  final String description;
  final double example;
  final double maximum;
  final double minimum;
  final bool requiresRestart;
  final String type;

  /// Creates a new [GetDatabaseMysqlConfigMysqlGroupConcatMaxLen].
  /// [description] Required.
  /// [example] Required.
  /// [maximum] Required.
  /// [minimum] Required.
  /// [requiresRestart] Required.
  /// [type] Required.
  GetDatabaseMysqlConfigMysqlGroupConcatMaxLen({
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

  factory GetDatabaseMysqlConfigMysqlGroupConcatMaxLen.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlConfigMysqlGroupConcatMaxLen(
      description: map['description'] as String,
      example: map['example'] as double,
      maximum: map['maximum'] as double,
      minimum: map['minimum'] as double,
      requiresRestart: map['requiresRestart'] as bool,
      type: map['type'] as String,
    );
  }
}

