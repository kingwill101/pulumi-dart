// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the network configuration for the pool.
class NetworkConfigResponse {
  /// Option to configure network egress for the workers.
  final pulumi.Input<String> egressOption;
  /// Immutable. The network definition that the workers are peered to. If this section is left empty, the workers will be peered to `WorkerPool.project_id` on the service producer network. Must be in the format `projects/{project}/global/networks/{network}`, where `{project}` is a project number, such as `12345`, and `{network}` is the name of a VPC network in the project. See [Understanding network configuration options](https://cloud.google.com/build/docs/private-pools/set-up-private-pool-environment)
  final pulumi.Input<String> peeredNetwork;
  /// Immutable. Subnet IP range within the peered network. This is specified in CIDR notation with a slash and the subnet prefix size. You can optionally specify an IP address before the subnet prefix value. e.g. `192.168.0.0/29` would specify an IP range starting at 192.168.0.0 with a prefix size of 29 bits. `/16` would specify a prefix size of 16 bits, with an automatically determined IP within the peered VPC. If unspecified, a value of `/24` will be used.
  final pulumi.Input<String> peeredNetworkIpRange;

  /// Creates a new [NetworkConfigResponse].
  /// [egressOption] Option to configure network egress for the workers.
  /// [peeredNetwork] Immutable. The network definition that the workers are peered to. If this section is left empty, the workers will be peered to `WorkerPool.project_id` on the service producer network. Must be in the format `projects/{project}/global/networks/{network}`, where `{project}` is a project number, such as `12345`, and `{network}` is the name of a VPC network in the project. See [Understanding network configuration options](https://cloud.google.com/build/docs/private-pools/set-up-private-pool-environment)
  /// [peeredNetworkIpRange] Immutable. Subnet IP range within the peered network. This is specified in CIDR notation with a slash and the subnet prefix size. You can optionally specify an IP address before the subnet prefix value. e.g. `192.168.0.0/29` would specify an IP range starting at 192.168.0.0 with a prefix size of 29 bits. `/16` would specify a prefix size of 16 bits, with an automatically determined IP within the peered VPC. If unspecified, a value of `/24` will be used.
  const NetworkConfigResponse({
    required this.egressOption,
    required this.peeredNetwork,
    required this.peeredNetworkIpRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressOption': egressOption,
      'peeredNetwork': peeredNetwork,
      'peeredNetworkIpRange': peeredNetworkIpRange,
    };
  }

  factory NetworkConfigResponse.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponse(
      egressOption: pulumi.Input.fromValue(map['egressOption'] as String),
      peeredNetwork: pulumi.Input.fromValue(map['peeredNetwork'] as String),
      peeredNetworkIpRange: pulumi.Input.fromValue(map['peeredNetworkIpRange'] as String),
    );
  }
}

