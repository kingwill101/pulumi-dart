// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracledatabase_get_goldengate_deployment_versions_get_goldengate_deployment_versions_args_doc}
/// Arguments for getGoldengateDeploymentVersions.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_get_goldengate_deployment_versions_get_goldengate_deployment_versions_args_doc}
class GetGoldengateDeploymentVersionsArgs {
  /// The location of resource.
  final pulumi.Input<String> location;
  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetGoldengateDeploymentVersionsArgs].
  /// [location] The location of resource.
  /// [project] The project to which the resource belongs. If it
  const GetGoldengateDeploymentVersionsArgs({
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
    };
  }

  factory GetGoldengateDeploymentVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetGoldengateDeploymentVersionsArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
