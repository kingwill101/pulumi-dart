// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigLinuxNodeConfigHugepagesConfig {
  /// Amount of 1G hugepages.
  final pulumi.Input<int>? hugepageSize1g;
  /// Amount of 2M hugepages.
  final pulumi.Input<int>? hugepageSize2m;

  /// Creates a new [NodePoolNodeConfigLinuxNodeConfigHugepagesConfig].
  /// [hugepageSize1g] Amount of 1G hugepages.
  /// [hugepageSize2m] Amount of 2M hugepages.
  NodePoolNodeConfigLinuxNodeConfigHugepagesConfig({
    this.hugepageSize1g,
    this.hugepageSize2m,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hugepageSize1g': ?hugepageSize1g,
      'hugepageSize2m': ?hugepageSize2m,
    };
  }

  factory NodePoolNodeConfigLinuxNodeConfigHugepagesConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigLinuxNodeConfigHugepagesConfig(
      hugepageSize1g: map['hugepageSize1g'] == null ? null : (map['hugepageSize1g'] as int).input(),
      hugepageSize2m: map['hugepageSize2m'] == null ? null : (map['hugepageSize2m'] as int).input(),
    );
  }
}

