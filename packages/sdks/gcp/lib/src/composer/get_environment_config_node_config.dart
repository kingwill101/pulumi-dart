// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_config_node_config_ip_allocation_policy.dart';

class GetEnvironmentConfigNodeConfig {
  /// IPv4 cidr range that will be used by Composer internal components.
  final pulumi.Input<String> composerInternalIpv4CidrBlock;

  /// PSC (Private Service Connect) Network entry point. Customers can pre-create the Network Attachment and point Cloud Composer environment to use. It is possible to share network attachment among many environments, provided enough IP addresses are available.
  final pulumi.Input<String> composerNetworkAttachment;

  /// The disk size in GB used for node VMs. Minimum size is 20GB. If unspecified, defaults to 100GB. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<int> diskSizeGb;

  /// Deploys 'ip-masq-agent' daemon set in the GKE cluster and defines nonMasqueradeCIDRs equals to pod IP range so IP masquerading is used for all destination addresses, except between pods traffic. See: https://cloud.google.com/kubernetes-engine/docs/how-to/ip-masquerade-agent
  final pulumi.Input<bool> enableIpMasqAgent;

  /// Configuration for controlling how IPs are allocated in the GKE cluster. Cannot be updated.
  final pulumi.Input<List<GetEnvironmentConfigNodeConfigIpAllocationPolicy>>
  ipAllocationPolicies;

  /// The Compute Engine machine type used for cluster instances, specified as a name or relative resource name. For example: "projects/{project}/zones/{zone}/machineTypes/{machineType}". Must belong to the enclosing environment's project and region/zone. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<String> machineType;

  /// The maximum pods per node in the GKE cluster allocated during environment creation. Lowering this value reduces IP address consumption by the Cloud Composer Kubernetes cluster. This value can only be set during environment creation, and only if the environment is VPC-Native. The range of possible values is 8-110, and the default is 32. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<int> maxPodsPerNode;

  /// The Compute Engine machine type used for cluster instances, specified as a name or relative resource name. For example: "projects/{project}/zones/{zone}/machineTypes/{machineType}". Must belong to the enclosing environment's project and region/zone. The network must belong to the environment's project. If unspecified, the "default" network ID in the environment's project is used. If a Custom Subnet Network is provided, subnetwork must also be provided.
  final pulumi.Input<String> network;

  /// The set of Google API scopes to be made available on all node VMs. Cannot be updated. If empty, defaults to ["https://www.googleapis.com/auth/cloud-platform"]. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<List<String>> oauthScopes;

  /// The Google Cloud Platform Service Account to be used by the node VMs. If a service account is not specified, the "default" Compute Engine service account is used. Cannot be updated. If given, note that the service account must have roles/composer.worker for any GCP resources created under the Cloud Composer Environment.
  final pulumi.Input<String> serviceAccount;

  /// The Compute Engine subnetwork to be used for machine communications, specified as a self-link, relative resource name (e.g. "projects/{project}/regions/{region}/subnetworks/{subnetwork}"), or by name. If subnetwork is provided, network must also be provided and the subnetwork must belong to the enclosing environment's project and region.
  final pulumi.Input<String> subnetwork;

  /// The list of instance tags applied to all node VMs. Tags are used to identify valid sources or targets for network firewalls. Each tag within the list must comply with RFC1035. Cannot be updated.
  final pulumi.Input<List<String>> tags;

  /// The Compute Engine zone in which to deploy the VMs running the Apache Airflow software, specified as the zone name or relative resource name (e.g. "projects/{project}/zones/{zone}"). Must belong to the enclosing environment's project and region. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<String> zone;

  /// Creates a new [GetEnvironmentConfigNodeConfig].
  /// [composerInternalIpv4CidrBlock] IPv4 cidr range that will be used by Composer internal components.
  /// [composerNetworkAttachment] PSC (Private Service Connect) Network entry point. Customers can pre-create the Network Attachment and point Cloud Composer environment to use. It is possible to share network attachment among many environments, provided enough IP addresses are available.
  /// [diskSizeGb] The disk size in GB used for node VMs. Minimum size is 20GB. If unspecified, defaults to 100GB. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [enableIpMasqAgent] Deploys 'ip-masq-agent' daemon set in the GKE cluster and defines nonMasqueradeCIDRs equals to pod IP range so IP masquerading is used for all destination addresses, except between pods traffic. See: https://cloud.google.com/kubernetes-engine/docs/how-to/ip-masquerade-agent
  /// [ipAllocationPolicies] Configuration for controlling how IPs are allocated in the GKE cluster. Cannot be updated.
  /// [machineType] The Compute Engine machine type used for cluster instances, specified as a name or relative resource name. For example: "projects/{project}/zones/{zone}/machineTypes/{machineType}". Must belong to the enclosing environment's project and region/zone. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [maxPodsPerNode] The maximum pods per node in the GKE cluster allocated during environment creation. Lowering this value reduces IP address consumption by the Cloud Composer Kubernetes cluster. This value can only be set during environment creation, and only if the environment is VPC-Native. The range of possible values is 8-110, and the default is 32. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [network] The Compute Engine machine type used for cluster instances, specified as a name or relative resource name. For example: "projects/{project}/zones/{zone}/machineTypes/{machineType}". Must belong to the enclosing environment's project and region/zone. The network must belong to the environment's project. If unspecified, the "default" network ID in the environment's project is used. If a Custom Subnet Network is provided, subnetwork must also be provided.
  /// [oauthScopes] The set of Google API scopes to be made available on all node VMs. Cannot be updated. If empty, defaults to ["https://www.googleapis.com/auth/cloud-platform"]. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [serviceAccount] The Google Cloud Platform Service Account to be used by the node VMs. If a service account is not specified, the "default" Compute Engine service account is used. Cannot be updated. If given, note that the service account must have roles/composer.worker for any GCP resources created under the Cloud Composer Environment.
  /// [subnetwork] The Compute Engine subnetwork to be used for machine communications, specified as a self-link, relative resource name (e.g. "projects/{project}/regions/{region}/subnetworks/{subnetwork}"), or by name. If subnetwork is provided, network must also be provided and the subnetwork must belong to the enclosing environment's project and region.
  /// [tags] The list of instance tags applied to all node VMs. Tags are used to identify valid sources or targets for network firewalls. Each tag within the list must comply with RFC1035. Cannot be updated.
  /// [zone] The Compute Engine zone in which to deploy the VMs running the Apache Airflow software, specified as the zone name or relative resource name (e.g. "projects/{project}/zones/{zone}"). Must belong to the enclosing environment's project and region. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  GetEnvironmentConfigNodeConfig({
    required this.composerInternalIpv4CidrBlock,
    required this.composerNetworkAttachment,
    required this.diskSizeGb,
    required this.enableIpMasqAgent,
    required this.ipAllocationPolicies,
    required this.machineType,
    required this.maxPodsPerNode,
    required this.network,
    required this.oauthScopes,
    required this.serviceAccount,
    required this.subnetwork,
    required this.tags,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'composerInternalIpv4CidrBlock': composerInternalIpv4CidrBlock,
      'composerNetworkAttachment': composerNetworkAttachment,
      'diskSizeGb': diskSizeGb,
      'enableIpMasqAgent': enableIpMasqAgent,
      'ipAllocationPolicies':
          pulumi.Input.mapInputValue<
            List<GetEnvironmentConfigNodeConfigIpAllocationPolicy>,
            List<Map<String, dynamic>>
          >(
            ipAllocationPolicies,
            (value) =>
                pulumi.Input.encodeList<
                  GetEnvironmentConfigNodeConfigIpAllocationPolicy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'machineType': machineType,
      'maxPodsPerNode': maxPodsPerNode,
      'network': network,
      'oauthScopes': oauthScopes,
      'serviceAccount': serviceAccount,
      'subnetwork': subnetwork,
      'tags': tags,
      'zone': zone,
    };
  }

  factory GetEnvironmentConfigNodeConfig.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigNodeConfig(
      composerInternalIpv4CidrBlock: pulumi.Input.fromValue(
        map['composerInternalIpv4CidrBlock'] as String,
      ),
      composerNetworkAttachment: pulumi.Input.fromValue(
        map['composerNetworkAttachment'] as String,
      ),
      diskSizeGb: pulumi.Input.fromValue(map['diskSizeGb'] as int),
      enableIpMasqAgent: pulumi.Input.fromValue(
        map['enableIpMasqAgent'] as bool,
      ),
      ipAllocationPolicies: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetEnvironmentConfigNodeConfigIpAllocationPolicy>(
          map['ipAllocationPolicies']!,
          (value) => GetEnvironmentConfigNodeConfigIpAllocationPolicy.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      maxPodsPerNode: pulumi.Input.fromValue(map['maxPodsPerNode'] as int),
      network: pulumi.Input.fromValue(map['network'] as String),
      oauthScopes: pulumi.Input.fromValue(
        (map['oauthScopes'] as List).cast<String>(),
      ),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
