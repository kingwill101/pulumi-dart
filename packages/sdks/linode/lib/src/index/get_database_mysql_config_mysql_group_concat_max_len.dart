// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseMysqlConfigMysqlGroupConcatMaxLen {
  final pulumi.Input<String> description;
  final pulumi.Input<double> example;
  final pulumi.Input<double> maximum;
  final pulumi.Input<double> minimum;
  final pulumi.Input<bool> requiresRestart;
  final pulumi.Input<String> type;

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
      description: (map['description'] as String).input(),
      example: (map['example'] as double).input(),
      maximum: (map['maximum'] as double).input(),
      minimum: (map['minimum'] as double).input(),
      requiresRestart: (map['requiresRestart'] as bool).input(),
      type: (map['type'] as String).input(),
    );
  }
}

