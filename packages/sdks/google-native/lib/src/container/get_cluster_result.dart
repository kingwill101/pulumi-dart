// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addons_config_response.dart';
import 'authenticator_groups_config_response.dart';
import 'autopilot_response.dart';
import 'binary_authorization_response.dart';
import 'cluster_autoscaling_response.dart';
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
import 'node_pool_response.dart';
import 'notification_config_response.dart';
import 'parent_product_config_response.dart';
import 'private_cluster_config_response.dart';
import 'release_channel_response.dart';
import 'resource_usage_export_config_response.dart';
import 'security_posture_config_response.dart';
import 'shielded_nodes_response.dart';
import 'status_condition_response.dart';
import 'vertical_pod_autoscaling_response.dart';
import 'workload_identity_config_response.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// Configurations for the various addons available to run in the cluster.
  final AddonsConfigResponse? addonsConfig;
  /// Configuration controlling RBAC group membership information.
  final AuthenticatorGroupsConfigResponse? authenticatorGroupsConfig;
  /// Autopilot configuration for the cluster.
  final AutopilotResponse? autopilot;
  /// Cluster-level autoscaling configuration.
  final ClusterAutoscalingResponse? autoscaling;
  /// Configuration for Binary Authorization.
  final BinaryAuthorizationResponse? binaryAuthorization;
  /// The IP address range of the container pods in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`). Leave blank to have one automatically chosen or specify a `/14` block in `10.0.0.0/8`.
  final String? clusterIpv4Cidr;
  /// Which conditions caused the current cluster state.
  final List<StatusConditionResponse>? conditions;
  /// Configuration of Confidential Nodes. All the nodes in the cluster will be Confidential VM once enabled.
  final ConfidentialNodesResponse? confidentialNodes;
  /// Configuration for the fine-grained cost management feature.
  final CostManagementConfigResponse? costManagementConfig;
  /// [Output only] The time the cluster was created, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  final String? createTime;
  /// [Output only] The current software version of the master endpoint.
  final String? currentMasterVersion;
  /// [Output only] The number of nodes currently in the cluster. Deprecated. Call Kubernetes API directly to retrieve node information.
  final int? currentNodeCount;
  /// [Output only] Deprecated, use [NodePools.version](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools) instead. The current version of the node software components. If they are currently at multiple versions because they're in the process of being upgraded, this reflects the minimum version of all nodes.
  final String? currentNodeVersion;
  /// Configuration of etcd encryption.
  final DatabaseEncryptionResponse? databaseEncryption;
  /// The default constraint on the maximum number of pods that can be run simultaneously on a node in the node pool of this cluster. Only honored if cluster created with IP Alias support.
  final MaxPodsConstraintResponse? defaultMaxPodsConstraint;
  /// An optional description of this cluster.
  final String? description;
  /// Beta APIs Config
  final K8sBetaAPIConfigResponse? enableK8sBetaApis;
  /// Kubernetes alpha features are enabled on this cluster. This includes alpha API groups (e.g. v1alpha1) and features that may not be production ready in the kubernetes version of the master and nodes. The cluster has no SLA for uptime and master/node upgrades are disabled. Alpha enabled clusters are automatically deleted thirty days after creation.
  final bool? enableKubernetesAlpha;
  /// Enable the ability to use Cloud TPUs in this cluster.
  final bool? enableTpu;
  /// [Output only] The IP address of this cluster's master endpoint. The endpoint can be accessed from the internet at `https://username:password@endpoint/`. See the `masterAuth` property of this resource for username and password information.
  final String? endpoint;
  /// GKE Enterprise Configuration.
  final EnterpriseConfigResponse? enterpriseConfig;
  /// This checksum is computed by the server based on the value of cluster fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  final String? etag;
  /// [Output only] The time the cluster will be automatically deleted in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  final String? expireTime;
  /// Fleet information for the cluster.
  final FleetResponse? fleet;
  /// Configuration for Identity Service component.
  final IdentityServiceConfigResponse? identityServiceConfig;
  /// The initial Kubernetes version for this cluster. Valid versions are those found in validMasterVersions returned by getServerConfig. The version can be upgraded over time; such upgrades are reflected in currentMasterVersion and currentNodeVersion. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "","-": picks the default Kubernetes version
  final String? initialClusterVersion;
  /// The number of nodes to create in this cluster. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "node_config") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. This field is deprecated, use node_pool.initial_node_count instead.
  final int? initialNodeCount;
  /// Deprecated. Use node_pools.instance_group_urls.
  final List<String>? instanceGroupUrls;
  /// Configuration for cluster IP allocation.
  final IPAllocationPolicyResponse? ipAllocationPolicy;
  /// The fingerprint of the set of labels for this cluster.
  final String? labelFingerprint;
  /// Configuration for the legacy ABAC authorization mode.
  final LegacyAbacResponse? legacyAbac;
  /// [Output only] The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available) or [region](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available) in which the cluster resides.
  final String? location;
  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This field provides a default value if [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) are not specified during node pool creation. Warning: changing cluster locations will update the [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) of all node pools and will result in nodes being added and/or removed.
  final List<String>? locations;
  /// Logging configuration for the cluster.
  final LoggingConfigResponse? loggingConfig;
  /// The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  final String? loggingService;
  /// Configure the maintenance policy for this cluster.
  final MaintenancePolicyResponse? maintenancePolicy;
  /// The authentication information for accessing the master endpoint. If unspecified, the defaults are used: For clusters before v1.12, if master_auth is unspecified, `username` will be set to "admin", a random password will be generated, and a client certificate will be issued.
  final MasterAuthResponse? masterAuth;
  /// The configuration options for master authorized networks feature.
  final MasterAuthorizedNetworksConfigResponse? masterAuthorizedNetworksConfig;
  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  final MeshCertificatesResponse? meshCertificates;
  /// Monitoring configuration for the cluster.
  final MonitoringConfigResponse? monitoringConfig;
  /// The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  final String? monitoringService;
  /// The name of this cluster. The name must be unique within this project and location (e.g. zone or region), and can be up to 40 characters with the following restrictions: * Lowercase letters, numbers, and hyphens only. * Must start with a letter. * Must end with a number or a letter.
  final String? name;
  /// The name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. If left unspecified, the `default` network will be used.
  final String? network;
  /// Configuration for cluster networking.
  final NetworkConfigResponse? networkConfig;
  /// Configuration options for the NetworkPolicy feature.
  final NetworkPolicyResponse? networkPolicy;
  /// Parameters used in creating the cluster's nodes. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "initial_node_count") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. For responses, this field will be populated with the node configuration of the first node pool. (For configuration of each node pool, see `node_pool.config`) If unspecified, the defaults are used. This field is deprecated, use node_pool.config instead.
  final NodeConfigResponse? nodeConfig;
  /// [Output only] The size of the address space on each node for hosting containers. This is provisioned from within the `container_ipv4_cidr` range. This field will only be set when cluster is in route-based network mode.
  final int? nodeIpv4CidrSize;
  /// Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  final NodePoolAutoConfigResponse? nodePoolAutoConfig;
  /// Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object.
  final NodePoolDefaultsResponse? nodePoolDefaults;
  /// The node pools associated with this cluster. This field should not be set if "node_config" or "initial_node_count" are specified.
  final List<NodePoolResponse>? nodePools;
  /// Notification configuration of the cluster.
  final NotificationConfigResponse? notificationConfig;
  /// The configuration of the parent product of the cluster. This field is used by Google internal products that are built on top of the GKE cluster and take the ownership of the cluster.
  final ParentProductConfigResponse? parentProductConfig;
  /// Configuration for private cluster.
  final PrivateClusterConfigResponse? privateClusterConfig;
  /// Release channel configuration. If left unspecified on cluster creation and a version is specified, the cluster is enrolled in the most mature release channel where the version is available (first checking STABLE, then REGULAR, and finally RAPID). Otherwise, if no release channel configuration and no version is specified, the cluster is enrolled in the REGULAR channel with its default version.
  final ReleaseChannelResponse? releaseChannel;
  /// The resource labels for the cluster to use to annotate any related Google Compute Engine resources.
  final Map<String, String>? resourceLabels;
  /// Configuration for exporting resource usages. Resource usage export is disabled when this config is unspecified.
  final ResourceUsageExportConfigResponse? resourceUsageExportConfig;
  /// Enable/Disable Security Posture API features for the cluster.
  final SecurityPostureConfigResponse? securityPostureConfig;
  /// [Output only] Server-defined URL for the resource.
  final String? selfLink;
  /// [Output only] The IP address range of the Kubernetes services in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `1.2.3.4/29`). Service addresses are typically put in the last `/16` from the container CIDR.
  final String? servicesIpv4Cidr;
  /// Shielded Nodes configuration.
  final ShieldedNodesResponse? shieldedNodes;
  /// [Output only] The current status of this cluster.
  final String? status;
  /// [Output only] Deprecated. Use conditions instead. Additional information about the current status of this cluster, if available.
  final String? statusMessage;
  /// The name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/subnetworks) to which the cluster is connected.
  final String? subnetwork;
  /// [Output only] The IP address range of the Cloud TPUs in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `1.2.3.4/29`).
  final String? tpuIpv4CidrBlock;
  /// Cluster-level Vertical Pod Autoscaling configuration.
  final VerticalPodAutoscalingResponse? verticalPodAutoscaling;
  /// Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
  final WorkloadIdentityConfigResponse? workloadIdentityConfig;
  /// [Output only] The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field is deprecated, use location instead.
  final String? zone;

  /// Creates a new [GetClusterResult].
  /// [addonsConfig] Configurations for the various addons available to run in the cluster.
  /// [authenticatorGroupsConfig] Configuration controlling RBAC group membership information.
  /// [autopilot] Autopilot configuration for the cluster.
  /// [autoscaling] Cluster-level autoscaling configuration.
  /// [binaryAuthorization] Configuration for Binary Authorization.
  /// [clusterIpv4Cidr] The IP address range of the container pods in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`). Leave blank to have one automatically chosen or specify a `/14` block in `10.0.0.0/8`.
  /// [conditions] Which conditions caused the current cluster state.
  /// [confidentialNodes] Configuration of Confidential Nodes. All the nodes in the cluster will be Confidential VM once enabled.
  /// [costManagementConfig] Configuration for the fine-grained cost management feature.
  /// [createTime] [Output only] The time the cluster was created, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  /// [currentMasterVersion] [Output only] The current software version of the master endpoint.
  /// [currentNodeCount] [Output only] The number of nodes currently in the cluster. Deprecated. Call Kubernetes API directly to retrieve node information.
  /// [currentNodeVersion] [Output only] Deprecated, use [NodePools.version](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools) instead. The current version of the node software components. If they are currently at multiple versions because they're in the process of being upgraded, this reflects the minimum version of all nodes.
  /// [databaseEncryption] Configuration of etcd encryption.
  /// [defaultMaxPodsConstraint] The default constraint on the maximum number of pods that can be run simultaneously on a node in the node pool of this cluster. Only honored if cluster created with IP Alias support.
  /// [description] An optional description of this cluster.
  /// [enableK8sBetaApis] Beta APIs Config
  /// [enableKubernetesAlpha] Kubernetes alpha features are enabled on this cluster. This includes alpha API groups (e.g. v1alpha1) and features that may not be production ready in the kubernetes version of the master and nodes. The cluster has no SLA for uptime and master/node upgrades are disabled. Alpha enabled clusters are automatically deleted thirty days after creation.
  /// [enableTpu] Enable the ability to use Cloud TPUs in this cluster.
  /// [endpoint] [Output only] The IP address of this cluster's master endpoint. The endpoint can be accessed from the internet at `https://username:password@endpoint/`. See the `masterAuth` property of this resource for username and password information.
  /// [enterpriseConfig] GKE Enterprise Configuration.
  /// [etag] This checksum is computed by the server based on the value of cluster fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  /// [expireTime] [Output only] The time the cluster will be automatically deleted in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  /// [fleet] Fleet information for the cluster.
  /// [identityServiceConfig] Configuration for Identity Service component.
  /// [initialClusterVersion] The initial Kubernetes version for this cluster. Valid versions are those found in validMasterVersions returned by getServerConfig. The version can be upgraded over time; such upgrades are reflected in currentMasterVersion and currentNodeVersion. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "","-": picks the default Kubernetes version
  /// [initialNodeCount] The number of nodes to create in this cluster. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "node_config") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. This field is deprecated, use node_pool.initial_node_count instead.
  /// [instanceGroupUrls] Deprecated. Use node_pools.instance_group_urls.
  /// [ipAllocationPolicy] Configuration for cluster IP allocation.
  /// [labelFingerprint] The fingerprint of the set of labels for this cluster.
  /// [legacyAbac] Configuration for the legacy ABAC authorization mode.
  /// [location] [Output only] The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available) or [region](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available) in which the cluster resides.
  /// [locations] The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This field provides a default value if [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) are not specified during node pool creation. Warning: changing cluster locations will update the [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) of all node pools and will result in nodes being added and/or removed.
  /// [loggingConfig] Logging configuration for the cluster.
  /// [loggingService] The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  /// [maintenancePolicy] Configure the maintenance policy for this cluster.
  /// [masterAuth] The authentication information for accessing the master endpoint. If unspecified, the defaults are used: For clusters before v1.12, if master_auth is unspecified, `username` will be set to "admin", a random password will be generated, and a client certificate will be issued.
  /// [masterAuthorizedNetworksConfig] The configuration options for master authorized networks feature.
  /// [meshCertificates] Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  /// [monitoringConfig] Monitoring configuration for the cluster.
  /// [monitoringService] The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  /// [name] The name of this cluster. The name must be unique within this project and location (e.g. zone or region), and can be up to 40 characters with the following restrictions: * Lowercase letters, numbers, and hyphens only. * Must start with a letter. * Must end with a number or a letter.
  /// [network] The name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. If left unspecified, the `default` network will be used.
  /// [networkConfig] Configuration for cluster networking.
  /// [networkPolicy] Configuration options for the NetworkPolicy feature.
  /// [nodeConfig] Parameters used in creating the cluster's nodes. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "initial_node_count") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. For responses, this field will be populated with the node configuration of the first node pool. (For configuration of each node pool, see `node_pool.config`) If unspecified, the defaults are used. This field is deprecated, use node_pool.config instead.
  /// [nodeIpv4CidrSize] [Output only] The size of the address space on each node for hosting containers. This is provisioned from within the `container_ipv4_cidr` range. This field will only be set when cluster is in route-based network mode.
  /// [nodePoolAutoConfig] Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  /// [nodePoolDefaults] Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object.
  /// [nodePools] The node pools associated with this cluster. This field should not be set if "node_config" or "initial_node_count" are specified.
  /// [notificationConfig] Notification configuration of the cluster.
  /// [parentProductConfig] The configuration of the parent product of the cluster. This field is used by Google internal products that are built on top of the GKE cluster and take the ownership of the cluster.
  /// [privateClusterConfig] Configuration for private cluster.
  /// [releaseChannel] Release channel configuration. If left unspecified on cluster creation and a version is specified, the cluster is enrolled in the most mature release channel where the version is available (first checking STABLE, then REGULAR, and finally RAPID). Otherwise, if no release channel configuration and no version is specified, the cluster is enrolled in the REGULAR channel with its default version.
  /// [resourceLabels] The resource labels for the cluster to use to annotate any related Google Compute Engine resources.
  /// [resourceUsageExportConfig] Configuration for exporting resource usages. Resource usage export is disabled when this config is unspecified.
  /// [securityPostureConfig] Enable/Disable Security Posture API features for the cluster.
  /// [selfLink] [Output only] Server-defined URL for the resource.
  /// [servicesIpv4Cidr] [Output only] The IP address range of the Kubernetes services in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `1.2.3.4/29`). Service addresses are typically put in the last `/16` from the container CIDR.
  /// [shieldedNodes] Shielded Nodes configuration.
  /// [status] [Output only] The current status of this cluster.
  /// [statusMessage] [Output only] Deprecated. Use conditions instead. Additional information about the current status of this cluster, if available.
  /// [subnetwork] The name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/subnetworks) to which the cluster is connected.
  /// [tpuIpv4CidrBlock] [Output only] The IP address range of the Cloud TPUs in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `1.2.3.4/29`).
  /// [verticalPodAutoscaling] Cluster-level Vertical Pod Autoscaling configuration.
  /// [workloadIdentityConfig] Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
  /// [zone] [Output only] The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field is deprecated, use location instead.
  const GetClusterResult({
    this.addonsConfig,
    this.authenticatorGroupsConfig,
    this.autopilot,
    this.autoscaling,
    this.binaryAuthorization,
    this.clusterIpv4Cidr,
    this.conditions,
    this.confidentialNodes,
    this.costManagementConfig,
    this.createTime,
    this.currentMasterVersion,
    this.currentNodeCount,
    this.currentNodeVersion,
    this.databaseEncryption,
    this.defaultMaxPodsConstraint,
    this.description,
    this.enableK8sBetaApis,
    this.enableKubernetesAlpha,
    this.enableTpu,
    this.endpoint,
    this.enterpriseConfig,
    this.etag,
    this.expireTime,
    this.fleet,
    this.identityServiceConfig,
    this.initialClusterVersion,
    this.initialNodeCount,
    this.instanceGroupUrls,
    this.ipAllocationPolicy,
    this.labelFingerprint,
    this.legacyAbac,
    this.location,
    this.locations,
    this.loggingConfig,
    this.loggingService,
    this.maintenancePolicy,
    this.masterAuth,
    this.masterAuthorizedNetworksConfig,
    this.meshCertificates,
    this.monitoringConfig,
    this.monitoringService,
    this.name,
    this.network,
    this.networkConfig,
    this.networkPolicy,
    this.nodeConfig,
    this.nodeIpv4CidrSize,
    this.nodePoolAutoConfig,
    this.nodePoolDefaults,
    this.nodePools,
    this.notificationConfig,
    this.parentProductConfig,
    this.privateClusterConfig,
    this.releaseChannel,
    this.resourceLabels,
    this.resourceUsageExportConfig,
    this.securityPostureConfig,
    this.selfLink,
    this.servicesIpv4Cidr,
    this.shieldedNodes,
    this.status,
    this.statusMessage,
    this.subnetwork,
    this.tpuIpv4CidrBlock,
    this.verticalPodAutoscaling,
    this.workloadIdentityConfig,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonsConfig': ?addonsConfig?.toMap(),
      'authenticatorGroupsConfig': ?authenticatorGroupsConfig?.toMap(),
      'autopilot': ?autopilot?.toMap(),
      'autoscaling': ?autoscaling?.toMap(),
      'binaryAuthorization': ?binaryAuthorization?.toMap(),
      'clusterIpv4Cidr': ?clusterIpv4Cidr,
      'conditions': ?(() { final guardedValue = conditions; if (guardedValue == null) return null; return pulumi.Input.encodeList<StatusConditionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'confidentialNodes': ?confidentialNodes?.toMap(),
      'costManagementConfig': ?costManagementConfig?.toMap(),
      'createTime': ?createTime,
      'currentMasterVersion': ?currentMasterVersion,
      'currentNodeCount': ?currentNodeCount,
      'currentNodeVersion': ?currentNodeVersion,
      'databaseEncryption': ?databaseEncryption?.toMap(),
      'defaultMaxPodsConstraint': ?defaultMaxPodsConstraint?.toMap(),
      'description': ?description,
      'enableK8sBetaApis': ?enableK8sBetaApis?.toMap(),
      'enableKubernetesAlpha': ?enableKubernetesAlpha,
      'enableTpu': ?enableTpu,
      'endpoint': ?endpoint,
      'enterpriseConfig': ?enterpriseConfig?.toMap(),
      'etag': ?etag,
      'expireTime': ?expireTime,
      'fleet': ?fleet?.toMap(),
      'identityServiceConfig': ?identityServiceConfig?.toMap(),
      'initialClusterVersion': ?initialClusterVersion,
      'initialNodeCount': ?initialNodeCount,
      'instanceGroupUrls': ?instanceGroupUrls,
      'ipAllocationPolicy': ?ipAllocationPolicy?.toMap(),
      'labelFingerprint': ?labelFingerprint,
      'legacyAbac': ?legacyAbac?.toMap(),
      'location': ?location,
      'locations': ?locations,
      'loggingConfig': ?loggingConfig?.toMap(),
      'loggingService': ?loggingService,
      'maintenancePolicy': ?maintenancePolicy?.toMap(),
      'masterAuth': ?masterAuth?.toMap(),
      'masterAuthorizedNetworksConfig': ?masterAuthorizedNetworksConfig?.toMap(),
      'meshCertificates': ?meshCertificates?.toMap(),
      'monitoringConfig': ?monitoringConfig?.toMap(),
      'monitoringService': ?monitoringService,
      'name': ?name,
      'network': ?network,
      'networkConfig': ?networkConfig?.toMap(),
      'networkPolicy': ?networkPolicy?.toMap(),
      'nodeConfig': ?nodeConfig?.toMap(),
      'nodeIpv4CidrSize': ?nodeIpv4CidrSize,
      'nodePoolAutoConfig': ?nodePoolAutoConfig?.toMap(),
      'nodePoolDefaults': ?nodePoolDefaults?.toMap(),
      'nodePools': ?(() { final guardedValue = nodePools; if (guardedValue == null) return null; return pulumi.Input.encodeList<NodePoolResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'notificationConfig': ?notificationConfig?.toMap(),
      'parentProductConfig': ?parentProductConfig?.toMap(),
      'privateClusterConfig': ?privateClusterConfig?.toMap(),
      'releaseChannel': ?releaseChannel?.toMap(),
      'resourceLabels': ?resourceLabels,
      'resourceUsageExportConfig': ?resourceUsageExportConfig?.toMap(),
      'securityPostureConfig': ?securityPostureConfig?.toMap(),
      'selfLink': ?selfLink,
      'servicesIpv4Cidr': ?servicesIpv4Cidr,
      'shieldedNodes': ?shieldedNodes?.toMap(),
      'status': ?status,
      'statusMessage': ?statusMessage,
      'subnetwork': ?subnetwork,
      'tpuIpv4CidrBlock': ?tpuIpv4CidrBlock,
      'verticalPodAutoscaling': ?verticalPodAutoscaling?.toMap(),
      'workloadIdentityConfig': ?workloadIdentityConfig?.toMap(),
      'zone': ?zone,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      addonsConfig: (() { final guardedValue = map['addonsConfig']; if (guardedValue == null) return null; return AddonsConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      authenticatorGroupsConfig: (() { final guardedValue = map['authenticatorGroupsConfig']; if (guardedValue == null) return null; return AuthenticatorGroupsConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      autopilot: (() { final guardedValue = map['autopilot']; if (guardedValue == null) return null; return AutopilotResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      autoscaling: (() { final guardedValue = map['autoscaling']; if (guardedValue == null) return null; return ClusterAutoscalingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      binaryAuthorization: (() { final guardedValue = map['binaryAuthorization']; if (guardedValue == null) return null; return BinaryAuthorizationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      clusterIpv4Cidr: (() { final guardedValue = map['clusterIpv4Cidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<StatusConditionResponse>(guardedValue, (value) => StatusConditionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      confidentialNodes: (() { final guardedValue = map['confidentialNodes']; if (guardedValue == null) return null; return ConfidentialNodesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      costManagementConfig: (() { final guardedValue = map['costManagementConfig']; if (guardedValue == null) return null; return CostManagementConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      currentMasterVersion: (() { final guardedValue = map['currentMasterVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      currentNodeCount: (() { final guardedValue = map['currentNodeCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      currentNodeVersion: (() { final guardedValue = map['currentNodeVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseEncryption: (() { final guardedValue = map['databaseEncryption']; if (guardedValue == null) return null; return DatabaseEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      defaultMaxPodsConstraint: (() { final guardedValue = map['defaultMaxPodsConstraint']; if (guardedValue == null) return null; return MaxPodsConstraintResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableK8sBetaApis: (() { final guardedValue = map['enableK8sBetaApis']; if (guardedValue == null) return null; return K8sBetaAPIConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      enableKubernetesAlpha: (() { final guardedValue = map['enableKubernetesAlpha']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableTpu: (() { final guardedValue = map['enableTpu']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enterpriseConfig: (() { final guardedValue = map['enterpriseConfig']; if (guardedValue == null) return null; return EnterpriseConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fleet: (() { final guardedValue = map['fleet']; if (guardedValue == null) return null; return FleetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      identityServiceConfig: (() { final guardedValue = map['identityServiceConfig']; if (guardedValue == null) return null; return IdentityServiceConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      initialClusterVersion: (() { final guardedValue = map['initialClusterVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      initialNodeCount: (() { final guardedValue = map['initialNodeCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      instanceGroupUrls: (() { final guardedValue = map['instanceGroupUrls']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      ipAllocationPolicy: (() { final guardedValue = map['ipAllocationPolicy']; if (guardedValue == null) return null; return IPAllocationPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labelFingerprint: (() { final guardedValue = map['labelFingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      legacyAbac: (() { final guardedValue = map['legacyAbac']; if (guardedValue == null) return null; return LegacyAbacResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return LoggingConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      loggingService: (() { final guardedValue = map['loggingService']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenancePolicy: (() { final guardedValue = map['maintenancePolicy']; if (guardedValue == null) return null; return MaintenancePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      masterAuth: (() { final guardedValue = map['masterAuth']; if (guardedValue == null) return null; return MasterAuthResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      masterAuthorizedNetworksConfig: (() { final guardedValue = map['masterAuthorizedNetworksConfig']; if (guardedValue == null) return null; return MasterAuthorizedNetworksConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      meshCertificates: (() { final guardedValue = map['meshCertificates']; if (guardedValue == null) return null; return MeshCertificatesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      monitoringConfig: (() { final guardedValue = map['monitoringConfig']; if (guardedValue == null) return null; return MonitoringConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      monitoringService: (() { final guardedValue = map['monitoringService']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return NetworkConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      networkPolicy: (() { final guardedValue = map['networkPolicy']; if (guardedValue == null) return null; return NetworkPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      nodeConfig: (() { final guardedValue = map['nodeConfig']; if (guardedValue == null) return null; return NodeConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      nodeIpv4CidrSize: (() { final guardedValue = map['nodeIpv4CidrSize']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      nodePoolAutoConfig: (() { final guardedValue = map['nodePoolAutoConfig']; if (guardedValue == null) return null; return NodePoolAutoConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      nodePoolDefaults: (() { final guardedValue = map['nodePoolDefaults']; if (guardedValue == null) return null; return NodePoolDefaultsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      nodePools: (() { final guardedValue = map['nodePools']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NodePoolResponse>(guardedValue, (value) => NodePoolResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      notificationConfig: (() { final guardedValue = map['notificationConfig']; if (guardedValue == null) return null; return NotificationConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      parentProductConfig: (() { final guardedValue = map['parentProductConfig']; if (guardedValue == null) return null; return ParentProductConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateClusterConfig: (() { final guardedValue = map['privateClusterConfig']; if (guardedValue == null) return null; return PrivateClusterConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      releaseChannel: (() { final guardedValue = map['releaseChannel']; if (guardedValue == null) return null; return ReleaseChannelResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resourceLabels: (() { final guardedValue = map['resourceLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      resourceUsageExportConfig: (() { final guardedValue = map['resourceUsageExportConfig']; if (guardedValue == null) return null; return ResourceUsageExportConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      securityPostureConfig: (() { final guardedValue = map['securityPostureConfig']; if (guardedValue == null) return null; return SecurityPostureConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      servicesIpv4Cidr: (() { final guardedValue = map['servicesIpv4Cidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shieldedNodes: (() { final guardedValue = map['shieldedNodes']; if (guardedValue == null) return null; return ShieldedNodesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tpuIpv4CidrBlock: (() { final guardedValue = map['tpuIpv4CidrBlock']; if (guardedValue == null) return null; return guardedValue as String; })(),
      verticalPodAutoscaling: (() { final guardedValue = map['verticalPodAutoscaling']; if (guardedValue == null) return null; return VerticalPodAutoscalingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      workloadIdentityConfig: (() { final guardedValue = map['workloadIdentityConfig']; if (guardedValue == null) return null; return WorkloadIdentityConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
