// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer_response_metastore_v1alpha.dart';

/// Network configuration for the Dataproc Metastore service.
class NetworkConfigResponseMetastoreV1alpha {
  /// Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  final pulumi.Input<List<ConsumerResponseMetastoreV1alpha>> consumers;

  /// Enables custom routes to be imported and exported for the Dataproc Metastore service's peered VPC network.
  final pulumi.Input<bool> customRoutesEnabled;

  /// Creates a new [NetworkConfigResponseMetastoreV1alpha].
  /// [consumers] Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  /// [customRoutesEnabled] Enables custom routes to be imported and exported for the Dataproc Metastore service's peered VPC network.
  NetworkConfigResponseMetastoreV1alpha({
    required this.consumers,
    required this.customRoutesEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumers':
          pulumi.Input.mapInputValue<
            List<ConsumerResponseMetastoreV1alpha>,
            List<Map<String, dynamic>>
          >(
            consumers,
            (value) =>
                pulumi.Input.encodeList<
                  ConsumerResponseMetastoreV1alpha,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'customRoutesEnabled': customRoutesEnabled,
    };
  }

  factory NetworkConfigResponseMetastoreV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkConfigResponseMetastoreV1alpha(
      consumers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ConsumerResponseMetastoreV1alpha>(
          map['consumers']!,
          (value) => ConsumerResponseMetastoreV1alpha.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      customRoutesEnabled: pulumi.Input.fromValue(
        map['customRoutesEnabled'] as bool,
      ),
    );
  }
}
