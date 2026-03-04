// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseMysqlConfigMysqlInnodbFtServerStopwordTable {
  final pulumi.Input<String> description;
  final pulumi.Input<String> example;
  final pulumi.Input<int> maxLength;
  final pulumi.Input<String> pattern;
  final pulumi.Input<bool> requiresRestart;
  final pulumi.Input<List<String>> types;

  /// Creates a new [GetDatabaseMysqlConfigMysqlInnodbFtServerStopwordTable].
  /// [description] Required.
  /// [example] Required.
  /// [maxLength] Required.
  /// [pattern] Required.
  /// [requiresRestart] Required.
  /// [types] Required.
  GetDatabaseMysqlConfigMysqlInnodbFtServerStopwordTable({
    required this.description,
    required this.example,
    required this.maxLength,
    required this.pattern,
    required this.requiresRestart,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'example': example,
      'maxLength': maxLength,
      'pattern': pattern,
      'requiresRestart': requiresRestart,
      'types': types,
    };
  }

  factory GetDatabaseMysqlConfigMysqlInnodbFtServerStopwordTable.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseMysqlConfigMysqlInnodbFtServerStopwordTable(
      description: pulumi.Input.fromValue(map['description'] as String),
      example: pulumi.Input.fromValue(map['example'] as String),
      maxLength: pulumi.Input.fromValue(map['maxLength'] as int),
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
      requiresRestart: pulumi.Input.fromValue(map['requiresRestart'] as bool),
      types: pulumi.Input.fromValue((map['types'] as List).cast<String>()),
    );
  }
}
