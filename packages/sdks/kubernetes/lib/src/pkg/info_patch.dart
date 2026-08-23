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
  const InfoPatch({
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
      buildDate: (() { final guardedValue = map['buildDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compiler: (() { final guardedValue = map['compiler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emulationMajor: (() { final guardedValue = map['emulationMajor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emulationMinor: (() { final guardedValue = map['emulationMinor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitCommit: (() { final guardedValue = map['gitCommit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitTreeState: (() { final guardedValue = map['gitTreeState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitVersion: (() { final guardedValue = map['gitVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      goVersion: (() { final guardedValue = map['goVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      major: (() { final guardedValue = map['major']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minCompatibilityMajor: (() { final guardedValue = map['minCompatibilityMajor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minCompatibilityMinor: (() { final guardedValue = map['minCompatibilityMinor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minor: (() { final guardedValue = map['minor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
