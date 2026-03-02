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

  factory GetDatabaseMysqlConfigMysqlInnodbFtServerStopwordTable.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlConfigMysqlInnodbFtServerStopwordTable(
      description: (map['description'] as String).input(),
      example: (map['example'] as String).input(),
      maxLength: (map['maxLength'] as int).input(),
      pattern: (map['pattern'] as String).input(),
      requiresRestart: (map['requiresRestart'] as bool).input(),
      types: ((map['types'] as List).cast<String>()).input(),
    );
  }
}

