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
    pulumi.Output<String>? project,
    required pulumi.Output<String> queuedResource,
    required pulumi.Output<String> zone,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      queuedResource = pulumi.Input.asInput<String>(queuedResource),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'queuedResource': queuedResource,
      'zone': zone,
    };
  }

  factory GetZoneQueuedResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneQueuedResourceArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      queuedResource: pulumi.Output.create<String>(map['queuedResource'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

