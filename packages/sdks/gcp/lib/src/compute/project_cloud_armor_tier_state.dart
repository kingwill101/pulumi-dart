// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProjectCloudArmorTier resources.
class ProjectCloudArmorTierState {
  /// Managed protection tier to be set.
  /// Possible values are: `CA_STANDARD`, `CA_ENTERPRISE_PAYGO`, `CA_ENTERPRISE_ANNUAL`.
  final pulumi.Input<String>? cloudArmorTier;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectCloudArmorTierState].
  /// [cloudArmorTier] Managed protection tier to be set.
  /// [project] The ID of the project in which the resource belongs.
  ProjectCloudArmorTierState({
    pulumi.Output<String>? cloudArmorTier,
    pulumi.Output<String>? project,
  }) :
      cloudArmorTier = pulumi.Input.asOptionalInput<String>(cloudArmorTier),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudArmorTier': ?cloudArmorTier,
      'project': ?project,
    };
  }

  factory ProjectCloudArmorTierState.fromMap(Map<String, dynamic> map) {
    return ProjectCloudArmorTierState(
      cloudArmorTier: map['cloudArmorTier'] == null ? null : pulumi.Output.create<String>(map['cloudArmorTier'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

