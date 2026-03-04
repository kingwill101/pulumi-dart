// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information of the customer's network configurations.
class ConsumerResponseMetastoreV1alpha {
  /// The location of the endpoint URI. Format: projects/{project}/locations/{location}.
  final pulumi.Input<String> endpointLocation;

  /// The URI of the endpoint used to access the metastore service.
  final pulumi.Input<String> endpointUri;

  /// Immutable. The subnetwork of the customer project from which an IP address is reserved and used as the Dataproc Metastore service's endpoint. It is accessible to hosts in the subnet and to all hosts in a subnet in the same region and same network. There must be at least one IP address available in the subnet's primary range. The subnet is specified in the following form:projects/{project_number}/regions/{region_id}/subnetworks/{subnetwork_id}
  final pulumi.Input<String> subnetwork;

  /// Creates a new [ConsumerResponseMetastoreV1alpha].
  /// [endpointLocation] The location of the endpoint URI. Format: projects/{project}/locations/{location}.
  /// [endpointUri] The URI of the endpoint used to access the metastore service.
  /// [subnetwork] Immutable. The subnetwork of the customer project from which an IP address is reserved and used as the Dataproc Metastore service's endpoint. It is accessible to hosts in the subnet and to all hosts in a subnet in the same region and same network. There must be at least one IP address available in the subnet's primary range. The subnet is specified in the following form:projects/{project_number}/regions/{region_id}/subnetworks/{subnetwork_id}
  ConsumerResponseMetastoreV1alpha({
    required this.endpointLocation,
    required this.endpointUri,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointLocation': endpointLocation,
      'endpointUri': endpointUri,
      'subnetwork': subnetwork,
    };
  }

  factory ConsumerResponseMetastoreV1alpha.fromMap(Map<String, dynamic> map) {
    return ConsumerResponseMetastoreV1alpha(
      endpointLocation: pulumi.Input.fromValue(
        map['endpointLocation'] as String,
      ),
      endpointUri: pulumi.Input.fromValue(map['endpointUri'] as String),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
    );
  }
}
