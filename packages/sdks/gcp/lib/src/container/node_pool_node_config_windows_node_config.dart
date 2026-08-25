// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigWindowsNodeConfig {
  /// The OS Version of the windows nodepool.Values are OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and OS_VERSION_LTSC2022
  final pulumi.Input<String?>? osversion;

  /// Creates a new [NodePoolNodeConfigWindowsNodeConfig].
  /// [osversion] The OS Version of the windows nodepool.Values are OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and OS_VERSION_LTSC2022
  const NodePoolNodeConfigWindowsNodeConfig({
    this.osversion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osversion': ?osversion,
    };
  }

  factory NodePoolNodeConfigWindowsNodeConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigWindowsNodeConfig(
      osversion: (() { final guardedValue = map['osversion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
