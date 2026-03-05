// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigGceClusterConfigConfidentialInstanceConfig {
  /// Defines whether the instance should have confidential compute enabled.
  final pulumi.Input<bool>? enableConfidentialCompute;

  /// Creates a new [ClusterClusterConfigGceClusterConfigConfidentialInstanceConfig].
  /// [enableConfidentialCompute] Defines whether the instance should have confidential compute enabled.
  ClusterClusterConfigGceClusterConfigConfidentialInstanceConfig({
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableConfidentialCompute': ?enableConfidentialCompute,
    };
  }

  factory ClusterClusterConfigGceClusterConfigConfidentialInstanceConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigGceClusterConfigConfidentialInstanceConfig(
      enableConfidentialCompute: (() { final guardedValue = map['enableConfidentialCompute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

