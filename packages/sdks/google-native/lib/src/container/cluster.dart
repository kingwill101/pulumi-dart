import 'package:pulumi/pulumi.dart' as pulumi;
import 'addons_config_response.dart';
import 'authenticator_groups_config_response.dart';
import 'autopilot_response.dart';
import 'binary_authorization_response.dart';
import 'cluster_args.dart';
import 'cluster_autoscaling_response.dart';
import 'cluster_get_kubeconfig_result.dart';
import 'confidential_nodes_response.dart';
import 'cost_management_config_response.dart';
import 'database_encryption_response.dart';
import 'enterprise_config_response.dart';
import 'fleet_response.dart';
import 'identity_service_config_response.dart';
import 'ipallocation_policy_response.dart';
import 'k8s_beta_apiconfig_response.dart';
import 'legacy_abac_response.dart';
import 'logging_config_response.dart';
import 'maintenance_policy_response.dart';
import 'master_auth_response.dart';
import 'master_authorized_networks_config_response.dart';
import 'max_pods_constraint_response.dart';
import 'mesh_certificates_response.dart';
import 'monitoring_config_response.dart';
import 'network_config_response.dart';
import 'network_policy_response.dart';
import 'node_config_response.dart';
import 'node_pool_auto_config_response.dart';
import 'node_pool_defaults_response.dart';
import 'notification_config_response.dart';
import 'parent_product_config_response.dart';
import 'private_cluster_config_response.dart';
import 'release_channel_response.dart';
import 'resource_usage_export_config_response.dart';
import 'security_posture_config_response.dart';
import 'shielded_nodes_response.dart';
import 'vertical_pod_autoscaling_response.dart';
import 'workload_identity_config_response.dart';

/// Creates a cluster, consisting of the specified number and type of Google Compute Engine instances. By default, the cluster is created in the project's [default network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks). One firewall is added for the cluster. After cluster creation, the Kubelet creates routes for each node to allow the containers on that node to communicate with all other instances in the cluster. Finally, an entry is added to the project's global metadata indicating which CIDR range the cluster is using.
class Cluster extends pulumi.CustomResource {
  /// Configurations for the various addons available to run in the cluster.
  late final pulumi.Output<AddonsConfigResponse> addonsConfig;

  /// Configuration controlling RBAC group membership information.
  late final pulumi.Output<AuthenticatorGroupsConfigResponse>
  authenticatorGroupsConfig;

  /// Autopilot configuration for the cluster.
  late final pulumi.Output<AutopilotResponse> autopilot;

  /// Cluster-level autoscaling configuration.
  late final pulumi.Output<ClusterAutoscalingResponse> autoscaling;

  /// Configuration for Binary Authorization.
  late final pulumi.Output<BinaryAuthorizationResponse> binaryAuthorization;

  /// The IP address range of the container pods in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`). Leave blank to have one automatically chosen or specify a `/14` block in `10.0.0.0/8`.
  late final pulumi.Output<String> clusterIpv4Cidr;

  /// Which conditions caused the current cluster state.
  late final pulumi.Output<List<Map<String, dynamic>>> conditions;

  /// Configuration of Confidential Nodes. All the nodes in the cluster will be Confidential VM once enabled.
  late final pulumi.Output<ConfidentialNodesResponse> confidentialNodes;

  /// Configuration for the fine-grained cost management feature.
  late final pulumi.Output<CostManagementConfigResponse> costManagementConfig;

  /// [Output only] The time the cluster was created, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  late final pulumi.Output<String> createTime;

  /// [Output only] The current software version of the master endpoint.
  late final pulumi.Output<String> currentMasterVersion;

  /// [Output only] The number of nodes currently in the cluster. Deprecated. Call Kubernetes API directly to retrieve node information.
  late final pulumi.Output<int> currentNodeCount;

  /// [Output only] Deprecated, use [NodePools.version](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools) instead. The current version of the node software components. If they are currently at multiple versions because they're in the process of being upgraded, this reflects the minimum version of all nodes.
  late final pulumi.Output<String> currentNodeVersion;

  /// Configuration of etcd encryption.
  late final pulumi.Output<DatabaseEncryptionResponse> databaseEncryption;

  /// The default constraint on the maximum number of pods that can be run simultaneously on a node in the node pool of this cluster. Only honored if cluster created with IP Alias support.
  late final pulumi.Output<MaxPodsConstraintResponse> defaultMaxPodsConstraint;

  /// An optional description of this cluster.
  late final pulumi.Output<String> description;

  /// Beta APIs Config
  late final pulumi.Output<K8sBetaAPIConfigResponse> enableK8sBetaApis;

  /// Kubernetes alpha features are enabled on this cluster. This includes alpha API groups (e.g. v1alpha1) and features that may not be production ready in the kubernetes version of the master and nodes. The cluster has no SLA for uptime and master/node upgrades are disabled. Alpha enabled clusters are automatically deleted thirty days after creation.
  late final pulumi.Output<bool> enableKubernetesAlpha;

  /// Enable the ability to use Cloud TPUs in this cluster.
  late final pulumi.Output<bool> enableTpu;

  /// [Output only] The IP address of this cluster's master endpoint. The endpoint can be accessed from the internet at `https://username:password@endpoint/`. See the `masterAuth` property of this resource for username and password information.
  late final pulumi.Output<String> endpoint;

  /// GKE Enterprise Configuration.
  late final pulumi.Output<EnterpriseConfigResponse> enterpriseConfig;

  /// This checksum is computed by the server based on the value of cluster fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// [Output only] The time the cluster will be automatically deleted in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  late final pulumi.Output<String> expireTime;

  /// Fleet information for the cluster.
  late final pulumi.Output<FleetResponse> fleet;

  /// Configuration for Identity Service component.
  late final pulumi.Output<IdentityServiceConfigResponse> identityServiceConfig;

  /// The initial Kubernetes version for this cluster. Valid versions are those found in validMasterVersions returned by getServerConfig. The version can be upgraded over time; such upgrades are reflected in currentMasterVersion and currentNodeVersion. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "","-": picks the default Kubernetes version
  late final pulumi.Output<String> initialClusterVersion;

  /// The number of nodes to create in this cluster. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "node_config") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. This field is deprecated, use node_pool.initial_node_count instead.
  late final pulumi.Output<int> initialNodeCount;

  /// Deprecated. Use node_pools.instance_group_urls.
  late final pulumi.Output<List<String>> instanceGroupUrls;

  /// Configuration for cluster IP allocation.
  late final pulumi.Output<IPAllocationPolicyResponse> ipAllocationPolicy;

  /// The fingerprint of the set of labels for this cluster.
  late final pulumi.Output<String> labelFingerprint;

  /// Configuration for the legacy ABAC authorization mode.
  late final pulumi.Output<LegacyAbacResponse> legacyAbac;
  late final pulumi.Output<String> location;

  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This field provides a default value if [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) are not specified during node pool creation. Warning: changing cluster locations will update the [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) of all node pools and will result in nodes being added and/or removed.
  late final pulumi.Output<List<String>> locations;

  /// Logging configuration for the cluster.
  late final pulumi.Output<LoggingConfigResponse> loggingConfig;

  /// The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  late final pulumi.Output<String> loggingService;

  /// Configure the maintenance policy for this cluster.
  late final pulumi.Output<MaintenancePolicyResponse> maintenancePolicy;

  /// The authentication information for accessing the master endpoint. If unspecified, the defaults are used: For clusters before v1.12, if master_auth is unspecified, `username` will be set to "admin", a random password will be generated, and a client certificate will be issued.
  late final pulumi.Output<MasterAuthResponse> masterAuth;

  /// The configuration options for master authorized networks feature.
  late final pulumi.Output<MasterAuthorizedNetworksConfigResponse>
  masterAuthorizedNetworksConfig;

  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  late final pulumi.Output<MeshCertificatesResponse> meshCertificates;

  /// Monitoring configuration for the cluster.
  late final pulumi.Output<MonitoringConfigResponse> monitoringConfig;

  /// The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  late final pulumi.Output<String> monitoringService;

  /// The name of this cluster. The name must be unique within this project and location (e.g. zone or region), and can be up to 40 characters with the following restrictions: * Lowercase letters, numbers, and hyphens only. * Must start with a letter. * Must end with a number or a letter.
  late final pulumi.Output<String> name;

  /// The name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. If left unspecified, the `default` network will be used.
  late final pulumi.Output<String> network;

  /// Configuration for cluster networking.
  late final pulumi.Output<NetworkConfigResponse> networkConfig;

  /// Configuration options for the NetworkPolicy feature.
  late final pulumi.Output<NetworkPolicyResponse> networkPolicy;

  /// Parameters used in creating the cluster's nodes. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "initial_node_count") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. For responses, this field will be populated with the node configuration of the first node pool. (For configuration of each node pool, see `node_pool.config`) If unspecified, the defaults are used. This field is deprecated, use node_pool.config instead.
  late final pulumi.Output<NodeConfigResponse> nodeConfig;

  /// [Output only] The size of the address space on each node for hosting containers. This is provisioned from within the `container_ipv4_cidr` range. This field will only be set when cluster is in route-based network mode.
  late final pulumi.Output<int> nodeIpv4CidrSize;

  /// Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  late final pulumi.Output<NodePoolAutoConfigResponse> nodePoolAutoConfig;

  /// Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object.
  late final pulumi.Output<NodePoolDefaultsResponse> nodePoolDefaults;

  /// The node pools associated with this cluster. This field should not be set if "node_config" or "initial_node_count" are specified.
  late final pulumi.Output<List<Map<String, dynamic>>> nodePools;

  /// Notification configuration of the cluster.
  late final pulumi.Output<NotificationConfigResponse> notificationConfig;

  /// The configuration of the parent product of the cluster. This field is used by Google internal products that are built on top of the GKE cluster and take the ownership of the cluster.
  late final pulumi.Output<ParentProductConfigResponse> parentProductConfig;

  /// Configuration for private cluster.
  late final pulumi.Output<PrivateClusterConfigResponse> privateClusterConfig;
  late final pulumi.Output<String> project;

  /// Release channel configuration. If left unspecified on cluster creation and a version is specified, the cluster is enrolled in the most mature release channel where the version is available (first checking STABLE, then REGULAR, and finally RAPID). Otherwise, if no release channel configuration and no version is specified, the cluster is enrolled in the REGULAR channel with its default version.
  late final pulumi.Output<ReleaseChannelResponse> releaseChannel;

  /// The resource labels for the cluster to use to annotate any related Google Compute Engine resources.
  late final pulumi.Output<Map<String, String>> resourceLabels;

  /// Configuration for exporting resource usages. Resource usage export is disabled when this config is unspecified.
  late final pulumi.Output<ResourceUsageExportConfigResponse>
  resourceUsageExportConfig;

  /// Enable/Disable Security Posture API features for the cluster.
  late final pulumi.Output<SecurityPostureConfigResponse> securityPostureConfig;

  /// [Output only] Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// [Output only] The IP address range of the Kubernetes services in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `1.2.3.4/29`). Service addresses are typically put in the last `/16` from the container CIDR.
  late final pulumi.Output<String> servicesIpv4Cidr;

  /// Shielded Nodes configuration.
  late final pulumi.Output<ShieldedNodesResponse> shieldedNodes;

  /// [Output only] The current status of this cluster.
  late final pulumi.Output<String> status;

  /// [Output only] Deprecated. Use conditions instead. Additional information about the current status of this cluster, if available.
  late final pulumi.Output<String> statusMessage;

  /// The name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/subnetworks) to which the cluster is connected.
  late final pulumi.Output<String> subnetwork;

  /// [Output only] The IP address range of the Cloud TPUs in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `1.2.3.4/29`).
  late final pulumi.Output<String> tpuIpv4CidrBlock;

  /// Cluster-level Vertical Pod Autoscaling configuration.
  late final pulumi.Output<VerticalPodAutoscalingResponse>
  verticalPodAutoscaling;

  /// Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
  late final pulumi.Output<WorkloadIdentityConfigResponse>
  workloadIdentityConfig;

  /// [Output only] The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field is deprecated, use location instead.
  late final pulumi.Output<String> zone;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_container_v1_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:container/v1:Cluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addonsConfig = registerOutput<AddonsConfigResponse>('addonsConfig');
    authenticatorGroupsConfig =
        registerOutput<AuthenticatorGroupsConfigResponse>(
          'authenticatorGroupsConfig',
        );
    autopilot = registerOutput<AutopilotResponse>('autopilot');
    autoscaling = registerOutput<ClusterAutoscalingResponse>('autoscaling');
    binaryAuthorization = registerOutput<BinaryAuthorizationResponse>(
      'binaryAuthorization',
    );
    clusterIpv4Cidr = registerOutput<String>('clusterIpv4Cidr');
    conditions = registerOutput<List<Map<String, dynamic>>>('conditions');
    confidentialNodes = registerOutput<ConfidentialNodesResponse>(
      'confidentialNodes',
    );
    costManagementConfig = registerOutput<CostManagementConfigResponse>(
      'costManagementConfig',
    );
    createTime = registerOutput<String>('createTime');
    currentMasterVersion = registerOutput<String>('currentMasterVersion');
    currentNodeCount = registerOutput<int>('currentNodeCount');
    currentNodeVersion = registerOutput<String>('currentNodeVersion');
    databaseEncryption = registerOutput<DatabaseEncryptionResponse>(
      'databaseEncryption',
    );
    defaultMaxPodsConstraint = registerOutput<MaxPodsConstraintResponse>(
      'defaultMaxPodsConstraint',
    );
    description = registerOutput<String>('description');
    enableK8sBetaApis = registerOutput<K8sBetaAPIConfigResponse>(
      'enableK8sBetaApis',
    );
    enableKubernetesAlpha = registerOutput<bool>('enableKubernetesAlpha');
    enableTpu = registerOutput<bool>('enableTpu');
    endpoint = registerOutput<String>('endpoint');
    enterpriseConfig = registerOutput<EnterpriseConfigResponse>(
      'enterpriseConfig',
    );
    etag = registerOutput<String>('etag');
    expireTime = registerOutput<String>('expireTime');
    fleet = registerOutput<FleetResponse>('fleet');
    identityServiceConfig = registerOutput<IdentityServiceConfigResponse>(
      'identityServiceConfig',
    );
    initialClusterVersion = registerOutput<String>('initialClusterVersion');
    initialNodeCount = registerOutput<int>('initialNodeCount');
    instanceGroupUrls = registerOutput<List<String>>('instanceGroupUrls');
    ipAllocationPolicy = registerOutput<IPAllocationPolicyResponse>(
      'ipAllocationPolicy',
    );
    labelFingerprint = registerOutput<String>('labelFingerprint');
    legacyAbac = registerOutput<LegacyAbacResponse>('legacyAbac');
    location = registerOutput<String>('location');
    locations = registerOutput<List<String>>('locations');
    loggingConfig = registerOutput<LoggingConfigResponse>('loggingConfig');
    loggingService = registerOutput<String>('loggingService');
    maintenancePolicy = registerOutput<MaintenancePolicyResponse>(
      'maintenancePolicy',
    );
    masterAuth = registerOutput<MasterAuthResponse>('masterAuth');
    masterAuthorizedNetworksConfig =
        registerOutput<MasterAuthorizedNetworksConfigResponse>(
          'masterAuthorizedNetworksConfig',
        );
    meshCertificates = registerOutput<MeshCertificatesResponse>(
      'meshCertificates',
    );
    monitoringConfig = registerOutput<MonitoringConfigResponse>(
      'monitoringConfig',
    );
    monitoringService = registerOutput<String>('monitoringService');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    networkConfig = registerOutput<NetworkConfigResponse>('networkConfig');
    networkPolicy = registerOutput<NetworkPolicyResponse>('networkPolicy');
    nodeConfig = registerOutput<NodeConfigResponse>('nodeConfig');
    nodeIpv4CidrSize = registerOutput<int>('nodeIpv4CidrSize');
    nodePoolAutoConfig = registerOutput<NodePoolAutoConfigResponse>(
      'nodePoolAutoConfig',
    );
    nodePoolDefaults = registerOutput<NodePoolDefaultsResponse>(
      'nodePoolDefaults',
    );
    nodePools = registerOutput<List<Map<String, dynamic>>>('nodePools');
    notificationConfig = registerOutput<NotificationConfigResponse>(
      'notificationConfig',
    );
    parentProductConfig = registerOutput<ParentProductConfigResponse>(
      'parentProductConfig',
    );
    privateClusterConfig = registerOutput<PrivateClusterConfigResponse>(
      'privateClusterConfig',
    );
    project = registerOutput<String>('project');
    releaseChannel = registerOutput<ReleaseChannelResponse>('releaseChannel');
    resourceLabels = registerOutput<Map<String, String>>('resourceLabels');
    resourceUsageExportConfig =
        registerOutput<ResourceUsageExportConfigResponse>(
          'resourceUsageExportConfig',
        );
    securityPostureConfig = registerOutput<SecurityPostureConfigResponse>(
      'securityPostureConfig',
    );
    selfLink = registerOutput<String>('selfLink');
    servicesIpv4Cidr = registerOutput<String>('servicesIpv4Cidr');
    shieldedNodes = registerOutput<ShieldedNodesResponse>('shieldedNodes');
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    subnetwork = registerOutput<String>('subnetwork');
    tpuIpv4CidrBlock = registerOutput<String>('tpuIpv4CidrBlock');
    verticalPodAutoscaling = registerOutput<VerticalPodAutoscalingResponse>(
      'verticalPodAutoscaling',
    );
    workloadIdentityConfig = registerOutput<WorkloadIdentityConfigResponse>(
      'workloadIdentityConfig',
    );
    zone = registerOutput<String>('zone');
  }

  /// Generate a kubeconfig for cluster authentication.
  ///
  /// The kubeconfig generated is automatically stringified for ease of use with the pulumi/kubernetes provider.
  /// The kubeconfig uses the new `gke-gcloud-auth-plugin` authentication plugin as recommended by Google.
  ///
  /// See for more details:
  /// - https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
  Future<ClusterGetKubeconfigResult> getKubeconfig() async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'google-native:container/v1:Cluster/getKubeconfig',
      const <String, dynamic>{},
      self: this,
    );
    return ClusterGetKubeconfigResult.fromMap(result);
  }
}
