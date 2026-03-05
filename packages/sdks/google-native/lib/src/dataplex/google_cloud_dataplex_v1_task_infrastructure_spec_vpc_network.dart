// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cloud VPC Network used to run the infrastructure.
class GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork {
  /// Optional. The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used.
  final pulumi.Input<String>? network;
  /// Optional. List of network tags to apply to the job.
  final pulumi.Input<List<String>>? networkTags;
  /// Optional. The Cloud VPC sub-network in which the job is run.
  final pulumi.Input<String>? subNetwork;

  /// Creates a new [GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork].
  /// [network] Optional. The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used.
  /// [networkTags] Optional. List of network tags to apply to the job.
  /// [subNetwork] Optional. The Cloud VPC sub-network in which the job is run.
  GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork({
    this.network,
    this.networkTags,
    this.subNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': ?network,
      'networkTags': ?networkTags,
      'subNetwork': ?subNetwork,
    };
  }

  factory GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork(
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkTags: (() { final guardedValue = map['networkTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subNetwork: (() { final guardedValue = map['subNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

