// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseMysqlConfigMysqlInnodbRollbackOnTimeout {
  final pulumi.Input<String> description;
  final pulumi.Input<bool> example;
  final pulumi.Input<bool> requiresRestart;
  final pulumi.Input<String> type;

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

  factory GetDatabaseMysqlConfigMysqlInnodbRollbackOnTimeout.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseMysqlConfigMysqlInnodbRollbackOnTimeout(
      description: pulumi.Input.fromValue(map['description'] as String),
      example: pulumi.Input.fromValue(map['example'] as bool),
      requiresRestart: pulumi.Input.fromValue(map['requiresRestart'] as bool),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
