// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer.dart';

/// Network configuration for the Dataproc Metastore service.
class NetworkConfig {
  /// Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  final pulumi.Input<List<Consumer>>? consumers;

  /// Creates a new [NetworkConfig].
  /// [consumers] Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  const NetworkConfig({
    this.consumers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumers': ?pulumi.Input.mapOptionalInputValue<List<Consumer>, List<Map<String, dynamic>>>(consumers, (value) => pulumi.Input.encodeList<Consumer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkConfig.fromMap(Map<String, dynamic> map) {
    return NetworkConfig(
      consumers: (() { final guardedValue = map['consumers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Consumer>(guardedValue, (value) => Consumer.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
