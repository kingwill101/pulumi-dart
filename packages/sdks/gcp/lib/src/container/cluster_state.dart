// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_addons_config.dart';
import 'cluster_anonymous_authentication_config.dart';
import 'cluster_authenticator_groups_config.dart';
import 'cluster_autopilot_cluster_policy_config.dart';
import 'cluster_binary_authorization.dart';
import 'cluster_cluster_autoscaling.dart';
import 'cluster_cluster_telemetry.dart';
import 'cluster_confidential_nodes.dart';
import 'cluster_control_plane_endpoints_config.dart';
import 'cluster_cost_management_config.dart';
import 'cluster_database_encryption.dart';
import 'cluster_default_snat_status.dart';
import 'cluster_dns_config.dart';
import 'cluster_enable_k8s_beta_apis.dart';
import 'cluster_enterprise_config.dart';
import 'cluster_fleet.dart';
import 'cluster_gateway_api_config.dart';
import 'cluster_gke_auto_upgrade_config.dart';
import 'cluster_identity_service_config.dart';
import 'cluster_ip_allocation_policy.dart';
import 'cluster_logging_config.dart';
import 'cluster_maintenance_policy.dart';
import 'cluster_managed_machine_learning_diagnostics_config.dart';
import 'cluster_managed_opentelemetry_config.dart';
import 'cluster_master_auth.dart';
import 'cluster_master_authorized_networks_config.dart';
import 'cluster_mesh_certificates.dart';
import 'cluster_monitoring_config.dart';
import 'cluster_network_performance_config.dart';
import 'cluster_network_policy.dart';
import 'cluster_node_config.dart';
import 'cluster_node_creation_config.dart';
import 'cluster_node_pool.dart';
import 'cluster_node_pool_auto_config.dart';
import 'cluster_node_pool_defaults.dart';
import 'cluster_notification_config.dart';
import 'cluster_pod_autoscaling.dart';
import 'cluster_pod_security_policy_config.dart';
import 'cluster_private_cluster_config.dart';
import 'cluster_protect_config.dart';
import 'cluster_rbac_binding_config.dart';
import 'cluster_release_channel.dart';
import 'cluster_resource_usage_export_config.dart';
import 'cluster_rollback_safe_upgrade.dart';
import 'cluster_secret_manager_config.dart';
import 'cluster_secret_sync_config.dart';
import 'cluster_security_posture_config.dart';
import 'cluster_service_external_ips_config.dart';
import 'cluster_tpu_config.dart';
import 'cluster_user_managed_keys_config.dart';
import 'cluster_vertical_pod_autoscaling.dart';
import 'cluster_workload_alts_config.dart';
import 'cluster_workload_identity_config.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// The configuration for addons supported by GKE.
  /// Structure is documented below.
  final pulumi.Input<ClusterAddonsConfig?>? addonsConfig;
  /// Enable NET_ADMIN for the cluster. Defaults to
  /// `false`. This field should only be enabled for Autopilot clusters (`enableAutopilot`
  /// set to `true`).
  final pulumi.Input<bool?>? allowNetAdmin;
  /// Configuration for [anonymous authentication restrictions](https://cloud.google.com/kubernetes-engine/docs/how-to/hardening-your-cluster#restrict-anon-access). Structure is documented below.
  final pulumi.Input<ClusterAnonymousAuthenticationConfig?>? anonymousAuthenticationConfig;
  /// Configuration for the
  /// [Google Groups for GKE](https://cloud.google.com/kubernetes-engine/docs/how-to/role-based-access-control#groups-setup-gsuite) feature.
  /// Structure is documented below.
  final pulumi.Input<ClusterAuthenticatorGroupsConfig?>? authenticatorGroupsConfig;
  /// Per-cluster configuration of Autopilot cluster policies in GKE clusters. This field can only be configured in non Autopilot clusters. Structure is documented below.
  final pulumi.Input<ClusterAutopilotClusterPolicyConfig?>? autopilotClusterPolicyConfig;
  /// The customer
  /// allowlist Cloud Storage paths for the cluster. These paths are used with the
  /// `--autopilot-privileged-admission` flag to authorize privileged workloads in
  /// Autopilot clusters. See the Cluster API's
  /// [PrivilegedAdmissionConfig](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#privilegedadmissionconfig)
  /// documentation for more details.
  final pulumi.Input<List<String>?>? autopilotPrivilegedAdmissions;
  /// Configuration options for the Binary
  /// Authorization feature. Structure is documented below.
  final pulumi.Input<ClusterBinaryAuthorization?>? binaryAuthorization;
  /// Per-cluster configuration of Node Auto-Provisioning with Cluster Autoscaler to
  /// automatically adjust the size of the cluster and create/delete node pools based
  /// on the current needs of the cluster's workload. See the
  /// [guide to using Node Auto-Provisioning](https://cloud.google.com/kubernetes-engine/docs/how-to/node-auto-provisioning)
  /// for more details. Structure is documented below.
  final pulumi.Input<ClusterClusterAutoscaling?>? clusterAutoscaling;
  /// The IP address range of the Kubernetes pods
  /// in this cluster in CIDR notation (e.g. `10.96.0.0/14`). Leave blank to have one
  /// automatically chosen or specify a `/14` block in `10.0.0.0/8`. This field will
  /// default a new cluster to routes-based, where `ipAllocationPolicy` is not defined.
  final pulumi.Input<String?>? clusterIpv4Cidr;
  /// ) Configuration for
  /// [ClusterTelemetry](https://cloud.google.com/monitoring/kubernetes-engine/installing#controlling_the_collection_of_application_logs) feature,
  /// Structure is documented below.
  final pulumi.Input<ClusterClusterTelemetry?>? clusterTelemetry;
  /// Configuration for [Confidential Nodes](https://cloud.google.com/kubernetes-engine/docs/how-to/confidential-gke-nodes) feature. Structure is documented below documented below.
  final pulumi.Input<ClusterConfidentialNodes?>? confidentialNodes;
  /// Configuration for all of the cluster's control plane endpoints.
  /// Structure is documented below.
  final pulumi.Input<ClusterControlPlaneEndpointsConfig?>? controlPlaneEndpointsConfig;
  /// Configuration for the
  /// [Cost Allocation](https://cloud.google.com/kubernetes-engine/docs/how-to/cost-allocations) feature.
  /// Structure is documented below.
  final pulumi.Input<ClusterCostManagementConfig?>? costManagementConfig;
  /// Structure is documented below.
  final pulumi.Input<ClusterDatabaseEncryption?>? databaseEncryption;
  /// The desired datapath provider for this cluster. This is set to `LEGACY_DATAPATH` by default, which uses the IPTables-based kube-proxy implementation. Set to `ADVANCED_DATAPATH` to enable Dataplane v2.
  final pulumi.Input<String?>? datapathProvider;
  /// The dataplane optimization mode for the cluster. Possible values: `SCALE_OPTIMIZED`.
  final pulumi.Input<String?>? dataplaneOptimizationMode;
  /// The default maximum number of pods
  /// per node in this cluster. This doesn't work on "routes-based" clusters, clusters
  /// that don't have IP Aliasing enabled. See the [official documentation](https://cloud.google.com/kubernetes-engine/docs/how-to/flexible-pod-cidr)
  /// for more information.
  final pulumi.Input<int?>? defaultMaxPodsPerNode;
  /// [GKE SNAT](https://cloud.google.com/kubernetes-engine/docs/how-to/ip-masquerade-agent#how_ipmasq_works) DefaultSnatStatus contains the desired state of whether default sNAT should be disabled on the cluster, [API doc](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#networkconfig). Structure is documented below
  final pulumi.Input<ClusterDefaultSnatStatus?>? defaultSnatStatus;
  /// (Optional) Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// &lt;a name="nestedDefaultSnatStatus"&gt;&lt;/a&gt;The `defaultSnatStatus` block supports
  final pulumi.Input<String?>? deletionPolicy;
  /// Whether Terraform will be prevented from
  /// destroying the cluster.  Deleting this cluster via `terraform destroy` or
  /// `pulumi up` will only succeed if this field is `false` in the Terraform
  /// state.
  final pulumi.Input<bool?>? deletionProtection;
  /// Description of the cluster.
  final pulumi.Input<String?>? description;
  /// The desired emulated version for the cluster. Used to complete a rollback-safe upgrade after a soak period. Must be in major.minor format (e.g., "1.31"). To complete the upgrade declaratively, set this field to the target minor version. Removing this field from your configuration will not trigger completion.
  final pulumi.Input<String?>? desiredEmulatedVersion;
  /// Disable L4 load balancer VPC firewalls to enable firewall policies.
  final pulumi.Input<bool?>? disableL4LbFirewallReconciliation;
  /// Configuration for [Using Cloud DNS for GKE](https://cloud.google.com/kubernetes-engine/docs/how-to/cloud-dns). Structure is documented below.
  final pulumi.Input<ClusterDnsConfig?>? dnsConfig;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// The current emulated Kubernetes version running on the GKE cluster control plane.
  final pulumi.Input<String?>? emulatedVersion;
  /// Enable Autopilot for this cluster. Defaults to `false`.
  /// Note that when this option is enabled, certain features of Standard GKE are not available.
  /// See the [official documentation](https://cloud.google.com/kubernetes-engine/docs/concepts/autopilot-overview#comparison)
  /// for available features.
  final pulumi.Input<bool?>? enableAutopilot;
  /// Whether CiliumClusterWideNetworkPolicy is enabled on this cluster. Defaults to false.
  final pulumi.Input<bool?>? enableCiliumClusterwideNetworkPolicy;
  /// Whether FQDN Network Policy is enabled on this cluster. Users who enable this feature for existing Standard clusters must restart the GKE Dataplane V2 `anetd` DaemonSet after enabling it. See the [Enable FQDN Network Policy in an existing cluster](https://cloud.google.com/kubernetes-engine/docs/how-to/fqdn-network-policies#enable_fqdn_network_policy_in_an_existing_cluster) for more information.
  final pulumi.Input<bool?>? enableFqdnNetworkPolicy;
  /// Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
  final pulumi.Input<bool?>? enableIntranodeVisibility;
  /// Configuration for Kubernetes Beta APIs.
  /// Structure is documented below.
  final pulumi.Input<ClusterEnableK8sBetaApis?>? enableK8sBetaApis;
  /// Whether to enable Kubernetes Alpha features for
  /// this cluster. Note that when this option is enabled, the cluster cannot be upgraded
  /// and will be automatically deleted after 30 days.
  final pulumi.Input<bool?>? enableKubernetesAlpha;
  /// Whether L4ILB Subsetting is enabled for this cluster.
  final pulumi.Input<bool?>? enableL4IlbSubsetting;
  /// Whether the ABAC authorizer is enabled for this cluster.
  /// When enabled, identities in the system, including service accounts, nodes, and controllers,
  /// will have statically granted permissions beyond those provided by the RBAC configuration or IAM.
  /// Defaults to `false`
  final pulumi.Input<bool?>? enableLegacyAbac;
  /// Whether multi-networking is enabled for this cluster.
  final pulumi.Input<bool?>? enableMultiNetworking;
  /// Enable Shielded Nodes features on all nodes in this cluster.  Defaults to `true`.
  final pulumi.Input<bool?>? enableShieldedNodes;
  /// Whether to enable Cloud TPU resources in this cluster.
  /// See the [official documentation](https://cloud.google.com/tpu/docs/kubernetes-engine-setup).
  final pulumi.Input<bool?>? enableTpu;
  /// The IP address of this cluster's Kubernetes master.
  final pulumi.Input<String?>? endpoint;
  /// (DEPRECATED) Configuration for [Enterprise edition].(https://cloud.google.com/kubernetes-engine/enterprise/docs/concepts/gke-editions). Structure is documented below. Deprecated as GKE Enterprise features are now available without an Enterprise tier. See https://cloud.google.com/blog/products/containers-kubernetes/gke-gets-new-pricing-and-capabilities-on-10th-birthday for the announcement of this change.
  final pulumi.Input<ClusterEnterpriseConfig?>? enterpriseConfig;
  /// Fleet configuration for the cluster. Structure is documented below.
  final pulumi.Input<ClusterFleet?>? fleet;
  /// Configuration for [GKE Gateway API controller](https://cloud.google.com/kubernetes-engine/docs/concepts/gateway-api). Structure is documented below.
  final pulumi.Input<ClusterGatewayApiConfig?>? gatewayApiConfig;
  /// Configuration options for the auto-upgrade patch type feature, which provide more control over the speed of automatic upgrades of your GKE clusters.
  /// Structure is documented below.
  final pulumi.Input<ClusterGkeAutoUpgradeConfig?>? gkeAutoUpgradeConfig;
  /// . Structure is documented below.
  final pulumi.Input<ClusterIdentityServiceConfig?>? identityServiceConfig;
  /// Whether to ignore external changes (drift) to the GKE node count (e.g. from GKE autoscaling). Setting this to `true` skips querying Compute Engine Instance Group Managers (IGMs) to determine the current node count on read, which can save API quota and speed up plans on large clusters. Unlike Terraform core's `lifecycle { ignoreChanges = [nodeCount] }`, this allows configuration-driven scaling updates in your HCL while still ignoring runtime autoscaling drift.
  final pulumi.Input<bool?>? ignoreNodeCountChanges;
  /// Defines the config of in-transit encryption. Valid values are `IN_TRANSIT_ENCRYPTION_DISABLED` and `IN_TRANSIT_ENCRYPTION_INTER_NODE_TRANSPARENT`.
  final pulumi.Input<String?>? inTransitEncryptionConfig;
  /// The number of nodes to create in this
  /// cluster's default node pool. In regional or multi-zonal clusters, this is the
  /// number of nodes per zone. Must be set if `nodePool` is not set. If you're using
  /// `gcp.container.NodePool` objects with no default node pool, you'll need to
  /// set this to a value of at least `1`, alongside setting
  /// `removeDefaultNodePool` to `true`.
  final pulumi.Input<int?>? initialNodeCount;
  /// Configuration of cluster IP allocation for
  /// VPC-native clusters. If this block is unset during creation, it will be set by the GKE backend.
  /// Structure is documented below.
  final pulumi.Input<ClusterIpAllocationPolicy?>? ipAllocationPolicy;
  /// The fingerprint of the set of labels for this cluster.
  final pulumi.Input<String?>? labelFingerprint;
  /// The location (region or zone) in which the cluster
  /// master will be created, as well as the default node location. If you specify a
  /// zone (such as `us-central1-a`), the cluster will be a zonal cluster with a
  /// single cluster master. If you specify a region (such as `us-west1`), the
  /// cluster will be a regional cluster with multiple masters spread across zones in
  /// the region, and with default node locations in those zones as well
  final pulumi.Input<String?>? location;
  /// Logging configuration for the cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterLoggingConfig?>? loggingConfig;
  /// The logging service that the cluster should
  /// write logs to. Available options include `logging.googleapis.com`(Legacy Stackdriver),
  /// `logging.googleapis.com/kubernetes`(Stackdriver Kubernetes Engine Logging), and `none`. Defaults to `logging.googleapis.com/kubernetes`
  final pulumi.Input<String?>? loggingService;
  /// The maintenance policy to use for the cluster. Structure is
  /// documented below.
  final pulumi.Input<ClusterMaintenancePolicy?>? maintenancePolicy;
  /// ) Configuration for the [GKE Managed ML Diagnostics](https://docs.cloud.google.com/kubernetes-engine/docs/concepts/TODO) feature. Structure is documented below.
  final pulumi.Input<ClusterManagedMachineLearningDiagnosticsConfig?>? managedMachineLearningDiagnosticsConfig;
  /// ) Configuration for the [GKE Managed OpenTelemetry](https://docs.cloud.google.com/kubernetes-engine/docs/concepts/managed-otel-gke) feature. Structure is documented below.
  final pulumi.Input<ClusterManagedOpentelemetryConfig?>? managedOpentelemetryConfig;
  /// The authentication information for accessing the
  /// Kubernetes master. Some values in this block are only returned by the API if
  /// your service account has permission to get credentials for your GKE cluster. If
  /// you see an unexpected diff unsetting your client cert, ensure you have the
  /// `container.clusters.getCredentials` permission.
  /// Structure is documented below.
  final pulumi.Input<ClusterMasterAuth?>? masterAuth;
  /// The desired
  /// configuration options for master authorized networks. Omit the
  /// nested `cidrBlocks` attribute to disallow external access (except
  /// the cluster node IPs, which GKE automatically whitelists).
  /// Structure is documented below.
  final pulumi.Input<ClusterMasterAuthorizedNetworksConfig?>? masterAuthorizedNetworksConfig;
  /// The current version of the master in the cluster. This may
  /// be different than the `minMasterVersion` set in the config if the master
  /// has been updated by GKE.
  final pulumi.Input<String?>? masterVersion;
  /// Structure is documented below.
  final pulumi.Input<ClusterMeshCertificates?>? meshCertificates;
  /// The minimum version of the master. GKE
  /// will auto-update the master to new versions, so this does not guarantee the
  /// current master version--use the read-only `masterVersion` field to obtain that.
  /// If unset, the cluster's version will be set by GKE to the version of the most recent
  /// official release (which is not necessarily the latest version).  Most users will find
  /// the `gcp.container.getEngineVersions` data source useful - it indicates which versions
  /// are available. If you intend to specify versions manually,
  /// [the docs](https://cloud.google.com/kubernetes-engine/versioning-and-upgrades#specifying_cluster_version)
  /// describe the various acceptable formats for this field.
  ///
  /// &gt; If you are using the `gcp.container.getEngineVersions` datasource with a regional cluster, ensure that you have provided a `location`
  /// to the datasource. A region can have a different set of supported versions than its corresponding zones, and not all zones in a
  /// region are guaranteed to support the same version.
  final pulumi.Input<String?>? minMasterVersion;
  /// Monitoring configuration for the cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterMonitoringConfig?>? monitoringConfig;
  /// The monitoring service that the cluster
  /// should write metrics to.
  /// Automatically send metrics from pods in the cluster to the Google Cloud Monitoring API.
  /// VM metrics will be collected by Google Compute Engine regardless of this setting
  /// Available options include
  /// `monitoring.googleapis.com`(Legacy Stackdriver), `monitoring.googleapis.com/kubernetes`(Stackdriver Kubernetes Engine Monitoring), and `none`.
  /// Defaults to `monitoring.googleapis.com/kubernetes`
  final pulumi.Input<String?>? monitoringService;
  /// The name of the cluster, unique within the project and
  /// location.
  ///
  /// - - -
  final pulumi.Input<String?>? name;
  /// The name or selfLink of the Google Compute Engine
  /// network to which the cluster is connected. For Shared VPC, set this to the self link of the
  /// shared network.
  final pulumi.Input<String?>? network;
  /// Network bandwidth tier configuration.
  final pulumi.Input<ClusterNetworkPerformanceConfig?>? networkPerformanceConfig;
  /// Configuration options for the
  /// [NetworkPolicy](https://kubernetes.io/docs/concepts/services-networking/networkpolicies/)
  /// feature. Structure is documented below.
  final pulumi.Input<ClusterNetworkPolicy?>? networkPolicy;
  /// Determines whether alias IPs or routes will be used for pod IPs in the cluster.
  /// Options are `VPC_NATIVE` or `ROUTES`. `VPC_NATIVE` enables [IP aliasing](https://cloud.google.com/kubernetes-engine/docs/how-to/ip-aliases). Newly created clusters will default to `VPC_NATIVE`.
  final pulumi.Input<String?>? networkingMode;
  /// Parameters used in creating the default node pool.
  /// Generally, this field should not be used at the same time as a
  /// `gcp.container.NodePool` or a `nodePool` block; this configuration
  /// manages the default node pool, which isn't recommended to be used.
  /// Structure is documented below.
  final pulumi.Input<ClusterNodeConfig?>? nodeConfig;
  /// Configuration for [node creation config](https://clouddocs.devsite.corp.google.com/kubernetes-engine/security/control-plane-node-creation). Structure is documented below.
  final pulumi.Input<ClusterNodeCreationConfig?>? nodeCreationConfig;
  /// The list of zones in which the cluster's nodes
  /// are located. Nodes must be in the region of their regional cluster or in the
  /// same region as their cluster's zone for zonal clusters. If this is specified for
  /// a zonal cluster, omit the cluster's zone.
  ///
  /// &gt; A "multi-zonal" cluster is a zonal cluster with at least one additional zone
  /// defined; in a multi-zonal cluster, the cluster master is only present in a
  /// single zone while nodes are present in each of the primary zone and the node
  /// locations. In contrast, in a regional cluster, cluster master nodes are present
  /// in multiple zones in the region. For that reason, regional clusters should be
  /// preferred.
  final pulumi.Input<List<String>?>? nodeLocations;
  /// Node pool configs that apply to auto-provisioned node pools in
  /// [autopilot](https://cloud.google.com/kubernetes-engine/docs/concepts/autopilot-overview#comparison) clusters and
  /// [node auto-provisioning](https://cloud.google.com/kubernetes-engine/docs/how-to/node-auto-provisioning)-enabled clusters. Structure is documented below.
  final pulumi.Input<ClusterNodePoolAutoConfig?>? nodePoolAutoConfig;
  /// Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object. Structure is documented below.
  final pulumi.Input<ClusterNodePoolDefaults?>? nodePoolDefaults;
  /// List of node pools associated with this cluster. Structure is documented below. See gcp.container.NodePool for exact schema.
  /// **Warning:** node pools defined inside a cluster can't be changed (or added/removed) after
  /// cluster creation without deleting and recreating the entire cluster. Unless you absolutely need the ability
  /// to say "these are the _only_ node pools associated with this cluster", use the
  /// gcp.container.NodePool resource instead of this property.
  final pulumi.Input<List<ClusterNodePool>?>? nodePools;
  /// The Kubernetes version on the nodes. Must either be unset
  /// or set to the same value as `minMasterVersion` on create. Defaults to the default
  /// version set by GKE which is not necessarily the latest version. This only affects
  /// nodes in the default node pool. While a fuzzy version can be specified, it's
  /// recommended that you specify explicit versions as the provider will see spurious diffs
  /// when fuzzy versions are used. See the `gcp.container.getEngineVersions` data source's
  /// `versionPrefix` field to approximate fuzzy versions.
  /// To update nodes in other node pools, use the `version` attribute on the node pool.
  final pulumi.Input<String?>? nodeVersion;
  /// Configuration for the [cluster upgrade notifications](https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-upgrade-notifications) feature. Structure is documented below.
  final pulumi.Input<ClusterNotificationConfig?>? notificationConfig;
  final pulumi.Input<String?>? operation;
  /// Configuration for the
  /// Structure is documented below.
  final pulumi.Input<ClusterPodAutoscaling?>? podAutoscaling;
  /// ) Configuration for the
  /// [PodSecurityPolicy](https://cloud.google.com/kubernetes-engine/docs/how-to/pod-security-policies) feature.
  /// Structure is documented below.
  final pulumi.Input<ClusterPodSecurityPolicyConfig?>? podSecurityPolicyConfig;
  /// Configuration for [private clusters](https://cloud.google.com/kubernetes-engine/docs/how-to/private-clusters),
  /// clusters with private nodes. Structure is documented below.
  final pulumi.Input<ClusterPrivateClusterConfig?>? privateClusterConfig;
  /// The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4).
  final pulumi.Input<String?>? privateIpv6GoogleAccess;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// )
  /// Enable/Disable Protect API features for the cluster. Structure is documented below.
  final pulumi.Input<ClusterProtectConfig?>? protectConfig;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// RBACBindingConfig allows user to restrict ClusterRoleBindings an RoleBindings that can be created. Structure is documented below.
  final pulumi.Input<ClusterRbacBindingConfig?>? rbacBindingConfig;
  /// Configuration options for the [Release channel](https://cloud.google.com/kubernetes-engine/docs/concepts/release-channels)
  /// feature, which provide more control over automatic upgrades of your GKE clusters.
  /// When updating this field, GKE imposes specific version requirements. See
  /// [Selecting a new release channel](https://cloud.google.com/kubernetes-engine/docs/concepts/release-channels#selecting_a_new_release_channel)
  /// for more details; the `gcp.container.getEngineVersions` datasource can provide
  /// the default version for a channel. Note that removing the `releaseChannel`
  /// field from your config will cause the provider to stop managing your cluster's
  /// release channel, but will not unenroll it. Instead, use the `"UNSPECIFIED"`
  /// channel. Structure is documented below.
  final pulumi.Input<ClusterReleaseChannel?>? releaseChannel;
  /// If `true`, deletes the default node
  /// pool upon cluster creation. If you're using `gcp.container.NodePool`
  /// resources with no default node pool, this should be set to `true`, alongside
  /// setting `initialNodeCount` to at least `1`.
  final pulumi.Input<bool?>? removeDefaultNodePool;
  /// The GCE resource labels (a map of key/value pairs) to be applied to the cluster.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? resourceLabels;
  /// Configuration for the
  /// [ResourceUsageExportConfig](https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-usage-metering) feature.
  /// Structure is documented below.
  final pulumi.Input<ClusterResourceUsageExportConfig?>? resourceUsageExportConfig;
  /// Configuration for rollback-safe (two-step) upgrades. Structure is documented below.
  final pulumi.Input<ClusterRollbackSafeUpgrade?>? rollbackSafeUpgrade;
  /// Configuration for the
  /// [SecretManagerConfig](https://cloud.google.com/secret-manager/docs/secret-manager-managed-csi-component) feature.
  /// Structure is documented below.
  final pulumi.Input<ClusterSecretManagerConfig?>? secretManagerConfig;
  /// Configuration for the
  /// [SecretSyncConfig](https://cloud.google.com/secret-manager/docs/sync-k8-secrets) feature.
  /// Structure is documented below.
  final pulumi.Input<ClusterSecretSyncConfig?>? secretSyncConfig;
  /// Enable/Disable Security Posture API features for the cluster. Structure is documented below.
  final pulumi.Input<ClusterSecurityPostureConfig?>? securityPostureConfig;
  /// The server-defined URL for the resource.
  final pulumi.Input<String?>? selfLink;
  /// Structure is documented below.
  final pulumi.Input<ClusterServiceExternalIpsConfig?>? serviceExternalIpsConfig;
  /// The IP address range of the Kubernetes services in this
  /// cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `1.2.3.4/29`). Service addresses are typically put in the last
  /// `/16` from the container CIDR.
  final pulumi.Input<String?>? servicesIpv4Cidr;
  /// Whether to skip refreshing the GKE cluster's inline node pool list during read operations. Setting this to `true` prevents the provider from querying GKE API for node pools, resolving long plan times on clusters with a large number of node pools. **Warning:** When enabled, the cluster's `nodePool` attribute in the Terraform state will remain empty (`[]`), even if node pools exist externally. This flag cannot be set to `true` if you define inline `nodePool` blocks in your configuration; doing so will result in a validation error during plan.
  final pulumi.Input<bool?>? skipNodePoolRefresh;
  /// The name or selfLink of the Google Compute Engine
  /// subnetwork in which the cluster's instances are launched.
  final pulumi.Input<String?>? subnetwork;
  /// TPU configuration for the cluster.
  final pulumi.Input<ClusterTpuConfig?>? tpuConfig;
  /// The IP address range of the Cloud TPUs in this cluster, in
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `1.2.3.4/29`).
  final pulumi.Input<String?>? tpuIpv4CidrBlock;
  /// The custom keys configuration of the cluster Structure is documented below.
  final pulumi.Input<ClusterUserManagedKeysConfig?>? userManagedKeysConfig;
  /// Vertical Pod Autoscaling automatically adjusts the resources of pods controlled by it.
  /// Structure is documented below.
  final pulumi.Input<ClusterVerticalPodAutoscaling?>? verticalPodAutoscaling;
  /// )
  /// Configuration for [direct-path (via ALTS) with workload identity.](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#workloadaltsconfig). Structure is documented below.
  final pulumi.Input<ClusterWorkloadAltsConfig?>? workloadAltsConfig;
  /// Workload Identity allows Kubernetes service accounts to act as a user-managed
  /// [Google IAM Service Account](https://cloud.google.com/iam/docs/service-accounts#user-managed_service_accounts).
  /// Structure is documented below.
  final pulumi.Input<ClusterWorkloadIdentityConfig?>? workloadIdentityConfig;

  /// Creates a new [ClusterState].
  /// [addonsConfig] The configuration for addons supported by GKE.
  /// [allowNetAdmin] Enable NET_ADMIN for the cluster. Defaults to
  /// [anonymousAuthenticationConfig] Configuration for [anonymous authentication restrictions](https://cloud.google.com/kubernetes-engine/docs/how-to/hardening-your-cluster#restrict-anon-access). Structure is documented below.
  /// [authenticatorGroupsConfig] Configuration for the
  /// [autopilotClusterPolicyConfig] Per-cluster configuration of Autopilot cluster policies in GKE clusters. This field can only be configured in non Autopilot clusters. Structure is documented below.
  /// [autopilotPrivilegedAdmissions] The customer
  /// [binaryAuthorization] Configuration options for the Binary
  /// [clusterAutoscaling] Per-cluster configuration of Node Auto-Provisioning with Cluster Autoscaler to
  /// [clusterIpv4Cidr] The IP address range of the Kubernetes pods
  /// [clusterTelemetry] ) Configuration for
  /// [confidentialNodes] Configuration for [Confidential Nodes](https://cloud.google.com/kubernetes-engine/docs/how-to/confidential-gke-nodes) feature. Structure is documented below documented below.
  /// [controlPlaneEndpointsConfig] Configuration for all of the cluster's control plane endpoints.
  /// [costManagementConfig] Configuration for the
  /// [databaseEncryption] Structure is documented below.
  /// [datapathProvider] The desired datapath provider for this cluster. This is set to `LEGACY_DATAPATH` by default, which uses the IPTables-based kube-proxy implementation. Set to `ADVANCED_DATAPATH` to enable Dataplane v2.
  /// [dataplaneOptimizationMode] The dataplane optimization mode for the cluster. Possible values: `SCALE_OPTIMIZED`.
  /// [defaultMaxPodsPerNode] The default maximum number of pods
  /// [defaultSnatStatus] [GKE SNAT](https://cloud.google.com/kubernetes-engine/docs/how-to/ip-masquerade-agent#how_ipmasq_works) DefaultSnatStatus contains the desired state of whether default sNAT should be disabled on the cluster, [API doc](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#networkconfig). Structure is documented below
  /// [deletionPolicy] (Optional) Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [deletionProtection] Whether Terraform will be prevented from
  /// [description] Description of the cluster.
  /// [desiredEmulatedVersion] The desired emulated version for the cluster. Used to complete a rollback-safe upgrade after a soak period. Must be in major.minor format (e.g., "1.31"). To complete the upgrade declaratively, set this field to the target minor version. Removing this field from your configuration will not trigger completion.
  /// [disableL4LbFirewallReconciliation] Disable L4 load balancer VPC firewalls to enable firewall policies.
  /// [dnsConfig] Configuration for [Using Cloud DNS for GKE](https://cloud.google.com/kubernetes-engine/docs/how-to/cloud-dns). Structure is documented below.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [emulatedVersion] The current emulated Kubernetes version running on the GKE cluster control plane.
  /// [enableAutopilot] Enable Autopilot for this cluster. Defaults to `false`.
  /// [enableCiliumClusterwideNetworkPolicy] Whether CiliumClusterWideNetworkPolicy is enabled on this cluster. Defaults to false.
  /// [enableFqdnNetworkPolicy] Whether FQDN Network Policy is enabled on this cluster. Users who enable this feature for existing Standard clusters must restart the GKE Dataplane V2 `anetd` DaemonSet after enabling it. See the [Enable FQDN Network Policy in an existing cluster](https://cloud.google.com/kubernetes-engine/docs/how-to/fqdn-network-policies#enable_fqdn_network_policy_in_an_existing_cluster) for more information.
  /// [enableIntranodeVisibility] Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
  /// [enableK8sBetaApis] Configuration for Kubernetes Beta APIs.
  /// [enableKubernetesAlpha] Whether to enable Kubernetes Alpha features for
  /// [enableL4IlbSubsetting] Whether L4ILB Subsetting is enabled for this cluster.
  /// [enableLegacyAbac] Whether the ABAC authorizer is enabled for this cluster.
  /// [enableMultiNetworking] Whether multi-networking is enabled for this cluster.
  /// [enableShieldedNodes] Enable Shielded Nodes features on all nodes in this cluster.  Defaults to `true`.
  /// [enableTpu] Whether to enable Cloud TPU resources in this cluster.
  /// [endpoint] The IP address of this cluster's Kubernetes master.
  /// [enterpriseConfig] (DEPRECATED) Configuration for [Enterprise edition].(https://cloud.google.com/kubernetes-engine/enterprise/docs/concepts/gke-editions). Structure is documented below. Deprecated as GKE Enterprise features are now available without an Enterprise tier. See https://cloud.google.com/blog/products/containers-kubernetes/gke-gets-new-pricing-and-capabilities-on-10th-birthday for the announcement of this change.
  /// [fleet] Fleet configuration for the cluster. Structure is documented below.
  /// [gatewayApiConfig] Configuration for [GKE Gateway API controller](https://cloud.google.com/kubernetes-engine/docs/concepts/gateway-api). Structure is documented below.
  /// [gkeAutoUpgradeConfig] Configuration options for the auto-upgrade patch type feature, which provide more control over the speed of automatic upgrades of your GKE clusters.
  /// [identityServiceConfig] . Structure is documented below.
  /// [ignoreNodeCountChanges] Whether to ignore external changes (drift) to the GKE node count (e.g. from GKE autoscaling). Setting this to `true` skips querying Compute Engine Instance Group Managers (IGMs) to determine the current node count on read, which can save API quota and speed up plans on large clusters. Unlike Terraform core's `lifecycle { ignoreChanges = [nodeCount] }`, this allows configuration-driven scaling updates in your HCL while still ignoring runtime autoscaling drift.
  /// [inTransitEncryptionConfig] Defines the config of in-transit encryption. Valid values are `IN_TRANSIT_ENCRYPTION_DISABLED` and `IN_TRANSIT_ENCRYPTION_INTER_NODE_TRANSPARENT`.
  /// [initialNodeCount] The number of nodes to create in this
  /// [ipAllocationPolicy] Configuration of cluster IP allocation for
  /// [labelFingerprint] The fingerprint of the set of labels for this cluster.
  /// [location] The location (region or zone) in which the cluster
  /// [loggingConfig] Logging configuration for the cluster.
  /// [loggingService] The logging service that the cluster should
  /// [maintenancePolicy] The maintenance policy to use for the cluster. Structure is
  /// [managedMachineLearningDiagnosticsConfig] ) Configuration for the [GKE Managed ML Diagnostics](https://docs.cloud.google.com/kubernetes-engine/docs/concepts/TODO) feature. Structure is documented below.
  /// [managedOpentelemetryConfig] ) Configuration for the [GKE Managed OpenTelemetry](https://docs.cloud.google.com/kubernetes-engine/docs/concepts/managed-otel-gke) feature. Structure is documented below.
  /// [masterAuth] The authentication information for accessing the
  /// [masterAuthorizedNetworksConfig] The desired
  /// [masterVersion] The current version of the master in the cluster. This may
  /// [meshCertificates] Structure is documented below.
  /// [minMasterVersion] The minimum version of the master. GKE
  /// [monitoringConfig] Monitoring configuration for the cluster.
  /// [monitoringService] The monitoring service that the cluster
  /// [name] The name of the cluster, unique within the project and
  /// [network] The name or selfLink of the Google Compute Engine
  /// [networkPerformanceConfig] Network bandwidth tier configuration.
  /// [networkPolicy] Configuration options for the
  /// [networkingMode] Determines whether alias IPs or routes will be used for pod IPs in the cluster.
  /// [nodeConfig] Parameters used in creating the default node pool.
  /// [nodeCreationConfig] Configuration for [node creation config](https://clouddocs.devsite.corp.google.com/kubernetes-engine/security/control-plane-node-creation). Structure is documented below.
  /// [nodeLocations] The list of zones in which the cluster's nodes
  /// [nodePoolAutoConfig] Node pool configs that apply to auto-provisioned node pools in
  /// [nodePoolDefaults] Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object. Structure is documented below.
  /// [nodePools] List of node pools associated with this cluster. Structure is documented below. See gcp.container.NodePool for exact schema.
  /// [nodeVersion] The Kubernetes version on the nodes. Must either be unset
  /// [notificationConfig] Configuration for the [cluster upgrade notifications](https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-upgrade-notifications) feature. Structure is documented below.
  /// [operation] Optional.
  /// [podAutoscaling] Configuration for the
  /// [podSecurityPolicyConfig] ) Configuration for the
  /// [privateClusterConfig] Configuration for [private clusters](https://cloud.google.com/kubernetes-engine/docs/how-to/private-clusters),
  /// [privateIpv6GoogleAccess] The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4).
  /// [project] The ID of the project in which the resource belongs. If it
  /// [protectConfig] )
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [rbacBindingConfig] RBACBindingConfig allows user to restrict ClusterRoleBindings an RoleBindings that can be created. Structure is documented below.
  /// [releaseChannel] Configuration options for the [Release channel](https://cloud.google.com/kubernetes-engine/docs/concepts/release-channels)
  /// [removeDefaultNodePool] If `true`, deletes the default node
  /// [resourceLabels] The GCE resource labels (a map of key/value pairs) to be applied to the cluster.
  /// [resourceUsageExportConfig] Configuration for the
  /// [rollbackSafeUpgrade] Configuration for rollback-safe (two-step) upgrades. Structure is documented below.
  /// [secretManagerConfig] Configuration for the
  /// [secretSyncConfig] Configuration for the
  /// [securityPostureConfig] Enable/Disable Security Posture API features for the cluster. Structure is documented below.
  /// [selfLink] The server-defined URL for the resource.
  /// [serviceExternalIpsConfig] Structure is documented below.
  /// [servicesIpv4Cidr] The IP address range of the Kubernetes services in this
  /// [skipNodePoolRefresh] Whether to skip refreshing the GKE cluster's inline node pool list during read operations. Setting this to `true` prevents the provider from querying GKE API for node pools, resolving long plan times on clusters with a large number of node pools. **Warning:** When enabled, the cluster's `nodePool` attribute in the Terraform state will remain empty (`[]`), even if node pools exist externally. This flag cannot be set to `true` if you define inline `nodePool` blocks in your configuration; doing so will result in a validation error during plan.
  /// [subnetwork] The name or selfLink of the Google Compute Engine
  /// [tpuConfig] TPU configuration for the cluster.
  /// [tpuIpv4CidrBlock] The IP address range of the Cloud TPUs in this cluster, in
  /// [userManagedKeysConfig] The custom keys configuration of the cluster Structure is documented below.
  /// [verticalPodAutoscaling] Vertical Pod Autoscaling automatically adjusts the resources of pods controlled by it.
  /// [workloadAltsConfig] )
  /// [workloadIdentityConfig] Workload Identity allows Kubernetes service accounts to act as a user-managed
  const ClusterState({
    this.addonsConfig,
    this.allowNetAdmin,
    this.anonymousAuthenticationConfig,
    this.authenticatorGroupsConfig,
    this.autopilotClusterPolicyConfig,
    this.autopilotPrivilegedAdmissions,
    this.binaryAuthorization,
    this.clusterAutoscaling,
    this.clusterIpv4Cidr,
    this.clusterTelemetry,
    this.confidentialNodes,
    this.controlPlaneEndpointsConfig,
    this.costManagementConfig,
    this.databaseEncryption,
    this.datapathProvider,
    this.dataplaneOptimizationMode,
    this.defaultMaxPodsPerNode,
    this.defaultSnatStatus,
    this.deletionPolicy,
    this.deletionProtection,
    this.description,
    this.desiredEmulatedVersion,
    this.disableL4LbFirewallReconciliation,
    this.dnsConfig,
    this.effectiveLabels,
    this.emulatedVersion,
    this.enableAutopilot,
    this.enableCiliumClusterwideNetworkPolicy,
    this.enableFqdnNetworkPolicy,
    this.enableIntranodeVisibility,
    this.enableK8sBetaApis,
    this.enableKubernetesAlpha,
    this.enableL4IlbSubsetting,
    this.enableLegacyAbac,
    this.enableMultiNetworking,
    this.enableShieldedNodes,
    this.enableTpu,
    this.endpoint,
    this.enterpriseConfig,
    this.fleet,
    this.gatewayApiConfig,
    this.gkeAutoUpgradeConfig,
    this.identityServiceConfig,
    this.ignoreNodeCountChanges,
    this.inTransitEncryptionConfig,
    this.initialNodeCount,
    this.ipAllocationPolicy,
    this.labelFingerprint,
    this.location,
    this.loggingConfig,
    this.loggingService,
    this.maintenancePolicy,
    this.managedMachineLearningDiagnosticsConfig,
    this.managedOpentelemetryConfig,
    this.masterAuth,
    this.masterAuthorizedNetworksConfig,
    this.masterVersion,
    this.meshCertificates,
    this.minMasterVersion,
    this.monitoringConfig,
    this.monitoringService,
    this.name,
    this.network,
    this.networkPerformanceConfig,
    this.networkPolicy,
    this.networkingMode,
    this.nodeConfig,
    this.nodeCreationConfig,
    this.nodeLocations,
    this.nodePoolAutoConfig,
    this.nodePoolDefaults,
    this.nodePools,
    this.nodeVersion,
    this.notificationConfig,
    this.operation,
    this.podAutoscaling,
    this.podSecurityPolicyConfig,
    this.privateClusterConfig,
    this.privateIpv6GoogleAccess,
    this.project,
    this.protectConfig,
    this.pulumiLabels,
    this.rbacBindingConfig,
    this.releaseChannel,
    this.removeDefaultNodePool,
    this.resourceLabels,
    this.resourceUsageExportConfig,
    this.rollbackSafeUpgrade,
    this.secretManagerConfig,
    this.secretSyncConfig,
    this.securityPostureConfig,
    this.selfLink,
    this.serviceExternalIpsConfig,
    this.servicesIpv4Cidr,
    this.skipNodePoolRefresh,
    this.subnetwork,
    this.tpuConfig,
    this.tpuIpv4CidrBlock,
    this.userManagedKeysConfig,
    this.verticalPodAutoscaling,
    this.workloadAltsConfig,
    this.workloadIdentityConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonsConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfig, Map<String, dynamic>>(addonsConfig, (value) => value.toMap()),
      'allowNetAdmin': ?allowNetAdmin,
      'anonymousAuthenticationConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAnonymousAuthenticationConfig, Map<String, dynamic>>(anonymousAuthenticationConfig, (value) => value.toMap()),
      'authenticatorGroupsConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAuthenticatorGroupsConfig, Map<String, dynamic>>(authenticatorGroupsConfig, (value) => value.toMap()),
      'autopilotClusterPolicyConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAutopilotClusterPolicyConfig, Map<String, dynamic>>(autopilotClusterPolicyConfig, (value) => value.toMap()),
      'autopilotPrivilegedAdmissions': ?autopilotPrivilegedAdmissions,
      'binaryAuthorization': ?pulumi.Input.mapOptionalInputValue<ClusterBinaryAuthorization, Map<String, dynamic>>(binaryAuthorization, (value) => value.toMap()),
      'clusterAutoscaling': ?pulumi.Input.mapOptionalInputValue<ClusterClusterAutoscaling, Map<String, dynamic>>(clusterAutoscaling, (value) => value.toMap()),
      'clusterIpv4Cidr': ?clusterIpv4Cidr,
      'clusterTelemetry': ?pulumi.Input.mapOptionalInputValue<ClusterClusterTelemetry, Map<String, dynamic>>(clusterTelemetry, (value) => value.toMap()),
      'confidentialNodes': ?pulumi.Input.mapOptionalInputValue<ClusterConfidentialNodes, Map<String, dynamic>>(confidentialNodes, (value) => value.toMap()),
      'controlPlaneEndpointsConfig': ?pulumi.Input.mapOptionalInputValue<ClusterControlPlaneEndpointsConfig, Map<String, dynamic>>(controlPlaneEndpointsConfig, (value) => value.toMap()),
      'costManagementConfig': ?pulumi.Input.mapOptionalInputValue<ClusterCostManagementConfig, Map<String, dynamic>>(costManagementConfig, (value) => value.toMap()),
      'databaseEncryption': ?pulumi.Input.mapOptionalInputValue<ClusterDatabaseEncryption, Map<String, dynamic>>(databaseEncryption, (value) => value.toMap()),
      'datapathProvider': ?datapathProvider,
      'dataplaneOptimizationMode': ?dataplaneOptimizationMode,
      'defaultMaxPodsPerNode': ?defaultMaxPodsPerNode,
      'defaultSnatStatus': ?pulumi.Input.mapOptionalInputValue<ClusterDefaultSnatStatus, Map<String, dynamic>>(defaultSnatStatus, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'desiredEmulatedVersion': ?desiredEmulatedVersion,
      'disableL4LbFirewallReconciliation': ?disableL4LbFirewallReconciliation,
      'dnsConfig': ?pulumi.Input.mapOptionalInputValue<ClusterDnsConfig, Map<String, dynamic>>(dnsConfig, (value) => value.toMap()),
      'effectiveLabels': ?effectiveLabels,
      'emulatedVersion': ?emulatedVersion,
      'enableAutopilot': ?enableAutopilot,
      'enableCiliumClusterwideNetworkPolicy': ?enableCiliumClusterwideNetworkPolicy,
      'enableFqdnNetworkPolicy': ?enableFqdnNetworkPolicy,
      'enableIntranodeVisibility': ?enableIntranodeVisibility,
      'enableK8sBetaApis': ?pulumi.Input.mapOptionalInputValue<ClusterEnableK8sBetaApis, Map<String, dynamic>>(enableK8sBetaApis, (value) => value.toMap()),
      'enableKubernetesAlpha': ?enableKubernetesAlpha,
      'enableL4IlbSubsetting': ?enableL4IlbSubsetting,
      'enableLegacyAbac': ?enableLegacyAbac,
      'enableMultiNetworking': ?enableMultiNetworking,
      'enableShieldedNodes': ?enableShieldedNodes,
      'enableTpu': ?enableTpu,
      'endpoint': ?endpoint,
      'enterpriseConfig': ?pulumi.Input.mapOptionalInputValue<ClusterEnterpriseConfig, Map<String, dynamic>>(enterpriseConfig, (value) => value.toMap()),
      'fleet': ?pulumi.Input.mapOptionalInputValue<ClusterFleet, Map<String, dynamic>>(fleet, (value) => value.toMap()),
      'gatewayApiConfig': ?pulumi.Input.mapOptionalInputValue<ClusterGatewayApiConfig, Map<String, dynamic>>(gatewayApiConfig, (value) => value.toMap()),
      'gkeAutoUpgradeConfig': ?pulumi.Input.mapOptionalInputValue<ClusterGkeAutoUpgradeConfig, Map<String, dynamic>>(gkeAutoUpgradeConfig, (value) => value.toMap()),
      'identityServiceConfig': ?pulumi.Input.mapOptionalInputValue<ClusterIdentityServiceConfig, Map<String, dynamic>>(identityServiceConfig, (value) => value.toMap()),
      'ignoreNodeCountChanges': ?ignoreNodeCountChanges,
      'inTransitEncryptionConfig': ?inTransitEncryptionConfig,
      'initialNodeCount': ?initialNodeCount,
      'ipAllocationPolicy': ?pulumi.Input.mapOptionalInputValue<ClusterIpAllocationPolicy, Map<String, dynamic>>(ipAllocationPolicy, (value) => value.toMap()),
      'labelFingerprint': ?labelFingerprint,
      'location': ?location,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<ClusterLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'loggingService': ?loggingService,
      'maintenancePolicy': ?pulumi.Input.mapOptionalInputValue<ClusterMaintenancePolicy, Map<String, dynamic>>(maintenancePolicy, (value) => value.toMap()),
      'managedMachineLearningDiagnosticsConfig': ?pulumi.Input.mapOptionalInputValue<ClusterManagedMachineLearningDiagnosticsConfig, Map<String, dynamic>>(managedMachineLearningDiagnosticsConfig, (value) => value.toMap()),
      'managedOpentelemetryConfig': ?pulumi.Input.mapOptionalInputValue<ClusterManagedOpentelemetryConfig, Map<String, dynamic>>(managedOpentelemetryConfig, (value) => value.toMap()),
      'masterAuth': ?pulumi.Input.mapOptionalInputValue<ClusterMasterAuth, Map<String, dynamic>>(masterAuth, (value) => value.toMap()),
      'masterAuthorizedNetworksConfig': ?pulumi.Input.mapOptionalInputValue<ClusterMasterAuthorizedNetworksConfig, Map<String, dynamic>>(masterAuthorizedNetworksConfig, (value) => value.toMap()),
      'masterVersion': ?masterVersion,
      'meshCertificates': ?pulumi.Input.mapOptionalInputValue<ClusterMeshCertificates, Map<String, dynamic>>(meshCertificates, (value) => value.toMap()),
      'minMasterVersion': ?minMasterVersion,
      'monitoringConfig': ?pulumi.Input.mapOptionalInputValue<ClusterMonitoringConfig, Map<String, dynamic>>(monitoringConfig, (value) => value.toMap()),
      'monitoringService': ?monitoringService,
      'name': ?name,
      'network': ?network,
      'networkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNetworkPerformanceConfig, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'networkPolicy': ?pulumi.Input.mapOptionalInputValue<ClusterNetworkPolicy, Map<String, dynamic>>(networkPolicy, (value) => value.toMap()),
      'networkingMode': ?networkingMode,
      'nodeConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodeConfig, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'nodeCreationConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodeCreationConfig, Map<String, dynamic>>(nodeCreationConfig, (value) => value.toMap()),
      'nodeLocations': ?nodeLocations,
      'nodePoolAutoConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolAutoConfig, Map<String, dynamic>>(nodePoolAutoConfig, (value) => value.toMap()),
      'nodePoolDefaults': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolDefaults, Map<String, dynamic>>(nodePoolDefaults, (value) => value.toMap()),
      'nodePools': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodePool>, List<Map<String, dynamic>>>(nodePools, (value) => pulumi.Input.encodeList<ClusterNodePool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeVersion': ?nodeVersion,
      'notificationConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNotificationConfig, Map<String, dynamic>>(notificationConfig, (value) => value.toMap()),
      'operation': ?operation,
      'podAutoscaling': ?pulumi.Input.mapOptionalInputValue<ClusterPodAutoscaling, Map<String, dynamic>>(podAutoscaling, (value) => value.toMap()),
      'podSecurityPolicyConfig': ?pulumi.Input.mapOptionalInputValue<ClusterPodSecurityPolicyConfig, Map<String, dynamic>>(podSecurityPolicyConfig, (value) => value.toMap()),
      'privateClusterConfig': ?pulumi.Input.mapOptionalInputValue<ClusterPrivateClusterConfig, Map<String, dynamic>>(privateClusterConfig, (value) => value.toMap()),
      'privateIpv6GoogleAccess': ?privateIpv6GoogleAccess,
      'project': ?project,
      'protectConfig': ?pulumi.Input.mapOptionalInputValue<ClusterProtectConfig, Map<String, dynamic>>(protectConfig, (value) => value.toMap()),
      'pulumiLabels': ?pulumiLabels,
      'rbacBindingConfig': ?pulumi.Input.mapOptionalInputValue<ClusterRbacBindingConfig, Map<String, dynamic>>(rbacBindingConfig, (value) => value.toMap()),
      'releaseChannel': ?pulumi.Input.mapOptionalInputValue<ClusterReleaseChannel, Map<String, dynamic>>(releaseChannel, (value) => value.toMap()),
      'removeDefaultNodePool': ?removeDefaultNodePool,
      'resourceLabels': ?resourceLabels,
      'resourceUsageExportConfig': ?pulumi.Input.mapOptionalInputValue<ClusterResourceUsageExportConfig, Map<String, dynamic>>(resourceUsageExportConfig, (value) => value.toMap()),
      'rollbackSafeUpgrade': ?pulumi.Input.mapOptionalInputValue<ClusterRollbackSafeUpgrade, Map<String, dynamic>>(rollbackSafeUpgrade, (value) => value.toMap()),
      'secretManagerConfig': ?pulumi.Input.mapOptionalInputValue<ClusterSecretManagerConfig, Map<String, dynamic>>(secretManagerConfig, (value) => value.toMap()),
      'secretSyncConfig': ?pulumi.Input.mapOptionalInputValue<ClusterSecretSyncConfig, Map<String, dynamic>>(secretSyncConfig, (value) => value.toMap()),
      'securityPostureConfig': ?pulumi.Input.mapOptionalInputValue<ClusterSecurityPostureConfig, Map<String, dynamic>>(securityPostureConfig, (value) => value.toMap()),
      'selfLink': ?selfLink,
      'serviceExternalIpsConfig': ?pulumi.Input.mapOptionalInputValue<ClusterServiceExternalIpsConfig, Map<String, dynamic>>(serviceExternalIpsConfig, (value) => value.toMap()),
      'servicesIpv4Cidr': ?servicesIpv4Cidr,
      'skipNodePoolRefresh': ?skipNodePoolRefresh,
      'subnetwork': ?subnetwork,
      'tpuConfig': ?pulumi.Input.mapOptionalInputValue<ClusterTpuConfig, Map<String, dynamic>>(tpuConfig, (value) => value.toMap()),
      'tpuIpv4CidrBlock': ?tpuIpv4CidrBlock,
      'userManagedKeysConfig': ?pulumi.Input.mapOptionalInputValue<ClusterUserManagedKeysConfig, Map<String, dynamic>>(userManagedKeysConfig, (value) => value.toMap()),
      'verticalPodAutoscaling': ?pulumi.Input.mapOptionalInputValue<ClusterVerticalPodAutoscaling, Map<String, dynamic>>(verticalPodAutoscaling, (value) => value.toMap()),
      'workloadAltsConfig': ?pulumi.Input.mapOptionalInputValue<ClusterWorkloadAltsConfig, Map<String, dynamic>>(workloadAltsConfig, (value) => value.toMap()),
      'workloadIdentityConfig': ?pulumi.Input.mapOptionalInputValue<ClusterWorkloadIdentityConfig, Map<String, dynamic>>(workloadIdentityConfig, (value) => value.toMap()),
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      addonsConfig: (() { final guardedValue = map['addonsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      allowNetAdmin: (() { final guardedValue = map['allowNetAdmin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      anonymousAuthenticationConfig: (() { final guardedValue = map['anonymousAuthenticationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAnonymousAuthenticationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authenticatorGroupsConfig: (() { final guardedValue = map['authenticatorGroupsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAuthenticatorGroupsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autopilotClusterPolicyConfig: (() { final guardedValue = map['autopilotClusterPolicyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAutopilotClusterPolicyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autopilotPrivilegedAdmissions: (() { final guardedValue = map['autopilotPrivilegedAdmissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      binaryAuthorization: (() { final guardedValue = map['binaryAuthorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterBinaryAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterAutoscaling: (() { final guardedValue = map['clusterAutoscaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterAutoscaling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterIpv4Cidr: (() { final guardedValue = map['clusterIpv4Cidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterTelemetry: (() { final guardedValue = map['clusterTelemetry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterTelemetry.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      confidentialNodes: (() { final guardedValue = map['confidentialNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterConfidentialNodes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      controlPlaneEndpointsConfig: (() { final guardedValue = map['controlPlaneEndpointsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterControlPlaneEndpointsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      costManagementConfig: (() { final guardedValue = map['costManagementConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterCostManagementConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databaseEncryption: (() { final guardedValue = map['databaseEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterDatabaseEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      datapathProvider: (() { final guardedValue = map['datapathProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataplaneOptimizationMode: (() { final guardedValue = map['dataplaneOptimizationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultMaxPodsPerNode: (() { final guardedValue = map['defaultMaxPodsPerNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      defaultSnatStatus: (() { final guardedValue = map['defaultSnatStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterDefaultSnatStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredEmulatedVersion: (() { final guardedValue = map['desiredEmulatedVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableL4LbFirewallReconciliation: (() { final guardedValue = map['disableL4LbFirewallReconciliation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dnsConfig: (() { final guardedValue = map['dnsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterDnsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      emulatedVersion: (() { final guardedValue = map['emulatedVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableAutopilot: (() { final guardedValue = map['enableAutopilot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableCiliumClusterwideNetworkPolicy: (() { final guardedValue = map['enableCiliumClusterwideNetworkPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableFqdnNetworkPolicy: (() { final guardedValue = map['enableFqdnNetworkPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableIntranodeVisibility: (() { final guardedValue = map['enableIntranodeVisibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableK8sBetaApis: (() { final guardedValue = map['enableK8sBetaApis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterEnableK8sBetaApis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableKubernetesAlpha: (() { final guardedValue = map['enableKubernetesAlpha']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableL4IlbSubsetting: (() { final guardedValue = map['enableL4IlbSubsetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableLegacyAbac: (() { final guardedValue = map['enableLegacyAbac']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableMultiNetworking: (() { final guardedValue = map['enableMultiNetworking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableShieldedNodes: (() { final guardedValue = map['enableShieldedNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableTpu: (() { final guardedValue = map['enableTpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enterpriseConfig: (() { final guardedValue = map['enterpriseConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterEnterpriseConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fleet: (() { final guardedValue = map['fleet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterFleet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gatewayApiConfig: (() { final guardedValue = map['gatewayApiConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterGatewayApiConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gkeAutoUpgradeConfig: (() { final guardedValue = map['gkeAutoUpgradeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterGkeAutoUpgradeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identityServiceConfig: (() { final guardedValue = map['identityServiceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterIdentityServiceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ignoreNodeCountChanges: (() { final guardedValue = map['ignoreNodeCountChanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      inTransitEncryptionConfig: (() { final guardedValue = map['inTransitEncryptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialNodeCount: (() { final guardedValue = map['initialNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ipAllocationPolicy: (() { final guardedValue = map['ipAllocationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterIpAllocationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labelFingerprint: (() { final guardedValue = map['labelFingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loggingService: (() { final guardedValue = map['loggingService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenancePolicy: (() { final guardedValue = map['maintenancePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedMachineLearningDiagnosticsConfig: (() { final guardedValue = map['managedMachineLearningDiagnosticsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterManagedMachineLearningDiagnosticsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedOpentelemetryConfig: (() { final guardedValue = map['managedOpentelemetryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterManagedOpentelemetryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      masterAuth: (() { final guardedValue = map['masterAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterMasterAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      masterAuthorizedNetworksConfig: (() { final guardedValue = map['masterAuthorizedNetworksConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterMasterAuthorizedNetworksConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      masterVersion: (() { final guardedValue = map['masterVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      meshCertificates: (() { final guardedValue = map['meshCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterMeshCertificates.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minMasterVersion: (() { final guardedValue = map['minMasterVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitoringConfig: (() { final guardedValue = map['monitoringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterMonitoringConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoringService: (() { final guardedValue = map['monitoringService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkPerformanceConfig: (() { final guardedValue = map['networkPerformanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNetworkPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkPolicy: (() { final guardedValue = map['networkPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNetworkPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkingMode: (() { final guardedValue = map['networkingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeConfig: (() { final guardedValue = map['nodeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeCreationConfig: (() { final guardedValue = map['nodeCreationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeCreationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeLocations: (() { final guardedValue = map['nodeLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nodePoolAutoConfig: (() { final guardedValue = map['nodePoolAutoConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolAutoConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodePoolDefaults: (() { final guardedValue = map['nodePoolDefaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolDefaults.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodePools: (() { final guardedValue = map['nodePools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNodePool>(guardedValue, (value) => ClusterNodePool.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodeVersion: (() { final guardedValue = map['nodeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationConfig: (() { final guardedValue = map['notificationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNotificationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      operation: (() { final guardedValue = map['operation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      podAutoscaling: (() { final guardedValue = map['podAutoscaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterPodAutoscaling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podSecurityPolicyConfig: (() { final guardedValue = map['podSecurityPolicyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterPodSecurityPolicyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateClusterConfig: (() { final guardedValue = map['privateClusterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterPrivateClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateIpv6GoogleAccess: (() { final guardedValue = map['privateIpv6GoogleAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectConfig: (() { final guardedValue = map['protectConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterProtectConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      rbacBindingConfig: (() { final guardedValue = map['rbacBindingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterRbacBindingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      releaseChannel: (() { final guardedValue = map['releaseChannel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterReleaseChannel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      removeDefaultNodePool: (() { final guardedValue = map['removeDefaultNodePool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceLabels: (() { final guardedValue = map['resourceLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceUsageExportConfig: (() { final guardedValue = map['resourceUsageExportConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterResourceUsageExportConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rollbackSafeUpgrade: (() { final guardedValue = map['rollbackSafeUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterRollbackSafeUpgrade.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secretManagerConfig: (() { final guardedValue = map['secretManagerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterSecretManagerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secretSyncConfig: (() { final guardedValue = map['secretSyncConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterSecretSyncConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityPostureConfig: (() { final guardedValue = map['securityPostureConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterSecurityPostureConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceExternalIpsConfig: (() { final guardedValue = map['serviceExternalIpsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterServiceExternalIpsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      servicesIpv4Cidr: (() { final guardedValue = map['servicesIpv4Cidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipNodePoolRefresh: (() { final guardedValue = map['skipNodePoolRefresh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tpuConfig: (() { final guardedValue = map['tpuConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterTpuConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tpuIpv4CidrBlock: (() { final guardedValue = map['tpuIpv4CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userManagedKeysConfig: (() { final guardedValue = map['userManagedKeysConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterUserManagedKeysConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      verticalPodAutoscaling: (() { final guardedValue = map['verticalPodAutoscaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterVerticalPodAutoscaling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadAltsConfig: (() { final guardedValue = map['workloadAltsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterWorkloadAltsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadIdentityConfig: (() { final guardedValue = map['workloadIdentityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterWorkloadIdentityConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
