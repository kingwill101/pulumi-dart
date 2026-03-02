// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cloud VPC Network used to run the infrastructure.
class GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetworkResponse {
  /// Optional. The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used.
  final pulumi.Input<String> network;
  /// Optional. List of network tags to apply to the job.
  final pulumi.Input<List<String>> networkTags;
  /// Optional. The Cloud VPC sub-network in which the job is run.
  final pulumi.Input<String> subNetwork;

  /// Creates a new [GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetworkResponse].
  /// [network] Optional. The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used.
  /// [networkTags] Optional. List of network tags to apply to the job.
  /// [subNetwork] Optional. The Cloud VPC sub-network in which the job is run.
  GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetworkResponse({
    required this.network,
    required this.networkTags,
    required this.subNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'networkTags': networkTags,
      'subNetwork': subNetwork,
    };
  }

  factory GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetworkResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetworkResponse(
      network: (map['network'] as String).input(),
      networkTags: ((map['networkTags'] as List).cast<String>()).input(),
      subNetwork: (map['subNetwork'] as String).input(),
    );
  }
}

