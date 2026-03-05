// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for VM scanning
class VmScannersBaseResponseConfiguration {
  /// Tags that indicates that a resource should not be scanned
  final pulumi.Input<Map<String, String>>? exclusionTags;
  /// The scanning mode for the VM scan.
  final pulumi.Input<String>? scanningMode;

  /// Creates a new [VmScannersBaseResponseConfiguration].
  /// [exclusionTags] Tags that indicates that a resource should not be scanned
  /// [scanningMode] The scanning mode for the VM scan.
  VmScannersBaseResponseConfiguration({
    this.exclusionTags,
    this.scanningMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionTags': ?exclusionTags,
      'scanningMode': ?scanningMode,
    };
  }

  factory VmScannersBaseResponseConfiguration.fromMap(Map<String, dynamic> map) {
    return VmScannersBaseResponseConfiguration(
      exclusionTags: (() { final guardedValue = map['exclusionTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      scanningMode: (() { final guardedValue = map['scanningMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

