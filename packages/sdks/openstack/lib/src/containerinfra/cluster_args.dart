// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerinfra_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_containerinfra_cluster_cluster_args_doc}
class ClusterArgs {
  /// The UUID of the V1 Container Infra cluster
  /// template. Changing this creates a new cluster.
  final pulumi.Input<String>? clusterTemplateId;
  /// The timeout (in minutes) for creating the
  /// cluster. Changing this creates a new cluster.
  final pulumi.Input<int>? createTimeout;
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
  /// The list of key value pairs representing additional
  /// properties of the cluster. Changing this creates a new cluster.
  final pulumi.Input<Map<String, String>>? labels;
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
  /// The number of nodes for the cluster.
  final pulumi.Input<int>? nodeCount;
  /// The region in which to obtain the V1 Container Infra
  /// client. A Container Infra client is needed to create a cluster. If omitted,
  /// the `region` argument of the provider is used. Changing this creates a new
  /// cluster.
  final pulumi.Input<String>? region;

  /// Creates a new [ClusterArgs].
  /// [clusterTemplateId] The UUID of the V1 Container Infra cluster
  /// [createTimeout] The timeout (in minutes) for creating the
  /// [discoveryUrl] The URL used for cluster node discovery.
  /// [dockerVolumeSize] The size (in GB) of the Docker volume.
  /// [fixedNetwork] The fixed network that will be attached to the
  /// [fixedSubnet] The fixed subnet that will be attached to the
  /// [flavor] The flavor for the nodes of the cluster. Can be set via
  /// [floatingIpEnabled] Indicates whether floating IP should be
  /// [keypair] The name of the Compute service SSH keypair. Changing
  /// [labels] The list of key value pairs representing additional
  /// [masterCount] The number of master nodes for the cluster.
  /// [masterFlavor] The flavor for the master nodes. Can be set via
  /// [masterLbEnabled] Indicates whether to create a load balancer
  /// [mergeLabels] Indicates whether the provided labels should be
  /// [name] The name of the cluster. Changing this creates a new
  /// [nodeCount] The number of nodes for the cluster.
  /// [region] The region in which to obtain the V1 Container Infra
  ClusterArgs({
    this.clusterTemplateId,
    this.createTimeout,
    this.discoveryUrl,
    this.dockerVolumeSize,
    this.fixedNetwork,
    this.fixedSubnet,
    this.flavor,
    this.floatingIpEnabled,
    this.keypair,
    this.labels,
    this.masterCount,
    this.masterFlavor,
    this.masterLbEnabled,
    this.mergeLabels,
    this.name,
    this.nodeCount,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterTemplateId': ?clusterTemplateId,
      'createTimeout': ?createTimeout,
      'discoveryUrl': ?discoveryUrl,
      'dockerVolumeSize': ?dockerVolumeSize,
      'fixedNetwork': ?fixedNetwork,
      'fixedSubnet': ?fixedSubnet,
      'flavor': ?flavor,
      'floatingIpEnabled': ?floatingIpEnabled,
      'keypair': ?keypair,
      'labels': ?labels,
      'masterCount': ?masterCount,
      'masterFlavor': ?masterFlavor,
      'masterLbEnabled': ?masterLbEnabled,
      'mergeLabels': ?mergeLabels,
      'name': ?name,
      'nodeCount': ?nodeCount,
      'region': ?region,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      clusterTemplateId: map['clusterTemplateId'] == null ? null : (map['clusterTemplateId']! as String).input(),
      createTimeout: map['createTimeout'] == null ? null : (map['createTimeout']! as int).input(),
      discoveryUrl: map['discoveryUrl'] == null ? null : (map['discoveryUrl']! as String).input(),
      dockerVolumeSize: map['dockerVolumeSize'] == null ? null : (map['dockerVolumeSize']! as int).input(),
      fixedNetwork: map['fixedNetwork'] == null ? null : (map['fixedNetwork']! as String).input(),
      fixedSubnet: map['fixedSubnet'] == null ? null : (map['fixedSubnet']! as String).input(),
      flavor: map['flavor'] == null ? null : (map['flavor']! as String).input(),
      floatingIpEnabled: map['floatingIpEnabled'] == null ? null : (map['floatingIpEnabled']! as bool).input(),
      keypair: map['keypair'] == null ? null : (map['keypair']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      masterCount: map['masterCount'] == null ? null : (map['masterCount']! as int).input(),
      masterFlavor: map['masterFlavor'] == null ? null : (map['masterFlavor']! as String).input(),
      masterLbEnabled: map['masterLbEnabled'] == null ? null : (map['masterLbEnabled']! as bool).input(),
      mergeLabels: map['mergeLabels'] == null ? null : (map['mergeLabels']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount']! as int).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

