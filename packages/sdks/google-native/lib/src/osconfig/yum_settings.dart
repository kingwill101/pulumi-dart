// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Yum patching is performed by executing `yum update`. Additional options can be set to control how this is executed. Note that not all settings are supported on all platforms.
class YumSettings {
  /// List of packages to exclude from update. These packages are excluded by using the yum `--exclude` flag.
  final pulumi.Input<List<String>>? excludes;
  /// An exclusive list of packages to be updated. These are the only packages that will be updated. If these packages are not installed, they will be ignored. This field must not be specified with any other patch configuration fields.
  final pulumi.Input<List<String>>? exclusivePackages;
  /// Will cause patch to run `yum update-minimal` instead.
  final pulumi.Input<bool>? minimal;
  /// Adds the `--security` flag to `yum update`. Not supported on all platforms.
  final pulumi.Input<bool>? security;

  /// Creates a new [YumSettings].
  /// [excludes] List of packages to exclude from update. These packages are excluded by using the yum `--exclude` flag.
  /// [exclusivePackages] An exclusive list of packages to be updated. These are the only packages that will be updated. If these packages are not installed, they will be ignored. This field must not be specified with any other patch configuration fields.
  /// [minimal] Will cause patch to run `yum update-minimal` instead.
  /// [security] Adds the `--security` flag to `yum update`. Not supported on all platforms.
  const YumSettings({
    this.excludes,
    this.exclusivePackages,
    this.minimal,
    this.security,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes': ?excludes,
      'exclusivePackages': ?exclusivePackages,
      'minimal': ?minimal,
      'security': ?security,
    };
  }

  factory YumSettings.fromMap(Map<String, dynamic> map) {
    return YumSettings(
      excludes: (() { final guardedValue = map['excludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      exclusivePackages: (() { final guardedValue = map['exclusivePackages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      minimal: (() { final guardedValue = map['minimal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      security: (() { final guardedValue = map['security']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

