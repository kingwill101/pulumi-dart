// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReservationSpecificReservationInstancePropertyLocalSsd {
  /// The size of the disk in base-2 GB.
  final pulumi.Input<int> diskSizeGb;
  /// The disk interface to use for attaching this disk. Default value: "SCSI" Possible values: ["SCSI", "NVME"]
  final pulumi.Input<String> interface;

  /// Creates a new [GetReservationSpecificReservationInstancePropertyLocalSsd].
  /// [diskSizeGb] The size of the disk in base-2 GB.
  /// [interface] The disk interface to use for attaching this disk. Default value: "SCSI" Possible values: ["SCSI", "NVME"]
  const GetReservationSpecificReservationInstancePropertyLocalSsd({
    required this.diskSizeGb,
    required this.interface,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': diskSizeGb,
      'interface': interface,
    };
  }

  factory GetReservationSpecificReservationInstancePropertyLocalSsd.fromMap(Map<String, dynamic> map) {
    return GetReservationSpecificReservationInstancePropertyLocalSsd(
      diskSizeGb: pulumi.Input.fromValue(map['diskSizeGb'] as int),
      interface: pulumi.Input.fromValue(map['interface'] as String),
    );
  }
}
