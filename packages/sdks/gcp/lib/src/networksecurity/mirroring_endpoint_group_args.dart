// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_mirroring_endpoint_group_mirroring_endpoint_group_args_doc}
/// The set of arguments for MirroringEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_mirroring_endpoint_group_mirroring_endpoint_group_args_doc}
class MirroringEndpointGroupArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// User-provided description of the endpoint group.
  /// Used as additional context for the endpoint group.
  final pulumi.Input<String>? description;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User-provided description of the endpoint group.
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the endpoint group, currently restricted to `global`.
  /// [mirroringDeploymentGroup] The deployment group that this DIRECT endpoint group is connected to, for example:
  /// [mirroringDeploymentGroups] A list of the deployment groups that this BROKER endpoint group is
  /// [mirroringEndpointGroupId] The ID to use for the endpoint group, which will become the final component
  /// [project] The ID of the project in which the resource belongs.
  /// [type] The type of the endpoint group.
  const MirroringEndpointGroupArgs({
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      mirroringDeploymentGroup: (() { final guardedValue = map['mirroringDeploymentGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mirroringDeploymentGroups: (() { final guardedValue = map['mirroringDeploymentGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mirroringEndpointGroupId: pulumi.Input.fromValue(map['mirroringEndpointGroupId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
