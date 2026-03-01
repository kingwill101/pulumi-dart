// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_entity_args_doc}
/// Arguments for getEntity.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_entity_args_doc}
class GetEntityArgs {
  final pulumi.Input<String> entityId;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;
  final pulumi.Input<String> zone;

  /// Creates a new [GetEntityArgs].
  /// [entityId] Required.
  /// [lakeId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  /// [zone] Required.
  GetEntityArgs({
    required pulumi.Output<String> entityId,
    required pulumi.Output<String> lakeId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    pulumi.Output<String>? view,
    required pulumi.Output<String> zone,
  }) :
      entityId = pulumi.Input.asInput<String>(entityId),
      lakeId = pulumi.Input.asInput<String>(lakeId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      view = pulumi.Input.asOptionalInput<String>(view),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': entityId,
      'lakeId': lakeId,
      'location': location,
      'project': ?project,
      'view': ?view,
      'zone': zone,
    };
  }

  factory GetEntityArgs.fromMap(Map<String, dynamic> map) {
    return GetEntityArgs(
      entityId: pulumi.Output.create<String>(map['entityId'] as String),
      lakeId: pulumi.Output.create<String>(map['lakeId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

