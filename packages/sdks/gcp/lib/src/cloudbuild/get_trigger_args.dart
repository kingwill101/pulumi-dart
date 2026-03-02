// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuild_get_trigger_get_trigger_args_doc}
/// Arguments for getTrigger.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_get_trigger_get_trigger_args_doc}
class GetTriggerArgs {
  /// The Cloud Build location for the trigger.
  ///
  /// - - -
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The unique identifier for the trigger..
  final pulumi.Input<String> triggerId;

  /// Creates a new [GetTriggerArgs].
  /// [location] The Cloud Build location for the trigger.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  /// [triggerId] The unique identifier for the trigger..
  GetTriggerArgs({
    required this.location,
    this.project,
    required this.triggerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'triggerId': triggerId,
    };
  }

  factory GetTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetTriggerArgs(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      triggerId: (map['triggerId'] as String).input(),
    );
  }
}

