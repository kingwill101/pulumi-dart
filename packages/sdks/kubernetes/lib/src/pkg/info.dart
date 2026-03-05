// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Info contains versioning information. how we'll want to distribute that information.
class Info {
  final pulumi.Input<String> buildDate;
  final pulumi.Input<String> compiler;
  /// EmulationMajor is the major version of the emulation version
  final pulumi.Input<String>? emulationMajor;
  /// EmulationMinor is the minor version of the emulation version
  final pulumi.Input<String>? emulationMinor;
  final pulumi.Input<String> gitCommit;
  final pulumi.Input<String> gitTreeState;
  final pulumi.Input<String> gitVersion;
  final pulumi.Input<String> goVersion;
  /// Major is the major version of the binary version
  final pulumi.Input<String> major;
  /// MinCompatibilityMajor is the major version of the minimum compatibility version
  final pulumi.Input<String>? minCompatibilityMajor;
  /// MinCompatibilityMinor is the minor version of the minimum compatibility version
  final pulumi.Input<String>? minCompatibilityMinor;
  /// Minor is the minor version of the binary version
  final pulumi.Input<String> minor;
  final pulumi.Input<String> platform;

  /// Creates a new [Info].
  /// [buildDate] Required.
  /// [compiler] Required.
  /// [emulationMajor] EmulationMajor is the major version of the emulation version
  /// [emulationMinor] EmulationMinor is the minor version of the emulation version
  /// [gitCommit] Required.
  /// [gitTreeState] Required.
  /// [gitVersion] Required.
  /// [goVersion] Required.
  /// [major] Major is the major version of the binary version
  /// [minCompatibilityMajor] MinCompatibilityMajor is the major version of the minimum compatibility version
  /// [minCompatibilityMinor] MinCompatibilityMinor is the minor version of the minimum compatibility version
  /// [minor] Minor is the minor version of the binary version
  /// [platform] Required.
  Info({
    required this.buildDate,
    required this.compiler,
    this.emulationMajor,
    this.emulationMinor,
    required this.gitCommit,
    required this.gitTreeState,
    required this.gitVersion,
    required this.goVersion,
    required this.major,
    this.minCompatibilityMajor,
    this.minCompatibilityMinor,
    required this.minor,
    required this.platform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildDate': buildDate,
      'compiler': compiler,
      'emulationMajor': ?emulationMajor,
      'emulationMinor': ?emulationMinor,
      'gitCommit': gitCommit,
      'gitTreeState': gitTreeState,
      'gitVersion': gitVersion,
      'goVersion': goVersion,
      'major': major,
      'minCompatibilityMajor': ?minCompatibilityMajor,
      'minCompatibilityMinor': ?minCompatibilityMinor,
      'minor': minor,
      'platform': platform,
    };
  }

  factory Info.fromMap(Map<String, dynamic> map) {
    return Info(
      buildDate: pulumi.Input.fromValue(map['buildDate'] as String),
      compiler: pulumi.Input.fromValue(map['compiler'] as String),
      emulationMajor: (() { final guardedValue = map['emulationMajor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emulationMinor: (() { final guardedValue = map['emulationMinor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitCommit: pulumi.Input.fromValue(map['gitCommit'] as String),
      gitTreeState: pulumi.Input.fromValue(map['gitTreeState'] as String),
      gitVersion: pulumi.Input.fromValue(map['gitVersion'] as String),
      goVersion: pulumi.Input.fromValue(map['goVersion'] as String),
      major: pulumi.Input.fromValue(map['major'] as String),
      minCompatibilityMajor: (() { final guardedValue = map['minCompatibilityMajor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minCompatibilityMinor: (() { final guardedValue = map['minCompatibilityMinor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minor: pulumi.Input.fromValue(map['minor'] as String),
      platform: pulumi.Input.fromValue(map['platform'] as String),
    );
  }
}

