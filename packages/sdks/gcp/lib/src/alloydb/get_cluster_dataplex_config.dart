// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterDataplexConfig {
  /// Indicates whether Dataplex integration is enabled for the cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterDataplexConfig].
  /// [enabled] Indicates whether Dataplex integration is enabled for the cluster.
  const GetClusterDataplexConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterDataplexConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterDataplexConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
