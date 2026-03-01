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
  GetTableArgs({
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> tableId,
    pulumi.Output<String>? view,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      project = pulumi.Input.asOptionalInput<String>(project),
      tableId = pulumi.Input.asInput<String>(tableId),
      view = pulumi.Input.asOptionalInput<String>(view);

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
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      tableId: pulumi.Output.create<String>(map['tableId'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}

