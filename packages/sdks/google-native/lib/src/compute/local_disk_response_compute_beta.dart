// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LocalDiskResponseComputeBeta {
  /// Specifies the number of such disks.
  final pulumi.Input<int> diskCount;
  /// Specifies the size of the disk in base-2 GB.
  final pulumi.Input<int> diskSizeGb;
  /// Specifies the desired disk type on the node. This disk type must be a local storage type (e.g.: local-ssd). Note that for nodeTemplates, this should be the name of the disk type and not its URL.
  final pulumi.Input<String> diskType;

  /// Creates a new [LocalDiskResponseComputeBeta].
  /// [diskCount] Specifies the number of such disks.
  /// [diskSizeGb] Specifies the size of the disk in base-2 GB.
  /// [diskType] Specifies the desired disk type on the node. This disk type must be a local storage type (e.g.: local-ssd). Note that for nodeTemplates, this should be the name of the disk type and not its URL.
  const LocalDiskResponseComputeBeta({
    required this.diskCount,
    required this.diskSizeGb,
    required this.diskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskCount': diskCount,
      'diskSizeGb': diskSizeGb,
      'diskType': diskType,
    };
  }

  factory LocalDiskResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return LocalDiskResponseComputeBeta(
      diskCount: pulumi.Input.fromValue(map['diskCount'] as int),
      diskSizeGb: pulumi.Input.fromValue(map['diskSizeGb'] as int),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
    );
  }
}
