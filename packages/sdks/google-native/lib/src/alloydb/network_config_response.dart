// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata related to network configuration.
class NetworkConfigResponse {
  /// Optional. Name of the allocated IP range for the private IP AlloyDB cluster, for example: "google-managed-services-default". If set, the instance IPs for this cluster will be created in the allocated range. The range name must comply with RFC 1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. Field name is intended to be consistent with Cloud SQL.
  final pulumi.Input<String> allocatedIpRange;

  /// Optional. The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster. It is specified in the form: "projects/{project_number}/global/networks/{network_id}". This is required to create a cluster.
  final pulumi.Input<String> network;

  /// Creates a new [NetworkConfigResponse].
  /// [allocatedIpRange] Optional. Name of the allocated IP range for the private IP AlloyDB cluster, for example: "google-managed-services-default". If set, the instance IPs for this cluster will be created in the allocated range. The range name must comply with RFC 1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. Field name is intended to be consistent with Cloud SQL.
  /// [network] Optional. The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster. It is specified in the form: "projects/{project_number}/global/networks/{network_id}". This is required to create a cluster.
  NetworkConfigResponse({
    required this.allocatedIpRange,
    required this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedIpRange': allocatedIpRange,
      'network': network,
    };
  }

  factory NetworkConfigResponse.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponse(
      allocatedIpRange: pulumi.Input.fromValue(
        map['allocatedIpRange'] as String,
      ),
      network: pulumi.Input.fromValue(map['network'] as String),
    );
  }
}
