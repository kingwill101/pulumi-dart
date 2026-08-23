// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkebackup_v1_get_restore_args_doc}
/// Arguments for getRestore.
/// {@endtemplate}
/// {@macro pulumi_gkebackup_v1_get_restore_args_doc}
class GetRestoreArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> restoreId;
  final pulumi.Input<String> restorePlanId;

  /// Creates a new [GetRestoreArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [restoreId] Required.
  /// [restorePlanId] Required.
  const GetRestoreArgs({
    required this.location,
    this.project,
    required this.restoreId,
    required this.restorePlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'restoreId': restoreId,
      'restorePlanId': restorePlanId,
    };
  }

  factory GetRestoreArgs.fromMap(Map<String, dynamic> map) {
    return GetRestoreArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreId: pulumi.Input.fromValue(map['restoreId'] as String),
      restorePlanId: pulumi.Input.fromValue(map['restorePlanId'] as String),
    );
  }
}
