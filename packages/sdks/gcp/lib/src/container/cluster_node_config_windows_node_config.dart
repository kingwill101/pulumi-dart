// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigWindowsNodeConfig {
  /// OSVersion [attribute](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/NodeConfig#osversion). The value must be one of `OS_VERSION_UNSPECIFIED`, `OS_VERSION_LTSC2019`, or `OS_VERSION_LTSC2022`.
  final pulumi.Input<String?>? osversion;

  /// Creates a new [ClusterNodeConfigWindowsNodeConfig].
  /// [osversion] OSVersion [attribute](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/NodeConfig#osversion). The value must be one of `OS_VERSION_UNSPECIFIED`, `OS_VERSION_LTSC2019`, or `OS_VERSION_LTSC2022`.
  const ClusterNodeConfigWindowsNodeConfig({
    this.osversion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osversion': ?osversion,
    };
  }

  factory ClusterNodeConfigWindowsNodeConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigWindowsNodeConfig(
      osversion: (() { final guardedValue = map['osversion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
