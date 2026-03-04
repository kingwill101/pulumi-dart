// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_zone_queued_resource_args_doc}
/// Arguments for getZoneQueuedResource.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_zone_queued_resource_args_doc}
class GetZoneQueuedResourceArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> queuedResource;
  final pulumi.Input<String> zone;

  /// Creates a new [GetZoneQueuedResourceArgs].
  /// [project] Optional.
  /// [queuedResource] Required.
  /// [zone] Required.
  GetZoneQueuedResourceArgs({
    this.project,
    required this.queuedResource,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'queuedResource': queuedResource,
      'zone': zone,
    };
  }

  factory GetZoneQueuedResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneQueuedResourceArgs(
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queuedResource: pulumi.Input.fromValue(map['queuedResource'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
