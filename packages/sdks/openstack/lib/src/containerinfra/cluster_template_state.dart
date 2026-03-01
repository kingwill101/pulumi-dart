// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterTemplate resources.
class ClusterTemplateState {
  /// The API server port for the Container
  /// Orchestration Engine for this cluster template. Changing this updates the
  /// API server port of the existing cluster template.
  final pulumi.Input<int>? apiserverPort;
  /// The distro for the cluster (fedora-atomic,
  /// coreos, etc.). Changing this updates the cluster distro of the existing
  /// cluster template.
  final pulumi.Input<String>? clusterDistro;
  /// The Container Orchestration Engine for this cluster
  /// template. Changing this updates the engine of the existing cluster
  /// template.
  final pulumi.Input<String>? coe;
  final pulumi.Input<String>? createdAt;
  /// Address of the DNS nameserver that is used in
  /// nodes of the cluster. Changing this updates the DNS nameserver of the
  /// existing cluster template.
  final pulumi.Input<String>? dnsNameserver;
  /// Docker storage driver. Changing this
  /// updates the Docker storage driver of the existing cluster template.
  final pulumi.Input<String>? dockerStorageDriver;
  /// The size (in GB) of the Docker volume.
  /// Changing this updates the Docker volume size of the existing cluster
  /// template.
  final pulumi.Input<int>? dockerVolumeSize;
  /// The ID of the external network that will
  /// be used for the cluster. Changing this updates the external network ID of
  /// the existing cluster template.
  final pulumi.Input<String>? externalNetworkId;
  /// The fixed network that will be attached to the
  /// cluster. Changing this updates the fixed network of the existing cluster
  /// template.
  final pulumi.Input<String>? fixedNetwork;
  /// The fixed subnet that will be attached to the
  /// cluster. Changing this updates the fixed subnet of the existing cluster
  /// template.
  final pulumi.Input<String>? fixedSubnet;
  /// The flavor for the nodes of the cluster. Can be set via
  /// the `OS_MAGNUM_FLAVOR` environment variable. Changing this updates the
  /// flavor of the existing cluster template.
  final pulumi.Input<String>? flavor;
  /// Indicates whether created cluster should
  /// create floating IP for every node or not. Changing this updates the
  /// floating IP enabled attribute of the existing cluster template.
  final pulumi.Input<bool>? floatingIpEnabled;
  /// Indicates whether the ClusterTemplate is hidden or not.
  /// Changing this updates the hidden attribute of the existing cluster
  /// template.
  final pulumi.Input<bool>? hidden;
  /// The address of a proxy for receiving all HTTP
  /// requests and relay them. Changing this updates the HTTP proxy address of
  /// the existing cluster template.
  final pulumi.Input<String>? httpProxy;
  /// The address of a proxy for receiving all HTTPS
  /// requests and relay them. Changing this updates the HTTPS proxy address of
  /// the existing cluster template.
  final pulumi.Input<String>? httpsProxy;
  /// The reference to an image that is used for nodes of the
  /// cluster. Can be set via the `OS_MAGNUM_IMAGE` environment variable.
  /// Changing this updates the image attribute of the existing cluster template.
  final pulumi.Input<String>? image;
  /// The insecure registry URL for the cluster
  /// template. Changing this updates the insecure registry attribute of the
  /// existing cluster template.
  final pulumi.Input<String>? insecureRegistry;
  /// The name of the Compute service SSH keypair.
  /// Changing this updates the keypair of the existing cluster template.
  final pulumi.Input<String>? keypairId;
  /// The list of key value pairs representing additional
  /// properties of the cluster template. Changing this updates the labels of the
  /// existing cluster template.
  final pulumi.Input<Map<String, String>>? labels;
  /// The flavor for the master nodes. Can be set via
  /// the `OS_MAGNUM_MASTER_FLAVOR` environment variable. Changing this updates
  /// the master flavor of the existing cluster template.
  final pulumi.Input<String>? masterFlavor;
  /// Indicates whether created cluster should
  /// has a loadbalancer for master nodes or not. Changing this updates the
  /// attribute of the existing cluster template.
  final pulumi.Input<bool>? masterLbEnabled;
  /// The name of the cluster template. Changing this updates
  /// the name of the existing cluster template.
  final pulumi.Input<String>? name;
  /// The name of the driver for the container
  /// network. Changing this updates the network driver of the existing cluster
  /// template.
  final pulumi.Input<String>? networkDriver;
  /// A comma-separated list of IP addresses that shouldn't
  /// be used in the cluster. Changing this updates the no proxy list of the
  /// existing cluster template.
  final pulumi.Input<String>? noProxy;
  /// The project of the cluster template. Required if
  /// admin wants to create a cluster template in another project. Changing this
  /// creates a new cluster template.
  final pulumi.Input<String>? projectId;
  /// Indicates whether cluster template should be public.
  /// Changing this updates the public attribute of the existing cluster
  /// template.
  final pulumi.Input<bool>? public;
  /// The region in which to obtain the V1 Container Infra
  /// client. A Container Infra client is needed to create a cluster template. If
  /// omitted,the `region` argument of the provider is used. Changing this
  /// creates a new cluster template.
  final pulumi.Input<String>? region;
  /// Indicates whether Docker registry is enabled
  /// in the cluster. Changing this updates the registry enabled attribute of the
  /// existing cluster template.
  final pulumi.Input<bool>? registryEnabled;
  /// The server type for the cluster template. Changing
  /// this updates the server type of the existing cluster template.
  final pulumi.Input<String>? serverType;
  /// Indicates whether the TLS should be disabled in
  /// the cluster. Changing this updates the attribute of the existing cluster.
  final pulumi.Input<bool>? tlsDisabled;
  final pulumi.Input<String>? updatedAt;
  /// The user of the cluster template. Required if admin
  /// wants to create a cluster template for another user. Changing this creates
  /// a new cluster template.
  final pulumi.Input<String>? userId;
  /// The name of the driver that is used for the
  /// volumes of the cluster nodes. Changing this updates the volume driver of
  /// the existing cluster template.
  final pulumi.Input<String>? volumeDriver;

  /// Creates a new [ClusterTemplateState].
  /// [apiserverPort] The API server port for the Container
  /// [clusterDistro] The distro for the cluster (fedora-atomic,
  /// [coe] The Container Orchestration Engine for this cluster
  /// [createdAt] Optional.
  /// [dnsNameserver] Address of the DNS nameserver that is used in
  /// [dockerStorageDriver] Docker storage driver. Changing this
  /// [dockerVolumeSize] The size (in GB) of the Docker volume.
  /// [externalNetworkId] The ID of the external network that will
  /// [fixedNetwork] The fixed network that will be attached to the
  /// [fixedSubnet] The fixed subnet that will be attached to the
  /// [flavor] The flavor for the nodes of the cluster. Can be set via
  /// [floatingIpEnabled] Indicates whether created cluster should
  /// [hidden] Indicates whether the ClusterTemplate is hidden or not.
  /// [httpProxy] The address of a proxy for receiving all HTTP
  /// [httpsProxy] The address of a proxy for receiving all HTTPS
  /// [image] The reference to an image that is used for nodes of the
  /// [insecureRegistry] The insecure registry URL for the cluster
  /// [keypairId] The name of the Compute service SSH keypair.
  /// [labels] The list of key value pairs representing additional
  /// [masterFlavor] The flavor for the master nodes. Can be set via
  /// [masterLbEnabled] Indicates whether created cluster should
  /// [name] The name of the cluster template. Changing this updates
  /// [networkDriver] The name of the driver for the container
  /// [noProxy] A comma-separated list of IP addresses that shouldn't
  /// [projectId] The project of the cluster template. Required if
  /// [public] Indicates whether cluster template should be public.
  /// [region] The region in which to obtain the V1 Container Infra
  /// [registryEnabled] Indicates whether Docker registry is enabled
  /// [serverType] The server type for the cluster template. Changing
  /// [tlsDisabled] Indicates whether the TLS should be disabled in
  /// [updatedAt] Optional.
  /// [userId] The user of the cluster template. Required if admin
  /// [volumeDriver] The name of the driver that is used for the
  ClusterTemplateState({
    pulumi.Output<int>? apiserverPort,
    pulumi.Output<String>? clusterDistro,
    pulumi.Output<String>? coe,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? dnsNameserver,
    pulumi.Output<String>? dockerStorageDriver,
    pulumi.Output<int>? dockerVolumeSize,
    pulumi.Output<String>? externalNetworkId,
    pulumi.Output<String>? fixedNetwork,
    pulumi.Output<String>? fixedSubnet,
    pulumi.Output<String>? flavor,
    pulumi.Output<bool>? floatingIpEnabled,
    pulumi.Output<bool>? hidden,
    pulumi.Output<String>? httpProxy,
    pulumi.Output<String>? httpsProxy,
    pulumi.Output<String>? image,
    pulumi.Output<String>? insecureRegistry,
    pulumi.Output<String>? keypairId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? masterFlavor,
    pulumi.Output<bool>? masterLbEnabled,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkDriver,
    pulumi.Output<String>? noProxy,
    pulumi.Output<String>? projectId,
    pulumi.Output<bool>? public,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? registryEnabled,
    pulumi.Output<String>? serverType,
    pulumi.Output<bool>? tlsDisabled,
    pulumi.Output<String>? updatedAt,
    pulumi.Output<String>? userId,
    pulumi.Output<String>? volumeDriver,
  }) :
      apiserverPort = pulumi.Input.asOptionalInput<int>(apiserverPort),
      clusterDistro = pulumi.Input.asOptionalInput<String>(clusterDistro),
      coe = pulumi.Input.asOptionalInput<String>(coe),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      dnsNameserver = pulumi.Input.asOptionalInput<String>(dnsNameserver),
      dockerStorageDriver = pulumi.Input.asOptionalInput<String>(dockerStorageDriver),
      dockerVolumeSize = pulumi.Input.asOptionalInput<int>(dockerVolumeSize),
      externalNetworkId = pulumi.Input.asOptionalInput<String>(externalNetworkId),
      fixedNetwork = pulumi.Input.asOptionalInput<String>(fixedNetwork),
      fixedSubnet = pulumi.Input.asOptionalInput<String>(fixedSubnet),
      flavor = pulumi.Input.asOptionalInput<String>(flavor),
      floatingIpEnabled = pulumi.Input.asOptionalInput<bool>(floatingIpEnabled),
      hidden = pulumi.Input.asOptionalInput<bool>(hidden),
      httpProxy = pulumi.Input.asOptionalInput<String>(httpProxy),
      httpsProxy = pulumi.Input.asOptionalInput<String>(httpsProxy),
      image = pulumi.Input.asOptionalInput<String>(image),
      insecureRegistry = pulumi.Input.asOptionalInput<String>(insecureRegistry),
      keypairId = pulumi.Input.asOptionalInput<String>(keypairId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      masterFlavor = pulumi.Input.asOptionalInput<String>(masterFlavor),
      masterLbEnabled = pulumi.Input.asOptionalInput<bool>(masterLbEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkDriver = pulumi.Input.asOptionalInput<String>(networkDriver),
      noProxy = pulumi.Input.asOptionalInput<String>(noProxy),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      public = pulumi.Input.asOptionalInput<bool>(public),
      region = pulumi.Input.asOptionalInput<String>(region),
      registryEnabled = pulumi.Input.asOptionalInput<bool>(registryEnabled),
      serverType = pulumi.Input.asOptionalInput<String>(serverType),
      tlsDisabled = pulumi.Input.asOptionalInput<bool>(tlsDisabled),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt),
      userId = pulumi.Input.asOptionalInput<String>(userId),
      volumeDriver = pulumi.Input.asOptionalInput<String>(volumeDriver);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiserverPort': ?apiserverPort,
      'clusterDistro': ?clusterDistro,
      'coe': ?coe,
      'createdAt': ?createdAt,
      'dnsNameserver': ?dnsNameserver,
      'dockerStorageDriver': ?dockerStorageDriver,
      'dockerVolumeSize': ?dockerVolumeSize,
      'externalNetworkId': ?externalNetworkId,
      'fixedNetwork': ?fixedNetwork,
      'fixedSubnet': ?fixedSubnet,
      'flavor': ?flavor,
      'floatingIpEnabled': ?floatingIpEnabled,
      'hidden': ?hidden,
      'httpProxy': ?httpProxy,
      'httpsProxy': ?httpsProxy,
      'image': ?image,
      'insecureRegistry': ?insecureRegistry,
      'keypairId': ?keypairId,
      'labels': ?labels,
      'masterFlavor': ?masterFlavor,
      'masterLbEnabled': ?masterLbEnabled,
      'name': ?name,
      'networkDriver': ?networkDriver,
      'noProxy': ?noProxy,
      'projectId': ?projectId,
      'public': ?public,
      'region': ?region,
      'registryEnabled': ?registryEnabled,
      'serverType': ?serverType,
      'tlsDisabled': ?tlsDisabled,
      'updatedAt': ?updatedAt,
      'userId': ?userId,
      'volumeDriver': ?volumeDriver,
    };
  }

  factory ClusterTemplateState.fromMap(Map<String, dynamic> map) {
    return ClusterTemplateState(
      apiserverPort: map['apiserverPort'] == null ? null : pulumi.Output.create<int>(map['apiserverPort'] as int),
      clusterDistro: map['clusterDistro'] == null ? null : pulumi.Output.create<String>(map['clusterDistro'] as String),
      coe: map['coe'] == null ? null : pulumi.Output.create<String>(map['coe'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      dnsNameserver: map['dnsNameserver'] == null ? null : pulumi.Output.create<String>(map['dnsNameserver'] as String),
      dockerStorageDriver: map['dockerStorageDriver'] == null ? null : pulumi.Output.create<String>(map['dockerStorageDriver'] as String),
      dockerVolumeSize: map['dockerVolumeSize'] == null ? null : pulumi.Output.create<int>(map['dockerVolumeSize'] as int),
      externalNetworkId: map['externalNetworkId'] == null ? null : pulumi.Output.create<String>(map['externalNetworkId'] as String),
      fixedNetwork: map['fixedNetwork'] == null ? null : pulumi.Output.create<String>(map['fixedNetwork'] as String),
      fixedSubnet: map['fixedSubnet'] == null ? null : pulumi.Output.create<String>(map['fixedSubnet'] as String),
      flavor: map['flavor'] == null ? null : pulumi.Output.create<String>(map['flavor'] as String),
      floatingIpEnabled: map['floatingIpEnabled'] == null ? null : pulumi.Output.create<bool>(map['floatingIpEnabled'] as bool),
      hidden: map['hidden'] == null ? null : pulumi.Output.create<bool>(map['hidden'] as bool),
      httpProxy: map['httpProxy'] == null ? null : pulumi.Output.create<String>(map['httpProxy'] as String),
      httpsProxy: map['httpsProxy'] == null ? null : pulumi.Output.create<String>(map['httpsProxy'] as String),
      image: map['image'] == null ? null : pulumi.Output.create<String>(map['image'] as String),
      insecureRegistry: map['insecureRegistry'] == null ? null : pulumi.Output.create<String>(map['insecureRegistry'] as String),
      keypairId: map['keypairId'] == null ? null : pulumi.Output.create<String>(map['keypairId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      masterFlavor: map['masterFlavor'] == null ? null : pulumi.Output.create<String>(map['masterFlavor'] as String),
      masterLbEnabled: map['masterLbEnabled'] == null ? null : pulumi.Output.create<bool>(map['masterLbEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkDriver: map['networkDriver'] == null ? null : pulumi.Output.create<String>(map['networkDriver'] as String),
      noProxy: map['noProxy'] == null ? null : pulumi.Output.create<String>(map['noProxy'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      public: map['public'] == null ? null : pulumi.Output.create<bool>(map['public'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      registryEnabled: map['registryEnabled'] == null ? null : pulumi.Output.create<bool>(map['registryEnabled'] as bool),
      serverType: map['serverType'] == null ? null : pulumi.Output.create<String>(map['serverType'] as String),
      tlsDisabled: map['tlsDisabled'] == null ? null : pulumi.Output.create<bool>(map['tlsDisabled'] as bool),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
      volumeDriver: map['volumeDriver'] == null ? null : pulumi.Output.create<String>(map['volumeDriver'] as String),
    );
  }
}

