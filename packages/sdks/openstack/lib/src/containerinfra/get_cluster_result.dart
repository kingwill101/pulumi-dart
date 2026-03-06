// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCluster.
class GetClusterResult {
  /// COE API address.
  final String apiAddress;
  /// The UUID of the V1 Container Infra cluster template.
  final String clusterTemplateId;
  /// COE software version.
  final String coeVersion;
  final String containerVersion;
  /// The timeout (in minutes) for creating the cluster.
  final int createTimeout;
  /// The time at which cluster was created.
  final String createdAt;
  /// The URL used for cluster node discovery.
  final String discoveryUrl;
  /// The size (in GB) of the Docker volume.
  final int dockerVolumeSize;
  /// The fixed network that is attached to the cluster.
  final String fixedNetwork;
  /// The fixed subnet that is attached to the cluster.
  final String fixedSubnet;
  /// The flavor for the nodes of the cluster.
  final String flavor;
  final bool floatingIpEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The name of the Compute service SSH keypair.
  final String keypair;
  /// The Kubernetes cluster's credentials
  final Map<String, String> kubeconfig;
  /// The list of key value pairs representing additional properties of
  /// the cluster.
  final Map<String, String> labels;
  /// IP addresses of the master node of the cluster.
  final List<String> masterAddresses;
  /// The number of master nodes for the cluster.
  final int masterCount;
  /// The flavor for the master nodes.
  final String masterFlavor;
  /// Whether a load balancer is created for the master
  /// cluster nodes.
  final bool masterLbEnabled;
  /// See Argument Reference above.
  final String name;
  /// IP addresses of the node of the cluster.
  final List<String> nodeAddresses;
  /// The number of nodes for the cluster.
  final int nodeCount;
  /// The project of the cluster.
  final String projectId;
  /// See Argument Reference above.
  final String region;
  /// UUID of the Orchestration service stack.
  final String stackId;
  /// The time at which cluster was updated.
  final String updatedAt;
  /// The user of the cluster.
  final String userId;

  /// Creates a new [GetClusterResult].
  /// [apiAddress] COE API address.
  /// [clusterTemplateId] The UUID of the V1 Container Infra cluster template.
  /// [coeVersion] COE software version.
  /// [containerVersion] Required.
  /// [createTimeout] The timeout (in minutes) for creating the cluster.
  /// [createdAt] The time at which cluster was created.
  /// [discoveryUrl] The URL used for cluster node discovery.
  /// [dockerVolumeSize] The size (in GB) of the Docker volume.
  /// [fixedNetwork] The fixed network that is attached to the cluster.
  /// [fixedSubnet] The fixed subnet that is attached to the cluster.
  /// [flavor] The flavor for the nodes of the cluster.
  /// [floatingIpEnabled] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keypair] The name of the Compute service SSH keypair.
  /// [kubeconfig] The Kubernetes cluster's credentials
  /// [labels] The list of key value pairs representing additional properties of
  /// [masterAddresses] IP addresses of the master node of the cluster.
  /// [masterCount] The number of master nodes for the cluster.
  /// [masterFlavor] The flavor for the master nodes.
  /// [masterLbEnabled] Whether a load balancer is created for the master
  /// [name] See Argument Reference above.
  /// [nodeAddresses] IP addresses of the node of the cluster.
  /// [nodeCount] The number of nodes for the cluster.
  /// [projectId] The project of the cluster.
  /// [region] See Argument Reference above.
  /// [stackId] UUID of the Orchestration service stack.
  /// [updatedAt] The time at which cluster was updated.
  /// [userId] The user of the cluster.
  const GetClusterResult({
    required this.apiAddress,
    required this.clusterTemplateId,
    required this.coeVersion,
    required this.containerVersion,
    required this.createTimeout,
    required this.createdAt,
    required this.discoveryUrl,
    required this.dockerVolumeSize,
    required this.fixedNetwork,
    required this.fixedSubnet,
    required this.flavor,
    required this.floatingIpEnabled,
    required this.id,
    required this.keypair,
    required this.kubeconfig,
    required this.labels,
    required this.masterAddresses,
    required this.masterCount,
    required this.masterFlavor,
    required this.masterLbEnabled,
    required this.name,
    required this.nodeAddresses,
    required this.nodeCount,
    required this.projectId,
    required this.region,
    required this.stackId,
    required this.updatedAt,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiAddress': apiAddress,
      'clusterTemplateId': clusterTemplateId,
      'coeVersion': coeVersion,
      'containerVersion': containerVersion,
      'createTimeout': createTimeout,
      'createdAt': createdAt,
      'discoveryUrl': discoveryUrl,
      'dockerVolumeSize': dockerVolumeSize,
      'fixedNetwork': fixedNetwork,
      'fixedSubnet': fixedSubnet,
      'flavor': flavor,
      'floatingIpEnabled': floatingIpEnabled,
      'id': id,
      'keypair': keypair,
      'kubeconfig': kubeconfig,
      'labels': labels,
      'masterAddresses': masterAddresses,
      'masterCount': masterCount,
      'masterFlavor': masterFlavor,
      'masterLbEnabled': masterLbEnabled,
      'name': name,
      'nodeAddresses': nodeAddresses,
      'nodeCount': nodeCount,
      'projectId': projectId,
      'region': region,
      'stackId': stackId,
      'updatedAt': updatedAt,
      'userId': userId,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      apiAddress: map['apiAddress'] as String,
      clusterTemplateId: map['clusterTemplateId'] as String,
      coeVersion: map['coeVersion'] as String,
      containerVersion: map['containerVersion'] as String,
      createTimeout: map['createTimeout'] as int,
      createdAt: map['createdAt'] as String,
      discoveryUrl: map['discoveryUrl'] as String,
      dockerVolumeSize: map['dockerVolumeSize'] as int,
      fixedNetwork: map['fixedNetwork'] as String,
      fixedSubnet: map['fixedSubnet'] as String,
      flavor: map['flavor'] as String,
      floatingIpEnabled: map['floatingIpEnabled'] as bool,
      id: map['id'] as String,
      keypair: map['keypair'] as String,
      kubeconfig: (map['kubeconfig'] as Map).cast<String, String>(),
      labels: (map['labels'] as Map).cast<String, String>(),
      masterAddresses: (map['masterAddresses'] as List).cast<String>(),
      masterCount: map['masterCount'] as int,
      masterFlavor: map['masterFlavor'] as String,
      masterLbEnabled: map['masterLbEnabled'] as bool,
      name: map['name'] as String,
      nodeAddresses: (map['nodeAddresses'] as List).cast<String>(),
      nodeCount: map['nodeCount'] as int,
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      stackId: map['stackId'] as String,
      updatedAt: map['updatedAt'] as String,
      userId: map['userId'] as String,
    );
  }
}

