// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerPoolNetworkConfig {
  /// Required. Immutable. The network definition that the workers are peered to. If this section is left empty, the workers will be peered to `WorkerPool.project_id` on the service producer network. Must be in the format `projects/{project}/global/networks/{network}`, where `{project}` is a project number, such as `12345`, and `{network}` is the name of a VPC network in the project. See [Understanding network configuration options](https://cloud.google.com/cloud-build/docs/custom-workers/set-up-custom-worker-pool-environment#understanding_the_network_configuration_options)
  final pulumi.Input<String> peeredNetwork;
  /// Optional. Immutable. Subnet IP range within the peered network. This is specified in CIDR notation with a slash and the subnet prefix size. You can optionally specify an IP address before the subnet prefix value. e.g. `192.168.0.0/29` would specify an IP range starting at 192.168.0.0 with a prefix size of 29 bits. `/16` would specify a prefix size of 16 bits, with an automatically determined IP within the peered VPC. If unspecified, a value of `/24` will be used.
  final pulumi.Input<String> peeredNetworkIpRange;

  /// Creates a new [GetWorkerPoolNetworkConfig].
  /// [peeredNetwork] Required. Immutable. The network definition that the workers are peered to. If this section is left empty, the workers will be peered to `WorkerPool.project_id` on the service producer network. Must be in the format `projects/{project}/global/networks/{network}`, where `{project}` is a project number, such as `12345`, and `{network}` is the name of a VPC network in the project. See [Understanding network configuration options](https://cloud.google.com/cloud-build/docs/custom-workers/set-up-custom-worker-pool-environment#understanding_the_network_configuration_options)
  /// [peeredNetworkIpRange] Optional. Immutable. Subnet IP range within the peered network. This is specified in CIDR notation with a slash and the subnet prefix size. You can optionally specify an IP address before the subnet prefix value. e.g. `192.168.0.0/29` would specify an IP range starting at 192.168.0.0 with a prefix size of 29 bits. `/16` would specify a prefix size of 16 bits, with an automatically determined IP within the peered VPC. If unspecified, a value of `/24` will be used.
  const GetWorkerPoolNetworkConfig({
    required this.peeredNetwork,
    required this.peeredNetworkIpRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peeredNetwork': peeredNetwork,
      'peeredNetworkIpRange': peeredNetworkIpRange,
    };
  }

  factory GetWorkerPoolNetworkConfig.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolNetworkConfig(
      peeredNetwork: pulumi.Input.fromValue(map['peeredNetwork'] as String),
      peeredNetworkIpRange: pulumi.Input.fromValue(map['peeredNetworkIpRange'] as String),
    );
  }
}
