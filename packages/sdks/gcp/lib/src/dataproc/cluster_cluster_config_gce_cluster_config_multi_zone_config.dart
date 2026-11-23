// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigGceClusterConfigMultiZoneConfig {
  /// The distribution shape of the nodes in the multi-zonal cluster. Valid values are `"ANY"`.
  ///
  /// - - -
  final pulumi.Input<String> targetShape;

  /// Creates a new [ClusterClusterConfigGceClusterConfigMultiZoneConfig].
  /// [targetShape] The distribution shape of the nodes in the multi-zonal cluster. Valid values are `"ANY"`.
  const ClusterClusterConfigGceClusterConfigMultiZoneConfig({
    required this.targetShape,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetShape': targetShape,
    };
  }

  factory ClusterClusterConfigGceClusterConfigMultiZoneConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigGceClusterConfigMultiZoneConfig(
      targetShape: pulumi.Input.fromValue(map['targetShape'] as String),
    );
  }
}
