// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseMysqlConfigMysqlDefaultTimeZone {
  final pulumi.Input<String> description;
  final pulumi.Input<String> example;
  final pulumi.Input<int> maxLength;
  final pulumi.Input<int> minLength;
  final pulumi.Input<String> pattern;
  final pulumi.Input<bool> requiresRestart;
  final pulumi.Input<String> type;

  /// Creates a new [GetDatabaseMysqlConfigMysqlDefaultTimeZone].
  /// [description] Required.
  /// [example] Required.
  /// [maxLength] Required.
  /// [minLength] Required.
  /// [pattern] Required.
  /// [requiresRestart] Required.
  /// [type] Required.
  const GetDatabaseMysqlConfigMysqlDefaultTimeZone({
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
      description: pulumi.Input.fromValue(map['description'] as String),
      example: pulumi.Input.fromValue(map['example'] as String),
      maxLength: pulumi.Input.fromValue(map['maxLength'] as int),
      minLength: pulumi.Input.fromValue(map['minLength'] as int),
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
      requiresRestart: pulumi.Input.fromValue(map['requiresRestart'] as bool),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

