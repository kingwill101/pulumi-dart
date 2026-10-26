// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigLinuxNodeConfigHugepagesConfig {
  /// Amount of 1G hugepages.
  final pulumi.Input<int> hugepageSize1g;
  /// Amount of 2M hugepages.
  final pulumi.Input<int> hugepageSize2m;

  /// Creates a new [GetClusterNodeConfigLinuxNodeConfigHugepagesConfig].
  /// [hugepageSize1g] Amount of 1G hugepages.
  /// [hugepageSize2m] Amount of 2M hugepages.
  const GetClusterNodeConfigLinuxNodeConfigHugepagesConfig({
    required this.hugepageSize1g,
    required this.hugepageSize2m,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hugepageSize1g': hugepageSize1g,
      'hugepageSize2m': hugepageSize2m,
    };
  }

  factory GetClusterNodeConfigLinuxNodeConfigHugepagesConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigLinuxNodeConfigHugepagesConfig(
      hugepageSize1g: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['hugepageSize1g'])),
      hugepageSize2m: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['hugepageSize2m'])),
    );
  }
}
