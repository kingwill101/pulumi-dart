// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1_get_fleet_args_doc}
/// Arguments for getFleet.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1_get_fleet_args_doc}
class GetFleetArgs {
  final pulumi.Input<String> fleetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFleetArgs].
  /// [fleetId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFleetArgs({
    required pulumi.Output<String> fleetId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      fleetId = pulumi.Input.asInput<String>(fleetId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetId': fleetId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFleetArgs.fromMap(Map<String, dynamic> map) {
    return GetFleetArgs(
      fleetId: pulumi.Output.create<String>(map['fleetId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

