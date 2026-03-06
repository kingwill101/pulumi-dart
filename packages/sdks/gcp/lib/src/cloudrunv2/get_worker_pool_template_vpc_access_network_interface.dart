// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerPoolTemplateVpcAccessNetworkInterface {
  /// The VPC network that the Cloud Run resource will be able to send traffic to. At least one of network or subnetwork must be specified. If both
  /// network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If network is not specified, it will be
  /// looked up from the subnetwork.
  final pulumi.Input<String> network;
  /// The VPC subnetwork that the Cloud Run resource will get IPs from. At least one of network or subnetwork must be specified. If both
  /// network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If subnetwork is not specified, the
  /// subnetwork with the same name with the network will be used.
  final pulumi.Input<String> subnetwork;
  /// Network tags applied to this Cloud Run WorkerPool.
  final pulumi.Input<List<String>> tags;

  /// Creates a new [GetWorkerPoolTemplateVpcAccessNetworkInterface].
  /// [network] The VPC network that the Cloud Run resource will be able to send traffic to. At least one of network or subnetwork must be specified. If both
  /// [subnetwork] The VPC subnetwork that the Cloud Run resource will get IPs from. At least one of network or subnetwork must be specified. If both
  /// [tags] Network tags applied to this Cloud Run WorkerPool.
  const GetWorkerPoolTemplateVpcAccessNetworkInterface({
    required this.network,
    required this.subnetwork,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'subnetwork': subnetwork,
      'tags': tags,
    };
  }

  factory GetWorkerPoolTemplateVpcAccessNetworkInterface.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplateVpcAccessNetworkInterface(
      network: pulumi.Input.fromValue(map['network'] as String),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
    );
  }
}

