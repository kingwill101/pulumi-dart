// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerDeviceReadIop {
  /// The device path on the host, e.g. `/dev/sda`.
  final pulumi.Input<String> path;
  /// The read IOPS limit.
  final pulumi.Input<int> rate;

  /// Creates a new [ContainerDeviceReadIop].
  /// [path] The device path on the host, e.g. `/dev/sda`.
  /// [rate] The read IOPS limit.
  const ContainerDeviceReadIop({
    required this.path,
    required this.rate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'rate': rate,
    };
  }

  factory ContainerDeviceReadIop.fromMap(Map<String, dynamic> map) {
    return ContainerDeviceReadIop(
      path: pulumi.Input.fromValue(map['path'] as String),
      rate: pulumi.Input.fromValue((map['rate'] as num).toInt()),
    );
  }
}
