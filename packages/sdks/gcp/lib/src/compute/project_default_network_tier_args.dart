// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_project_default_network_tier_project_default_network_tier_args_doc}
/// The set of arguments for ProjectDefaultNetworkTier.
/// {@endtemplate}
/// {@macro pulumi_compute_project_default_network_tier_project_default_network_tier_args_doc}
class ProjectDefaultNetworkTierArgs {
  /// The default network tier to be configured for the project.
  /// This field can take the following values: `PREMIUM` or `STANDARD`.
  ///
  /// - - -
  final pulumi.Input<String> networkTier;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectDefaultNetworkTierArgs].
  /// [networkTier] The default network tier to be configured for the project.
  /// [project] The ID of the project in which the resource belongs. If it
  const ProjectDefaultNetworkTierArgs({
    required this.networkTier,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkTier': networkTier,
      'project': ?project,
    };
  }

  factory ProjectDefaultNetworkTierArgs.fromMap(Map<String, dynamic> map) {
    return ProjectDefaultNetworkTierArgs(
      networkTier: pulumi.Input.fromValue(map['networkTier'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

