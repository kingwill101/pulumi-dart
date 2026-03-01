// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_zone_args_doc}
/// Arguments for getZone.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_zone_args_doc}
class GetZoneArgs {
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetZoneArgs].
  /// [lakeId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetZoneArgs({
    required pulumi.Output<String> lakeId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> zone,
  }) :
      lakeId = pulumi.Input.asInput<String>(lakeId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lakeId': lakeId,
      'location': location,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneArgs(
      lakeId: pulumi.Output.create<String>(map['lakeId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

