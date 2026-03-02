// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apt_settings_type_osconfig_v1beta.dart';

/// Apt patching is completed by executing `apt-get update && apt-get upgrade`. Additional options can be set to control how this is executed.
class AptSettingsOsconfigV1beta {
  /// List of packages to exclude from update. These packages will be excluded
  final pulumi.Input<List<String>>? excludes;
  /// An exclusive list of packages to be updated. These are the only packages that will be updated. If these packages are not installed, they will be ignored. This field cannot be specified with any other patch configuration fields.
  final pulumi.Input<List<String>>? exclusivePackages;
  /// By changing the type to DIST, the patching is performed using `apt-get dist-upgrade` instead.
  final pulumi.Input<AptSettingsTypeOsconfigV1beta>? type;

  /// Creates a new [AptSettingsOsconfigV1beta].
  /// [excludes] List of packages to exclude from update. These packages will be excluded
  /// [exclusivePackages] An exclusive list of packages to be updated. These are the only packages that will be updated. If these packages are not installed, they will be ignored. This field cannot be specified with any other patch configuration fields.
  /// [type] By changing the type to DIST, the patching is performed using `apt-get dist-upgrade` instead.
  AptSettingsOsconfigV1beta({
    this.excludes,
    this.exclusivePackages,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes': ?excludes,
      'exclusivePackages': ?exclusivePackages,
      'type': ?pulumi.Input.mapOptionalInputValue<AptSettingsTypeOsconfigV1beta, String>(type, (value) => value.value),
    };
  }

  factory AptSettingsOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return AptSettingsOsconfigV1beta(
      excludes: map['excludes'] == null ? null : ((map['excludes']! as List).cast<String>()).input(),
      exclusivePackages: map['exclusivePackages'] == null ? null : ((map['exclusivePackages']! as List).cast<String>()).input(),
      type: map['type'] == null ? null : (AptSettingsTypeOsconfigV1beta.fromValue(map['type']! as String)).input(),
    );
  }
}

