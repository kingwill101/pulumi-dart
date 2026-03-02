// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details for an outcome with a SKIPPED outcome summary.
class SkippedDetailResponse {
  /// If the App doesn't support the specific API level.
  final pulumi.Input<bool> incompatibleAppVersion;
  /// If the App doesn't run on the specific architecture, for example, x86.
  final pulumi.Input<bool> incompatibleArchitecture;
  /// If the requested OS version doesn't run on the specific device model.
  final pulumi.Input<bool> incompatibleDevice;

  /// Creates a new [SkippedDetailResponse].
  /// [incompatibleAppVersion] If the App doesn't support the specific API level.
  /// [incompatibleArchitecture] If the App doesn't run on the specific architecture, for example, x86.
  /// [incompatibleDevice] If the requested OS version doesn't run on the specific device model.
  SkippedDetailResponse({
    required this.incompatibleAppVersion,
    required this.incompatibleArchitecture,
    required this.incompatibleDevice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'incompatibleAppVersion': incompatibleAppVersion,
      'incompatibleArchitecture': incompatibleArchitecture,
      'incompatibleDevice': incompatibleDevice,
    };
  }

  factory SkippedDetailResponse.fromMap(Map<String, dynamic> map) {
    return SkippedDetailResponse(
      incompatibleAppVersion: (map['incompatibleAppVersion'] as bool).input(),
      incompatibleArchitecture: (map['incompatibleArchitecture'] as bool).input(),
      incompatibleDevice: (map['incompatibleDevice'] as bool).input(),
    );
  }
}

