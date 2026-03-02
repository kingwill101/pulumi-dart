// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Info contains versioning information. how we'll want to distribute that information.
class InfoPatch {
  final pulumi.Input<String>? buildDate;
  final pulumi.Input<String>? compiler;
  /// EmulationMajor is the major version of the emulation version
  final pulumi.Input<String>? emulationMajor;
  /// EmulationMinor is the minor version of the emulation version
  final pulumi.Input<String>? emulationMinor;
  final pulumi.Input<String>? gitCommit;
  final pulumi.Input<String>? gitTreeState;
  final pulumi.Input<String>? gitVersion;
  final pulumi.Input<String>? goVersion;
  /// Major is the major version of the binary version
  final pulumi.Input<String>? major;
  /// MinCompatibilityMajor is the major version of the minimum compatibility version
  final pulumi.Input<String>? minCompatibilityMajor;
  /// MinCompatibilityMinor is the minor version of the minimum compatibility version
  final pulumi.Input<String>? minCompatibilityMinor;
  /// Minor is the minor version of the binary version
  final pulumi.Input<String>? minor;
  final pulumi.Input<String>? platform;

  /// Creates a new [InfoPatch].
  /// [buildDate] Optional.
  /// [compiler] Optional.
  /// [emulationMajor] EmulationMajor is the major version of the emulation version
  /// [emulationMinor] EmulationMinor is the minor version of the emulation version
  /// [gitCommit] Optional.
  /// [gitTreeState] Optional.
  /// [gitVersion] Optional.
  /// [goVersion] Optional.
  /// [major] Major is the major version of the binary version
  /// [minCompatibilityMajor] MinCompatibilityMajor is the major version of the minimum compatibility version
  /// [minCompatibilityMinor] MinCompatibilityMinor is the minor version of the minimum compatibility version
  /// [minor] Minor is the minor version of the binary version
  /// [platform] Optional.
  InfoPatch({
    this.buildDate,
    this.compiler,
    this.emulationMajor,
    this.emulationMinor,
    this.gitCommit,
    this.gitTreeState,
    this.gitVersion,
    this.goVersion,
    this.major,
    this.minCompatibilityMajor,
    this.minCompatibilityMinor,
    this.minor,
    this.platform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildDate': ?buildDate,
      'compiler': ?compiler,
      'emulationMajor': ?emulationMajor,
      'emulationMinor': ?emulationMinor,
      'gitCommit': ?gitCommit,
      'gitTreeState': ?gitTreeState,
      'gitVersion': ?gitVersion,
      'goVersion': ?goVersion,
      'major': ?major,
      'minCompatibilityMajor': ?minCompatibilityMajor,
      'minCompatibilityMinor': ?minCompatibilityMinor,
      'minor': ?minor,
      'platform': ?platform,
    };
  }

  factory InfoPatch.fromMap(Map<String, dynamic> map) {
    return InfoPatch(
      buildDate: map['buildDate'] == null ? null : (map['buildDate'] as String).input(),
      compiler: map['compiler'] == null ? null : (map['compiler'] as String).input(),
      emulationMajor: map['emulationMajor'] == null ? null : (map['emulationMajor'] as String).input(),
      emulationMinor: map['emulationMinor'] == null ? null : (map['emulationMinor'] as String).input(),
      gitCommit: map['gitCommit'] == null ? null : (map['gitCommit'] as String).input(),
      gitTreeState: map['gitTreeState'] == null ? null : (map['gitTreeState'] as String).input(),
      gitVersion: map['gitVersion'] == null ? null : (map['gitVersion'] as String).input(),
      goVersion: map['goVersion'] == null ? null : (map['goVersion'] as String).input(),
      major: map['major'] == null ? null : (map['major'] as String).input(),
      minCompatibilityMajor: map['minCompatibilityMajor'] == null ? null : (map['minCompatibilityMajor'] as String).input(),
      minCompatibilityMinor: map['minCompatibilityMinor'] == null ? null : (map['minCompatibilityMinor'] as String).input(),
      minor: map['minor'] == null ? null : (map['minor'] as String).input(),
      platform: map['platform'] == null ? null : (map['platform'] as String).input(),
    );
  }
}

