// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_mirroring_deployment_group_mirroring_deployment_group_args_doc}
/// The set of arguments for MirroringDeploymentGroup.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_mirroring_deployment_group_mirroring_deployment_group_args_doc}
class MirroringDeploymentGroupArgs {
  /// User-provided description of the deployment group.
  /// Used as additional context for the deployment group.
  final pulumi.Input<String>? description;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The cloud location of the deployment group, currently restricted to `global`.
  final pulumi.Input<String> location;

  /// The ID to use for the new deployment group, which will become the final
  /// component of the deployment group's resource name.
  final pulumi.Input<String> mirroringDeploymentGroupId;

  /// The network that will be used for all child deployments, for example:
  /// `projects/{project}/global/networks/{network}`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [MirroringDeploymentGroupArgs].
  /// [description] User-provided description of the deployment group.
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the deployment group, currently restricted to `global`.
  /// [mirroringDeploymentGroupId] The ID to use for the new deployment group, which will become the final
  /// [network] The network that will be used for all child deployments, for example:
  /// [project] The ID of the project in which the resource belongs.
  MirroringDeploymentGroupArgs({
    this.description,
    this.labels,
    required this.location,
    required this.mirroringDeploymentGroupId,
    required this.network,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'mirroringDeploymentGroupId': mirroringDeploymentGroupId,
      'network': network,
      'project': ?project,
    };
  }

  factory MirroringDeploymentGroupArgs.fromMap(Map<String, dynamic> map) {
    return MirroringDeploymentGroupArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      mirroringDeploymentGroupId: pulumi.Input.fromValue(
        map['mirroringDeploymentGroupId'] as String,
      ),
      network: pulumi.Input.fromValue(map['network'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
