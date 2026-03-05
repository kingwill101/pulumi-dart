// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerinfra_cluster_template_cluster_template_args_doc}
/// The set of arguments for ClusterTemplate.
/// {@endtemplate}
/// {@macro pulumi_containerinfra_cluster_template_cluster_template_args_doc}
class ClusterTemplateArgs {
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
  final pulumi.Input<String> coe;
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
  /// The name of the driver that is used for the
  /// volumes of the cluster nodes. Changing this updates the volume driver of
  /// the existing cluster template.
  final pulumi.Input<String>? volumeDriver;

  /// Creates a new [ClusterTemplateArgs].
  /// [apiserverPort] The API server port for the Container
  /// [clusterDistro] The distro for the cluster (fedora-atomic,
  /// [coe] The Container Orchestration Engine for this cluster
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
  /// [public] Indicates whether cluster template should be public.
  /// [region] The region in which to obtain the V1 Container Infra
  /// [registryEnabled] Indicates whether Docker registry is enabled
  /// [serverType] The server type for the cluster template. Changing
  /// [tlsDisabled] Indicates whether the TLS should be disabled in
  /// [volumeDriver] The name of the driver that is used for the
  ClusterTemplateArgs({
    this.apiserverPort,
    this.clusterDistro,
    required this.coe,
    this.dnsNameserver,
    this.dockerStorageDriver,
    this.dockerVolumeSize,
    this.externalNetworkId,
    this.fixedNetwork,
    this.fixedSubnet,
    this.flavor,
    this.floatingIpEnabled,
    this.hidden,
    this.httpProxy,
    this.httpsProxy,
    this.image,
    this.insecureRegistry,
    this.keypairId,
    this.labels,
    this.masterFlavor,
    this.masterLbEnabled,
    this.name,
    this.networkDriver,
    this.noProxy,
    this.public,
    this.region,
    this.registryEnabled,
    this.serverType,
    this.tlsDisabled,
    this.volumeDriver,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiserverPort': ?apiserverPort,
      'clusterDistro': ?clusterDistro,
      'coe': coe,
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
      'public': ?public,
      'region': ?region,
      'registryEnabled': ?registryEnabled,
      'serverType': ?serverType,
      'tlsDisabled': ?tlsDisabled,
      'volumeDriver': ?volumeDriver,
    };
  }

  factory ClusterTemplateArgs.fromMap(Map<String, dynamic> map) {
    return ClusterTemplateArgs(
      apiserverPort: (() { final guardedValue = map['apiserverPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      clusterDistro: (() { final guardedValue = map['clusterDistro']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coe: pulumi.Input.fromValue(map['coe'] as String),
      dnsNameserver: (() { final guardedValue = map['dnsNameserver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dockerStorageDriver: (() { final guardedValue = map['dockerStorageDriver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dockerVolumeSize: (() { final guardedValue = map['dockerVolumeSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      externalNetworkId: (() { final guardedValue = map['externalNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fixedNetwork: (() { final guardedValue = map['fixedNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fixedSubnet: (() { final guardedValue = map['fixedSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flavor: (() { final guardedValue = map['flavor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      floatingIpEnabled: (() { final guardedValue = map['floatingIpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hidden: (() { final guardedValue = map['hidden']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpProxy: (() { final guardedValue = map['httpProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpsProxy: (() { final guardedValue = map['httpsProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      insecureRegistry: (() { final guardedValue = map['insecureRegistry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keypairId: (() { final guardedValue = map['keypairId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      masterFlavor: (() { final guardedValue = map['masterFlavor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterLbEnabled: (() { final guardedValue = map['masterLbEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkDriver: (() { final guardedValue = map['networkDriver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noProxy: (() { final guardedValue = map['noProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      public: (() { final guardedValue = map['public']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryEnabled: (() { final guardedValue = map['registryEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serverType: (() { final guardedValue = map['serverType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsDisabled: (() { final guardedValue = map['tlsDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      volumeDriver: (() { final guardedValue = map['volumeDriver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

