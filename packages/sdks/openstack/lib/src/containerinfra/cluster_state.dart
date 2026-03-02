// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  final pulumi.Input<String>? apiAddress;
  /// The UUID of the V1 Container Infra cluster
  /// template. Changing this creates a new cluster.
  final pulumi.Input<String>? clusterTemplateId;
  final pulumi.Input<String>? coeVersion;
  final pulumi.Input<String>? containerVersion;
  /// The timeout (in minutes) for creating the
  /// cluster. Changing this creates a new cluster.
  final pulumi.Input<int>? createTimeout;
  final pulumi.Input<String>? createdAt;
  /// The URL used for cluster node discovery.
  /// Changing this creates a new cluster.
  final pulumi.Input<String>? discoveryUrl;
  /// The size (in GB) of the Docker volume.
  /// Changing this creates a new cluster.
  final pulumi.Input<int>? dockerVolumeSize;
  /// The fixed network that will be attached to the
  /// cluster. Changing this creates a new cluster.
  final pulumi.Input<String>? fixedNetwork;
  /// The fixed subnet that will be attached to the
  /// cluster. Changing this creates a new cluster.
  final pulumi.Input<String>? fixedSubnet;
  /// The flavor for the nodes of the cluster. Can be set via
  /// the `OS_MAGNUM_FLAVOR` environment variable. Changing this creates a new
  /// cluster.
  final pulumi.Input<String>? flavor;
  /// Indicates whether floating IP should be
  /// created for every cluster node. Changing this creates a new cluster.
  final pulumi.Input<bool>? floatingIpEnabled;
  /// The name of the Compute service SSH keypair. Changing
  /// this creates a new cluster.
  final pulumi.Input<String>? keypair;
  final pulumi.Input<Map<String, String>>? kubeconfig;
  /// The list of key value pairs representing additional
  /// properties of the cluster. Changing this creates a new cluster.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<List<String>>? masterAddresses;
  /// The number of master nodes for the cluster.
  /// Changing this creates a new cluster.
  final pulumi.Input<int>? masterCount;
  /// The flavor for the master nodes. Can be set via
  /// the `OS_MAGNUM_MASTER_FLAVOR` environment variable. Changing this creates a
  /// new cluster.
  final pulumi.Input<String>? masterFlavor;
  /// Indicates whether to create a load balancer
  /// for the master nodes. Changing this creates a new cluster.
  final pulumi.Input<bool>? masterLbEnabled;
  /// Indicates whether the provided labels should be
  /// merged with cluster template labels. Changing this creates a new cluster.
  final pulumi.Input<bool>? mergeLabels;
  /// The name of the cluster. Changing this creates a new
  /// cluster.
  final pulumi.Input<String>? name;
  final pulumi.Input<List<String>>? nodeAddresses;
  /// The number of nodes for the cluster.
  final pulumi.Input<int>? nodeCount;
  /// The project of the cluster. Required if admin wants
  /// to create a cluster in another project. Changing this creates a new
  /// cluster.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V1 Container Infra
  /// client. A Container Infra client is needed to create a cluster. If omitted,
  /// the `region` argument of the provider is used. Changing this creates a new
  /// cluster.
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? stackId;
  final pulumi.Input<String>? updatedAt;
  /// The user of the cluster. Required if admin wants to
  /// create a cluster template for another user. Changing this creates a new
  /// cluster.
  final pulumi.Input<String>? userId;

  /// Creates a new [ClusterState].
  /// [apiAddress] Optional.
  /// [clusterTemplateId] The UUID of the V1 Container Infra cluster
  /// [coeVersion] Optional.
  /// [containerVersion] Optional.
  /// [createTimeout] The timeout (in minutes) for creating the
  /// [createdAt] Optional.
  /// [discoveryUrl] The URL used for cluster node discovery.
  /// [dockerVolumeSize] The size (in GB) of the Docker volume.
  /// [fixedNetwork] The fixed network that will be attached to the
  /// [fixedSubnet] The fixed subnet that will be attached to the
  /// [flavor] The flavor for the nodes of the cluster. Can be set via
  /// [floatingIpEnabled] Indicates whether floating IP should be
  /// [keypair] The name of the Compute service SSH keypair. Changing
  /// [kubeconfig] Optional.
  /// [labels] The list of key value pairs representing additional
  /// [masterAddresses] Optional.
  /// [masterCount] The number of master nodes for the cluster.
  /// [masterFlavor] The flavor for the master nodes. Can be set via
  /// [masterLbEnabled] Indicates whether to create a load balancer
  /// [mergeLabels] Indicates whether the provided labels should be
  /// [name] The name of the cluster. Changing this creates a new
  /// [nodeAddresses] Optional.
  /// [nodeCount] The number of nodes for the cluster.
  /// [projectId] The project of the cluster. Required if admin wants
  /// [region] The region in which to obtain the V1 Container Infra
  /// [stackId] Optional.
  /// [updatedAt] Optional.
  /// [userId] The user of the cluster. Required if admin wants to
  ClusterState({
    this.apiAddress,
    this.clusterTemplateId,
    this.coeVersion,
    this.containerVersion,
    this.createTimeout,
    this.createdAt,
    this.discoveryUrl,
    this.dockerVolumeSize,
    this.fixedNetwork,
    this.fixedSubnet,
    this.flavor,
    this.floatingIpEnabled,
    this.keypair,
    this.kubeconfig,
    this.labels,
    this.masterAddresses,
    this.masterCount,
    this.masterFlavor,
    this.masterLbEnabled,
    this.mergeLabels,
    this.name,
    this.nodeAddresses,
    this.nodeCount,
    this.projectId,
    this.region,
    this.stackId,
    this.updatedAt,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiAddress': ?apiAddress,
      'clusterTemplateId': ?clusterTemplateId,
      'coeVersion': ?coeVersion,
      'containerVersion': ?containerVersion,
      'createTimeout': ?createTimeout,
      'createdAt': ?createdAt,
      'discoveryUrl': ?discoveryUrl,
      'dockerVolumeSize': ?dockerVolumeSize,
      'fixedNetwork': ?fixedNetwork,
      'fixedSubnet': ?fixedSubnet,
      'flavor': ?flavor,
      'floatingIpEnabled': ?floatingIpEnabled,
      'keypair': ?keypair,
      'kubeconfig': ?kubeconfig,
      'labels': ?labels,
      'masterAddresses': ?masterAddresses,
      'masterCount': ?masterCount,
      'masterFlavor': ?masterFlavor,
      'masterLbEnabled': ?masterLbEnabled,
      'mergeLabels': ?mergeLabels,
      'name': ?name,
      'nodeAddresses': ?nodeAddresses,
      'nodeCount': ?nodeCount,
      'projectId': ?projectId,
      'region': ?region,
      'stackId': ?stackId,
      'updatedAt': ?updatedAt,
      'userId': ?userId,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      apiAddress: map['apiAddress'] == null ? null : (map['apiAddress'] as String).input(),
      clusterTemplateId: map['clusterTemplateId'] == null ? null : (map['clusterTemplateId'] as String).input(),
      coeVersion: map['coeVersion'] == null ? null : (map['coeVersion'] as String).input(),
      containerVersion: map['containerVersion'] == null ? null : (map['containerVersion'] as String).input(),
      createTimeout: map['createTimeout'] == null ? null : (map['createTimeout'] as int).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      discoveryUrl: map['discoveryUrl'] == null ? null : (map['discoveryUrl'] as String).input(),
      dockerVolumeSize: map['dockerVolumeSize'] == null ? null : (map['dockerVolumeSize'] as int).input(),
      fixedNetwork: map['fixedNetwork'] == null ? null : (map['fixedNetwork'] as String).input(),
      fixedSubnet: map['fixedSubnet'] == null ? null : (map['fixedSubnet'] as String).input(),
      flavor: map['flavor'] == null ? null : (map['flavor'] as String).input(),
      floatingIpEnabled: map['floatingIpEnabled'] == null ? null : (map['floatingIpEnabled'] as bool).input(),
      keypair: map['keypair'] == null ? null : (map['keypair'] as String).input(),
      kubeconfig: map['kubeconfig'] == null ? null : ((map['kubeconfig'] as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      masterAddresses: map['masterAddresses'] == null ? null : ((map['masterAddresses'] as List).cast<String>()).input(),
      masterCount: map['masterCount'] == null ? null : (map['masterCount'] as int).input(),
      masterFlavor: map['masterFlavor'] == null ? null : (map['masterFlavor'] as String).input(),
      masterLbEnabled: map['masterLbEnabled'] == null ? null : (map['masterLbEnabled'] as bool).input(),
      mergeLabels: map['mergeLabels'] == null ? null : (map['mergeLabels'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nodeAddresses: map['nodeAddresses'] == null ? null : ((map['nodeAddresses'] as List).cast<String>()).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount'] as int).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      stackId: map['stackId'] == null ? null : (map['stackId'] as String).input(),
      updatedAt: map['updatedAt'] == null ? null : (map['updatedAt'] as String).input(),
      userId: map['userId'] == null ? null : (map['userId'] as String).input(),
    );
  }
}

