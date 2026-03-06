// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for VM scanning
class VmScannersBaseConfiguration {
  /// Tags that indicates that a resource should not be scanned
  final pulumi.Input<Map<String, String>>? exclusionTags;
  /// The scanning mode for the VM scan.
  final pulumi.Input<String>? scanningMode;

  /// Creates a new [VmScannersBaseConfiguration].
  /// [exclusionTags] Tags that indicates that a resource should not be scanned
  /// [scanningMode] The scanning mode for the VM scan.
  const VmScannersBaseConfiguration({
    this.exclusionTags,
    this.scanningMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionTags': ?exclusionTags,
      'scanningMode': ?scanningMode,
    };
  }

  factory VmScannersBaseConfiguration.fromMap(Map<String, dynamic> map) {
    return VmScannersBaseConfiguration(
      exclusionTags: (() { final guardedValue = map['exclusionTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      scanningMode: (() { final guardedValue = map['scanningMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

