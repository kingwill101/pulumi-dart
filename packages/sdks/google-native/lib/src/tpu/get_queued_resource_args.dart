// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tpu_v2alpha1_get_queued_resource_args_doc}
/// Arguments for getQueuedResource.
/// {@endtemplate}
/// {@macro pulumi_tpu_v2alpha1_get_queued_resource_args_doc}
class GetQueuedResourceArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> queuedResourceId;

  /// Creates a new [GetQueuedResourceArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [queuedResourceId] Required.
  GetQueuedResourceArgs({
    required this.location,
    this.project,
    required this.queuedResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'queuedResourceId': queuedResourceId,
    };
  }

  factory GetQueuedResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetQueuedResourceArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queuedResourceId: pulumi.Input.fromValue(map['queuedResourceId'] as String),
    );
  }
}

