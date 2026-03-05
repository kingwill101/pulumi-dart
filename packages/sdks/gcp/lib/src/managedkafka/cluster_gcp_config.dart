// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_gcp_config_access_config.dart';

class ClusterGcpConfig {
  /// The configuration of access to the Kafka cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterGcpConfigAccessConfig> accessConfig;
  /// The Cloud KMS Key name to use for encryption. The key must be located in the same region as the cluster and cannot be changed. Must be in the format `projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY`.
  final pulumi.Input<String>? kmsKey;

  /// Creates a new [ClusterGcpConfig].
  /// [accessConfig] The configuration of access to the Kafka cluster.
  /// [kmsKey] The Cloud KMS Key name to use for encryption. The key must be located in the same region as the cluster and cannot be changed. Must be in the format `projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY`.
  ClusterGcpConfig({
    required this.accessConfig,
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfig': pulumi.Input.mapInputValue<ClusterGcpConfigAccessConfig, Map<String, dynamic>>(accessConfig, (value) => value.toMap()),
      'kmsKey': ?kmsKey,
    };
  }

  factory ClusterGcpConfig.fromMap(Map<String, dynamic> map) {
    return ClusterGcpConfig(
      accessConfig: pulumi.Input.fromValue(ClusterGcpConfigAccessConfig.fromMap((map['accessConfig']! as Map).cast<String, dynamic>())),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

