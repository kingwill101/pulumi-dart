// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabasePostgresqlConfigPgStatMonitorEnable {
  final pulumi.Input<String> description;
  final pulumi.Input<bool> requiresRestart;
  final pulumi.Input<String> type;

  /// Creates a new [GetDatabasePostgresqlConfigPgStatMonitorEnable].
  /// [description] Required.
  /// [requiresRestart] Required.
  /// [type] Required.
  GetDatabasePostgresqlConfigPgStatMonitorEnable({
    required this.description,
    required this.requiresRestart,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'requiresRestart': requiresRestart,
      'type': type,
    };
  }

  factory GetDatabasePostgresqlConfigPgStatMonitorEnable.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabasePostgresqlConfigPgStatMonitorEnable(
      description: pulumi.Input.fromValue(map['description'] as String),
      requiresRestart: pulumi.Input.fromValue(map['requiresRestart'] as bool),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
