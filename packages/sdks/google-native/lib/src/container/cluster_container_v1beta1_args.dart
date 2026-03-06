// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addons_config_container_v1beta1.dart';
import 'authenticator_groups_config_container_v1beta1.dart';
import 'autopilot_container_v1beta1.dart';
import 'binary_authorization_container_v1beta1.dart';
import 'cluster_autoscaling_container_v1beta1.dart';
import 'cluster_telemetry.dart';
import 'confidential_nodes_container_v1beta1.dart';
import 'cost_management_config_container_v1beta1.dart';
import 'database_encryption_container_v1beta1.dart';
import 'fleet_container_v1beta1.dart';
import 'identity_service_config_container_v1beta1.dart';
import 'ipallocation_policy_container_v1beta1.dart';
import 'k8s_beta_apiconfig_container_v1beta1.dart';
import 'legacy_abac_container_v1beta1.dart';
import 'logging_config_container_v1beta1.dart';
import 'maintenance_policy_container_v1beta1.dart';
import 'master_auth_container_v1beta1.dart';
import 'master_authorized_networks_config_container_v1beta1.dart';
import 'max_pods_constraint_container_v1beta1.dart';
import 'mesh_certificates_container_v1beta1.dart';
import 'monitoring_config_container_v1beta1.dart';
import 'network_config_container_v1beta1.dart';
import 'network_policy_container_v1beta1.dart';
import 'node_config_container_v1beta1.dart';
import 'node_pool_auto_config_container_v1beta1.dart';
import 'node_pool_defaults_container_v1beta1.dart';
import 'node_pool_resource.dart';
import 'notification_config_container_v1beta1.dart';
import 'parent_product_config_container_v1beta1.dart';
import 'pod_security_policy_config.dart';
import 'private_cluster_config_container_v1beta1.dart';
import 'protect_config.dart';
import 'release_channel_container_v1beta1.dart';
import 'resource_usage_export_config_container_v1beta1.dart';
import 'security_posture_config_container_v1beta1.dart';
import 'shielded_nodes_container_v1beta1.dart';
import 'status_condition_container_v1beta1.dart';
import 'tpu_config.dart';
import 'vertical_pod_autoscaling_container_v1beta1.dart';
import 'workload_altsconfig.dart';
import 'workload_certificates.dart';
import 'workload_identity_config_container_v1beta1.dart';

/// {@template pulumi_container_v1beta1_cluster_container_v1beta1_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_container_v1beta1_cluster_container_v1beta1_args_doc}
class ClusterContainerV1beta1Args {
  /// Configurations for the various addons available to run in the cluster.
  final pulumi.Input<AddonsConfigContainerV1beta1>? addonsConfig;
  /// Configuration controlling RBAC group membership information.
  final pulumi.Input<AuthenticatorGroupsConfigContainerV1beta1>? authenticatorGroupsConfig;
  /// Autopilot configuration for the cluster.
  final pulumi.Input<AutopilotContainerV1beta1>? autopilot;
  /// Cluster-level autoscaling configuration.
  final pulumi.Input<ClusterAutoscalingContainerV1beta1>? autoscaling;
  /// Configuration for Binary Authorization.
  final pulumi.Input<BinaryAuthorizationContainerV1beta1>? binaryAuthorization;
  /// The IP address range of the container pods in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`). Leave blank to have one automatically chosen or specify a `/14` block in `10.0.0.0/8`.
  final pulumi.Input<String>? clusterIpv4Cidr;
  /// Telemetry integration for the cluster.
  final pulumi.Input<ClusterTelemetry>? clusterTelemetry;
  /// Which conditions caused the current cluster state.
  final pulumi.Input<List<StatusConditionContainerV1beta1>>? conditions;
  /// Configuration of Confidential Nodes. All the nodes in the cluster will be Confidential VM once enabled.
  final pulumi.Input<ConfidentialNodesContainerV1beta1>? confidentialNodes;
  /// Configuration for the fine-grained cost management feature.
  final pulumi.Input<CostManagementConfigContainerV1beta1>? costManagementConfig;
  /// Configuration of etcd encryption.
  final pulumi.Input<DatabaseEncryptionContainerV1beta1>? databaseEncryption;
  /// The default constraint on the maximum number of pods that can be run simultaneously on a node in the node pool of this cluster. Only honored if cluster created with IP Alias support.
  final pulumi.Input<MaxPodsConstraintContainerV1beta1>? defaultMaxPodsConstraint;
  /// An optional description of this cluster.
  final pulumi.Input<String>? description;
  /// Kubernetes open source beta apis enabled on the cluster. Only beta apis.
  final pulumi.Input<K8sBetaAPIConfigContainerV1beta1>? enableK8sBetaApis;
  /// Kubernetes alpha features are enabled on this cluster. This includes alpha API groups (e.g. v1beta1) and features that may not be production ready in the kubernetes version of the master and nodes. The cluster has no SLA for uptime and master/node upgrades are disabled. Alpha enabled clusters are automatically deleted thirty days after creation.
  final pulumi.Input<bool>? enableKubernetesAlpha;
  /// Enable the ability to use Cloud TPUs in this cluster. This field is deprecated, use tpu_config.enabled instead.
  final pulumi.Input<bool>? enableTpu;
  /// GKE Enterprise Configuration.
  final pulumi.Input<Map<String, dynamic>>? enterpriseConfig;
  /// This checksum is computed by the server based on the value of cluster fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Fleet information for the cluster.
  final pulumi.Input<FleetContainerV1beta1>? fleet;
  /// Configuration for Identity Service component.
  final pulumi.Input<IdentityServiceConfigContainerV1beta1>? identityServiceConfig;
  /// The initial Kubernetes version for this cluster. Valid versions are those found in validMasterVersions returned by getServerConfig. The version can be upgraded over time; such upgrades are reflected in currentMasterVersion and currentNodeVersion. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "","-": picks the default Kubernetes version
  final pulumi.Input<String>? initialClusterVersion;
  /// The number of nodes to create in this cluster. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "node_config") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. This field is deprecated, use node_pool.initial_node_count instead.
  final pulumi.Input<int>? initialNodeCount;
  /// Deprecated. Use node_pools.instance_group_urls.
  final pulumi.Input<List<String>>? instanceGroupUrls;
  /// Configuration for cluster IP allocation.
  final pulumi.Input<IPAllocationPolicyContainerV1beta1>? ipAllocationPolicy;
  /// Configuration for the legacy ABAC authorization mode.
  final pulumi.Input<LegacyAbacContainerV1beta1>? legacyAbac;
  final pulumi.Input<String>? location;
  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This field provides a default value if [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) are not specified during node pool creation. Warning: changing cluster locations will update the [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) of all node pools and will result in nodes being added and/or removed.
  final pulumi.Input<List<String>>? locations;
  /// Logging configuration for the cluster.
  final pulumi.Input<LoggingConfigContainerV1beta1>? loggingConfig;
  /// The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  final pulumi.Input<String>? loggingService;
  /// Configure the maintenance policy for this cluster.
  final pulumi.Input<MaintenancePolicyContainerV1beta1>? maintenancePolicy;
  /// Configuration for master components.
  final pulumi.Input<Map<String, dynamic>>? master;
  /// The authentication information for accessing the master endpoint. If unspecified, the defaults are used: For clusters before v1.12, if master_auth is unspecified, `username` will be set to "admin", a random password will be generated, and a client certificate will be issued.
  final pulumi.Input<MasterAuthContainerV1beta1>? masterAuth;
  /// The configuration options for master authorized networks feature.
  final pulumi.Input<MasterAuthorizedNetworksConfigContainerV1beta1>? masterAuthorizedNetworksConfig;
  /// The IP prefix in CIDR notation to use for the hosted master network. This prefix will be used for assigning private IP addresses to the master or set of masters, as well as the ILB VIP. This field is deprecated, use private_cluster_config.master_ipv4_cidr_block instead.
  final pulumi.Input<String>? masterIpv4CidrBlock;
  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  final pulumi.Input<MeshCertificatesContainerV1beta1>? meshCertificates;
  /// Monitoring configuration for the cluster.
  final pulumi.Input<MonitoringConfigContainerV1beta1>? monitoringConfig;
  /// The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  final pulumi.Input<String>? monitoringService;
  /// The name of this cluster. The name must be unique within this project and location (e.g. zone or region), and can be up to 40 characters with the following restrictions: * Lowercase letters, numbers, and hyphens only. * Must start with a letter. * Must end with a number or a letter.
  final pulumi.Input<String>? name;
  /// The name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. If left unspecified, the `default` network will be used. On output this shows the network ID instead of the name.
  final pulumi.Input<String>? network;
  /// Configuration for cluster networking.
  final pulumi.Input<NetworkConfigContainerV1beta1>? networkConfig;
  /// Configuration options for the NetworkPolicy feature.
  final pulumi.Input<NetworkPolicyContainerV1beta1>? networkPolicy;
  /// Parameters used in creating the cluster's nodes. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "initial_node_count") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. For responses, this field will be populated with the node configuration of the first node pool. (For configuration of each node pool, see `node_pool.config`) If unspecified, the defaults are used. This field is deprecated, use node_pool.config instead.
  final pulumi.Input<NodeConfigContainerV1beta1>? nodeConfig;
  /// Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  final pulumi.Input<NodePoolAutoConfigContainerV1beta1>? nodePoolAutoConfig;
  /// Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object.
  final pulumi.Input<NodePoolDefaultsContainerV1beta1>? nodePoolDefaults;
  /// The node pools associated with this cluster. This field should not be set if "node_config" or "initial_node_count" are specified.
  final pulumi.Input<List<NodePoolResource>>? nodePools;
  /// Notification configuration of the cluster.
  final pulumi.Input<NotificationConfigContainerV1beta1>? notificationConfig;
  /// The parent (project and location) where the cluster will be created. Specified in the format `projects/*/locations/*`.
  final pulumi.Input<String>? parent;
  /// The configuration of the parent product of the cluster. This field is used by Google internal products that are built on top of the GKE cluster and take the ownership of the cluster.
  final pulumi.Input<ParentProductConfigContainerV1beta1>? parentProductConfig;
  /// Configuration for the PodSecurityPolicy feature.
  final pulumi.Input<PodSecurityPolicyConfig>? podSecurityPolicyConfig;
  /// If this is a private cluster setup. Private clusters are clusters that, by default have no external IP addresses on the nodes and where nodes and the master communicate over private IP addresses. This field is deprecated, use private_cluster_config.enable_private_nodes instead.
  final pulumi.Input<bool>? privateCluster;
  /// Configuration for private cluster.
  final pulumi.Input<PrivateClusterConfigContainerV1beta1>? privateClusterConfig;
  /// Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the parent field.
  final pulumi.Input<String>? project;
  /// Deprecated: Use SecurityPostureConfig instead. Enable/Disable Protect API features for the cluster.
  final pulumi.Input<ProtectConfig>? protectConfig;
  /// Release channel configuration. If left unspecified on cluster creation and a version is specified, the cluster is enrolled in the most mature release channel where the version is available (first checking STABLE, then REGULAR, and finally RAPID). Otherwise, if no release channel configuration and no version is specified, the cluster is enrolled in the REGULAR channel with its default version.
  final pulumi.Input<ReleaseChannelContainerV1beta1>? releaseChannel;
  /// The resource labels for the cluster to use to annotate any related Google Compute Engine resources.
  final pulumi.Input<Map<String, String>>? resourceLabels;
  /// Configuration for exporting resource usages. Resource usage export is disabled when this config unspecified.
  final pulumi.Input<ResourceUsageExportConfigContainerV1beta1>? resourceUsageExportConfig;
  /// Enable/Disable Security Posture API features for the cluster.
  final pulumi.Input<SecurityPostureConfigContainerV1beta1>? securityPostureConfig;
  /// Shielded Nodes configuration.
  final pulumi.Input<ShieldedNodesContainerV1beta1>? shieldedNodes;
  /// The name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/subnetworks) to which the cluster is connected. On output this shows the subnetwork ID instead of the name.
  final pulumi.Input<String>? subnetwork;
  /// Configuration for Cloud TPU support;
  final pulumi.Input<TpuConfig>? tpuConfig;
  /// Cluster-level Vertical Pod Autoscaling configuration.
  final pulumi.Input<VerticalPodAutoscalingContainerV1beta1>? verticalPodAutoscaling;
  /// Configuration for direct-path (via ALTS) with workload identity.
  final pulumi.Input<WorkloadALTSConfig>? workloadAltsConfig;
  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  final pulumi.Input<WorkloadCertificates>? workloadCertificates;
  /// Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
  final pulumi.Input<WorkloadIdentityConfigContainerV1beta1>? workloadIdentityConfig;
  /// Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the parent field.
  final pulumi.Input<String>? zone;

  /// Creates a new [ClusterContainerV1beta1Args].
  /// [addonsConfig] Configurations for the various addons available to run in the cluster.
  /// [authenticatorGroupsConfig] Configuration controlling RBAC group membership information.
  /// [autopilot] Autopilot configuration for the cluster.
  /// [autoscaling] Cluster-level autoscaling configuration.
  /// [binaryAuthorization] Configuration for Binary Authorization.
  /// [clusterIpv4Cidr] The IP address range of the container pods in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`). Leave blank to have one automatically chosen or specify a `/14` block in `10.0.0.0/8`.
  /// [clusterTelemetry] Telemetry integration for the cluster.
  /// [conditions] Which conditions caused the current cluster state.
  /// [confidentialNodes] Configuration of Confidential Nodes. All the nodes in the cluster will be Confidential VM once enabled.
  /// [costManagementConfig] Configuration for the fine-grained cost management feature.
  /// [databaseEncryption] Configuration of etcd encryption.
  /// [defaultMaxPodsConstraint] The default constraint on the maximum number of pods that can be run simultaneously on a node in the node pool of this cluster. Only honored if cluster created with IP Alias support.
  /// [description] An optional description of this cluster.
  /// [enableK8sBetaApis] Kubernetes open source beta apis enabled on the cluster. Only beta apis.
  /// [enableKubernetesAlpha] Kubernetes alpha features are enabled on this cluster. This includes alpha API groups (e.g. v1beta1) and features that may not be production ready in the kubernetes version of the master and nodes. The cluster has no SLA for uptime and master/node upgrades are disabled. Alpha enabled clusters are automatically deleted thirty days after creation.
  /// [enableTpu] Enable the ability to use Cloud TPUs in this cluster. This field is deprecated, use tpu_config.enabled instead.
  /// [enterpriseConfig] GKE Enterprise Configuration.
  /// [etag] This checksum is computed by the server based on the value of cluster fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  /// [fleet] Fleet information for the cluster.
  /// [identityServiceConfig] Configuration for Identity Service component.
  /// [initialClusterVersion] The initial Kubernetes version for this cluster. Valid versions are those found in validMasterVersions returned by getServerConfig. The version can be upgraded over time; such upgrades are reflected in currentMasterVersion and currentNodeVersion. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "","-": picks the default Kubernetes version
  /// [initialNodeCount] The number of nodes to create in this cluster. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "node_config") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. This field is deprecated, use node_pool.initial_node_count instead.
  /// [instanceGroupUrls] Deprecated. Use node_pools.instance_group_urls.
  /// [ipAllocationPolicy] Configuration for cluster IP allocation.
  /// [legacyAbac] Configuration for the legacy ABAC authorization mode.
  /// [location] Optional.
  /// [locations] The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This field provides a default value if [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) are not specified during node pool creation. Warning: changing cluster locations will update the [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) of all node pools and will result in nodes being added and/or removed.
  /// [loggingConfig] Logging configuration for the cluster.
  /// [loggingService] The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  /// [maintenancePolicy] Configure the maintenance policy for this cluster.
  /// [master] Configuration for master components.
  /// [masterAuth] The authentication information for accessing the master endpoint. If unspecified, the defaults are used: For clusters before v1.12, if master_auth is unspecified, `username` will be set to "admin", a random password will be generated, and a client certificate will be issued.
  /// [masterAuthorizedNetworksConfig] The configuration options for master authorized networks feature.
  /// [masterIpv4CidrBlock] The IP prefix in CIDR notation to use for the hosted master network. This prefix will be used for assigning private IP addresses to the master or set of masters, as well as the ILB VIP. This field is deprecated, use private_cluster_config.master_ipv4_cidr_block instead.
  /// [meshCertificates] Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  /// [monitoringConfig] Monitoring configuration for the cluster.
  /// [monitoringService] The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  /// [name] The name of this cluster. The name must be unique within this project and location (e.g. zone or region), and can be up to 40 characters with the following restrictions: * Lowercase letters, numbers, and hyphens only. * Must start with a letter. * Must end with a number or a letter.
  /// [network] The name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. If left unspecified, the `default` network will be used. On output this shows the network ID instead of the name.
  /// [networkConfig] Configuration for cluster networking.
  /// [networkPolicy] Configuration options for the NetworkPolicy feature.
  /// [nodeConfig] Parameters used in creating the cluster's nodes. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "initial_node_count") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. For responses, this field will be populated with the node configuration of the first node pool. (For configuration of each node pool, see `node_pool.config`) If unspecified, the defaults are used. This field is deprecated, use node_pool.config instead.
  /// [nodePoolAutoConfig] Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  /// [nodePoolDefaults] Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object.
  /// [nodePools] The node pools associated with this cluster. This field should not be set if "node_config" or "initial_node_count" are specified.
  /// [notificationConfig] Notification configuration of the cluster.
  /// [parent] The parent (project and location) where the cluster will be created. Specified in the format `projects/*/locations/*`.
  /// [parentProductConfig] The configuration of the parent product of the cluster. This field is used by Google internal products that are built on top of the GKE cluster and take the ownership of the cluster.
  /// [podSecurityPolicyConfig] Configuration for the PodSecurityPolicy feature.
  /// [privateCluster] If this is a private cluster setup. Private clusters are clusters that, by default have no external IP addresses on the nodes and where nodes and the master communicate over private IP addresses. This field is deprecated, use private_cluster_config.enable_private_nodes instead.
  /// [privateClusterConfig] Configuration for private cluster.
  /// [project] Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the parent field.
  /// [protectConfig] Deprecated: Use SecurityPostureConfig instead. Enable/Disable Protect API features for the cluster.
  /// [releaseChannel] Release channel configuration. If left unspecified on cluster creation and a version is specified, the cluster is enrolled in the most mature release channel where the version is available (first checking STABLE, then REGULAR, and finally RAPID). Otherwise, if no release channel configuration and no version is specified, the cluster is enrolled in the REGULAR channel with its default version.
  /// [resourceLabels] The resource labels for the cluster to use to annotate any related Google Compute Engine resources.
  /// [resourceUsageExportConfig] Configuration for exporting resource usages. Resource usage export is disabled when this config unspecified.
  /// [securityPostureConfig] Enable/Disable Security Posture API features for the cluster.
  /// [shieldedNodes] Shielded Nodes configuration.
  /// [subnetwork] The name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/subnetworks) to which the cluster is connected. On output this shows the subnetwork ID instead of the name.
  /// [tpuConfig] Configuration for Cloud TPU support;
  /// [verticalPodAutoscaling] Cluster-level Vertical Pod Autoscaling configuration.
  /// [workloadAltsConfig] Configuration for direct-path (via ALTS) with workload identity.
  /// [workloadCertificates] Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  /// [workloadIdentityConfig] Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
  /// [zone] Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the parent field.
  const ClusterContainerV1beta1Args({
    this.addonsConfig,
    this.authenticatorGroupsConfig,
    this.autopilot,
    this.autoscaling,
    this.binaryAuthorization,
    this.clusterIpv4Cidr,
    this.clusterTelemetry,
    this.conditions,
    this.confidentialNodes,
    this.costManagementConfig,
    this.databaseEncryption,
    this.defaultMaxPodsConstraint,
    this.description,
    this.enableK8sBetaApis,
    this.enableKubernetesAlpha,
    this.enableTpu,
    this.enterpriseConfig,
    this.etag,
    this.fleet,
    this.identityServiceConfig,
    this.initialClusterVersion,
    this.initialNodeCount,
    this.instanceGroupUrls,
    this.ipAllocationPolicy,
    this.legacyAbac,
    this.location,
    this.locations,
    this.loggingConfig,
    this.loggingService,
    this.maintenancePolicy,
    this.master,
    this.masterAuth,
    this.masterAuthorizedNetworksConfig,
    this.masterIpv4CidrBlock,
    this.meshCertificates,
    this.monitoringConfig,
    this.monitoringService,
    this.name,
    this.network,
    this.networkConfig,
    this.networkPolicy,
    this.nodeConfig,
    this.nodePoolAutoConfig,
    this.nodePoolDefaults,
    this.nodePools,
    this.notificationConfig,
    this.parent,
    this.parentProductConfig,
    this.podSecurityPolicyConfig,
    this.privateCluster,
    this.privateClusterConfig,
    this.project,
    this.protectConfig,
    this.releaseChannel,
    this.resourceLabels,
    this.resourceUsageExportConfig,
    this.securityPostureConfig,
    this.shieldedNodes,
    this.subnetwork,
    this.tpuConfig,
    this.verticalPodAutoscaling,
    this.workloadAltsConfig,
    this.workloadCertificates,
    this.workloadIdentityConfig,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonsConfig': ?pulumi.Input.mapOptionalInputValue<AddonsConfigContainerV1beta1, Map<String, dynamic>>(addonsConfig, (value) => value.toMap()),
      'authenticatorGroupsConfig': ?pulumi.Input.mapOptionalInputValue<AuthenticatorGroupsConfigContainerV1beta1, Map<String, dynamic>>(authenticatorGroupsConfig, (value) => value.toMap()),
      'autopilot': ?pulumi.Input.mapOptionalInputValue<AutopilotContainerV1beta1, Map<String, dynamic>>(autopilot, (value) => value.toMap()),
      'autoscaling': ?pulumi.Input.mapOptionalInputValue<ClusterAutoscalingContainerV1beta1, Map<String, dynamic>>(autoscaling, (value) => value.toMap()),
      'binaryAuthorization': ?pulumi.Input.mapOptionalInputValue<BinaryAuthorizationContainerV1beta1, Map<String, dynamic>>(binaryAuthorization, (value) => value.toMap()),
      'clusterIpv4Cidr': ?clusterIpv4Cidr,
      'clusterTelemetry': ?pulumi.Input.mapOptionalInputValue<ClusterTelemetry, Map<String, dynamic>>(clusterTelemetry, (value) => value.toMap()),
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<StatusConditionContainerV1beta1>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<StatusConditionContainerV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'confidentialNodes': ?pulumi.Input.mapOptionalInputValue<ConfidentialNodesContainerV1beta1, Map<String, dynamic>>(confidentialNodes, (value) => value.toMap()),
      'costManagementConfig': ?pulumi.Input.mapOptionalInputValue<CostManagementConfigContainerV1beta1, Map<String, dynamic>>(costManagementConfig, (value) => value.toMap()),
      'databaseEncryption': ?pulumi.Input.mapOptionalInputValue<DatabaseEncryptionContainerV1beta1, Map<String, dynamic>>(databaseEncryption, (value) => value.toMap()),
      'defaultMaxPodsConstraint': ?pulumi.Input.mapOptionalInputValue<MaxPodsConstraintContainerV1beta1, Map<String, dynamic>>(defaultMaxPodsConstraint, (value) => value.toMap()),
      'description': ?description,
      'enableK8sBetaApis': ?pulumi.Input.mapOptionalInputValue<K8sBetaAPIConfigContainerV1beta1, Map<String, dynamic>>(enableK8sBetaApis, (value) => value.toMap()),
      'enableKubernetesAlpha': ?enableKubernetesAlpha,
      'enableTpu': ?enableTpu,
      'enterpriseConfig': ?enterpriseConfig,
      'etag': ?etag,
      'fleet': ?pulumi.Input.mapOptionalInputValue<FleetContainerV1beta1, Map<String, dynamic>>(fleet, (value) => value.toMap()),
      'identityServiceConfig': ?pulumi.Input.mapOptionalInputValue<IdentityServiceConfigContainerV1beta1, Map<String, dynamic>>(identityServiceConfig, (value) => value.toMap()),
      'initialClusterVersion': ?initialClusterVersion,
      'initialNodeCount': ?initialNodeCount,
      'instanceGroupUrls': ?instanceGroupUrls,
      'ipAllocationPolicy': ?pulumi.Input.mapOptionalInputValue<IPAllocationPolicyContainerV1beta1, Map<String, dynamic>>(ipAllocationPolicy, (value) => value.toMap()),
      'legacyAbac': ?pulumi.Input.mapOptionalInputValue<LegacyAbacContainerV1beta1, Map<String, dynamic>>(legacyAbac, (value) => value.toMap()),
      'location': ?location,
      'locations': ?locations,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<LoggingConfigContainerV1beta1, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'loggingService': ?loggingService,
      'maintenancePolicy': ?pulumi.Input.mapOptionalInputValue<MaintenancePolicyContainerV1beta1, Map<String, dynamic>>(maintenancePolicy, (value) => value.toMap()),
      'master': ?master,
      'masterAuth': ?pulumi.Input.mapOptionalInputValue<MasterAuthContainerV1beta1, Map<String, dynamic>>(masterAuth, (value) => value.toMap()),
      'masterAuthorizedNetworksConfig': ?pulumi.Input.mapOptionalInputValue<MasterAuthorizedNetworksConfigContainerV1beta1, Map<String, dynamic>>(masterAuthorizedNetworksConfig, (value) => value.toMap()),
      'masterIpv4CidrBlock': ?masterIpv4CidrBlock,
      'meshCertificates': ?pulumi.Input.mapOptionalInputValue<MeshCertificatesContainerV1beta1, Map<String, dynamic>>(meshCertificates, (value) => value.toMap()),
      'monitoringConfig': ?pulumi.Input.mapOptionalInputValue<MonitoringConfigContainerV1beta1, Map<String, dynamic>>(monitoringConfig, (value) => value.toMap()),
      'monitoringService': ?monitoringService,
      'name': ?name,
      'network': ?network,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<NetworkConfigContainerV1beta1, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'networkPolicy': ?pulumi.Input.mapOptionalInputValue<NetworkPolicyContainerV1beta1, Map<String, dynamic>>(networkPolicy, (value) => value.toMap()),
      'nodeConfig': ?pulumi.Input.mapOptionalInputValue<NodeConfigContainerV1beta1, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'nodePoolAutoConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolAutoConfigContainerV1beta1, Map<String, dynamic>>(nodePoolAutoConfig, (value) => value.toMap()),
      'nodePoolDefaults': ?pulumi.Input.mapOptionalInputValue<NodePoolDefaultsContainerV1beta1, Map<String, dynamic>>(nodePoolDefaults, (value) => value.toMap()),
      'nodePools': ?nodePools,
      'notificationConfig': ?pulumi.Input.mapOptionalInputValue<NotificationConfigContainerV1beta1, Map<String, dynamic>>(notificationConfig, (value) => value.toMap()),
      'parent': ?parent,
      'parentProductConfig': ?pulumi.Input.mapOptionalInputValue<ParentProductConfigContainerV1beta1, Map<String, dynamic>>(parentProductConfig, (value) => value.toMap()),
      'podSecurityPolicyConfig': ?pulumi.Input.mapOptionalInputValue<PodSecurityPolicyConfig, Map<String, dynamic>>(podSecurityPolicyConfig, (value) => value.toMap()),
      'privateCluster': ?privateCluster,
      'privateClusterConfig': ?pulumi.Input.mapOptionalInputValue<PrivateClusterConfigContainerV1beta1, Map<String, dynamic>>(privateClusterConfig, (value) => value.toMap()),
      'project': ?project,
      'protectConfig': ?pulumi.Input.mapOptionalInputValue<ProtectConfig, Map<String, dynamic>>(protectConfig, (value) => value.toMap()),
      'releaseChannel': ?pulumi.Input.mapOptionalInputValue<ReleaseChannelContainerV1beta1, Map<String, dynamic>>(releaseChannel, (value) => value.toMap()),
      'resourceLabels': ?resourceLabels,
      'resourceUsageExportConfig': ?pulumi.Input.mapOptionalInputValue<ResourceUsageExportConfigContainerV1beta1, Map<String, dynamic>>(resourceUsageExportConfig, (value) => value.toMap()),
      'securityPostureConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPostureConfigContainerV1beta1, Map<String, dynamic>>(securityPostureConfig, (value) => value.toMap()),
      'shieldedNodes': ?pulumi.Input.mapOptionalInputValue<ShieldedNodesContainerV1beta1, Map<String, dynamic>>(shieldedNodes, (value) => value.toMap()),
      'subnetwork': ?subnetwork,
      'tpuConfig': ?pulumi.Input.mapOptionalInputValue<TpuConfig, Map<String, dynamic>>(tpuConfig, (value) => value.toMap()),
      'verticalPodAutoscaling': ?pulumi.Input.mapOptionalInputValue<VerticalPodAutoscalingContainerV1beta1, Map<String, dynamic>>(verticalPodAutoscaling, (value) => value.toMap()),
      'workloadAltsConfig': ?pulumi.Input.mapOptionalInputValue<WorkloadALTSConfig, Map<String, dynamic>>(workloadAltsConfig, (value) => value.toMap()),
      'workloadCertificates': ?pulumi.Input.mapOptionalInputValue<WorkloadCertificates, Map<String, dynamic>>(workloadCertificates, (value) => value.toMap()),
      'workloadIdentityConfig': ?pulumi.Input.mapOptionalInputValue<WorkloadIdentityConfigContainerV1beta1, Map<String, dynamic>>(workloadIdentityConfig, (value) => value.toMap()),
      'zone': ?zone,
    };
  }

  factory ClusterContainerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ClusterContainerV1beta1Args(
      addonsConfig: (() { final guardedValue = map['addonsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddonsConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authenticatorGroupsConfig: (() { final guardedValue = map['authenticatorGroupsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthenticatorGroupsConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autopilot: (() { final guardedValue = map['autopilot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutopilotContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoscaling: (() { final guardedValue = map['autoscaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAutoscalingContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      binaryAuthorization: (() { final guardedValue = map['binaryAuthorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BinaryAuthorizationContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterIpv4Cidr: (() { final guardedValue = map['clusterIpv4Cidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterTelemetry: (() { final guardedValue = map['clusterTelemetry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterTelemetry.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StatusConditionContainerV1beta1>(guardedValue, (value) => StatusConditionContainerV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      confidentialNodes: (() { final guardedValue = map['confidentialNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfidentialNodesContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      costManagementConfig: (() { final guardedValue = map['costManagementConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CostManagementConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databaseEncryption: (() { final guardedValue = map['databaseEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseEncryptionContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultMaxPodsConstraint: (() { final guardedValue = map['defaultMaxPodsConstraint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaxPodsConstraintContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableK8sBetaApis: (() { final guardedValue = map['enableK8sBetaApis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(K8sBetaAPIConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableKubernetesAlpha: (() { final guardedValue = map['enableKubernetesAlpha']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableTpu: (() { final guardedValue = map['enableTpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enterpriseConfig: (() { final guardedValue = map['enterpriseConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fleet: (() { final guardedValue = map['fleet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identityServiceConfig: (() { final guardedValue = map['identityServiceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityServiceConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initialClusterVersion: (() { final guardedValue = map['initialClusterVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialNodeCount: (() { final guardedValue = map['initialNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceGroupUrls: (() { final guardedValue = map['instanceGroupUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipAllocationPolicy: (() { final guardedValue = map['ipAllocationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IPAllocationPolicyContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      legacyAbac: (() { final guardedValue = map['legacyAbac']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LegacyAbacContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoggingConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loggingService: (() { final guardedValue = map['loggingService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenancePolicy: (() { final guardedValue = map['maintenancePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaintenancePolicyContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      master: (() { final guardedValue = map['master']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      masterAuth: (() { final guardedValue = map['masterAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MasterAuthContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      masterAuthorizedNetworksConfig: (() { final guardedValue = map['masterAuthorizedNetworksConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MasterAuthorizedNetworksConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      masterIpv4CidrBlock: (() { final guardedValue = map['masterIpv4CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      meshCertificates: (() { final guardedValue = map['meshCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MeshCertificatesContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoringConfig: (() { final guardedValue = map['monitoringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitoringConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoringService: (() { final guardedValue = map['monitoringService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkPolicy: (() { final guardedValue = map['networkPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPolicyContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeConfig: (() { final guardedValue = map['nodeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodePoolAutoConfig: (() { final guardedValue = map['nodePoolAutoConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolAutoConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodePoolDefaults: (() { final guardedValue = map['nodePoolDefaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolDefaultsContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodePools: (() { final guardedValue = map['nodePools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<NodePoolResource>()); })(),
      notificationConfig: (() { final guardedValue = map['notificationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotificationConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentProductConfig: (() { final guardedValue = map['parentProductConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParentProductConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podSecurityPolicyConfig: (() { final guardedValue = map['podSecurityPolicyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodSecurityPolicyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateCluster: (() { final guardedValue = map['privateCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateClusterConfig: (() { final guardedValue = map['privateClusterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateClusterConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectConfig: (() { final guardedValue = map['protectConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProtectConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      releaseChannel: (() { final guardedValue = map['releaseChannel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReleaseChannelContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceLabels: (() { final guardedValue = map['resourceLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceUsageExportConfig: (() { final guardedValue = map['resourceUsageExportConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceUsageExportConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityPostureConfig: (() { final guardedValue = map['securityPostureConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPostureConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shieldedNodes: (() { final guardedValue = map['shieldedNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShieldedNodesContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tpuConfig: (() { final guardedValue = map['tpuConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TpuConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      verticalPodAutoscaling: (() { final guardedValue = map['verticalPodAutoscaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VerticalPodAutoscalingContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadAltsConfig: (() { final guardedValue = map['workloadAltsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadALTSConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadCertificates: (() { final guardedValue = map['workloadCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadCertificates.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadIdentityConfig: (() { final guardedValue = map['workloadIdentityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadIdentityConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

