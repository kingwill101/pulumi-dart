// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metastore_service_network_config_consumer.dart';

class MetastoreServiceNetworkConfig {
  /// The consumer-side network configuration for the Dataproc Metastore instance.
  /// Structure is documented below.
  final pulumi.Input<List<MetastoreServiceNetworkConfigConsumer>> consumers;
  /// (Optional, Beta)
  /// Enables custom routes to be imported and exported for the Dataproc Metastore service's peered VPC network.
  final pulumi.Input<bool>? customRoutesEnabled;

  /// Creates a new [MetastoreServiceNetworkConfig].
  /// [consumers] The consumer-side network configuration for the Dataproc Metastore instance.
  /// [customRoutesEnabled] (Optional, Beta)
  const MetastoreServiceNetworkConfig({
    required this.consumers,
    this.customRoutesEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumers': pulumi.Input.mapInputValue<List<MetastoreServiceNetworkConfigConsumer>, List<Map<String, dynamic>>>(consumers, (value) => pulumi.Input.encodeList<MetastoreServiceNetworkConfigConsumer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customRoutesEnabled': ?customRoutesEnabled,
    };
  }

  factory MetastoreServiceNetworkConfig.fromMap(Map<String, dynamic> map) {
    return MetastoreServiceNetworkConfig(
      consumers: pulumi.Input.fromValue(pulumi.Input.decodeList<MetastoreServiceNetworkConfigConsumer>(map['consumers']!, (value) => MetastoreServiceNetworkConfigConsumer.fromMap((value as Map).cast<String, dynamic>()))),
      customRoutesEnabled: (() { final guardedValue = map['customRoutesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
