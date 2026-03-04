// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_cluster_gcp_config_access_config.dart';

class ConnectClusterGcpConfig {
  /// The configuration of access to the Kafka Connect cluster.
  /// Structure is documented below.
  final pulumi.Input<ConnectClusterGcpConfigAccessConfig> accessConfig;

  /// Creates a new [ConnectClusterGcpConfig].
  /// [accessConfig] The configuration of access to the Kafka Connect cluster.
  ConnectClusterGcpConfig({required this.accessConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfig':
          pulumi.Input.mapInputValue<
            ConnectClusterGcpConfigAccessConfig,
            Map<String, dynamic>
          >(accessConfig, (value) => value.toMap()),
    };
  }

  factory ConnectClusterGcpConfig.fromMap(Map<String, dynamic> map) {
    return ConnectClusterGcpConfig(
      accessConfig: pulumi.Input.fromValue(
        ConnectClusterGcpConfigAccessConfig.fromMap(
          (map['accessConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
