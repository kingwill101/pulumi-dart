// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig {
  /// Amount of 1G hugepages.
  final pulumi.Input<int>? hugepageSize1g;
  /// Amount of 2M hugepages.
  final pulumi.Input<int>? hugepageSize2m;

  /// Creates a new [ClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig].
  /// [hugepageSize1g] Amount of 1G hugepages.
  /// [hugepageSize2m] Amount of 2M hugepages.
  const ClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig({
    this.hugepageSize1g,
    this.hugepageSize2m,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hugepageSize1g': ?hugepageSize1g,
      'hugepageSize2m': ?hugepageSize2m,
    };
  }

  factory ClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig(
      hugepageSize1g: (() { final guardedValue = map['hugepageSize1g']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      hugepageSize2m: (() { final guardedValue = map['hugepageSize2m']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
