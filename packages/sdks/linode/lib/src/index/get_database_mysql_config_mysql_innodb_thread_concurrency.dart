// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseMysqlConfigMysqlInnodbThreadConcurrency {
  final pulumi.Input<String> description;
  final pulumi.Input<int> example;
  final pulumi.Input<int> maximum;
  final pulumi.Input<int> minimum;
  final pulumi.Input<bool> requiresRestart;
  final pulumi.Input<String> type;

  /// Creates a new [GetDatabaseMysqlConfigMysqlInnodbThreadConcurrency].
  /// [description] Required.
  /// [example] Required.
  /// [maximum] Required.
  /// [minimum] Required.
  /// [requiresRestart] Required.
  /// [type] Required.
  GetDatabaseMysqlConfigMysqlInnodbThreadConcurrency({
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

  factory GetDatabaseMysqlConfigMysqlInnodbThreadConcurrency.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlConfigMysqlInnodbThreadConcurrency(
      description: (map['description'] as String).input(),
      example: (map['example'] as int).input(),
      maximum: (map['maximum'] as int).input(),
      minimum: (map['minimum'] as int).input(),
      requiresRestart: (map['requiresRestart'] as bool).input(),
      type: (map['type'] as String).input(),
    );
  }
}

