// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiCustomJobJobSpecWorkerPoolSpecDiskSpec {
  /// Size in GB of the boot disk (default is 100GB).
  final pulumi.Input<int?>? bootDiskSizeGb;
  /// Type of the disk. The default value depends on the machine type. Valid values include: "pd-ssd", "pd-standard", "pd-balanced", and "hyperdisk-balanced".
  final pulumi.Input<String?>? bootDiskType;

  /// Creates a new [AiCustomJobJobSpecWorkerPoolSpecDiskSpec].
  /// [bootDiskSizeGb] Size in GB of the boot disk (default is 100GB).
  /// [bootDiskType] Type of the disk. The default value depends on the machine type. Valid values include: "pd-ssd", "pd-standard", "pd-balanced", and "hyperdisk-balanced".
  const AiCustomJobJobSpecWorkerPoolSpecDiskSpec({
    this.bootDiskSizeGb,
    this.bootDiskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiskSizeGb': ?bootDiskSizeGb,
      'bootDiskType': ?bootDiskType,
    };
  }

  factory AiCustomJobJobSpecWorkerPoolSpecDiskSpec.fromMap(Map<String, dynamic> map) {
    return AiCustomJobJobSpecWorkerPoolSpecDiskSpec(
      bootDiskSizeGb: (() { final guardedValue = map['bootDiskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      bootDiskType: (() { final guardedValue = map['bootDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
