// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigWindowsNodeConfig {
  /// The OS Version of the windows nodepool.Values are OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and OS_VERSION_LTSC2022
  final pulumi.Input<String> osversion;

  /// Creates a new [GetClusterNodePoolNodeConfigWindowsNodeConfig].
  /// [osversion] The OS Version of the windows nodepool.Values are OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and OS_VERSION_LTSC2022
  const GetClusterNodePoolNodeConfigWindowsNodeConfig({
    required this.osversion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osversion': osversion,
    };
  }

  factory GetClusterNodePoolNodeConfigWindowsNodeConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigWindowsNodeConfig(
      osversion: pulumi.Input.fromValue(map['osversion'] as String),
    );
  }
}

