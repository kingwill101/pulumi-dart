// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LocalDiskComputeV1 {
  /// Specifies the number of such disks.
  final pulumi.Input<int>? diskCount;
  /// Specifies the size of the disk in base-2 GB.
  final pulumi.Input<int>? diskSizeGb;
  /// Specifies the desired disk type on the node. This disk type must be a local storage type (e.g.: local-ssd). Note that for nodeTemplates, this should be the name of the disk type and not its URL.
  final pulumi.Input<String>? diskType;

  /// Creates a new [LocalDiskComputeV1].
  /// [diskCount] Specifies the number of such disks.
  /// [diskSizeGb] Specifies the size of the disk in base-2 GB.
  /// [diskType] Specifies the desired disk type on the node. This disk type must be a local storage type (e.g.: local-ssd). Note that for nodeTemplates, this should be the name of the disk type and not its URL.
  const LocalDiskComputeV1({
    this.diskCount,
    this.diskSizeGb,
    this.diskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskCount': ?diskCount,
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?diskType,
    };
  }

  factory LocalDiskComputeV1.fromMap(Map<String, dynamic> map) {
    return LocalDiskComputeV1(
      diskCount: (() { final guardedValue = map['diskCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

