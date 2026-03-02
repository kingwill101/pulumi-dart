// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReleaseReleaseRequirements {
  /// A list of releases from which a unit can be upgraded to this one
  /// (optional). If left empty no constraints will be applied. When provided,
  /// unit upgrade requests to this release will check and enforce this
  /// constraint.
  final pulumi.Input<List<String>>? upgradeableFromReleases;

  /// Creates a new [ReleaseReleaseRequirements].
  /// [upgradeableFromReleases] A list of releases from which a unit can be upgraded to this one
  ReleaseReleaseRequirements({
    this.upgradeableFromReleases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'upgradeableFromReleases': ?upgradeableFromReleases,
    };
  }

  factory ReleaseReleaseRequirements.fromMap(Map<String, dynamic> map) {
    return ReleaseReleaseRequirements(
      upgradeableFromReleases: map['upgradeableFromReleases'] == null ? null : ((map['upgradeableFromReleases'] as List).cast<String>()).input(),
    );
  }
}

