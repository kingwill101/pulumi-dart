// ignore_for_file: unused_element, unnecessary_cast


/// Info contains versioning information. how we'll want to distribute that information.
class InfoPatch {
  final String? buildDate;
  final String? compiler;
  /// EmulationMajor is the major version of the emulation version
  final String? emulationMajor;
  /// EmulationMinor is the minor version of the emulation version
  final String? emulationMinor;
  final String? gitCommit;
  final String? gitTreeState;
  final String? gitVersion;
  final String? goVersion;
  /// Major is the major version of the binary version
  final String? major;
  /// MinCompatibilityMajor is the major version of the minimum compatibility version
  final String? minCompatibilityMajor;
  /// MinCompatibilityMinor is the minor version of the minimum compatibility version
  final String? minCompatibilityMinor;
  /// Minor is the minor version of the binary version
  final String? minor;
  final String? platform;

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
      buildDate: map['buildDate'] == null ? null : map['buildDate'] as String,
      compiler: map['compiler'] == null ? null : map['compiler'] as String,
      emulationMajor: map['emulationMajor'] == null ? null : map['emulationMajor'] as String,
      emulationMinor: map['emulationMinor'] == null ? null : map['emulationMinor'] as String,
      gitCommit: map['gitCommit'] == null ? null : map['gitCommit'] as String,
      gitTreeState: map['gitTreeState'] == null ? null : map['gitTreeState'] as String,
      gitVersion: map['gitVersion'] == null ? null : map['gitVersion'] as String,
      goVersion: map['goVersion'] == null ? null : map['goVersion'] as String,
      major: map['major'] == null ? null : map['major'] as String,
      minCompatibilityMajor: map['minCompatibilityMajor'] == null ? null : map['minCompatibilityMajor'] as String,
      minCompatibilityMinor: map['minCompatibilityMinor'] == null ? null : map['minCompatibilityMinor'] as String,
      minor: map['minor'] == null ? null : map['minor'] as String,
      platform: map['platform'] == null ? null : map['platform'] as String,
    );
  }
}

