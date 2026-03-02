// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details of a Vmware VM disk.
class VmwareDiskDetailsResponse {
  /// The ordinal number of the disk.
  final pulumi.Input<int> diskNumber;
  /// The disk label.
  final pulumi.Input<String> label;
  /// Size in GB.
  final pulumi.Input<String> sizeGb;

  /// Creates a new [VmwareDiskDetailsResponse].
  /// [diskNumber] The ordinal number of the disk.
  /// [label] The disk label.
  /// [sizeGb] Size in GB.
  VmwareDiskDetailsResponse({
    required this.diskNumber,
    required this.label,
    required this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskNumber': diskNumber,
      'label': label,
      'sizeGb': sizeGb,
    };
  }

  factory VmwareDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return VmwareDiskDetailsResponse(
      diskNumber: (map['diskNumber'] as int).input(),
      label: (map['label'] as String).input(),
      sizeGb: (map['sizeGb'] as String).input(),
    );
  }
}

