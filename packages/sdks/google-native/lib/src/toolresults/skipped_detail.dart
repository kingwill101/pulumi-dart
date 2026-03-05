// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details for an outcome with a SKIPPED outcome summary.
class SkippedDetail {
  /// If the App doesn't support the specific API level.
  final pulumi.Input<bool>? incompatibleAppVersion;
  /// If the App doesn't run on the specific architecture, for example, x86.
  final pulumi.Input<bool>? incompatibleArchitecture;
  /// If the requested OS version doesn't run on the specific device model.
  final pulumi.Input<bool>? incompatibleDevice;

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
      incompatibleAppVersion: (() { final guardedValue = map['incompatibleAppVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      incompatibleArchitecture: (() { final guardedValue = map['incompatibleArchitecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      incompatibleDevice: (() { final guardedValue = map['incompatibleDevice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

