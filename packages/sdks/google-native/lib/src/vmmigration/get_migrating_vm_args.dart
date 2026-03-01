// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1_get_migrating_vm_args_doc}
/// Arguments for getMigratingVm.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1_get_migrating_vm_args_doc}
class GetMigratingVmArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> migratingVmId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;
  final pulumi.Input<String>? view;

  /// Creates a new [GetMigratingVmArgs].
  /// [location] Required.
  /// [migratingVmId] Required.
  /// [project] Optional.
  /// [sourceId] Required.
  /// [view] Optional.
  GetMigratingVmArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> migratingVmId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> sourceId,
    pulumi.Output<String>? view,
  }) :
      location = pulumi.Input.asInput<String>(location),
      migratingVmId = pulumi.Input.asInput<String>(migratingVmId),
      project = pulumi.Input.asOptionalInput<String>(project),
      sourceId = pulumi.Input.asInput<String>(sourceId),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'migratingVmId': migratingVmId,
      'project': ?project,
      'sourceId': sourceId,
      'view': ?view,
    };
  }

  factory GetMigratingVmArgs.fromMap(Map<String, dynamic> map) {
    return GetMigratingVmArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      migratingVmId: pulumi.Output.create<String>(map['migratingVmId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sourceId: pulumi.Output.create<String>(map['sourceId'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}

