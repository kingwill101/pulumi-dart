// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProjectDefaultNetworkTier resources.
class ProjectDefaultNetworkTierState {
  /// The default network tier to be configured for the project.
  /// This field can take the following values: `PREMIUM` or `STANDARD`.
  ///
  /// - - -
  final pulumi.Input<String>? networkTier;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectDefaultNetworkTierState].
  /// [networkTier] The default network tier to be configured for the project.
  /// [project] The ID of the project in which the resource belongs. If it
  ProjectDefaultNetworkTierState({
    this.networkTier,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkTier': ?networkTier,
      'project': ?project,
    };
  }

  factory ProjectDefaultNetworkTierState.fromMap(Map<String, dynamic> map) {
    return ProjectDefaultNetworkTierState(
      networkTier: map['networkTier'] == null ? null : (map['networkTier'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

