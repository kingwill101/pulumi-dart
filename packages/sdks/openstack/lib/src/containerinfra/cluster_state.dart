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
    pulumi.Output<String>? apiAddress,
    pulumi.Output<String>? clusterTemplateId,
    pulumi.Output<String>? coeVersion,
    pulumi.Output<String>? containerVersion,
    pulumi.Output<int>? createTimeout,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? discoveryUrl,
    pulumi.Output<int>? dockerVolumeSize,
    pulumi.Output<String>? fixedNetwork,
    pulumi.Output<String>? fixedSubnet,
    pulumi.Output<String>? flavor,
    pulumi.Output<bool>? floatingIpEnabled,
    pulumi.Output<String>? keypair,
    pulumi.Output<Map<String, String>>? kubeconfig,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<List<String>>? masterAddresses,
    pulumi.Output<int>? masterCount,
    pulumi.Output<String>? masterFlavor,
    pulumi.Output<bool>? masterLbEnabled,
    pulumi.Output<bool>? mergeLabels,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? nodeAddresses,
    pulumi.Output<int>? nodeCount,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? stackId,
    pulumi.Output<String>? updatedAt,
    pulumi.Output<String>? userId,
  }) :
      apiAddress = pulumi.Input.asOptionalInput<String>(apiAddress),
      clusterTemplateId = pulumi.Input.asOptionalInput<String>(clusterTemplateId),
      coeVersion = pulumi.Input.asOptionalInput<String>(coeVersion),
      containerVersion = pulumi.Input.asOptionalInput<String>(containerVersion),
      createTimeout = pulumi.Input.asOptionalInput<int>(createTimeout),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      discoveryUrl = pulumi.Input.asOptionalInput<String>(discoveryUrl),
      dockerVolumeSize = pulumi.Input.asOptionalInput<int>(dockerVolumeSize),
      fixedNetwork = pulumi.Input.asOptionalInput<String>(fixedNetwork),
      fixedSubnet = pulumi.Input.asOptionalInput<String>(fixedSubnet),
      flavor = pulumi.Input.asOptionalInput<String>(flavor),
      floatingIpEnabled = pulumi.Input.asOptionalInput<bool>(floatingIpEnabled),
      keypair = pulumi.Input.asOptionalInput<String>(keypair),
      kubeconfig = pulumi.Input.asOptionalInput<Map<String, String>>(kubeconfig),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      masterAddresses = pulumi.Input.asOptionalInput<List<String>>(masterAddresses),
      masterCount = pulumi.Input.asOptionalInput<int>(masterCount),
      masterFlavor = pulumi.Input.asOptionalInput<String>(masterFlavor),
      masterLbEnabled = pulumi.Input.asOptionalInput<bool>(masterLbEnabled),
      mergeLabels = pulumi.Input.asOptionalInput<bool>(mergeLabels),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeAddresses = pulumi.Input.asOptionalInput<List<String>>(nodeAddresses),
      nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      stackId = pulumi.Input.asOptionalInput<String>(stackId),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt),
      userId = pulumi.Input.asOptionalInput<String>(userId);

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
      apiAddress: map['apiAddress'] == null ? null : pulumi.Output.create<String>(map['apiAddress'] as String),
      clusterTemplateId: map['clusterTemplateId'] == null ? null : pulumi.Output.create<String>(map['clusterTemplateId'] as String),
      coeVersion: map['coeVersion'] == null ? null : pulumi.Output.create<String>(map['coeVersion'] as String),
      containerVersion: map['containerVersion'] == null ? null : pulumi.Output.create<String>(map['containerVersion'] as String),
      createTimeout: map['createTimeout'] == null ? null : pulumi.Output.create<int>(map['createTimeout'] as int),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      discoveryUrl: map['discoveryUrl'] == null ? null : pulumi.Output.create<String>(map['discoveryUrl'] as String),
      dockerVolumeSize: map['dockerVolumeSize'] == null ? null : pulumi.Output.create<int>(map['dockerVolumeSize'] as int),
      fixedNetwork: map['fixedNetwork'] == null ? null : pulumi.Output.create<String>(map['fixedNetwork'] as String),
      fixedSubnet: map['fixedSubnet'] == null ? null : pulumi.Output.create<String>(map['fixedSubnet'] as String),
      flavor: map['flavor'] == null ? null : pulumi.Output.create<String>(map['flavor'] as String),
      floatingIpEnabled: map['floatingIpEnabled'] == null ? null : pulumi.Output.create<bool>(map['floatingIpEnabled'] as bool),
      keypair: map['keypair'] == null ? null : pulumi.Output.create<String>(map['keypair'] as String),
      kubeconfig: map['kubeconfig'] == null ? null : pulumi.Output.create<Map<String, String>>((map['kubeconfig'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      masterAddresses: map['masterAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['masterAddresses'] as List).cast<String>()),
      masterCount: map['masterCount'] == null ? null : pulumi.Output.create<int>(map['masterCount'] as int),
      masterFlavor: map['masterFlavor'] == null ? null : pulumi.Output.create<String>(map['masterFlavor'] as String),
      masterLbEnabled: map['masterLbEnabled'] == null ? null : pulumi.Output.create<bool>(map['masterLbEnabled'] as bool),
      mergeLabels: map['mergeLabels'] == null ? null : pulumi.Output.create<bool>(map['mergeLabels'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeAddresses: map['nodeAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['nodeAddresses'] as List).cast<String>()),
      nodeCount: map['nodeCount'] == null ? null : pulumi.Output.create<int>(map['nodeCount'] as int),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      stackId: map['stackId'] == null ? null : pulumi.Output.create<String>(map['stackId'] as String),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

