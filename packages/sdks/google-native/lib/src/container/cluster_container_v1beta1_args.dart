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
  ClusterContainerV1beta1Args({
    pulumi.Output<AddonsConfigContainerV1beta1>? addonsConfig,
    pulumi.Output<AuthenticatorGroupsConfigContainerV1beta1>? authenticatorGroupsConfig,
    pulumi.Output<AutopilotContainerV1beta1>? autopilot,
    pulumi.Output<ClusterAutoscalingContainerV1beta1>? autoscaling,
    pulumi.Output<BinaryAuthorizationContainerV1beta1>? binaryAuthorization,
    pulumi.Output<String>? clusterIpv4Cidr,
    pulumi.Output<ClusterTelemetry>? clusterTelemetry,
    pulumi.Output<List<StatusConditionContainerV1beta1>>? conditions,
    pulumi.Output<ConfidentialNodesContainerV1beta1>? confidentialNodes,
    pulumi.Output<CostManagementConfigContainerV1beta1>? costManagementConfig,
    pulumi.Output<DatabaseEncryptionContainerV1beta1>? databaseEncryption,
    pulumi.Output<MaxPodsConstraintContainerV1beta1>? defaultMaxPodsConstraint,
    pulumi.Output<String>? description,
    pulumi.Output<K8sBetaAPIConfigContainerV1beta1>? enableK8sBetaApis,
    pulumi.Output<bool>? enableKubernetesAlpha,
    pulumi.Output<bool>? enableTpu,
    pulumi.Output<Map<String, dynamic>>? enterpriseConfig,
    pulumi.Output<String>? etag,
    pulumi.Output<FleetContainerV1beta1>? fleet,
    pulumi.Output<IdentityServiceConfigContainerV1beta1>? identityServiceConfig,
    pulumi.Output<String>? initialClusterVersion,
    pulumi.Output<int>? initialNodeCount,
    pulumi.Output<List<String>>? instanceGroupUrls,
    pulumi.Output<IPAllocationPolicyContainerV1beta1>? ipAllocationPolicy,
    pulumi.Output<LegacyAbacContainerV1beta1>? legacyAbac,
    pulumi.Output<String>? location,
    pulumi.Output<List<String>>? locations,
    pulumi.Output<LoggingConfigContainerV1beta1>? loggingConfig,
    pulumi.Output<String>? loggingService,
    pulumi.Output<MaintenancePolicyContainerV1beta1>? maintenancePolicy,
    pulumi.Output<Map<String, dynamic>>? master,
    pulumi.Output<MasterAuthContainerV1beta1>? masterAuth,
    pulumi.Output<MasterAuthorizedNetworksConfigContainerV1beta1>? masterAuthorizedNetworksConfig,
    pulumi.Output<String>? masterIpv4CidrBlock,
    pulumi.Output<MeshCertificatesContainerV1beta1>? meshCertificates,
    pulumi.Output<MonitoringConfigContainerV1beta1>? monitoringConfig,
    pulumi.Output<String>? monitoringService,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<NetworkConfigContainerV1beta1>? networkConfig,
    pulumi.Output<NetworkPolicyContainerV1beta1>? networkPolicy,
    pulumi.Output<NodeConfigContainerV1beta1>? nodeConfig,
    pulumi.Output<NodePoolAutoConfigContainerV1beta1>? nodePoolAutoConfig,
    pulumi.Output<NodePoolDefaultsContainerV1beta1>? nodePoolDefaults,
    pulumi.Output<List<NodePoolResource>>? nodePools,
    pulumi.Output<NotificationConfigContainerV1beta1>? notificationConfig,
    pulumi.Output<String>? parent,
    pulumi.Output<ParentProductConfigContainerV1beta1>? parentProductConfig,
    pulumi.Output<PodSecurityPolicyConfig>? podSecurityPolicyConfig,
    pulumi.Output<bool>? privateCluster,
    pulumi.Output<PrivateClusterConfigContainerV1beta1>? privateClusterConfig,
    pulumi.Output<String>? project,
    pulumi.Output<ProtectConfig>? protectConfig,
    pulumi.Output<ReleaseChannelContainerV1beta1>? releaseChannel,
    pulumi.Output<Map<String, String>>? resourceLabels,
    pulumi.Output<ResourceUsageExportConfigContainerV1beta1>? resourceUsageExportConfig,
    pulumi.Output<SecurityPostureConfigContainerV1beta1>? securityPostureConfig,
    pulumi.Output<ShieldedNodesContainerV1beta1>? shieldedNodes,
    pulumi.Output<String>? subnetwork,
    pulumi.Output<TpuConfig>? tpuConfig,
    pulumi.Output<VerticalPodAutoscalingContainerV1beta1>? verticalPodAutoscaling,
    pulumi.Output<WorkloadALTSConfig>? workloadAltsConfig,
    pulumi.Output<WorkloadCertificates>? workloadCertificates,
    pulumi.Output<WorkloadIdentityConfigContainerV1beta1>? workloadIdentityConfig,
    pulumi.Output<String>? zone,
  }) :
      addonsConfig = pulumi.Input.asOptionalInput<AddonsConfigContainerV1beta1>(addonsConfig),
      authenticatorGroupsConfig = pulumi.Input.asOptionalInput<AuthenticatorGroupsConfigContainerV1beta1>(authenticatorGroupsConfig),
      autopilot = pulumi.Input.asOptionalInput<AutopilotContainerV1beta1>(autopilot),
      autoscaling = pulumi.Input.asOptionalInput<ClusterAutoscalingContainerV1beta1>(autoscaling),
      binaryAuthorization = pulumi.Input.asOptionalInput<BinaryAuthorizationContainerV1beta1>(binaryAuthorization),
      clusterIpv4Cidr = pulumi.Input.asOptionalInput<String>(clusterIpv4Cidr),
      clusterTelemetry = pulumi.Input.asOptionalInput<ClusterTelemetry>(clusterTelemetry),
      conditions = pulumi.Input.asOptionalInput<List<StatusConditionContainerV1beta1>>(conditions),
      confidentialNodes = pulumi.Input.asOptionalInput<ConfidentialNodesContainerV1beta1>(confidentialNodes),
      costManagementConfig = pulumi.Input.asOptionalInput<CostManagementConfigContainerV1beta1>(costManagementConfig),
      databaseEncryption = pulumi.Input.asOptionalInput<DatabaseEncryptionContainerV1beta1>(databaseEncryption),
      defaultMaxPodsConstraint = pulumi.Input.asOptionalInput<MaxPodsConstraintContainerV1beta1>(defaultMaxPodsConstraint),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableK8sBetaApis = pulumi.Input.asOptionalInput<K8sBetaAPIConfigContainerV1beta1>(enableK8sBetaApis),
      enableKubernetesAlpha = pulumi.Input.asOptionalInput<bool>(enableKubernetesAlpha),
      enableTpu = pulumi.Input.asOptionalInput<bool>(enableTpu),
      enterpriseConfig = pulumi.Input.asOptionalInput<Map<String, dynamic>>(enterpriseConfig),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      fleet = pulumi.Input.asOptionalInput<FleetContainerV1beta1>(fleet),
      identityServiceConfig = pulumi.Input.asOptionalInput<IdentityServiceConfigContainerV1beta1>(identityServiceConfig),
      initialClusterVersion = pulumi.Input.asOptionalInput<String>(initialClusterVersion),
      initialNodeCount = pulumi.Input.asOptionalInput<int>(initialNodeCount),
      instanceGroupUrls = pulumi.Input.asOptionalInput<List<String>>(instanceGroupUrls),
      ipAllocationPolicy = pulumi.Input.asOptionalInput<IPAllocationPolicyContainerV1beta1>(ipAllocationPolicy),
      legacyAbac = pulumi.Input.asOptionalInput<LegacyAbacContainerV1beta1>(legacyAbac),
      location = pulumi.Input.asOptionalInput<String>(location),
      locations = pulumi.Input.asOptionalInput<List<String>>(locations),
      loggingConfig = pulumi.Input.asOptionalInput<LoggingConfigContainerV1beta1>(loggingConfig),
      loggingService = pulumi.Input.asOptionalInput<String>(loggingService),
      maintenancePolicy = pulumi.Input.asOptionalInput<MaintenancePolicyContainerV1beta1>(maintenancePolicy),
      master = pulumi.Input.asOptionalInput<Map<String, dynamic>>(master),
      masterAuth = pulumi.Input.asOptionalInput<MasterAuthContainerV1beta1>(masterAuth),
      masterAuthorizedNetworksConfig = pulumi.Input.asOptionalInput<MasterAuthorizedNetworksConfigContainerV1beta1>(masterAuthorizedNetworksConfig),
      masterIpv4CidrBlock = pulumi.Input.asOptionalInput<String>(masterIpv4CidrBlock),
      meshCertificates = pulumi.Input.asOptionalInput<MeshCertificatesContainerV1beta1>(meshCertificates),
      monitoringConfig = pulumi.Input.asOptionalInput<MonitoringConfigContainerV1beta1>(monitoringConfig),
      monitoringService = pulumi.Input.asOptionalInput<String>(monitoringService),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      networkConfig = pulumi.Input.asOptionalInput<NetworkConfigContainerV1beta1>(networkConfig),
      networkPolicy = pulumi.Input.asOptionalInput<NetworkPolicyContainerV1beta1>(networkPolicy),
      nodeConfig = pulumi.Input.asOptionalInput<NodeConfigContainerV1beta1>(nodeConfig),
      nodePoolAutoConfig = pulumi.Input.asOptionalInput<NodePoolAutoConfigContainerV1beta1>(nodePoolAutoConfig),
      nodePoolDefaults = pulumi.Input.asOptionalInput<NodePoolDefaultsContainerV1beta1>(nodePoolDefaults),
      nodePools = pulumi.Input.asOptionalInput<List<NodePoolResource>>(nodePools),
      notificationConfig = pulumi.Input.asOptionalInput<NotificationConfigContainerV1beta1>(notificationConfig),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      parentProductConfig = pulumi.Input.asOptionalInput<ParentProductConfigContainerV1beta1>(parentProductConfig),
      podSecurityPolicyConfig = pulumi.Input.asOptionalInput<PodSecurityPolicyConfig>(podSecurityPolicyConfig),
      privateCluster = pulumi.Input.asOptionalInput<bool>(privateCluster),
      privateClusterConfig = pulumi.Input.asOptionalInput<PrivateClusterConfigContainerV1beta1>(privateClusterConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      protectConfig = pulumi.Input.asOptionalInput<ProtectConfig>(protectConfig),
      releaseChannel = pulumi.Input.asOptionalInput<ReleaseChannelContainerV1beta1>(releaseChannel),
      resourceLabels = pulumi.Input.asOptionalInput<Map<String, String>>(resourceLabels),
      resourceUsageExportConfig = pulumi.Input.asOptionalInput<ResourceUsageExportConfigContainerV1beta1>(resourceUsageExportConfig),
      securityPostureConfig = pulumi.Input.asOptionalInput<SecurityPostureConfigContainerV1beta1>(securityPostureConfig),
      shieldedNodes = pulumi.Input.asOptionalInput<ShieldedNodesContainerV1beta1>(shieldedNodes),
      subnetwork = pulumi.Input.asOptionalInput<String>(subnetwork),
      tpuConfig = pulumi.Input.asOptionalInput<TpuConfig>(tpuConfig),
      verticalPodAutoscaling = pulumi.Input.asOptionalInput<VerticalPodAutoscalingContainerV1beta1>(verticalPodAutoscaling),
      workloadAltsConfig = pulumi.Input.asOptionalInput<WorkloadALTSConfig>(workloadAltsConfig),
      workloadCertificates = pulumi.Input.asOptionalInput<WorkloadCertificates>(workloadCertificates),
      workloadIdentityConfig = pulumi.Input.asOptionalInput<WorkloadIdentityConfigContainerV1beta1>(workloadIdentityConfig),
      zone = pulumi.Input.asOptionalInput<String>(zone);

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
      addonsConfig: map['addonsConfig'] == null ? null : pulumi.Output.create<AddonsConfigContainerV1beta1>(AddonsConfigContainerV1beta1.fromMap((map['addonsConfig'] as Map).cast<String, dynamic>())),
      authenticatorGroupsConfig: map['authenticatorGroupsConfig'] == null ? null : pulumi.Output.create<AuthenticatorGroupsConfigContainerV1beta1>(AuthenticatorGroupsConfigContainerV1beta1.fromMap((map['authenticatorGroupsConfig'] as Map).cast<String, dynamic>())),
      autopilot: map['autopilot'] == null ? null : pulumi.Output.create<AutopilotContainerV1beta1>(AutopilotContainerV1beta1.fromMap((map['autopilot'] as Map).cast<String, dynamic>())),
      autoscaling: map['autoscaling'] == null ? null : pulumi.Output.create<ClusterAutoscalingContainerV1beta1>(ClusterAutoscalingContainerV1beta1.fromMap((map['autoscaling'] as Map).cast<String, dynamic>())),
      binaryAuthorization: map['binaryAuthorization'] == null ? null : pulumi.Output.create<BinaryAuthorizationContainerV1beta1>(BinaryAuthorizationContainerV1beta1.fromMap((map['binaryAuthorization'] as Map).cast<String, dynamic>())),
      clusterIpv4Cidr: map['clusterIpv4Cidr'] == null ? null : pulumi.Output.create<String>(map['clusterIpv4Cidr'] as String),
      clusterTelemetry: map['clusterTelemetry'] == null ? null : pulumi.Output.create<ClusterTelemetry>(ClusterTelemetry.fromMap((map['clusterTelemetry'] as Map).cast<String, dynamic>())),
      conditions: map['conditions'] == null ? null : pulumi.Output.create<List<StatusConditionContainerV1beta1>>(pulumi.Input.decodeList<StatusConditionContainerV1beta1>(map['conditions'], (value) => StatusConditionContainerV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
      confidentialNodes: map['confidentialNodes'] == null ? null : pulumi.Output.create<ConfidentialNodesContainerV1beta1>(ConfidentialNodesContainerV1beta1.fromMap((map['confidentialNodes'] as Map).cast<String, dynamic>())),
      costManagementConfig: map['costManagementConfig'] == null ? null : pulumi.Output.create<CostManagementConfigContainerV1beta1>(CostManagementConfigContainerV1beta1.fromMap((map['costManagementConfig'] as Map).cast<String, dynamic>())),
      databaseEncryption: map['databaseEncryption'] == null ? null : pulumi.Output.create<DatabaseEncryptionContainerV1beta1>(DatabaseEncryptionContainerV1beta1.fromMap((map['databaseEncryption'] as Map).cast<String, dynamic>())),
      defaultMaxPodsConstraint: map['defaultMaxPodsConstraint'] == null ? null : pulumi.Output.create<MaxPodsConstraintContainerV1beta1>(MaxPodsConstraintContainerV1beta1.fromMap((map['defaultMaxPodsConstraint'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enableK8sBetaApis: map['enableK8sBetaApis'] == null ? null : pulumi.Output.create<K8sBetaAPIConfigContainerV1beta1>(K8sBetaAPIConfigContainerV1beta1.fromMap((map['enableK8sBetaApis'] as Map).cast<String, dynamic>())),
      enableKubernetesAlpha: map['enableKubernetesAlpha'] == null ? null : pulumi.Output.create<bool>(map['enableKubernetesAlpha'] as bool),
      enableTpu: map['enableTpu'] == null ? null : pulumi.Output.create<bool>(map['enableTpu'] as bool),
      enterpriseConfig: map['enterpriseConfig'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['enterpriseConfig'] as Map).cast<String, dynamic>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      fleet: map['fleet'] == null ? null : pulumi.Output.create<FleetContainerV1beta1>(FleetContainerV1beta1.fromMap((map['fleet'] as Map).cast<String, dynamic>())),
      identityServiceConfig: map['identityServiceConfig'] == null ? null : pulumi.Output.create<IdentityServiceConfigContainerV1beta1>(IdentityServiceConfigContainerV1beta1.fromMap((map['identityServiceConfig'] as Map).cast<String, dynamic>())),
      initialClusterVersion: map['initialClusterVersion'] == null ? null : pulumi.Output.create<String>(map['initialClusterVersion'] as String),
      initialNodeCount: map['initialNodeCount'] == null ? null : pulumi.Output.create<int>(map['initialNodeCount'] as int),
      instanceGroupUrls: map['instanceGroupUrls'] == null ? null : pulumi.Output.create<List<String>>((map['instanceGroupUrls'] as List).cast<String>()),
      ipAllocationPolicy: map['ipAllocationPolicy'] == null ? null : pulumi.Output.create<IPAllocationPolicyContainerV1beta1>(IPAllocationPolicyContainerV1beta1.fromMap((map['ipAllocationPolicy'] as Map).cast<String, dynamic>())),
      legacyAbac: map['legacyAbac'] == null ? null : pulumi.Output.create<LegacyAbacContainerV1beta1>(LegacyAbacContainerV1beta1.fromMap((map['legacyAbac'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      locations: map['locations'] == null ? null : pulumi.Output.create<List<String>>((map['locations'] as List).cast<String>()),
      loggingConfig: map['loggingConfig'] == null ? null : pulumi.Output.create<LoggingConfigContainerV1beta1>(LoggingConfigContainerV1beta1.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())),
      loggingService: map['loggingService'] == null ? null : pulumi.Output.create<String>(map['loggingService'] as String),
      maintenancePolicy: map['maintenancePolicy'] == null ? null : pulumi.Output.create<MaintenancePolicyContainerV1beta1>(MaintenancePolicyContainerV1beta1.fromMap((map['maintenancePolicy'] as Map).cast<String, dynamic>())),
      master: map['master'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['master'] as Map).cast<String, dynamic>()),
      masterAuth: map['masterAuth'] == null ? null : pulumi.Output.create<MasterAuthContainerV1beta1>(MasterAuthContainerV1beta1.fromMap((map['masterAuth'] as Map).cast<String, dynamic>())),
      masterAuthorizedNetworksConfig: map['masterAuthorizedNetworksConfig'] == null ? null : pulumi.Output.create<MasterAuthorizedNetworksConfigContainerV1beta1>(MasterAuthorizedNetworksConfigContainerV1beta1.fromMap((map['masterAuthorizedNetworksConfig'] as Map).cast<String, dynamic>())),
      masterIpv4CidrBlock: map['masterIpv4CidrBlock'] == null ? null : pulumi.Output.create<String>(map['masterIpv4CidrBlock'] as String),
      meshCertificates: map['meshCertificates'] == null ? null : pulumi.Output.create<MeshCertificatesContainerV1beta1>(MeshCertificatesContainerV1beta1.fromMap((map['meshCertificates'] as Map).cast<String, dynamic>())),
      monitoringConfig: map['monitoringConfig'] == null ? null : pulumi.Output.create<MonitoringConfigContainerV1beta1>(MonitoringConfigContainerV1beta1.fromMap((map['monitoringConfig'] as Map).cast<String, dynamic>())),
      monitoringService: map['monitoringService'] == null ? null : pulumi.Output.create<String>(map['monitoringService'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      networkConfig: map['networkConfig'] == null ? null : pulumi.Output.create<NetworkConfigContainerV1beta1>(NetworkConfigContainerV1beta1.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())),
      networkPolicy: map['networkPolicy'] == null ? null : pulumi.Output.create<NetworkPolicyContainerV1beta1>(NetworkPolicyContainerV1beta1.fromMap((map['networkPolicy'] as Map).cast<String, dynamic>())),
      nodeConfig: map['nodeConfig'] == null ? null : pulumi.Output.create<NodeConfigContainerV1beta1>(NodeConfigContainerV1beta1.fromMap((map['nodeConfig'] as Map).cast<String, dynamic>())),
      nodePoolAutoConfig: map['nodePoolAutoConfig'] == null ? null : pulumi.Output.create<NodePoolAutoConfigContainerV1beta1>(NodePoolAutoConfigContainerV1beta1.fromMap((map['nodePoolAutoConfig'] as Map).cast<String, dynamic>())),
      nodePoolDefaults: map['nodePoolDefaults'] == null ? null : pulumi.Output.create<NodePoolDefaultsContainerV1beta1>(NodePoolDefaultsContainerV1beta1.fromMap((map['nodePoolDefaults'] as Map).cast<String, dynamic>())),
      nodePools: map['nodePools'] == null ? null : pulumi.Output.create<List<NodePoolResource>>((map['nodePools'] as List).cast<NodePoolResource>()),
      notificationConfig: map['notificationConfig'] == null ? null : pulumi.Output.create<NotificationConfigContainerV1beta1>(NotificationConfigContainerV1beta1.fromMap((map['notificationConfig'] as Map).cast<String, dynamic>())),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      parentProductConfig: map['parentProductConfig'] == null ? null : pulumi.Output.create<ParentProductConfigContainerV1beta1>(ParentProductConfigContainerV1beta1.fromMap((map['parentProductConfig'] as Map).cast<String, dynamic>())),
      podSecurityPolicyConfig: map['podSecurityPolicyConfig'] == null ? null : pulumi.Output.create<PodSecurityPolicyConfig>(PodSecurityPolicyConfig.fromMap((map['podSecurityPolicyConfig'] as Map).cast<String, dynamic>())),
      privateCluster: map['privateCluster'] == null ? null : pulumi.Output.create<bool>(map['privateCluster'] as bool),
      privateClusterConfig: map['privateClusterConfig'] == null ? null : pulumi.Output.create<PrivateClusterConfigContainerV1beta1>(PrivateClusterConfigContainerV1beta1.fromMap((map['privateClusterConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      protectConfig: map['protectConfig'] == null ? null : pulumi.Output.create<ProtectConfig>(ProtectConfig.fromMap((map['protectConfig'] as Map).cast<String, dynamic>())),
      releaseChannel: map['releaseChannel'] == null ? null : pulumi.Output.create<ReleaseChannelContainerV1beta1>(ReleaseChannelContainerV1beta1.fromMap((map['releaseChannel'] as Map).cast<String, dynamic>())),
      resourceLabels: map['resourceLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['resourceLabels'] as Map).cast<String, String>()),
      resourceUsageExportConfig: map['resourceUsageExportConfig'] == null ? null : pulumi.Output.create<ResourceUsageExportConfigContainerV1beta1>(ResourceUsageExportConfigContainerV1beta1.fromMap((map['resourceUsageExportConfig'] as Map).cast<String, dynamic>())),
      securityPostureConfig: map['securityPostureConfig'] == null ? null : pulumi.Output.create<SecurityPostureConfigContainerV1beta1>(SecurityPostureConfigContainerV1beta1.fromMap((map['securityPostureConfig'] as Map).cast<String, dynamic>())),
      shieldedNodes: map['shieldedNodes'] == null ? null : pulumi.Output.create<ShieldedNodesContainerV1beta1>(ShieldedNodesContainerV1beta1.fromMap((map['shieldedNodes'] as Map).cast<String, dynamic>())),
      subnetwork: map['subnetwork'] == null ? null : pulumi.Output.create<String>(map['subnetwork'] as String),
      tpuConfig: map['tpuConfig'] == null ? null : pulumi.Output.create<TpuConfig>(TpuConfig.fromMap((map['tpuConfig'] as Map).cast<String, dynamic>())),
      verticalPodAutoscaling: map['verticalPodAutoscaling'] == null ? null : pulumi.Output.create<VerticalPodAutoscalingContainerV1beta1>(VerticalPodAutoscalingContainerV1beta1.fromMap((map['verticalPodAutoscaling'] as Map).cast<String, dynamic>())),
      workloadAltsConfig: map['workloadAltsConfig'] == null ? null : pulumi.Output.create<WorkloadALTSConfig>(WorkloadALTSConfig.fromMap((map['workloadAltsConfig'] as Map).cast<String, dynamic>())),
      workloadCertificates: map['workloadCertificates'] == null ? null : pulumi.Output.create<WorkloadCertificates>(WorkloadCertificates.fromMap((map['workloadCertificates'] as Map).cast<String, dynamic>())),
      workloadIdentityConfig: map['workloadIdentityConfig'] == null ? null : pulumi.Output.create<WorkloadIdentityConfigContainerV1beta1>(WorkloadIdentityConfigContainerV1beta1.fromMap((map['workloadIdentityConfig'] as Map).cast<String, dynamic>())),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

