// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apt_settings_type.dart';

/// Apt patching is completed by executing `apt-get update && apt-get upgrade`. Additional options can be set to control how this is executed.
class AptSettings {
  /// List of packages to exclude from update. These packages will be excluded
  final pulumi.Input<List<String>>? excludes;
  /// An exclusive list of packages to be updated. These are the only packages that will be updated. If these packages are not installed, they will be ignored. This field cannot be specified with any other patch configuration fields.
  final pulumi.Input<List<String>>? exclusivePackages;
  /// By changing the type to DIST, the patching is performed using `apt-get dist-upgrade` instead.
  final pulumi.Input<AptSettingsType>? type;

  /// Creates a new [AptSettings].
  /// [excludes] List of packages to exclude from update. These packages will be excluded
  /// [exclusivePackages] An exclusive list of packages to be updated. These are the only packages that will be updated. If these packages are not installed, they will be ignored. This field cannot be specified with any other patch configuration fields.
  /// [type] By changing the type to DIST, the patching is performed using `apt-get dist-upgrade` instead.
  const AptSettings({
    this.excludes,
    this.exclusivePackages,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes': ?excludes,
      'exclusivePackages': ?exclusivePackages,
      'type': ?pulumi.Input.mapOptionalInputValue<AptSettingsType, String>(type, (value) => value.wireValue),
    };
  }

  factory AptSettings.fromMap(Map<String, dynamic> map) {
    return AptSettings(
      excludes: (() { final guardedValue = map['excludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      exclusivePackages: (() { final guardedValue = map['exclusivePackages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AptSettingsType.fromValue(guardedValue as String)); })(),
    );
  }
}

