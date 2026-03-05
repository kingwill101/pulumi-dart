import 'package:pulumi/pulumi.dart' as pulumi;
import 'addons_config_response_container_v1beta1.dart';
import 'authenticator_groups_config_response_container_v1beta1.dart';
import 'autopilot_response_container_v1beta1.dart';
import 'binary_authorization_response_container_v1beta1.dart';
import 'cluster_autoscaling_response_container_v1beta1.dart';
import 'cluster_container_v1beta1_args.dart';
import 'cluster_get_kubeconfig_container_v1beta1_result.dart';
import 'cluster_telemetry_response.dart';
import 'confidential_nodes_response_container_v1beta1.dart';
import 'cost_management_config_response_container_v1beta1.dart';
import 'database_encryption_response_container_v1beta1.dart';
import 'enterprise_config_response_container_v1beta1.dart';
import 'fleet_response_container_v1beta1.dart';
import 'identity_service_config_response_container_v1beta1.dart';
import 'ipallocation_policy_response_container_v1beta1.dart';
import 'k8s_beta_apiconfig_response_container_v1beta1.dart';
import 'legacy_abac_response_container_v1beta1.dart';
import 'logging_config_response_container_v1beta1.dart';
import 'maintenance_policy_response_container_v1beta1.dart';
import 'master_auth_response_container_v1beta1.dart';
import 'master_authorized_networks_config_response_container_v1beta1.dart';
import 'max_pods_constraint_response_container_v1beta1.dart';
import 'mesh_certificates_response_container_v1beta1.dart';
import 'monitoring_config_response_container_v1beta1.dart';
import 'network_config_response_container_v1beta1.dart';
import 'network_policy_response_container_v1beta1.dart';
import 'node_config_response_container_v1beta1.dart';
import 'node_pool_auto_config_response_container_v1beta1.dart';
import 'node_pool_defaults_response_container_v1beta1.dart';
import 'notification_config_response_container_v1beta1.dart';
import 'parent_product_config_response_container_v1beta1.dart';
import 'pod_security_policy_config_response.dart';
import 'private_cluster_config_response_container_v1beta1.dart';
import 'protect_config_response.dart';
import 'release_channel_response_container_v1beta1.dart';
import 'resource_usage_export_config_response_container_v1beta1.dart';
import 'security_posture_config_response_container_v1beta1.dart';
import 'shielded_nodes_response_container_v1beta1.dart';
import 'tpu_config_response.dart';
import 'vertical_pod_autoscaling_response_container_v1beta1.dart';
import 'workload_altsconfig_response.dart';
import 'workload_certificates_response.dart';
import 'workload_identity_config_response_container_v1beta1.dart';

/// Creates a cluster, consisting of the specified number and type of Google Compute Engine instances. By default, the cluster is created in the project's [default network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks). One firewall is added for the cluster. After cluster creation, the Kubelet creates routes for each node to allow the containers on that node to communicate with all other instances in the cluster. Finally, an entry is added to the project's global metadata indicating which CIDR range the cluster is using.
class ClusterContainerV1beta1 extends pulumi.CustomResource {
  /// Configurations for the various addons available to run in the cluster.
  late final pulumi.Output<AddonsConfigResponseContainerV1beta1> addonsConfig;

  /// Configuration controlling RBAC group membership information.
  late final pulumi.Output<AuthenticatorGroupsConfigResponseContainerV1beta1>
  authenticatorGroupsConfig;

  /// Autopilot configuration for the cluster.
  late final pulumi.Output<AutopilotResponseContainerV1beta1> autopilot;

  /// Cluster-level autoscaling configuration.
  late final pulumi.Output<ClusterAutoscalingResponseContainerV1beta1>
  autoscaling;

  /// Configuration for Binary Authorization.
  late final pulumi.Output<BinaryAuthorizationResponseContainerV1beta1>
  binaryAuthorization;

  /// The IP address range of the container pods in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`). Leave blank to have one automatically chosen or specify a `/14` block in `10.0.0.0/8`.
  late final pulumi.Output<String> clusterIpv4Cidr;

  /// Telemetry integration for the cluster.
  late final pulumi.Output<ClusterTelemetryResponse> clusterTelemetry;

  /// Which conditions caused the current cluster state.
  late final pulumi.Output<List<Map<String, dynamic>>> conditions;

  /// Configuration of Confidential Nodes. All the nodes in the cluster will be Confidential VM once enabled.
  late final pulumi.Output<ConfidentialNodesResponseContainerV1beta1>
  confidentialNodes;

  /// Configuration for the fine-grained cost management feature.
  late final pulumi.Output<CostManagementConfigResponseContainerV1beta1>
  costManagementConfig;

  /// [Output only] The time the cluster was created, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  late final pulumi.Output<String> createTime;

  /// [Output only] The current software version of the master endpoint.
  late final pulumi.Output<String> currentMasterVersion;

  /// [Output only] The number of nodes currently in the cluster. Deprecated. Call Kubernetes API directly to retrieve node information.
  late final pulumi.Output<int> currentNodeCount;

  /// [Output only] Deprecated, use [NodePool.version](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters.nodePools) instead. The current version of the node software components. If they are currently at multiple versions because they're in the process of being upgraded, this reflects the minimum version of all nodes.
  late final pulumi.Output<String> currentNodeVersion;

  /// Configuration of etcd encryption.
  late final pulumi.Output<DatabaseEncryptionResponseContainerV1beta1>
  databaseEncryption;

  /// The default constraint on the maximum number of pods that can be run simultaneously on a node in the node pool of this cluster. Only honored if cluster created with IP Alias support.
  late final pulumi.Output<MaxPodsConstraintResponseContainerV1beta1>
  defaultMaxPodsConstraint;

  /// An optional description of this cluster.
  late final pulumi.Output<String> description;

  /// Kubernetes open source beta apis enabled on the cluster. Only beta apis.
  late final pulumi.Output<K8sBetaAPIConfigResponseContainerV1beta1>
  enableK8sBetaApis;

  /// Kubernetes alpha features are enabled on this cluster. This includes alpha API groups (e.g. v1beta1) and features that may not be production ready in the kubernetes version of the master and nodes. The cluster has no SLA for uptime and master/node upgrades are disabled. Alpha enabled clusters are automatically deleted thirty days after creation.
  late final pulumi.Output<bool> enableKubernetesAlpha;

  /// Enable the ability to use Cloud TPUs in this cluster. This field is deprecated, use tpu_config.enabled instead.
  late final pulumi.Output<bool> enableTpu;

  /// [Output only] The IP address of this cluster's master endpoint. The endpoint can be accessed from the internet at `https://username:password@endpoint/`. See the `masterAuth` property of this resource for username and password information.
  late final pulumi.Output<String> endpoint;

  /// GKE Enterprise Configuration.
  late final pulumi.Output<EnterpriseConfigResponseContainerV1beta1>
  enterpriseConfig;

  /// This checksum is computed by the server based on the value of cluster fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// [Output only] The time the cluster will be automatically deleted in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  late final pulumi.Output<String> expireTime;

  /// Fleet information for the cluster.
  late final pulumi.Output<FleetResponseContainerV1beta1> fleet;

  /// Configuration for Identity Service component.
  late final pulumi.Output<IdentityServiceConfigResponseContainerV1beta1>
  identityServiceConfig;

  /// The initial Kubernetes version for this cluster. Valid versions are those found in validMasterVersions returned by getServerConfig. The version can be upgraded over time; such upgrades are reflected in currentMasterVersion and currentNodeVersion. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "","-": picks the default Kubernetes version
  late final pulumi.Output<String> initialClusterVersion;

  /// The number of nodes to create in this cluster. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "node_config") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. This field is deprecated, use node_pool.initial_node_count instead.
  late final pulumi.Output<int> initialNodeCount;

  /// Deprecated. Use node_pools.instance_group_urls.
  late final pulumi.Output<List<String>> instanceGroupUrls;

  /// Configuration for cluster IP allocation.
  late final pulumi.Output<IPAllocationPolicyResponseContainerV1beta1>
  ipAllocationPolicy;

  /// The fingerprint of the set of labels for this cluster.
  late final pulumi.Output<String> labelFingerprint;

  /// Configuration for the legacy ABAC authorization mode.
  late final pulumi.Output<LegacyAbacResponseContainerV1beta1> legacyAbac;
  late final pulumi.Output<String> location;

  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This field provides a default value if [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) are not specified during node pool creation. Warning: changing cluster locations will update the [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) of all node pools and will result in nodes being added and/or removed.
  late final pulumi.Output<List<String>> locations;

  /// Logging configuration for the cluster.
  late final pulumi.Output<LoggingConfigResponseContainerV1beta1> loggingConfig;

  /// The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  late final pulumi.Output<String> loggingService;

  /// Configure the maintenance policy for this cluster.
  late final pulumi.Output<MaintenancePolicyResponseContainerV1beta1>
  maintenancePolicy;

  /// Configuration for master components.
  late final pulumi.Output<Map<String, dynamic>> master;

  /// The authentication information for accessing the master endpoint. If unspecified, the defaults are used: For clusters before v1.12, if master_auth is unspecified, `username` will be set to "admin", a random password will be generated, and a client certificate will be issued.
  late final pulumi.Output<MasterAuthResponseContainerV1beta1> masterAuth;

  /// The configuration options for master authorized networks feature.
  late final pulumi.Output<
    MasterAuthorizedNetworksConfigResponseContainerV1beta1
  >
  masterAuthorizedNetworksConfig;

  /// The IP prefix in CIDR notation to use for the hosted master network. This prefix will be used for assigning private IP addresses to the master or set of masters, as well as the ILB VIP. This field is deprecated, use private_cluster_config.master_ipv4_cidr_block instead.
  late final pulumi.Output<String> masterIpv4CidrBlock;

  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  late final pulumi.Output<MeshCertificatesResponseContainerV1beta1>
  meshCertificates;

  /// Monitoring configuration for the cluster.
  late final pulumi.Output<MonitoringConfigResponseContainerV1beta1>
  monitoringConfig;

  /// The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  late final pulumi.Output<String> monitoringService;

  /// The name of this cluster. The name must be unique within this project and location (e.g. zone or region), and can be up to 40 characters with the following restrictions: * Lowercase letters, numbers, and hyphens only. * Must start with a letter. * Must end with a number or a letter.
  late final pulumi.Output<String> name;

  /// The name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. If left unspecified, the `default` network will be used. On output this shows the network ID instead of the name.
  late final pulumi.Output<String> network;

  /// Configuration for cluster networking.
  late final pulumi.Output<NetworkConfigResponseContainerV1beta1> networkConfig;

  /// Configuration options for the NetworkPolicy feature.
  late final pulumi.Output<NetworkPolicyResponseContainerV1beta1> networkPolicy;

  /// Parameters used in creating the cluster's nodes. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "initial_node_count") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. For responses, this field will be populated with the node configuration of the first node pool. (For configuration of each node pool, see `node_pool.config`) If unspecified, the defaults are used. This field is deprecated, use node_pool.config instead.
  late final pulumi.Output<NodeConfigResponseContainerV1beta1> nodeConfig;

  /// [Output only] The size of the address space on each node for hosting containers. This is provisioned from within the `container_ipv4_cidr` range. This field will only be set when cluster is in route-based network mode.
  late final pulumi.Output<int> nodeIpv4CidrSize;

  /// Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  late final pulumi.Output<NodePoolAutoConfigResponseContainerV1beta1>
  nodePoolAutoConfig;

  /// Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object.
  late final pulumi.Output<NodePoolDefaultsResponseContainerV1beta1>
  nodePoolDefaults;

  /// The node pools associated with this cluster. This field should not be set if "node_config" or "initial_node_count" are specified.
  late final pulumi.Output<List<Map<String, dynamic>>> nodePools;

  /// Notification configuration of the cluster.
  late final pulumi.Output<NotificationConfigResponseContainerV1beta1>
  notificationConfig;

  /// The configuration of the parent product of the cluster. This field is used by Google internal products that are built on top of the GKE cluster and take the ownership of the cluster.
  late final pulumi.Output<ParentProductConfigResponseContainerV1beta1>
  parentProductConfig;

  /// Configuration for the PodSecurityPolicy feature.
  late final pulumi.Output<PodSecurityPolicyConfigResponse>
  podSecurityPolicyConfig;

  /// If this is a private cluster setup. Private clusters are clusters that, by default have no external IP addresses on the nodes and where nodes and the master communicate over private IP addresses. This field is deprecated, use private_cluster_config.enable_private_nodes instead.
  late final pulumi.Output<bool> privateCluster;

  /// Configuration for private cluster.
  late final pulumi.Output<PrivateClusterConfigResponseContainerV1beta1>
  privateClusterConfig;
  late final pulumi.Output<String> project;

  /// Deprecated: Use SecurityPostureConfig instead. Enable/Disable Protect API features for the cluster.
  late final pulumi.Output<ProtectConfigResponse> protectConfig;

  /// Release channel configuration. If left unspecified on cluster creation and a version is specified, the cluster is enrolled in the most mature release channel where the version is available (first checking STABLE, then REGULAR, and finally RAPID). Otherwise, if no release channel configuration and no version is specified, the cluster is enrolled in the REGULAR channel with its default version.
  late final pulumi.Output<ReleaseChannelResponseContainerV1beta1>
  releaseChannel;

  /// The resource labels for the cluster to use to annotate any related Google Compute Engine resources.
  late final pulumi.Output<Map<String, String>> resourceLabels;

  /// Configuration for exporting resource usages. Resource usage export is disabled when this config unspecified.
  late final pulumi.Output<ResourceUsageExportConfigResponseContainerV1beta1>
  resourceUsageExportConfig;

  /// Enable/Disable Security Posture API features for the cluster.
  late final pulumi.Output<SecurityPostureConfigResponseContainerV1beta1>
  securityPostureConfig;

  /// [Output only] Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// [Output only] The IP address range of the Kubernetes services in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `1.2.3.4/29`). Service addresses are typically put in the last `/16` from the container CIDR.
  late final pulumi.Output<String> servicesIpv4Cidr;

  /// Shielded Nodes configuration.
  late final pulumi.Output<ShieldedNodesResponseContainerV1beta1> shieldedNodes;

  /// [Output only] The current status of this cluster.
  late final pulumi.Output<String> status;

  /// [Output only] Deprecated. Use conditions instead. Additional information about the current status of this cluster, if available.
  late final pulumi.Output<String> statusMessage;

  /// The name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/subnetworks) to which the cluster is connected. On output this shows the subnetwork ID instead of the name.
  late final pulumi.Output<String> subnetwork;

  /// Configuration for Cloud TPU support;
  late final pulumi.Output<TpuConfigResponse> tpuConfig;

  /// [Output only] The IP address range of the Cloud TPUs in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `1.2.3.4/29`).
  late final pulumi.Output<String> tpuIpv4CidrBlock;

  /// Cluster-level Vertical Pod Autoscaling configuration.
  late final pulumi.Output<VerticalPodAutoscalingResponseContainerV1beta1>
  verticalPodAutoscaling;

  /// Configuration for direct-path (via ALTS) with workload identity.
  late final pulumi.Output<WorkloadALTSConfigResponse> workloadAltsConfig;

  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  late final pulumi.Output<WorkloadCertificatesResponse> workloadCertificates;

  /// Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
  late final pulumi.Output<WorkloadIdentityConfigResponseContainerV1beta1>
  workloadIdentityConfig;

  /// [Output only] The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field is deprecated, use location instead.
  late final pulumi.Output<String> zone;

  /// Creates a new [ClusterContainerV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterContainerV1beta1]. {@macro pulumi_container_v1beta1_cluster_container_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterContainerV1beta1(
    String name, {
    ClusterContainerV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:container/v1beta1:Cluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addonsConfig = registerOutput<AddonsConfigResponseContainerV1beta1>(
      'addonsConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AddonsConfigResponseContainerV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    authenticatorGroupsConfig =
        registerOutput<AuthenticatorGroupsConfigResponseContainerV1beta1>(
          'authenticatorGroupsConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return AuthenticatorGroupsConfigResponseContainerV1beta1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    autopilot = registerOutput<AutopilotResponseContainerV1beta1>(
      'autopilot',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AutopilotResponseContainerV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    autoscaling = registerOutput<ClusterAutoscalingResponseContainerV1beta1>(
      'autoscaling',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ClusterAutoscalingResponseContainerV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    binaryAuthorization =
        registerOutput<BinaryAuthorizationResponseContainerV1beta1>(
          'binaryAuthorization',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return BinaryAuthorizationResponseContainerV1beta1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    clusterIpv4Cidr = registerOutput<String>('clusterIpv4Cidr');
    clusterTelemetry = registerOutput<ClusterTelemetryResponse>(
      'clusterTelemetry',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ClusterTelemetryResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    conditions = registerOutput<List<Map<String, dynamic>>>('conditions');
    confidentialNodes =
        registerOutput<ConfidentialNodesResponseContainerV1beta1>(
          'confidentialNodes',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ConfidentialNodesResponseContainerV1beta1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    costManagementConfig =
        registerOutput<CostManagementConfigResponseContainerV1beta1>(
          'costManagementConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return CostManagementConfigResponseContainerV1beta1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    createTime = registerOutput<String>('createTime');
    currentMasterVersion = registerOutput<String>('currentMasterVersion');
    currentNodeCount = registerOutput<int>('currentNodeCount');
    currentNodeVersion = registerOutput<String>('currentNodeVersion');
    databaseEncryption =
        registerOutput<DatabaseEncryptionResponseContainerV1beta1>(
          'databaseEncryption',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return DatabaseEncryptionResponseContainerV1beta1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    defaultMaxPodsConstraint =
        registerOutput<MaxPodsConstraintResponseContainerV1beta1>(
          'defaultMaxPodsConstraint',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return MaxPodsConstraintResponseContainerV1beta1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    description = registerOutput<String>('description');
    enableK8sBetaApis =
        registerOutput<K8sBetaAPIConfigResponseContainerV1beta1>(
          'enableK8sBetaApis',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return K8sBetaAPIConfigResponseContainerV1beta1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    enableKubernetesAlpha = registerOutput<bool>('enableKubernetesAlpha');
    enableTpu = registerOutput<bool>('enableTpu');
    endpoint = registerOutput<String>('endpoint');
    enterpriseConfig = registerOutput<EnterpriseConfigResponseContainerV1beta1>(
      'enterpriseConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EnterpriseConfigResponseContainerV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    etag = registerOutput<String>('etag');
    expireTime = registerOutput<String>('expireTime');
    fleet = registerOutput<FleetResponseContainerV1beta1>(
      'fleet',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FleetResponseContainerV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    identityServiceConfig =
        registerOutput<IdentityServiceConfigResponseContainerV1beta1>(
          'identityServiceConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return IdentityServiceConfigResponseContainerV1beta1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    initialClusterVersion = registerOutput<String>('initialClusterVersion');
    initialNodeCount = registerOutput<int>('initialNodeCount');
    instanceGroupUrls = registerOutput<List<String>>('instanceGroupUrls');
    ipAllocationPolicy =
        registerOutput<IPAllocationPolicyResponseContainerV1beta1>(
          'ipAllocationPolicy',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return IPAllocationPolicyResponseContainerV1beta1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    labelFingerprint = registerOutput<String>('labelFingerprint');
    legacyAbac = registerOutput<LegacyAbacResponseContainerV1beta1>(
      'legacyAbac',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LegacyAbacResponseContainerV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    locations = registerOutput<List<String>>('locations');
    loggingConfig = registerOutput<LoggingConfigResponseContainerV1beta1>(
      'loggingConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LoggingConfigResponseContainerV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    loggingService = registerOutput<String>('loggingService');
    maintenancePolicy =
        registerOutput<MaintenancePolicyResponseContainerV1beta1>(
          'maintenancePolicy',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return MaintenancePolicyResponseContainerV1beta1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    master = registerOutput<Map<String, dynamic>>('master');
    masterAuth = registerOutput<MasterAuthResponseContainerV1beta1>(
      'masterAuth',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MasterAuthResponseContainerV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    masterAuthorizedNetworksConfig =
        registerOutput<MasterAuthorizedNetworksConfigResponseContainerV1beta1>(
          'masterAuthorizedNetworksConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return MasterAuthorizedNetworksConfigResponseContainerV1beta1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    masterIpv4CidrBlock = registerOutput<String>('masterIpv4CidrBlock');
    meshCertificates = registerOutput<MeshCertificatesResponseContainerV1beta1>(
      'meshCertificates',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MeshCertificatesResponseContainerV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    monitoringConfig = registerOutput<MonitoringConfigResponseContainerV1beta1>(
      'monitoringConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MonitoringConfigResponseContainerV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    monitoringService = registerOutput<String>('monitoringService');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    networkConfig = registerOutput<NetworkConfigResponseContainerV1beta1>(
      'networkConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NetworkConfigResponseContainerV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    networkPolicy = registerOutput<NetworkPolicyResponseContainerV1beta1>(
      'networkPolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NetworkPolicyResponseContainerV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    nodeConfig = registerOutput<NodeConfigResponseContainerV1beta1>(
      'nodeConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NodeConfigResponseContainerV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    nodeIpv4CidrSize = registerOutput<int>('nodeIpv4CidrSize');
    nodePoolAutoConfig =
        registerOutput<NodePoolAutoConfigResponseContainerV1beta1>(
          'nodePoolAutoConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return NodePoolAutoConfigResponseContainerV1beta1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    nodePoolDefaults = registerOutput<NodePoolDefaultsResponseContainerV1beta1>(
      'nodePoolDefaults',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NodePoolDefaultsResponseContainerV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    nodePools = registerOutput<List<Map<String, dynamic>>>('nodePools');
    notificationConfig =
        registerOutput<NotificationConfigResponseContainerV1beta1>(
          'notificationConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return NotificationConfigResponseContainerV1beta1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    parentProductConfig =
        registerOutput<ParentProductConfigResponseContainerV1beta1>(
          'parentProductConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ParentProductConfigResponseContainerV1beta1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    podSecurityPolicyConfig = registerOutput<PodSecurityPolicyConfigResponse>(
      'podSecurityPolicyConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PodSecurityPolicyConfigResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    privateCluster = registerOutput<bool>('privateCluster');
    privateClusterConfig =
        registerOutput<PrivateClusterConfigResponseContainerV1beta1>(
          'privateClusterConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return PrivateClusterConfigResponseContainerV1beta1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    project = registerOutput<String>('project');
    protectConfig = registerOutput<ProtectConfigResponse>(
      'protectConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ProtectConfigResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    releaseChannel = registerOutput<ReleaseChannelResponseContainerV1beta1>(
      'releaseChannel',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ReleaseChannelResponseContainerV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    resourceLabels = registerOutput<Map<String, String>>('resourceLabels');
    resourceUsageExportConfig =
        registerOutput<ResourceUsageExportConfigResponseContainerV1beta1>(
          'resourceUsageExportConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ResourceUsageExportConfigResponseContainerV1beta1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    securityPostureConfig =
        registerOutput<SecurityPostureConfigResponseContainerV1beta1>(
          'securityPostureConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return SecurityPostureConfigResponseContainerV1beta1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    selfLink = registerOutput<String>('selfLink');
    servicesIpv4Cidr = registerOutput<String>('servicesIpv4Cidr');
    shieldedNodes = registerOutput<ShieldedNodesResponseContainerV1beta1>(
      'shieldedNodes',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ShieldedNodesResponseContainerV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    subnetwork = registerOutput<String>('subnetwork');
    tpuConfig = registerOutput<TpuConfigResponse>(
      'tpuConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TpuConfigResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tpuIpv4CidrBlock = registerOutput<String>('tpuIpv4CidrBlock');
    verticalPodAutoscaling =
        registerOutput<VerticalPodAutoscalingResponseContainerV1beta1>(
          'verticalPodAutoscaling',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return VerticalPodAutoscalingResponseContainerV1beta1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    workloadAltsConfig = registerOutput<WorkloadALTSConfigResponse>(
      'workloadAltsConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WorkloadALTSConfigResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    workloadCertificates = registerOutput<WorkloadCertificatesResponse>(
      'workloadCertificates',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WorkloadCertificatesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    workloadIdentityConfig =
        registerOutput<WorkloadIdentityConfigResponseContainerV1beta1>(
          'workloadIdentityConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return WorkloadIdentityConfigResponseContainerV1beta1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
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
  Future<ClusterGetKubeconfigContainerV1beta1Result> getKubeconfig() async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'google-native:container/v1beta1:Cluster/getKubeconfig',
      const <String, dynamic>{},
      self: this,
    );
    return ClusterGetKubeconfigContainerV1beta1Result.fromMap(result);
  }
}
