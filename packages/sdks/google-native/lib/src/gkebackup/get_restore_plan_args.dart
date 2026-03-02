// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkebackup_v1_get_restore_plan_args_doc}
/// Arguments for getRestorePlan.
/// {@endtemplate}
/// {@macro pulumi_gkebackup_v1_get_restore_plan_args_doc}
class GetRestorePlanArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> restorePlanId;

  /// Creates a new [GetRestorePlanArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [restorePlanId] Required.
  GetRestorePlanArgs({
    required this.location,
    this.project,
    required this.restorePlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'restorePlanId': restorePlanId,
    };
  }

  factory GetRestorePlanArgs.fromMap(Map<String, dynamic> map) {
    return GetRestorePlanArgs(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      restorePlanId: (map['restorePlanId'] as String).input(),
    );
  }
}

