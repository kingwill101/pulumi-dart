// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigWindowsNodeConfig {
  /// The OS Version of the windows nodepool.Values are OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and OS_VERSION_LTSC2022
  final pulumi.Input<String>? osversion;

  /// Creates a new [ClusterNodePoolNodeConfigWindowsNodeConfig].
  /// [osversion] The OS Version of the windows nodepool.Values are OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and OS_VERSION_LTSC2022
  const ClusterNodePoolNodeConfigWindowsNodeConfig({
    this.osversion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osversion': ?osversion,
    };
  }

  factory ClusterNodePoolNodeConfigWindowsNodeConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigWindowsNodeConfig(
      osversion: (() { final guardedValue = map['osversion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

