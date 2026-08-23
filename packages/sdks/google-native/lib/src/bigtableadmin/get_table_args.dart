// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigtableadmin_v2_get_table_args_doc}
/// Arguments for getTable.
/// {@endtemplate}
/// {@macro pulumi_bigtableadmin_v2_get_table_args_doc}
class GetTableArgs {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tableId;
  final pulumi.Input<String>? view;

  /// Creates a new [GetTableArgs].
  /// [instanceId] Required.
  /// [project] Optional.
  /// [tableId] Required.
  /// [view] Optional.
  const GetTableArgs({
    required this.instanceId,
    this.project,
    required this.tableId,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'project': ?project,
      'tableId': tableId,
      'view': ?view,
    };
  }

  factory GetTableArgs.fromMap(Map<String, dynamic> map) {
    return GetTableArgs(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableId: pulumi.Input.fromValue(map['tableId'] as String),
      view: (() { final guardedValue = map['view']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
