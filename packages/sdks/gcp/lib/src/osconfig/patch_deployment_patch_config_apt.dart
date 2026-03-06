// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PatchDeploymentPatchConfigApt {
  /// List of packages to exclude from update. These packages will be excluded.
  final pulumi.Input<List<String>>? excludes;
  /// An exclusive list of packages to be updated. These are the only packages that will be updated.
  /// If these packages are not installed, they will be ignored. This field cannot be specified with
  /// any other patch configuration fields.
  final pulumi.Input<List<String>>? exclusivePackages;
  /// By changing the type to DIST, the patching is performed using apt-get dist-upgrade instead.
  /// Possible values are: `DIST`, `UPGRADE`.
  final pulumi.Input<String>? type;

  /// Creates a new [PatchDeploymentPatchConfigApt].
  /// [excludes] List of packages to exclude from update. These packages will be excluded.
  /// [exclusivePackages] An exclusive list of packages to be updated. These are the only packages that will be updated.
  /// [type] By changing the type to DIST, the patching is performed using apt-get dist-upgrade instead.
  const PatchDeploymentPatchConfigApt({
    this.excludes,
    this.exclusivePackages,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes': ?excludes,
      'exclusivePackages': ?exclusivePackages,
      'type': ?type,
    };
  }

  factory PatchDeploymentPatchConfigApt.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentPatchConfigApt(
      excludes: (() { final guardedValue = map['excludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      exclusivePackages: (() { final guardedValue = map['exclusivePackages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

