// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudtasks_v2beta3_get_queue_cloudtasks_v2beta3_args_doc}
/// Arguments for getQueue.
/// {@endtemplate}
/// {@macro pulumi_cloudtasks_v2beta3_get_queue_cloudtasks_v2beta3_args_doc}
class GetQueueCloudtasksV2beta3Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> queueId;
  final pulumi.Input<String>? readMask;

  /// Creates a new [GetQueueCloudtasksV2beta3Args].
  /// [location] Required.
  /// [project] Optional.
  /// [queueId] Required.
  /// [readMask] Optional.
  const GetQueueCloudtasksV2beta3Args({
    required this.location,
    this.project,
    required this.queueId,
    this.readMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'queueId': queueId,
      'readMask': ?readMask,
    };
  }

  factory GetQueueCloudtasksV2beta3Args.fromMap(Map<String, dynamic> map) {
    return GetQueueCloudtasksV2beta3Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueId: pulumi.Input.fromValue(map['queueId'] as String),
      readMask: (() { final guardedValue = map['readMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
