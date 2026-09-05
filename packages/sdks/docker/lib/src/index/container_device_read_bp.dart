// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerDeviceReadBp {
  /// The device path on the host, e.g. `/dev/sda`.
  final pulumi.Input<String> path;
  /// The read rate limit in bytes per second.
  final pulumi.Input<int> rate;

  /// Creates a new [ContainerDeviceReadBp].
  /// [path] The device path on the host, e.g. `/dev/sda`.
  /// [rate] The read rate limit in bytes per second.
  const ContainerDeviceReadBp({
    required this.path,
    required this.rate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'rate': rate,
    };
  }

  factory ContainerDeviceReadBp.fromMap(Map<String, dynamic> map) {
    return ContainerDeviceReadBp(
      path: pulumi.Input.fromValue(map['path'] as String),
      rate: pulumi.Input.fromValue((map['rate'] as num).toInt()),
    );
  }
}
