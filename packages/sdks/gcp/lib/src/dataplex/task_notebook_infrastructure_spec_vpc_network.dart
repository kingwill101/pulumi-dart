// ignore_for_file: unused_element, unnecessary_cast


class TaskNotebookInfrastructureSpecVpcNetwork {
  /// The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used.
  final String? network;
  /// List of network tags to apply to the job.
  final List<String>? networkTags;
  /// The Cloud VPC sub-network in which the job is run.
  final String? subNetwork;

  /// Creates a new [TaskNotebookInfrastructureSpecVpcNetwork].
  /// [network] The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used.
  /// [networkTags] List of network tags to apply to the job.
  /// [subNetwork] The Cloud VPC sub-network in which the job is run.
  TaskNotebookInfrastructureSpecVpcNetwork({
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
      network: map['network'] == null ? null : map['network'] as String,
      networkTags: map['networkTags'] == null ? null : (map['networkTags'] as List).cast<String>(),
      subNetwork: map['subNetwork'] == null ? null : map['subNetwork'] as String,
    );
  }
}

