// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details of a Vmware VM disk.
class VmwareDiskDetailsResponseVmmigrationV1alpha1 {
  /// The ordinal number of the disk.
  final pulumi.Input<int> diskNumber;
  /// The disk label.
  final pulumi.Input<String> label;
  /// Size in GB.
  final pulumi.Input<String> sizeGb;

  /// Creates a new [VmwareDiskDetailsResponseVmmigrationV1alpha1].
  /// [diskNumber] The ordinal number of the disk.
  /// [label] The disk label.
  /// [sizeGb] Size in GB.
  const VmwareDiskDetailsResponseVmmigrationV1alpha1({
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

  factory VmwareDiskDetailsResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return VmwareDiskDetailsResponseVmmigrationV1alpha1(
      diskNumber: pulumi.Input.fromValue(map['diskNumber'] as int),
      label: pulumi.Input.fromValue(map['label'] as String),
      sizeGb: pulumi.Input.fromValue(map['sizeGb'] as String),
    );
  }
}
