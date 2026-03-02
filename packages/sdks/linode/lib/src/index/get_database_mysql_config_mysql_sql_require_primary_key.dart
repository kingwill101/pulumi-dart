// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseMysqlConfigMysqlSqlRequirePrimaryKey {
  final pulumi.Input<String> description;
  final pulumi.Input<bool> example;
  final pulumi.Input<bool> requiresRestart;
  final pulumi.Input<String> type;

  /// Creates a new [GetDatabaseMysqlConfigMysqlSqlRequirePrimaryKey].
  /// [description] Required.
  /// [example] Required.
  /// [requiresRestart] Required.
  /// [type] Required.
  GetDatabaseMysqlConfigMysqlSqlRequirePrimaryKey({
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

  factory GetDatabaseMysqlConfigMysqlSqlRequirePrimaryKey.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlConfigMysqlSqlRequirePrimaryKey(
      description: (map['description'] as String).input(),
      example: (map['example'] as bool).input(),
      requiresRestart: (map['requiresRestart'] as bool).input(),
      type: (map['type'] as String).input(),
    );
  }
}

