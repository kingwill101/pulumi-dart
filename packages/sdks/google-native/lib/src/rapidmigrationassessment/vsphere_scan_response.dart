// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message describing a MC Source of type VSphere Scan.
class VSphereScanResponse {
  /// reference to the corresponding VSphere Scan in MC Source.
  final pulumi.Input<String> coreSource;

  /// Creates a new [VSphereScanResponse].
  /// [coreSource] reference to the corresponding VSphere Scan in MC Source.
  VSphereScanResponse({
    required this.coreSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreSource': coreSource,
    };
  }

  factory VSphereScanResponse.fromMap(Map<String, dynamic> map) {
    return VSphereScanResponse(
      coreSource: (map['coreSource'] as String).input(),
    );
  }
}

