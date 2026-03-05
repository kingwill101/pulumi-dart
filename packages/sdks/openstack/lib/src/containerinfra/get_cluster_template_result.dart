// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getClusterTemplate.
class GetClusterTemplateResult {
  /// The API server port for the Container Orchestration
  /// Engine for this cluster template.
  final int apiserverPort;

  /// The distro for the cluster (fedora-atomic, coreos, etc.).
  final String clusterDistro;

  /// The Container Orchestration Engine for this cluster template.
  final String coe;

  /// The time at which cluster template was created.
  final String createdAt;

  /// Address of the DNS nameserver that is used in nodes of the
  /// cluster.
  final String dnsNameserver;

  /// Docker storage driver. Changing this updates the
  /// Docker storage driver of the existing cluster template.
  final String dockerStorageDriver;

  /// The size (in GB) of the Docker volume.
  final int dockerVolumeSize;

  /// The ID of the external network that will be used for
  /// the cluster.
  final String externalNetworkId;

  /// The fixed network that will be attached to the cluster.
  final String fixedNetwork;

  /// =The fixed subnet that will be attached to the cluster.
  final String fixedSubnet;

  /// The flavor for the nodes of the cluster.
  final String flavor;

  /// Indicates whether created cluster should create IP
  /// floating IP for every node or not.
  final bool floatingIpEnabled;

  /// Indicates whether the ClusterTemplate is hidden or not.
  final bool hidden;

  /// The address of a proxy for receiving all HTTP requests and
  /// relay them.
  final String httpProxy;

  /// The address of a proxy for receiving all HTTPS requests and
  /// relay them.
  final String httpsProxy;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The reference to an image that is used for nodes of the cluster.
  final String image;

  /// The insecure registry URL for the cluster template.
  final String insecureRegistry;

  /// The name of the Compute service SSH keypair.
  final String keypairId;

  /// The list of key value pairs representing additional properties
  /// of the cluster template.
  final Map<String, String> labels;

  /// The flavor for the master nodes.
  final String masterFlavor;

  /// Indicates whether created cluster should has a
  /// loadbalancer for master nodes or not.
  final bool masterLbEnabled;

  /// See Argument Reference above.
  final String name;

  /// The name of the driver for the container network.
  final String networkDriver;

  /// A comma-separated list of IP addresses that shouldn't be used in
  /// the cluster.
  final String noProxy;

  /// The project of the cluster template.
  final String projectId;

  /// Indicates whether cluster template should be public.
  final bool public;

  /// See Argument Reference above.
  final String region;

  /// Indicates whether Docker registry is enabled in the
  /// cluster.
  final bool registryEnabled;

  /// The server type for the cluster template.
  final String serverType;

  /// Indicates whether the TLS should be disabled in the cluster.
  final bool tlsDisabled;

  /// The time at which cluster template was updated.
  final String updatedAt;

  /// The user of the cluster template.
  final String userId;

  /// The name of the driver that is used for the volumes of the
  /// cluster nodes.
  final String volumeDriver;

  /// Creates a new [GetClusterTemplateResult].
  /// [apiserverPort] The API server port for the Container Orchestration
  /// [clusterDistro] The distro for the cluster (fedora-atomic, coreos, etc.).
  /// [coe] The Container Orchestration Engine for this cluster template.
  /// [createdAt] The time at which cluster template was created.
  /// [dnsNameserver] Address of the DNS nameserver that is used in nodes of the
  /// [dockerStorageDriver] Docker storage driver. Changing this updates the
  /// [dockerVolumeSize] The size (in GB) of the Docker volume.
  /// [externalNetworkId] The ID of the external network that will be used for
  /// [fixedNetwork] The fixed network that will be attached to the cluster.
  /// [fixedSubnet] =The fixed subnet that will be attached to the cluster.
  /// [flavor] The flavor for the nodes of the cluster.
  /// [floatingIpEnabled] Indicates whether created cluster should create IP
  /// [hidden] Indicates whether the ClusterTemplate is hidden or not.
  /// [httpProxy] The address of a proxy for receiving all HTTP requests and
  /// [httpsProxy] The address of a proxy for receiving all HTTPS requests and
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [image] The reference to an image that is used for nodes of the cluster.
  /// [insecureRegistry] The insecure registry URL for the cluster template.
  /// [keypairId] The name of the Compute service SSH keypair.
  /// [labels] The list of key value pairs representing additional properties
  /// [masterFlavor] The flavor for the master nodes.
  /// [masterLbEnabled] Indicates whether created cluster should has a
  /// [name] See Argument Reference above.
  /// [networkDriver] The name of the driver for the container network.
  /// [noProxy] A comma-separated list of IP addresses that shouldn't be used in
  /// [projectId] The project of the cluster template.
  /// [public] Indicates whether cluster template should be public.
  /// [region] See Argument Reference above.
  /// [registryEnabled] Indicates whether Docker registry is enabled in the
  /// [serverType] The server type for the cluster template.
  /// [tlsDisabled] Indicates whether the TLS should be disabled in the cluster.
  /// [updatedAt] The time at which cluster template was updated.
  /// [userId] The user of the cluster template.
  /// [volumeDriver] The name of the driver that is used for the volumes of the
  GetClusterTemplateResult({
    required this.apiserverPort,
    required this.clusterDistro,
    required this.coe,
    required this.createdAt,
    required this.dnsNameserver,
    required this.dockerStorageDriver,
    required this.dockerVolumeSize,
    required this.externalNetworkId,
    required this.fixedNetwork,
    required this.fixedSubnet,
    required this.flavor,
    required this.floatingIpEnabled,
    required this.hidden,
    required this.httpProxy,
    required this.httpsProxy,
    required this.id,
    required this.image,
    required this.insecureRegistry,
    required this.keypairId,
    required this.labels,
    required this.masterFlavor,
    required this.masterLbEnabled,
    required this.name,
    required this.networkDriver,
    required this.noProxy,
    required this.projectId,
    required this.public,
    required this.region,
    required this.registryEnabled,
    required this.serverType,
    required this.tlsDisabled,
    required this.updatedAt,
    required this.userId,
    required this.volumeDriver,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiserverPort': apiserverPort,
      'clusterDistro': clusterDistro,
      'coe': coe,
      'createdAt': createdAt,
      'dnsNameserver': dnsNameserver,
      'dockerStorageDriver': dockerStorageDriver,
      'dockerVolumeSize': dockerVolumeSize,
      'externalNetworkId': externalNetworkId,
      'fixedNetwork': fixedNetwork,
      'fixedSubnet': fixedSubnet,
      'flavor': flavor,
      'floatingIpEnabled': floatingIpEnabled,
      'hidden': hidden,
      'httpProxy': httpProxy,
      'httpsProxy': httpsProxy,
      'id': id,
      'image': image,
      'insecureRegistry': insecureRegistry,
      'keypairId': keypairId,
      'labels': labels,
      'masterFlavor': masterFlavor,
      'masterLbEnabled': masterLbEnabled,
      'name': name,
      'networkDriver': networkDriver,
      'noProxy': noProxy,
      'projectId': projectId,
      'public': public,
      'region': region,
      'registryEnabled': registryEnabled,
      'serverType': serverType,
      'tlsDisabled': tlsDisabled,
      'updatedAt': updatedAt,
      'userId': userId,
      'volumeDriver': volumeDriver,
    };
  }

  factory GetClusterTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetClusterTemplateResult(
      apiserverPort: map['apiserverPort'] as int,
      clusterDistro: map['clusterDistro'] as String,
      coe: map['coe'] as String,
      createdAt: map['createdAt'] as String,
      dnsNameserver: map['dnsNameserver'] as String,
      dockerStorageDriver: map['dockerStorageDriver'] as String,
      dockerVolumeSize: map['dockerVolumeSize'] as int,
      externalNetworkId: map['externalNetworkId'] as String,
      fixedNetwork: map['fixedNetwork'] as String,
      fixedSubnet: map['fixedSubnet'] as String,
      flavor: map['flavor'] as String,
      floatingIpEnabled: map['floatingIpEnabled'] as bool,
      hidden: map['hidden'] as bool,
      httpProxy: map['httpProxy'] as String,
      httpsProxy: map['httpsProxy'] as String,
      id: map['id'] as String,
      image: map['image'] as String,
      insecureRegistry: map['insecureRegistry'] as String,
      keypairId: map['keypairId'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      masterFlavor: map['masterFlavor'] as String,
      masterLbEnabled: map['masterLbEnabled'] as bool,
      name: map['name'] as String,
      networkDriver: map['networkDriver'] as String,
      noProxy: map['noProxy'] as String,
      projectId: map['projectId'] as String,
      public: map['public'] as bool,
      region: map['region'] as String,
      registryEnabled: map['registryEnabled'] as bool,
      serverType: map['serverType'] as String,
      tlsDisabled: map['tlsDisabled'] as bool,
      updatedAt: map['updatedAt'] as String,
      userId: map['userId'] as String,
      volumeDriver: map['volumeDriver'] as String,
    );
  }
}
