// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerDeviceWriteBp {
  /// The device path on the host, e.g. `/dev/sda`.
  final pulumi.Input<String> path;
  /// The write rate limit in bytes per second.
  final pulumi.Input<int> rate;

  /// Creates a new [ContainerDeviceWriteBp].
  /// [path] The device path on the host, e.g. `/dev/sda`.
  /// [rate] The write rate limit in bytes per second.
  const ContainerDeviceWriteBp({
    required this.path,
    required this.rate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'rate': rate,
    };
  }

  factory ContainerDeviceWriteBp.fromMap(Map<String, dynamic> map) {
    return ContainerDeviceWriteBp(
      path: pulumi.Input.fromValue(map['path'] as String),
      rate: pulumi.Input.fromValue((map['rate'] as num).toInt()),
    );
  }
}
