// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskNotebookInfrastructureSpecVpcNetwork {
  /// The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used.
  final pulumi.Input<String>? network;
  /// List of network tags to apply to the job.
  final pulumi.Input<List<String>>? networkTags;
  /// The Cloud VPC sub-network in which the job is run.
  final pulumi.Input<String>? subNetwork;

  /// Creates a new [TaskNotebookInfrastructureSpecVpcNetwork].
  /// [network] The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used.
  /// [networkTags] List of network tags to apply to the job.
  /// [subNetwork] The Cloud VPC sub-network in which the job is run.
  const TaskNotebookInfrastructureSpecVpcNetwork({
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

  factory TaskNotebookInfrastructureSpecVpcNetwork.fromMap(Map<String, dynamic> map) {
    return TaskNotebookInfrastructureSpecVpcNetwork(
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkTags: (() { final guardedValue = map['networkTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subNetwork: (() { final guardedValue = map['subNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
