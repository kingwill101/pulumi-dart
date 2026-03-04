// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer_response.dart';

/// Network configuration for the Dataproc Metastore service.
class NetworkConfigResponse {
  /// Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  final pulumi.Input<List<ConsumerResponse>> consumers;

  /// Creates a new [NetworkConfigResponse].
  /// [consumers] Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  NetworkConfigResponse({required this.consumers});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumers':
          pulumi.Input.mapInputValue<
            List<ConsumerResponse>,
            List<Map<String, dynamic>>
          >(
            consumers,
            (value) =>
                pulumi.Input.encodeList<ConsumerResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory NetworkConfigResponse.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponse(
      consumers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ConsumerResponse>(
          map['consumers']!,
          (value) =>
              ConsumerResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
    );
  }
}
