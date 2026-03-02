// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer_metastore_v1beta.dart';

/// Network configuration for the Dataproc Metastore service.
class NetworkConfigMetastoreV1beta {
  /// Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  final pulumi.Input<List<ConsumerMetastoreV1beta>>? consumers;
  /// Enables custom routes to be imported and exported for the Dataproc Metastore service's peered VPC network.
  final pulumi.Input<bool>? customRoutesEnabled;

  /// Creates a new [NetworkConfigMetastoreV1beta].
  /// [consumers] Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  /// [customRoutesEnabled] Enables custom routes to be imported and exported for the Dataproc Metastore service's peered VPC network.
  NetworkConfigMetastoreV1beta({
    this.consumers,
    this.customRoutesEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumers': ?pulumi.Input.mapOptionalInputValue<List<ConsumerMetastoreV1beta>, List<Map<String, dynamic>>>(consumers, (value) => pulumi.Input.encodeList<ConsumerMetastoreV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customRoutesEnabled': ?customRoutesEnabled,
    };
  }

  factory NetworkConfigMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return NetworkConfigMetastoreV1beta(
      consumers: map['consumers'] == null ? null : (pulumi.Input.decodeList<ConsumerMetastoreV1beta>(map['consumers']!, (value) => ConsumerMetastoreV1beta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      customRoutesEnabled: map['customRoutesEnabled'] == null ? null : (map['customRoutesEnabled']! as bool).input(),
    );
  }
}

