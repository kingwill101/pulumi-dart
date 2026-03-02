// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_pod_ranges_config.dart';
import 'addons_config.dart';
import 'authenticator_groups_config.dart';
import 'binary_authorization.dart';
import 'cluster_autoscaling.dart';
import 'cluster_network_performance_config.dart';
import 'cluster_update_desired_datapath_provider.dart';
import 'cluster_update_desired_private_ipv6_google_access.dart';
import 'cluster_update_desired_stack_type.dart';
import 'cost_management_config.dart';
import 'database_encryption.dart';
import 'default_snat_status.dart';
import 'dnsconfig.dart';
import 'fleet.dart';
import 'gateway_apiconfig.dart';
import 'gcfs_config.dart';
import 'identity_service_config.dart';
import 'ilbsubsetting_config.dart';
import 'intra_node_visibility_config.dart';
import 'k8s_beta_apiconfig.dart';
import 'logging_config.dart';
import 'master_authorized_networks_config.dart';
import 'mesh_certificates.dart';
import 'monitoring_config.dart';
import 'network_tags.dart';
import 'node_pool_autoscaling.dart';
import 'node_pool_logging_config.dart';
import 'notification_config.dart';
import 'parent_product_config.dart';
import 'private_cluster_config.dart';
import 'release_channel.dart';
import 'resource_manager_tags.dart';
import 'resource_usage_export_config.dart';
import 'security_posture_config.dart';
import 'service_external_ips_config.dart';
import 'shielded_nodes.dart';
import 'vertical_pod_autoscaling.dart';
import 'workload_identity_config.dart';
import 'workload_policy_config.dart';

/// ClusterUpdate describes an update to the cluster. Exactly one update can be applied to a cluster with each request, so at most one field can be provided.
class ClusterUpdate {
  /// The additional pod ranges to be added to the cluster. These pod ranges can be used by node pools to allocate pod IPs.
  final pulumi.Input<AdditionalPodRangesConfig>? additionalPodRangesConfig;
  /// Configurations for the various addons available to run in the cluster.
  final pulumi.Input<AddonsConfig>? desiredAddonsConfig;
  /// The desired authenticator groups config for the cluster.
  final pulumi.Input<AuthenticatorGroupsConfig>? desiredAuthenticatorGroupsConfig;
  /// The desired workload policy configuration for the autopilot cluster.
  final pulumi.Input<WorkloadPolicyConfig>? desiredAutopilotWorkloadPolicyConfig;
  /// The desired configuration options for the Binary Authorization feature.
  final pulumi.Input<BinaryAuthorization>? desiredBinaryAuthorization;
  /// Cluster-level autoscaling configuration.
  final pulumi.Input<ClusterAutoscaling>? desiredClusterAutoscaling;
  /// The desired configuration for the fine-grained cost management feature.
  final pulumi.Input<CostManagementConfig>? desiredCostManagementConfig;
  /// Configuration of etcd encryption.
  final pulumi.Input<DatabaseEncryption>? desiredDatabaseEncryption;
  /// The desired datapath provider for the cluster.
  final pulumi.Input<ClusterUpdateDesiredDatapathProvider>? desiredDatapathProvider;
  /// The desired status of whether to disable default sNAT for this cluster.
  final pulumi.Input<DefaultSnatStatus>? desiredDefaultSnatStatus;
  /// DNSConfig contains clusterDNS config for this cluster.
  final pulumi.Input<DNSConfig>? desiredDnsConfig;
  /// Enable/Disable FQDN Network Policy for the cluster.
  final pulumi.Input<bool>? desiredEnableFqdnNetworkPolicy;
  /// Enable/Disable private endpoint for the cluster's master.
  final pulumi.Input<bool>? desiredEnablePrivateEndpoint;
  /// The desired fleet configuration for the cluster.
  final pulumi.Input<Fleet>? desiredFleet;
  /// The desired config of Gateway API on this cluster.
  final pulumi.Input<GatewayAPIConfig>? desiredGatewayApiConfig;
  /// The desired GCFS config for the cluster
  final pulumi.Input<GcfsConfig>? desiredGcfsConfig;
  /// The desired Identity Service component configuration.
  final pulumi.Input<IdentityServiceConfig>? desiredIdentityServiceConfig;
  /// The desired image type for the node pool. NOTE: Set the "desired_node_pool" field as well.
  final pulumi.Input<String>? desiredImageType;
  /// The desired config of Intra-node visibility.
  final pulumi.Input<IntraNodeVisibilityConfig>? desiredIntraNodeVisibilityConfig;
  /// Desired Beta APIs to be enabled for cluster.
  final pulumi.Input<K8sBetaAPIConfig>? desiredK8sBetaApis;
  /// The desired L4 Internal Load Balancer Subsetting configuration.
  final pulumi.Input<ILBSubsettingConfig>? desiredL4ilbSubsettingConfig;
  /// The desired list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This list must always include the cluster's primary zone. Warning: changing cluster locations will update the locations of all node pools and will result in nodes being added and/or removed.
  final pulumi.Input<List<String>>? desiredLocations;
  /// The desired logging configuration.
  final pulumi.Input<LoggingConfig>? desiredLoggingConfig;
  /// The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  final pulumi.Input<String>? desiredLoggingService;
  /// The desired configuration options for master authorized networks feature.
  final pulumi.Input<MasterAuthorizedNetworksConfig>? desiredMasterAuthorizedNetworksConfig;
  /// The Kubernetes version to change the master to. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the default Kubernetes version
  final pulumi.Input<String>? desiredMasterVersion;
  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  final pulumi.Input<MeshCertificates>? desiredMeshCertificates;
  /// The desired monitoring configuration.
  final pulumi.Input<MonitoringConfig>? desiredMonitoringConfig;
  /// The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  final pulumi.Input<String>? desiredMonitoringService;
  /// The desired network performance config.
  final pulumi.Input<ClusterNetworkPerformanceConfig>? desiredNetworkPerformanceConfig;
  /// The desired network tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  final pulumi.Input<NetworkTags>? desiredNodePoolAutoConfigNetworkTags;
  /// The desired resource manager tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  final pulumi.Input<ResourceManagerTags>? desiredNodePoolAutoConfigResourceManagerTags;
  /// Autoscaler configuration for the node pool specified in desired_node_pool_id. If there is only one pool in the cluster and desired_node_pool_id is not provided then the change applies to that single node pool.
  final pulumi.Input<NodePoolAutoscaling>? desiredNodePoolAutoscaling;
  /// The node pool to be upgraded. This field is mandatory if "desired_node_version", "desired_image_family" or "desired_node_pool_autoscaling" is specified and there is more than one node pool on the cluster.
  final pulumi.Input<String>? desiredNodePoolId;
  /// The desired node pool logging configuration defaults for the cluster.
  final pulumi.Input<NodePoolLoggingConfig>? desiredNodePoolLoggingConfig;
  /// The Kubernetes version to change the nodes to (typically an upgrade). Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the Kubernetes master version
  final pulumi.Input<String>? desiredNodeVersion;
  /// The desired notification configuration.
  final pulumi.Input<NotificationConfig>? desiredNotificationConfig;
  /// The desired parent product config for the cluster.
  final pulumi.Input<ParentProductConfig>? desiredParentProductConfig;
  /// The desired private cluster configuration.
  final pulumi.Input<PrivateClusterConfig>? desiredPrivateClusterConfig;
  /// The desired state of IPv6 connectivity to Google Services.
  final pulumi.Input<ClusterUpdateDesiredPrivateIpv6GoogleAccess>? desiredPrivateIpv6GoogleAccess;
  /// The desired release channel configuration.
  final pulumi.Input<ReleaseChannel>? desiredReleaseChannel;
  /// The desired configuration for exporting resource usage.
  final pulumi.Input<ResourceUsageExportConfig>? desiredResourceUsageExportConfig;
  /// Enable/Disable Security Posture API features for the cluster.
  final pulumi.Input<SecurityPostureConfig>? desiredSecurityPostureConfig;
  /// ServiceExternalIPsConfig specifies the config for the use of Services with ExternalIPs field.
  final pulumi.Input<ServiceExternalIPsConfig>? desiredServiceExternalIpsConfig;
  /// Configuration for Shielded Nodes.
  final pulumi.Input<ShieldedNodes>? desiredShieldedNodes;
  /// The desired stack type of the cluster. If a stack type is provided and does not match the current stack type of the cluster, update will attempt to change the stack type to the new type.
  final pulumi.Input<ClusterUpdateDesiredStackType>? desiredStackType;
  /// Cluster-level Vertical Pod Autoscaling configuration.
  final pulumi.Input<VerticalPodAutoscaling>? desiredVerticalPodAutoscaling;
  /// Configuration for Workload Identity.
  final pulumi.Input<WorkloadIdentityConfig>? desiredWorkloadIdentityConfig;
  /// Kubernetes open source beta apis enabled on the cluster. Only beta apis
  final pulumi.Input<K8sBetaAPIConfig>? enableK8sBetaApis;
  /// The current etag of the cluster. If an etag is provided and does not match the current etag of the cluster, update will be blocked and an ABORTED error will be returned.
  final pulumi.Input<String>? etag;
  /// The additional pod ranges that are to be removed from the cluster. The pod ranges specified here must have been specified earlier in the 'additional_pod_ranges_config' argument.
  final pulumi.Input<AdditionalPodRangesConfig>? removedAdditionalPodRangesConfig;

  /// Creates a new [ClusterUpdate].
  /// [additionalPodRangesConfig] The additional pod ranges to be added to the cluster. These pod ranges can be used by node pools to allocate pod IPs.
  /// [desiredAddonsConfig] Configurations for the various addons available to run in the cluster.
  /// [desiredAuthenticatorGroupsConfig] The desired authenticator groups config for the cluster.
  /// [desiredAutopilotWorkloadPolicyConfig] The desired workload policy configuration for the autopilot cluster.
  /// [desiredBinaryAuthorization] The desired configuration options for the Binary Authorization feature.
  /// [desiredClusterAutoscaling] Cluster-level autoscaling configuration.
  /// [desiredCostManagementConfig] The desired configuration for the fine-grained cost management feature.
  /// [desiredDatabaseEncryption] Configuration of etcd encryption.
  /// [desiredDatapathProvider] The desired datapath provider for the cluster.
  /// [desiredDefaultSnatStatus] The desired status of whether to disable default sNAT for this cluster.
  /// [desiredDnsConfig] DNSConfig contains clusterDNS config for this cluster.
  /// [desiredEnableFqdnNetworkPolicy] Enable/Disable FQDN Network Policy for the cluster.
  /// [desiredEnablePrivateEndpoint] Enable/Disable private endpoint for the cluster's master.
  /// [desiredFleet] The desired fleet configuration for the cluster.
  /// [desiredGatewayApiConfig] The desired config of Gateway API on this cluster.
  /// [desiredGcfsConfig] The desired GCFS config for the cluster
  /// [desiredIdentityServiceConfig] The desired Identity Service component configuration.
  /// [desiredImageType] The desired image type for the node pool. NOTE: Set the "desired_node_pool" field as well.
  /// [desiredIntraNodeVisibilityConfig] The desired config of Intra-node visibility.
  /// [desiredK8sBetaApis] Desired Beta APIs to be enabled for cluster.
  /// [desiredL4ilbSubsettingConfig] The desired L4 Internal Load Balancer Subsetting configuration.
  /// [desiredLocations] The desired list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This list must always include the cluster's primary zone. Warning: changing cluster locations will update the locations of all node pools and will result in nodes being added and/or removed.
  /// [desiredLoggingConfig] The desired logging configuration.
  /// [desiredLoggingService] The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  /// [desiredMasterAuthorizedNetworksConfig] The desired configuration options for master authorized networks feature.
  /// [desiredMasterVersion] The Kubernetes version to change the master to. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the default Kubernetes version
  /// [desiredMeshCertificates] Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  /// [desiredMonitoringConfig] The desired monitoring configuration.
  /// [desiredMonitoringService] The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  /// [desiredNetworkPerformanceConfig] The desired network performance config.
  /// [desiredNodePoolAutoConfigNetworkTags] The desired network tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  /// [desiredNodePoolAutoConfigResourceManagerTags] The desired resource manager tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  /// [desiredNodePoolAutoscaling] Autoscaler configuration for the node pool specified in desired_node_pool_id. If there is only one pool in the cluster and desired_node_pool_id is not provided then the change applies to that single node pool.
  /// [desiredNodePoolId] The node pool to be upgraded. This field is mandatory if "desired_node_version", "desired_image_family" or "desired_node_pool_autoscaling" is specified and there is more than one node pool on the cluster.
  /// [desiredNodePoolLoggingConfig] The desired node pool logging configuration defaults for the cluster.
  /// [desiredNodeVersion] The Kubernetes version to change the nodes to (typically an upgrade). Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the Kubernetes master version
  /// [desiredNotificationConfig] The desired notification configuration.
  /// [desiredParentProductConfig] The desired parent product config for the cluster.
  /// [desiredPrivateClusterConfig] The desired private cluster configuration.
  /// [desiredPrivateIpv6GoogleAccess] The desired state of IPv6 connectivity to Google Services.
  /// [desiredReleaseChannel] The desired release channel configuration.
  /// [desiredResourceUsageExportConfig] The desired configuration for exporting resource usage.
  /// [desiredSecurityPostureConfig] Enable/Disable Security Posture API features for the cluster.
  /// [desiredServiceExternalIpsConfig] ServiceExternalIPsConfig specifies the config for the use of Services with ExternalIPs field.
  /// [desiredShieldedNodes] Configuration for Shielded Nodes.
  /// [desiredStackType] The desired stack type of the cluster. If a stack type is provided and does not match the current stack type of the cluster, update will attempt to change the stack type to the new type.
  /// [desiredVerticalPodAutoscaling] Cluster-level Vertical Pod Autoscaling configuration.
  /// [desiredWorkloadIdentityConfig] Configuration for Workload Identity.
  /// [enableK8sBetaApis] Kubernetes open source beta apis enabled on the cluster. Only beta apis
  /// [etag] The current etag of the cluster. If an etag is provided and does not match the current etag of the cluster, update will be blocked and an ABORTED error will be returned.
  /// [removedAdditionalPodRangesConfig] The additional pod ranges that are to be removed from the cluster. The pod ranges specified here must have been specified earlier in the 'additional_pod_ranges_config' argument.
  ClusterUpdate({
    this.additionalPodRangesConfig,
    this.desiredAddonsConfig,
    this.desiredAuthenticatorGroupsConfig,
    this.desiredAutopilotWorkloadPolicyConfig,
    this.desiredBinaryAuthorization,
    this.desiredClusterAutoscaling,
    this.desiredCostManagementConfig,
    this.desiredDatabaseEncryption,
    this.desiredDatapathProvider,
    this.desiredDefaultSnatStatus,
    this.desiredDnsConfig,
    this.desiredEnableFqdnNetworkPolicy,
    this.desiredEnablePrivateEndpoint,
    this.desiredFleet,
    this.desiredGatewayApiConfig,
    this.desiredGcfsConfig,
    this.desiredIdentityServiceConfig,
    this.desiredImageType,
    this.desiredIntraNodeVisibilityConfig,
    this.desiredK8sBetaApis,
    this.desiredL4ilbSubsettingConfig,
    this.desiredLocations,
    this.desiredLoggingConfig,
    this.desiredLoggingService,
    this.desiredMasterAuthorizedNetworksConfig,
    this.desiredMasterVersion,
    this.desiredMeshCertificates,
    this.desiredMonitoringConfig,
    this.desiredMonitoringService,
    this.desiredNetworkPerformanceConfig,
    this.desiredNodePoolAutoConfigNetworkTags,
    this.desiredNodePoolAutoConfigResourceManagerTags,
    this.desiredNodePoolAutoscaling,
    this.desiredNodePoolId,
    this.desiredNodePoolLoggingConfig,
    this.desiredNodeVersion,
    this.desiredNotificationConfig,
    this.desiredParentProductConfig,
    this.desiredPrivateClusterConfig,
    this.desiredPrivateIpv6GoogleAccess,
    this.desiredReleaseChannel,
    this.desiredResourceUsageExportConfig,
    this.desiredSecurityPostureConfig,
    this.desiredServiceExternalIpsConfig,
    this.desiredShieldedNodes,
    this.desiredStackType,
    this.desiredVerticalPodAutoscaling,
    this.desiredWorkloadIdentityConfig,
    this.enableK8sBetaApis,
    this.etag,
    this.removedAdditionalPodRangesConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalPodRangesConfig': ?pulumi.Input.mapOptionalInputValue<AdditionalPodRangesConfig, Map<String, dynamic>>(additionalPodRangesConfig, (value) => value.toMap()),
      'desiredAddonsConfig': ?pulumi.Input.mapOptionalInputValue<AddonsConfig, Map<String, dynamic>>(desiredAddonsConfig, (value) => value.toMap()),
      'desiredAuthenticatorGroupsConfig': ?pulumi.Input.mapOptionalInputValue<AuthenticatorGroupsConfig, Map<String, dynamic>>(desiredAuthenticatorGroupsConfig, (value) => value.toMap()),
      'desiredAutopilotWorkloadPolicyConfig': ?pulumi.Input.mapOptionalInputValue<WorkloadPolicyConfig, Map<String, dynamic>>(desiredAutopilotWorkloadPolicyConfig, (value) => value.toMap()),
      'desiredBinaryAuthorization': ?pulumi.Input.mapOptionalInputValue<BinaryAuthorization, Map<String, dynamic>>(desiredBinaryAuthorization, (value) => value.toMap()),
      'desiredClusterAutoscaling': ?pulumi.Input.mapOptionalInputValue<ClusterAutoscaling, Map<String, dynamic>>(desiredClusterAutoscaling, (value) => value.toMap()),
      'desiredCostManagementConfig': ?pulumi.Input.mapOptionalInputValue<CostManagementConfig, Map<String, dynamic>>(desiredCostManagementConfig, (value) => value.toMap()),
      'desiredDatabaseEncryption': ?pulumi.Input.mapOptionalInputValue<DatabaseEncryption, Map<String, dynamic>>(desiredDatabaseEncryption, (value) => value.toMap()),
      'desiredDatapathProvider': ?pulumi.Input.mapOptionalInputValue<ClusterUpdateDesiredDatapathProvider, String>(desiredDatapathProvider, (value) => value.value),
      'desiredDefaultSnatStatus': ?pulumi.Input.mapOptionalInputValue<DefaultSnatStatus, Map<String, dynamic>>(desiredDefaultSnatStatus, (value) => value.toMap()),
      'desiredDnsConfig': ?pulumi.Input.mapOptionalInputValue<DNSConfig, Map<String, dynamic>>(desiredDnsConfig, (value) => value.toMap()),
      'desiredEnableFqdnNetworkPolicy': ?desiredEnableFqdnNetworkPolicy,
      'desiredEnablePrivateEndpoint': ?desiredEnablePrivateEndpoint,
      'desiredFleet': ?pulumi.Input.mapOptionalInputValue<Fleet, Map<String, dynamic>>(desiredFleet, (value) => value.toMap()),
      'desiredGatewayApiConfig': ?pulumi.Input.mapOptionalInputValue<GatewayAPIConfig, Map<String, dynamic>>(desiredGatewayApiConfig, (value) => value.toMap()),
      'desiredGcfsConfig': ?pulumi.Input.mapOptionalInputValue<GcfsConfig, Map<String, dynamic>>(desiredGcfsConfig, (value) => value.toMap()),
      'desiredIdentityServiceConfig': ?pulumi.Input.mapOptionalInputValue<IdentityServiceConfig, Map<String, dynamic>>(desiredIdentityServiceConfig, (value) => value.toMap()),
      'desiredImageType': ?desiredImageType,
      'desiredIntraNodeVisibilityConfig': ?pulumi.Input.mapOptionalInputValue<IntraNodeVisibilityConfig, Map<String, dynamic>>(desiredIntraNodeVisibilityConfig, (value) => value.toMap()),
      'desiredK8sBetaApis': ?pulumi.Input.mapOptionalInputValue<K8sBetaAPIConfig, Map<String, dynamic>>(desiredK8sBetaApis, (value) => value.toMap()),
      'desiredL4ilbSubsettingConfig': ?pulumi.Input.mapOptionalInputValue<ILBSubsettingConfig, Map<String, dynamic>>(desiredL4ilbSubsettingConfig, (value) => value.toMap()),
      'desiredLocations': ?desiredLocations,
      'desiredLoggingConfig': ?pulumi.Input.mapOptionalInputValue<LoggingConfig, Map<String, dynamic>>(desiredLoggingConfig, (value) => value.toMap()),
      'desiredLoggingService': ?desiredLoggingService,
      'desiredMasterAuthorizedNetworksConfig': ?pulumi.Input.mapOptionalInputValue<MasterAuthorizedNetworksConfig, Map<String, dynamic>>(desiredMasterAuthorizedNetworksConfig, (value) => value.toMap()),
      'desiredMasterVersion': ?desiredMasterVersion,
      'desiredMeshCertificates': ?pulumi.Input.mapOptionalInputValue<MeshCertificates, Map<String, dynamic>>(desiredMeshCertificates, (value) => value.toMap()),
      'desiredMonitoringConfig': ?pulumi.Input.mapOptionalInputValue<MonitoringConfig, Map<String, dynamic>>(desiredMonitoringConfig, (value) => value.toMap()),
      'desiredMonitoringService': ?desiredMonitoringService,
      'desiredNetworkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNetworkPerformanceConfig, Map<String, dynamic>>(desiredNetworkPerformanceConfig, (value) => value.toMap()),
      'desiredNodePoolAutoConfigNetworkTags': ?pulumi.Input.mapOptionalInputValue<NetworkTags, Map<String, dynamic>>(desiredNodePoolAutoConfigNetworkTags, (value) => value.toMap()),
      'desiredNodePoolAutoConfigResourceManagerTags': ?pulumi.Input.mapOptionalInputValue<ResourceManagerTags, Map<String, dynamic>>(desiredNodePoolAutoConfigResourceManagerTags, (value) => value.toMap()),
      'desiredNodePoolAutoscaling': ?pulumi.Input.mapOptionalInputValue<NodePoolAutoscaling, Map<String, dynamic>>(desiredNodePoolAutoscaling, (value) => value.toMap()),
      'desiredNodePoolId': ?desiredNodePoolId,
      'desiredNodePoolLoggingConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolLoggingConfig, Map<String, dynamic>>(desiredNodePoolLoggingConfig, (value) => value.toMap()),
      'desiredNodeVersion': ?desiredNodeVersion,
      'desiredNotificationConfig': ?pulumi.Input.mapOptionalInputValue<NotificationConfig, Map<String, dynamic>>(desiredNotificationConfig, (value) => value.toMap()),
      'desiredParentProductConfig': ?pulumi.Input.mapOptionalInputValue<ParentProductConfig, Map<String, dynamic>>(desiredParentProductConfig, (value) => value.toMap()),
      'desiredPrivateClusterConfig': ?pulumi.Input.mapOptionalInputValue<PrivateClusterConfig, Map<String, dynamic>>(desiredPrivateClusterConfig, (value) => value.toMap()),
      'desiredPrivateIpv6GoogleAccess': ?pulumi.Input.mapOptionalInputValue<ClusterUpdateDesiredPrivateIpv6GoogleAccess, String>(desiredPrivateIpv6GoogleAccess, (value) => value.value),
      'desiredReleaseChannel': ?pulumi.Input.mapOptionalInputValue<ReleaseChannel, Map<String, dynamic>>(desiredReleaseChannel, (value) => value.toMap()),
      'desiredResourceUsageExportConfig': ?pulumi.Input.mapOptionalInputValue<ResourceUsageExportConfig, Map<String, dynamic>>(desiredResourceUsageExportConfig, (value) => value.toMap()),
      'desiredSecurityPostureConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPostureConfig, Map<String, dynamic>>(desiredSecurityPostureConfig, (value) => value.toMap()),
      'desiredServiceExternalIpsConfig': ?pulumi.Input.mapOptionalInputValue<ServiceExternalIPsConfig, Map<String, dynamic>>(desiredServiceExternalIpsConfig, (value) => value.toMap()),
      'desiredShieldedNodes': ?pulumi.Input.mapOptionalInputValue<ShieldedNodes, Map<String, dynamic>>(desiredShieldedNodes, (value) => value.toMap()),
      'desiredStackType': ?pulumi.Input.mapOptionalInputValue<ClusterUpdateDesiredStackType, String>(desiredStackType, (value) => value.value),
      'desiredVerticalPodAutoscaling': ?pulumi.Input.mapOptionalInputValue<VerticalPodAutoscaling, Map<String, dynamic>>(desiredVerticalPodAutoscaling, (value) => value.toMap()),
      'desiredWorkloadIdentityConfig': ?pulumi.Input.mapOptionalInputValue<WorkloadIdentityConfig, Map<String, dynamic>>(desiredWorkloadIdentityConfig, (value) => value.toMap()),
      'enableK8sBetaApis': ?pulumi.Input.mapOptionalInputValue<K8sBetaAPIConfig, Map<String, dynamic>>(enableK8sBetaApis, (value) => value.toMap()),
      'etag': ?etag,
      'removedAdditionalPodRangesConfig': ?pulumi.Input.mapOptionalInputValue<AdditionalPodRangesConfig, Map<String, dynamic>>(removedAdditionalPodRangesConfig, (value) => value.toMap()),
    };
  }

  factory ClusterUpdate.fromMap(Map<String, dynamic> map) {
    return ClusterUpdate(
      additionalPodRangesConfig: map['additionalPodRangesConfig'] == null ? null : (AdditionalPodRangesConfig.fromMap((map['additionalPodRangesConfig']! as Map).cast<String, dynamic>())).input(),
      desiredAddonsConfig: map['desiredAddonsConfig'] == null ? null : (AddonsConfig.fromMap((map['desiredAddonsConfig']! as Map).cast<String, dynamic>())).input(),
      desiredAuthenticatorGroupsConfig: map['desiredAuthenticatorGroupsConfig'] == null ? null : (AuthenticatorGroupsConfig.fromMap((map['desiredAuthenticatorGroupsConfig']! as Map).cast<String, dynamic>())).input(),
      desiredAutopilotWorkloadPolicyConfig: map['desiredAutopilotWorkloadPolicyConfig'] == null ? null : (WorkloadPolicyConfig.fromMap((map['desiredAutopilotWorkloadPolicyConfig']! as Map).cast<String, dynamic>())).input(),
      desiredBinaryAuthorization: map['desiredBinaryAuthorization'] == null ? null : (BinaryAuthorization.fromMap((map['desiredBinaryAuthorization']! as Map).cast<String, dynamic>())).input(),
      desiredClusterAutoscaling: map['desiredClusterAutoscaling'] == null ? null : (ClusterAutoscaling.fromMap((map['desiredClusterAutoscaling']! as Map).cast<String, dynamic>())).input(),
      desiredCostManagementConfig: map['desiredCostManagementConfig'] == null ? null : (CostManagementConfig.fromMap((map['desiredCostManagementConfig']! as Map).cast<String, dynamic>())).input(),
      desiredDatabaseEncryption: map['desiredDatabaseEncryption'] == null ? null : (DatabaseEncryption.fromMap((map['desiredDatabaseEncryption']! as Map).cast<String, dynamic>())).input(),
      desiredDatapathProvider: map['desiredDatapathProvider'] == null ? null : (ClusterUpdateDesiredDatapathProvider.fromValue(map['desiredDatapathProvider']! as String)).input(),
      desiredDefaultSnatStatus: map['desiredDefaultSnatStatus'] == null ? null : (DefaultSnatStatus.fromMap((map['desiredDefaultSnatStatus']! as Map).cast<String, dynamic>())).input(),
      desiredDnsConfig: map['desiredDnsConfig'] == null ? null : (DNSConfig.fromMap((map['desiredDnsConfig']! as Map).cast<String, dynamic>())).input(),
      desiredEnableFqdnNetworkPolicy: map['desiredEnableFqdnNetworkPolicy'] == null ? null : (map['desiredEnableFqdnNetworkPolicy']! as bool).input(),
      desiredEnablePrivateEndpoint: map['desiredEnablePrivateEndpoint'] == null ? null : (map['desiredEnablePrivateEndpoint']! as bool).input(),
      desiredFleet: map['desiredFleet'] == null ? null : (Fleet.fromMap((map['desiredFleet']! as Map).cast<String, dynamic>())).input(),
      desiredGatewayApiConfig: map['desiredGatewayApiConfig'] == null ? null : (GatewayAPIConfig.fromMap((map['desiredGatewayApiConfig']! as Map).cast<String, dynamic>())).input(),
      desiredGcfsConfig: map['desiredGcfsConfig'] == null ? null : (GcfsConfig.fromMap((map['desiredGcfsConfig']! as Map).cast<String, dynamic>())).input(),
      desiredIdentityServiceConfig: map['desiredIdentityServiceConfig'] == null ? null : (IdentityServiceConfig.fromMap((map['desiredIdentityServiceConfig']! as Map).cast<String, dynamic>())).input(),
      desiredImageType: map['desiredImageType'] == null ? null : (map['desiredImageType']! as String).input(),
      desiredIntraNodeVisibilityConfig: map['desiredIntraNodeVisibilityConfig'] == null ? null : (IntraNodeVisibilityConfig.fromMap((map['desiredIntraNodeVisibilityConfig']! as Map).cast<String, dynamic>())).input(),
      desiredK8sBetaApis: map['desiredK8sBetaApis'] == null ? null : (K8sBetaAPIConfig.fromMap((map['desiredK8sBetaApis']! as Map).cast<String, dynamic>())).input(),
      desiredL4ilbSubsettingConfig: map['desiredL4ilbSubsettingConfig'] == null ? null : (ILBSubsettingConfig.fromMap((map['desiredL4ilbSubsettingConfig']! as Map).cast<String, dynamic>())).input(),
      desiredLocations: map['desiredLocations'] == null ? null : ((map['desiredLocations']! as List).cast<String>()).input(),
      desiredLoggingConfig: map['desiredLoggingConfig'] == null ? null : (LoggingConfig.fromMap((map['desiredLoggingConfig']! as Map).cast<String, dynamic>())).input(),
      desiredLoggingService: map['desiredLoggingService'] == null ? null : (map['desiredLoggingService']! as String).input(),
      desiredMasterAuthorizedNetworksConfig: map['desiredMasterAuthorizedNetworksConfig'] == null ? null : (MasterAuthorizedNetworksConfig.fromMap((map['desiredMasterAuthorizedNetworksConfig']! as Map).cast<String, dynamic>())).input(),
      desiredMasterVersion: map['desiredMasterVersion'] == null ? null : (map['desiredMasterVersion']! as String).input(),
      desiredMeshCertificates: map['desiredMeshCertificates'] == null ? null : (MeshCertificates.fromMap((map['desiredMeshCertificates']! as Map).cast<String, dynamic>())).input(),
      desiredMonitoringConfig: map['desiredMonitoringConfig'] == null ? null : (MonitoringConfig.fromMap((map['desiredMonitoringConfig']! as Map).cast<String, dynamic>())).input(),
      desiredMonitoringService: map['desiredMonitoringService'] == null ? null : (map['desiredMonitoringService']! as String).input(),
      desiredNetworkPerformanceConfig: map['desiredNetworkPerformanceConfig'] == null ? null : (ClusterNetworkPerformanceConfig.fromMap((map['desiredNetworkPerformanceConfig']! as Map).cast<String, dynamic>())).input(),
      desiredNodePoolAutoConfigNetworkTags: map['desiredNodePoolAutoConfigNetworkTags'] == null ? null : (NetworkTags.fromMap((map['desiredNodePoolAutoConfigNetworkTags']! as Map).cast<String, dynamic>())).input(),
      desiredNodePoolAutoConfigResourceManagerTags: map['desiredNodePoolAutoConfigResourceManagerTags'] == null ? null : (ResourceManagerTags.fromMap((map['desiredNodePoolAutoConfigResourceManagerTags']! as Map).cast<String, dynamic>())).input(),
      desiredNodePoolAutoscaling: map['desiredNodePoolAutoscaling'] == null ? null : (NodePoolAutoscaling.fromMap((map['desiredNodePoolAutoscaling']! as Map).cast<String, dynamic>())).input(),
      desiredNodePoolId: map['desiredNodePoolId'] == null ? null : (map['desiredNodePoolId']! as String).input(),
      desiredNodePoolLoggingConfig: map['desiredNodePoolLoggingConfig'] == null ? null : (NodePoolLoggingConfig.fromMap((map['desiredNodePoolLoggingConfig']! as Map).cast<String, dynamic>())).input(),
      desiredNodeVersion: map['desiredNodeVersion'] == null ? null : (map['desiredNodeVersion']! as String).input(),
      desiredNotificationConfig: map['desiredNotificationConfig'] == null ? null : (NotificationConfig.fromMap((map['desiredNotificationConfig']! as Map).cast<String, dynamic>())).input(),
      desiredParentProductConfig: map['desiredParentProductConfig'] == null ? null : (ParentProductConfig.fromMap((map['desiredParentProductConfig']! as Map).cast<String, dynamic>())).input(),
      desiredPrivateClusterConfig: map['desiredPrivateClusterConfig'] == null ? null : (PrivateClusterConfig.fromMap((map['desiredPrivateClusterConfig']! as Map).cast<String, dynamic>())).input(),
      desiredPrivateIpv6GoogleAccess: map['desiredPrivateIpv6GoogleAccess'] == null ? null : (ClusterUpdateDesiredPrivateIpv6GoogleAccess.fromValue(map['desiredPrivateIpv6GoogleAccess']! as String)).input(),
      desiredReleaseChannel: map['desiredReleaseChannel'] == null ? null : (ReleaseChannel.fromMap((map['desiredReleaseChannel']! as Map).cast<String, dynamic>())).input(),
      desiredResourceUsageExportConfig: map['desiredResourceUsageExportConfig'] == null ? null : (ResourceUsageExportConfig.fromMap((map['desiredResourceUsageExportConfig']! as Map).cast<String, dynamic>())).input(),
      desiredSecurityPostureConfig: map['desiredSecurityPostureConfig'] == null ? null : (SecurityPostureConfig.fromMap((map['desiredSecurityPostureConfig']! as Map).cast<String, dynamic>())).input(),
      desiredServiceExternalIpsConfig: map['desiredServiceExternalIpsConfig'] == null ? null : (ServiceExternalIPsConfig.fromMap((map['desiredServiceExternalIpsConfig']! as Map).cast<String, dynamic>())).input(),
      desiredShieldedNodes: map['desiredShieldedNodes'] == null ? null : (ShieldedNodes.fromMap((map['desiredShieldedNodes']! as Map).cast<String, dynamic>())).input(),
      desiredStackType: map['desiredStackType'] == null ? null : (ClusterUpdateDesiredStackType.fromValue(map['desiredStackType']! as String)).input(),
      desiredVerticalPodAutoscaling: map['desiredVerticalPodAutoscaling'] == null ? null : (VerticalPodAutoscaling.fromMap((map['desiredVerticalPodAutoscaling']! as Map).cast<String, dynamic>())).input(),
      desiredWorkloadIdentityConfig: map['desiredWorkloadIdentityConfig'] == null ? null : (WorkloadIdentityConfig.fromMap((map['desiredWorkloadIdentityConfig']! as Map).cast<String, dynamic>())).input(),
      enableK8sBetaApis: map['enableK8sBetaApis'] == null ? null : (K8sBetaAPIConfig.fromMap((map['enableK8sBetaApis']! as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      removedAdditionalPodRangesConfig: map['removedAdditionalPodRangesConfig'] == null ? null : (AdditionalPodRangesConfig.fromMap((map['removedAdditionalPodRangesConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

