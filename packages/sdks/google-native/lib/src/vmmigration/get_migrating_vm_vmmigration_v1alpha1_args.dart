// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1alpha1_get_migrating_vm_vmmigration_v1alpha1_args_doc}
/// Arguments for getMigratingVm.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1alpha1_get_migrating_vm_vmmigration_v1alpha1_args_doc}
class GetMigratingVmVmmigrationV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> migratingVmId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;
  final pulumi.Input<String>? view;

  /// Creates a new [GetMigratingVmVmmigrationV1alpha1Args].
  /// [location] Required.
  /// [migratingVmId] Required.
  /// [project] Optional.
  /// [sourceId] Required.
  /// [view] Optional.
  GetMigratingVmVmmigrationV1alpha1Args({
    required this.location,
    required this.migratingVmId,
    this.project,
    required this.sourceId,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'migratingVmId': migratingVmId,
      'project': ?project,
      'sourceId': sourceId,
      'view': ?view,
    };
  }

  factory GetMigratingVmVmmigrationV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetMigratingVmVmmigrationV1alpha1Args(
      location: (map['location'] as String).input(),
      migratingVmId: (map['migratingVmId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      sourceId: (map['sourceId'] as String).input(),
      view: map['view'] == null ? null : (map['view']! as String).input(),
    );
  }
}

