// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigWindowsNodeConfig {
  /// The OS Version of the windows nodepool.Values are OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and OS_VERSION_LTSC2022
  final pulumi.Input<String>? osversion;

  /// Creates a new [ClusterNodeConfigWindowsNodeConfig].
  /// [osversion] The OS Version of the windows nodepool.Values are OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and OS_VERSION_LTSC2022
  ClusterNodeConfigWindowsNodeConfig({
    this.osversion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osversion': ?osversion,
    };
  }

  factory ClusterNodeConfigWindowsNodeConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigWindowsNodeConfig(
      osversion: map['osversion'] == null ? null : (map['osversion']! as String).input(),
    );
  }
}

