// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseMysqlConfigMysqlMaxHeapTableSize {
  final pulumi.Input<String> description;
  final pulumi.Input<int> example;
  final pulumi.Input<int> maximum;
  final pulumi.Input<int> minimum;
  final pulumi.Input<bool> requiresRestart;
  final pulumi.Input<String> type;

  /// Creates a new [GetDatabaseMysqlConfigMysqlMaxHeapTableSize].
  /// [description] Required.
  /// [example] Required.
  /// [maximum] Required.
  /// [minimum] Required.
  /// [requiresRestart] Required.
  /// [type] Required.
  const GetDatabaseMysqlConfigMysqlMaxHeapTableSize({
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

  factory GetDatabaseMysqlConfigMysqlMaxHeapTableSize.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlConfigMysqlMaxHeapTableSize(
      description: pulumi.Input.fromValue(map['description'] as String),
      example: pulumi.Input.fromValue(map['example'] as int),
      maximum: pulumi.Input.fromValue(map['maximum'] as int),
      minimum: pulumi.Input.fromValue(map['minimum'] as int),
      requiresRestart: pulumi.Input.fromValue(map['requiresRestart'] as bool),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

