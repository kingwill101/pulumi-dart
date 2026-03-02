// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsd {
  /// Specifies the size of the disk in base-2 GB.
  final pulumi.Input<String>? diskSizeGb;
  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
  /// Possible values are: `SCSI`, `NVME`.
  final pulumi.Input<String>? interface;

  /// Creates a new [FutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsd].
  /// [diskSizeGb] Specifies the size of the disk in base-2 GB.
  /// [interface] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
  FutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsd({
    this.diskSizeGb,
    this.interface,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': ?diskSizeGb,
      'interface': ?interface,
    };
  }

  factory FutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsd.fromMap(Map<String, dynamic> map) {
    return FutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsd(
      diskSizeGb: map['diskSizeGb'] == null ? null : (map['diskSizeGb']! as String).input(),
      interface: map['interface'] == null ? null : (map['interface']! as String).input(),
    );
  }
}

