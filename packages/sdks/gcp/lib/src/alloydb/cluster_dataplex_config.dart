// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterDataplexConfig {
  /// Indicates whether Dataplex integration is enabled for the cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterDataplexConfig].
  /// [enabled] Indicates whether Dataplex integration is enabled for the cluster.
  const ClusterDataplexConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterDataplexConfig.fromMap(Map<String, dynamic> map) {
    return ClusterDataplexConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
