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
  const ProjectCloudArmorTierState({
    this.cloudArmorTier,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudArmorTier': ?cloudArmorTier,
      'project': ?project,
    };
  }

  factory ProjectCloudArmorTierState.fromMap(Map<String, dynamic> map) {
    return ProjectCloudArmorTierState(
      cloudArmorTier: (() { final guardedValue = map['cloudArmorTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

