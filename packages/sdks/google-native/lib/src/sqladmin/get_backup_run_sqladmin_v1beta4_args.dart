// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sqladmin_v1beta4_get_backup_run_sqladmin_v1beta4_args_doc}
/// Arguments for getBackupRun.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1beta4_get_backup_run_sqladmin_v1beta4_args_doc}
class GetBackupRunSqladminV1beta4Args {
  final pulumi.Input<String> id;
  final pulumi.Input<String> instance;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackupRunSqladminV1beta4Args].
  /// [id] Required.
  /// [instance] Required.
  /// [project] Optional.
  GetBackupRunSqladminV1beta4Args({
    required this.id,
    required this.instance,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'instance': instance,
      'project': ?project,
    };
  }

  factory GetBackupRunSqladminV1beta4Args.fromMap(Map<String, dynamic> map) {
    return GetBackupRunSqladminV1beta4Args(
      id: (map['id'] as String).input(),
      instance: (map['instance'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

