// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerDeviceWriteIop {
  /// The device path on the host, e.g. `/dev/sda`.
  final pulumi.Input<String> path;
  /// The write IOPS limit.
  final pulumi.Input<int> rate;

  /// Creates a new [ContainerDeviceWriteIop].
  /// [path] The device path on the host, e.g. `/dev/sda`.
  /// [rate] The write IOPS limit.
  const ContainerDeviceWriteIop({
    required this.path,
    required this.rate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'rate': rate,
    };
  }

  factory ContainerDeviceWriteIop.fromMap(Map<String, dynamic> map) {
    return ContainerDeviceWriteIop(
      path: pulumi.Input.fromValue(map['path'] as String),
      rate: pulumi.Input.fromValue(map['rate'] as int),
    );
  }
}
