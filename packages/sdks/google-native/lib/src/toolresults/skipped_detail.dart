// ignore_for_file: unused_element, unnecessary_cast


/// Details for an outcome with a SKIPPED outcome summary.
class SkippedDetail {
  /// If the App doesn't support the specific API level.
  final bool? incompatibleAppVersion;
  /// If the App doesn't run on the specific architecture, for example, x86.
  final bool? incompatibleArchitecture;
  /// If the requested OS version doesn't run on the specific device model.
  final bool? incompatibleDevice;

  /// Creates a new [SkippedDetail].
  /// [incompatibleAppVersion] If the App doesn't support the specific API level.
  /// [incompatibleArchitecture] If the App doesn't run on the specific architecture, for example, x86.
  /// [incompatibleDevice] If the requested OS version doesn't run on the specific device model.
  SkippedDetail({
    this.incompatibleAppVersion,
    this.incompatibleArchitecture,
    this.incompatibleDevice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'incompatibleAppVersion': ?incompatibleAppVersion,
      'incompatibleArchitecture': ?incompatibleArchitecture,
      'incompatibleDevice': ?incompatibleDevice,
    };
  }

  factory SkippedDetail.fromMap(Map<String, dynamic> map) {
    return SkippedDetail(
      incompatibleAppVersion: map['incompatibleAppVersion'] == null ? null : map['incompatibleAppVersion'] as bool,
      incompatibleArchitecture: map['incompatibleArchitecture'] == null ? null : map['incompatibleArchitecture'] as bool,
      incompatibleDevice: map['incompatibleDevice'] == null ? null : map['incompatibleDevice'] as bool,
    );
  }
}

