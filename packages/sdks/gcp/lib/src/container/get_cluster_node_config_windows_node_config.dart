// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigWindowsNodeConfig {
  /// The OS Version of the windows nodepool.Values are OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and OS_VERSION_LTSC2022
  final pulumi.Input<String> osversion;

  /// Creates a new [GetClusterNodeConfigWindowsNodeConfig].
  /// [osversion] The OS Version of the windows nodepool.Values are OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and OS_VERSION_LTSC2022
  GetClusterNodeConfigWindowsNodeConfig({
    required this.osversion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osversion': osversion,
    };
  }

  factory GetClusterNodeConfigWindowsNodeConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigWindowsNodeConfig(
      osversion: pulumi.Input.fromValue(map['osversion'] as String),
    );
  }
}

