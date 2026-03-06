// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterSecondaryConfig {
  /// Name of the primary cluster must be in the format
  /// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final pulumi.Input<String> primaryClusterName;

  /// Creates a new [ClusterSecondaryConfig].
  /// [primaryClusterName] Name of the primary cluster must be in the format
  const ClusterSecondaryConfig({
    required this.primaryClusterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryClusterName': primaryClusterName,
    };
  }

  factory ClusterSecondaryConfig.fromMap(Map<String, dynamic> map) {
    return ClusterSecondaryConfig(
      primaryClusterName: pulumi.Input.fromValue(map['primaryClusterName'] as String),
    );
  }
}

