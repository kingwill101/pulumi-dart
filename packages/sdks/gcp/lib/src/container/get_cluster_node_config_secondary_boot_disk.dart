// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigSecondaryBootDisk {
  /// Disk image to create the secondary boot disk from
  final pulumi.Input<String> diskImage;
  /// Mode for how the secondary boot disk is used.
  final pulumi.Input<String> mode;

  /// Creates a new [GetClusterNodeConfigSecondaryBootDisk].
  /// [diskImage] Disk image to create the secondary boot disk from
  /// [mode] Mode for how the secondary boot disk is used.
  GetClusterNodeConfigSecondaryBootDisk({
    required this.diskImage,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskImage': diskImage,
      'mode': mode,
    };
  }

  factory GetClusterNodeConfigSecondaryBootDisk.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigSecondaryBootDisk(
      diskImage: (map['diskImage'] as String).input(),
      mode: (map['mode'] as String).input(),
    );
  }
}

