// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMetastoreServiceNetworkConfigConsumer {
  /// The URI of the endpoint used to access the metastore service.
  final pulumi.Input<String> endpointUri;

  /// The subnetwork of the customer project from which an IP address is reserved and used as the Dataproc Metastore service's endpoint.
  /// It is accessible to hosts in the subnet and to all hosts in a subnet in the same region and same network.
  /// There must be at least one IP address available in the subnet's primary range. The subnet is specified in the following form:
  /// 'projects/{projectNumber}/regions/{region_id}/subnetworks/{subnetwork_id}
  final pulumi.Input<String> subnetwork;

  /// Creates a new [GetMetastoreServiceNetworkConfigConsumer].
  /// [endpointUri] The URI of the endpoint used to access the metastore service.
  /// [subnetwork] The subnetwork of the customer project from which an IP address is reserved and used as the Dataproc Metastore service's endpoint.
  GetMetastoreServiceNetworkConfigConsumer({
    required this.endpointUri,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointUri': endpointUri,
      'subnetwork': subnetwork,
    };
  }

  factory GetMetastoreServiceNetworkConfigConsumer.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetMetastoreServiceNetworkConfigConsumer(
      endpointUri: pulumi.Input.fromValue(map['endpointUri'] as String),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
    );
  }
}
