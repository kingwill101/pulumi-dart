// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_mirroring_endpoint_group_mirroring_endpoint_group_args_doc}
/// The set of arguments for MirroringEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_mirroring_endpoint_group_mirroring_endpoint_group_args_doc}
class MirroringEndpointGroupArgs {
  /// User-provided description of the endpoint group.
  /// Used as additional context for the endpoint group.
  final pulumi.Input<String>? description;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The cloud location of the endpoint group, currently restricted to `global`.
  final pulumi.Input<String> location;
  /// The deployment group that this DIRECT endpoint group is connected to, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String>? mirroringDeploymentGroup;
  /// A list of the deployment groups that this BROKER endpoint group is
  /// connected to, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<List<String>>? mirroringDeploymentGroups;
  /// The ID to use for the endpoint group, which will become the final component
  /// of the endpoint group's resource name.
  final pulumi.Input<String> mirroringEndpointGroupId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The type of the endpoint group.
  /// If left unspecified, defaults to DIRECT.
  /// Possible values:
  /// DIRECT
  /// BROKER
  final pulumi.Input<String>? type;

  /// Creates a new [MirroringEndpointGroupArgs].
  /// [description] User-provided description of the endpoint group.
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the endpoint group, currently restricted to `global`.
  /// [mirroringDeploymentGroup] The deployment group that this DIRECT endpoint group is connected to, for example:
  /// [mirroringDeploymentGroups] A list of the deployment groups that this BROKER endpoint group is
  /// [mirroringEndpointGroupId] The ID to use for the endpoint group, which will become the final component
  /// [project] The ID of the project in which the resource belongs.
  /// [type] The type of the endpoint group.
  MirroringEndpointGroupArgs({
    this.description,
    this.labels,
    required this.location,
    this.mirroringDeploymentGroup,
    this.mirroringDeploymentGroups,
    required this.mirroringEndpointGroupId,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'mirroringDeploymentGroup': ?mirroringDeploymentGroup,
      'mirroringDeploymentGroups': ?mirroringDeploymentGroups,
      'mirroringEndpointGroupId': mirroringEndpointGroupId,
      'project': ?project,
      'type': ?type,
    };
  }

  factory MirroringEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return MirroringEndpointGroupArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      mirroringDeploymentGroup: map['mirroringDeploymentGroup'] == null ? null : (map['mirroringDeploymentGroup'] as String).input(),
      mirroringDeploymentGroups: map['mirroringDeploymentGroups'] == null ? null : ((map['mirroringDeploymentGroups'] as List).cast<String>()).input(),
      mirroringEndpointGroupId: (map['mirroringEndpointGroupId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

