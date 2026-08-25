// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstancePropertiesLocalSsd {
  /// Specifies the size of the disk in base-2 GB.
  final pulumi.Input<String?>? diskSizeGb;
  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
  /// Possible values are: `SCSI`, `NVME`.
  final pulumi.Input<String?>? interface;

  /// Creates a new [FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstancePropertiesLocalSsd].
  /// [diskSizeGb] Specifies the size of the disk in base-2 GB.
  /// [interface] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
  const FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstancePropertiesLocalSsd({
    this.diskSizeGb,
    this.interface,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': ?diskSizeGb,
      'interface': ?interface,
    };
  }

  factory FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstancePropertiesLocalSsd.fromMap(Map<String, dynamic> map) {
    return FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstancePropertiesLocalSsd(
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interface: (() { final guardedValue = map['interface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
