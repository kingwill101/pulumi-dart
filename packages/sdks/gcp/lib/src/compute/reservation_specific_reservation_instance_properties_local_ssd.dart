// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReservationSpecificReservationInstancePropertiesLocalSsd {
  /// The size of the disk in base-2 GB.
  final pulumi.Input<int> diskSizeGb;
  /// The disk interface to use for attaching this disk.
  /// Default value is `SCSI`.
  /// Possible values are: `SCSI`, `NVME`.
  final pulumi.Input<String>? interface;

  /// Creates a new [ReservationSpecificReservationInstancePropertiesLocalSsd].
  /// [diskSizeGb] The size of the disk in base-2 GB.
  /// [interface] The disk interface to use for attaching this disk.
  const ReservationSpecificReservationInstancePropertiesLocalSsd({
    required this.diskSizeGb,
    this.interface,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': diskSizeGb,
      'interface': ?interface,
    };
  }

  factory ReservationSpecificReservationInstancePropertiesLocalSsd.fromMap(Map<String, dynamic> map) {
    return ReservationSpecificReservationInstancePropertiesLocalSsd(
      diskSizeGb: pulumi.Input.fromValue(map['diskSizeGb'] as int),
      interface: (() { final guardedValue = map['interface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
