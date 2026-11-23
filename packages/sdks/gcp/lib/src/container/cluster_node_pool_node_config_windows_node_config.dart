// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigWindowsNodeConfig {
  /// OSVersion [attribute](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/NodeConfig#osversion). The value must be one of `OS_VERSION_UNSPECIFIED`, `OS_VERSION_LTSC2019`, or `OS_VERSION_LTSC2022`.
  final pulumi.Input<String?>? osversion;

  /// Creates a new [ClusterNodePoolNodeConfigWindowsNodeConfig].
  /// [osversion] OSVersion [attribute](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/NodeConfig#osversion). The value must be one of `OS_VERSION_UNSPECIFIED`, `OS_VERSION_LTSC2019`, or `OS_VERSION_LTSC2022`.
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
