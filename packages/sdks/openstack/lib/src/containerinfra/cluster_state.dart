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
      apiAddress: (() {
        final guardedValue = map['apiAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterTemplateId: (() {
        final guardedValue = map['clusterTemplateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      coeVersion: (() {
        final guardedValue = map['coeVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      containerVersion: (() {
        final guardedValue = map['containerVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTimeout: (() {
        final guardedValue = map['createTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      createdAt: (() {
        final guardedValue = map['createdAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      discoveryUrl: (() {
        final guardedValue = map['discoveryUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dockerVolumeSize: (() {
        final guardedValue = map['dockerVolumeSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      fixedNetwork: (() {
        final guardedValue = map['fixedNetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fixedSubnet: (() {
        final guardedValue = map['fixedSubnet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      flavor: (() {
        final guardedValue = map['flavor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      floatingIpEnabled: (() {
        final guardedValue = map['floatingIpEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      keypair: (() {
        final guardedValue = map['keypair'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kubeconfig: (() {
        final guardedValue = map['kubeconfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      masterAddresses: (() {
        final guardedValue = map['masterAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      masterCount: (() {
        final guardedValue = map['masterCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      masterFlavor: (() {
        final guardedValue = map['masterFlavor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      masterLbEnabled: (() {
        final guardedValue = map['masterLbEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      mergeLabels: (() {
        final guardedValue = map['mergeLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeAddresses: (() {
        final guardedValue = map['nodeAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nodeCount: (() {
        final guardedValue = map['nodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      projectId: (() {
        final guardedValue = map['projectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stackId: (() {
        final guardedValue = map['stackId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updatedAt: (() {
        final guardedValue = map['updatedAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userId: (() {
        final guardedValue = map['userId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
