// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_pod_ranges_config_container_v1beta1.dart';
import 'addons_config_container_v1beta1.dart';
import 'authenticator_groups_config_container_v1beta1.dart';
import 'binary_authorization_container_v1beta1.dart';
import 'cluster_autoscaling_container_v1beta1.dart';
import 'cluster_network_performance_config_container_v1beta1.dart';
import 'cluster_telemetry.dart';
import 'cluster_update_desired_datapath_provider_container_v1beta1.dart';
import 'cluster_update_desired_in_transit_encryption_config.dart';
import 'cluster_update_desired_private_ipv6_google_access_container_v1beta1.dart';
import 'cluster_update_desired_stack_type_container_v1beta1.dart';
import 'cost_management_config_container_v1beta1.dart';
import 'database_encryption_container_v1beta1.dart';
import 'default_snat_status_container_v1beta1.dart';
import 'dnsconfig_container_v1beta1.dart';
import 'fleet_container_v1beta1.dart';
import 'gateway_apiconfig_container_v1beta1.dart';
import 'gcfs_config_container_v1beta1.dart';
import 'host_maintenance_policy.dart';
import 'identity_service_config_container_v1beta1.dart';
import 'ilbsubsetting_config_container_v1beta1.dart';
import 'intra_node_visibility_config_container_v1beta1.dart';
import 'k8s_beta_apiconfig_container_v1beta1.dart';
import 'logging_config_container_v1beta1.dart';
import 'master_authorized_networks_config_container_v1beta1.dart';
import 'mesh_certificates_container_v1beta1.dart';
import 'monitoring_config_container_v1beta1.dart';
import 'network_tags_container_v1beta1.dart';
import 'node_pool_autoscaling_container_v1beta1.dart';
import 'node_pool_logging_config_container_v1beta1.dart';
import 'notification_config_container_v1beta1.dart';
import 'parent_product_config_container_v1beta1.dart';
import 'pod_security_policy_config.dart';
import 'private_cluster_config_container_v1beta1.dart';
import 'protect_config.dart';
import 'release_channel_container_v1beta1.dart';
import 'resource_manager_tags_container_v1beta1.dart';
import 'resource_usage_export_config_container_v1beta1.dart';
import 'security_posture_config_container_v1beta1.dart';
import 'service_external_ips_config_container_v1beta1.dart';
import 'shielded_nodes_container_v1beta1.dart';
import 'tpu_config.dart';
import 'vertical_pod_autoscaling_container_v1beta1.dart';
import 'workload_altsconfig.dart';
import 'workload_certificates.dart';
import 'workload_identity_config_container_v1beta1.dart';
import 'workload_policy_config_container_v1beta1.dart';

/// ClusterUpdate describes an update to the cluster. Exactly one update can be applied to a cluster with each request, so at most one field can be provided.
class ClusterUpdateContainerV1beta1 {
  /// The additional pod ranges to be added to the cluster. These pod ranges can be used by node pools to allocate pod IPs.
  final pulumi.Input<AdditionalPodRangesConfigContainerV1beta1>? additionalPodRangesConfig;
  /// Configurations for the various addons available to run in the cluster.
  final pulumi.Input<AddonsConfigContainerV1beta1>? desiredAddonsConfig;
  /// AuthenticatorGroupsConfig specifies the config for the cluster security groups settings.
  final pulumi.Input<AuthenticatorGroupsConfigContainerV1beta1>? desiredAuthenticatorGroupsConfig;
  /// The desired workload policy configuration for the autopilot cluster.
  final pulumi.Input<WorkloadPolicyConfigContainerV1beta1>? desiredAutopilotWorkloadPolicyConfig;
  /// The desired configuration options for the Binary Authorization feature.
  final pulumi.Input<BinaryAuthorizationContainerV1beta1>? desiredBinaryAuthorization;
  /// Cluster-level autoscaling configuration.
  final pulumi.Input<ClusterAutoscalingContainerV1beta1>? desiredClusterAutoscaling;
  /// The desired telemetry integration for the cluster.
  final pulumi.Input<ClusterTelemetry>? desiredClusterTelemetry;
  /// The desired configuration for the fine-grained cost management feature.
  final pulumi.Input<CostManagementConfigContainerV1beta1>? desiredCostManagementConfig;
  /// Configuration of etcd encryption.
  final pulumi.Input<DatabaseEncryptionContainerV1beta1>? desiredDatabaseEncryption;
  /// The desired datapath provider for the cluster.
  final pulumi.Input<ClusterUpdateDesiredDatapathProviderContainerV1beta1>? desiredDatapathProvider;
  /// The desired status of whether to disable default sNAT for this cluster.
  final pulumi.Input<DefaultSnatStatusContainerV1beta1>? desiredDefaultSnatStatus;
  /// DNSConfig contains clusterDNS config for this cluster.
  final pulumi.Input<DNSConfigContainerV1beta1>? desiredDnsConfig;
  /// Enable/Disable FQDN Network Policy for the cluster.
  final pulumi.Input<bool>? desiredEnableFqdnNetworkPolicy;
  /// Enable/Disable private endpoint for the cluster's master.
  final pulumi.Input<bool>? desiredEnablePrivateEndpoint;
  /// The desired fleet configuration for the cluster.
  final pulumi.Input<FleetContainerV1beta1>? desiredFleet;
  /// The desired config of Gateway API on this cluster.
  final pulumi.Input<GatewayAPIConfigContainerV1beta1>? desiredGatewayApiConfig;
  /// The desired GCFS config for the cluster.
  final pulumi.Input<GcfsConfigContainerV1beta1>? desiredGcfsConfig;
  /// HostMaintenancePolicy contains the desired maintenance policy for the Google Compute Engine hosts.
  final pulumi.Input<HostMaintenancePolicy>? desiredHostMaintenancePolicy;
  /// The desired Identity Service component configuration.
  final pulumi.Input<IdentityServiceConfigContainerV1beta1>? desiredIdentityServiceConfig;
  /// The desired image type for the node pool. NOTE: Set the "desired_node_pool" field as well.
  final pulumi.Input<String>? desiredImageType;
  /// Specify the details of in-transit encryption.
  final pulumi.Input<ClusterUpdateDesiredInTransitEncryptionConfig>? desiredInTransitEncryptionConfig;
  /// The desired config of Intra-node visibility.
  final pulumi.Input<IntraNodeVisibilityConfigContainerV1beta1>? desiredIntraNodeVisibilityConfig;
  /// Beta APIs enabled for cluster.
  final pulumi.Input<K8sBetaAPIConfigContainerV1beta1>? desiredK8sBetaApis;
  /// The desired L4 Internal Load Balancer Subsetting configuration.
  final pulumi.Input<ILBSubsettingConfigContainerV1beta1>? desiredL4ilbSubsettingConfig;
  /// The desired list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This list must always include the cluster's primary zone. Warning: changing cluster locations will update the locations of all node pools and will result in nodes being added and/or removed.
  final pulumi.Input<List<String>>? desiredLocations;
  /// The desired logging configuration.
  final pulumi.Input<LoggingConfigContainerV1beta1>? desiredLoggingConfig;
  /// The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  final pulumi.Input<String>? desiredLoggingService;
  /// Configuration for master components.
  final pulumi.Input<Map<String, dynamic>>? desiredMaster;
  /// The desired configuration options for master authorized networks feature.
  final pulumi.Input<MasterAuthorizedNetworksConfigContainerV1beta1>? desiredMasterAuthorizedNetworksConfig;
  /// The Kubernetes version to change the master to. The only valid value is the latest supported version. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the default Kubernetes version
  final pulumi.Input<String>? desiredMasterVersion;
  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  final pulumi.Input<MeshCertificatesContainerV1beta1>? desiredMeshCertificates;
  /// The desired monitoring configuration.
  final pulumi.Input<MonitoringConfigContainerV1beta1>? desiredMonitoringConfig;
  /// The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  final pulumi.Input<String>? desiredMonitoringService;
  /// The desired network performance config.
  final pulumi.Input<ClusterNetworkPerformanceConfigContainerV1beta1>? desiredNetworkPerformanceConfig;
  /// The desired network tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  final pulumi.Input<NetworkTagsContainerV1beta1>? desiredNodePoolAutoConfigNetworkTags;
  /// The desired resource manager tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  final pulumi.Input<ResourceManagerTagsContainerV1beta1>? desiredNodePoolAutoConfigResourceManagerTags;
  /// Autoscaler configuration for the node pool specified in desired_node_pool_id. If there is only one pool in the cluster and desired_node_pool_id is not provided then the change applies to that single node pool.
  final pulumi.Input<NodePoolAutoscalingContainerV1beta1>? desiredNodePoolAutoscaling;
  /// The node pool to be upgraded. This field is mandatory if "desired_node_version", "desired_image_family", "desired_node_pool_autoscaling", or "desired_workload_metadata_config" is specified and there is more than one node pool on the cluster.
  final pulumi.Input<String>? desiredNodePoolId;
  /// The desired node pool logging configuration defaults for the cluster.
  final pulumi.Input<NodePoolLoggingConfigContainerV1beta1>? desiredNodePoolLoggingConfig;
  /// The Kubernetes version to change the nodes to (typically an upgrade). Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the Kubernetes master version
  final pulumi.Input<String>? desiredNodeVersion;
  /// The desired notification configuration.
  final pulumi.Input<NotificationConfigContainerV1beta1>? desiredNotificationConfig;
  /// The desired parent product config for the cluster.
  final pulumi.Input<ParentProductConfigContainerV1beta1>? desiredParentProductConfig;
  /// The desired configuration options for the PodSecurityPolicy feature.
  final pulumi.Input<PodSecurityPolicyConfig>? desiredPodSecurityPolicyConfig;
  /// The desired private cluster configuration.
  final pulumi.Input<PrivateClusterConfigContainerV1beta1>? desiredPrivateClusterConfig;
  /// The desired state of IPv6 connectivity to Google Services.
  final pulumi.Input<ClusterUpdateDesiredPrivateIpv6GoogleAccessContainerV1beta1>? desiredPrivateIpv6GoogleAccess;
  /// Deprecated: Use DesiredSecurityPostureConfig instead. Enable/Disable Protect API features for the cluster.
  final pulumi.Input<ProtectConfig>? desiredProtectConfig;
  /// The desired release channel configuration.
  final pulumi.Input<ReleaseChannelContainerV1beta1>? desiredReleaseChannel;
  /// The desired configuration for exporting resource usage.
  final pulumi.Input<ResourceUsageExportConfigContainerV1beta1>? desiredResourceUsageExportConfig;
  /// Enable/Disable Security Posture API features for the cluster.
  final pulumi.Input<SecurityPostureConfigContainerV1beta1>? desiredSecurityPostureConfig;
  /// ServiceExternalIPsConfig specifies the config for the use of Services with ExternalIPs field.
  final pulumi.Input<ServiceExternalIPsConfigContainerV1beta1>? desiredServiceExternalIpsConfig;
  /// Configuration for Shielded Nodes.
  final pulumi.Input<ShieldedNodesContainerV1beta1>? desiredShieldedNodes;
  /// The desired stack type of the cluster. If a stack type is provided and does not match the current stack type of the cluster, update will attempt to change the stack type to the new type.
  final pulumi.Input<ClusterUpdateDesiredStackTypeContainerV1beta1>? desiredStackType;
  /// The desired Cloud TPU configuration.
  final pulumi.Input<TpuConfig>? desiredTpuConfig;
  /// Cluster-level Vertical Pod Autoscaling configuration.
  final pulumi.Input<VerticalPodAutoscalingContainerV1beta1>? desiredVerticalPodAutoscaling;
  /// Configuration for direct-path (via ALTS) with workload identity.
  final pulumi.Input<WorkloadALTSConfig>? desiredWorkloadAltsConfig;
  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  final pulumi.Input<WorkloadCertificates>? desiredWorkloadCertificates;
  /// Configuration for Workload Identity.
  final pulumi.Input<WorkloadIdentityConfigContainerV1beta1>? desiredWorkloadIdentityConfig;
  /// Kubernetes open source beta apis enabled on the cluster. Only beta apis
  final pulumi.Input<K8sBetaAPIConfigContainerV1beta1>? enableK8sBetaApis;
  /// The current etag of the cluster. If an etag is provided and does not match the current etag of the cluster, update will be blocked and an ABORTED error will be returned.
  final pulumi.Input<String>? etag;
  /// The additional pod ranges that are to be removed from the cluster. The pod ranges specified here must have been specified earlier in the 'additional_pod_ranges_config' argument.
  final pulumi.Input<AdditionalPodRangesConfigContainerV1beta1>? removedAdditionalPodRangesConfig;

  /// Creates a new [ClusterUpdateContainerV1beta1].
  /// [additionalPodRangesConfig] The additional pod ranges to be added to the cluster. These pod ranges can be used by node pools to allocate pod IPs.
  /// [desiredAddonsConfig] Configurations for the various addons available to run in the cluster.
  /// [desiredAuthenticatorGroupsConfig] AuthenticatorGroupsConfig specifies the config for the cluster security groups settings.
  /// [desiredAutopilotWorkloadPolicyConfig] The desired workload policy configuration for the autopilot cluster.
  /// [desiredBinaryAuthorization] The desired configuration options for the Binary Authorization feature.
  /// [desiredClusterAutoscaling] Cluster-level autoscaling configuration.
  /// [desiredClusterTelemetry] The desired telemetry integration for the cluster.
  /// [desiredCostManagementConfig] The desired configuration for the fine-grained cost management feature.
  /// [desiredDatabaseEncryption] Configuration of etcd encryption.
  /// [desiredDatapathProvider] The desired datapath provider for the cluster.
  /// [desiredDefaultSnatStatus] The desired status of whether to disable default sNAT for this cluster.
  /// [desiredDnsConfig] DNSConfig contains clusterDNS config for this cluster.
  /// [desiredEnableFqdnNetworkPolicy] Enable/Disable FQDN Network Policy for the cluster.
  /// [desiredEnablePrivateEndpoint] Enable/Disable private endpoint for the cluster's master.
  /// [desiredFleet] The desired fleet configuration for the cluster.
  /// [desiredGatewayApiConfig] The desired config of Gateway API on this cluster.
  /// [desiredGcfsConfig] The desired GCFS config for the cluster.
  /// [desiredHostMaintenancePolicy] HostMaintenancePolicy contains the desired maintenance policy for the Google Compute Engine hosts.
  /// [desiredIdentityServiceConfig] The desired Identity Service component configuration.
  /// [desiredImageType] The desired image type for the node pool. NOTE: Set the "desired_node_pool" field as well.
  /// [desiredInTransitEncryptionConfig] Specify the details of in-transit encryption.
  /// [desiredIntraNodeVisibilityConfig] The desired config of Intra-node visibility.
  /// [desiredK8sBetaApis] Beta APIs enabled for cluster.
  /// [desiredL4ilbSubsettingConfig] The desired L4 Internal Load Balancer Subsetting configuration.
  /// [desiredLocations] The desired list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This list must always include the cluster's primary zone. Warning: changing cluster locations will update the locations of all node pools and will result in nodes being added and/or removed.
  /// [desiredLoggingConfig] The desired logging configuration.
  /// [desiredLoggingService] The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  /// [desiredMaster] Configuration for master components.
  /// [desiredMasterAuthorizedNetworksConfig] The desired configuration options for master authorized networks feature.
  /// [desiredMasterVersion] The Kubernetes version to change the master to. The only valid value is the latest supported version. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the default Kubernetes version
  /// [desiredMeshCertificates] Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  /// [desiredMonitoringConfig] The desired monitoring configuration.
  /// [desiredMonitoringService] The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  /// [desiredNetworkPerformanceConfig] The desired network performance config.
  /// [desiredNodePoolAutoConfigNetworkTags] The desired network tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  /// [desiredNodePoolAutoConfigResourceManagerTags] The desired resource manager tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  /// [desiredNodePoolAutoscaling] Autoscaler configuration for the node pool specified in desired_node_pool_id. If there is only one pool in the cluster and desired_node_pool_id is not provided then the change applies to that single node pool.
  /// [desiredNodePoolId] The node pool to be upgraded. This field is mandatory if "desired_node_version", "desired_image_family", "desired_node_pool_autoscaling", or "desired_workload_metadata_config" is specified and there is more than one node pool on the cluster.
  /// [desiredNodePoolLoggingConfig] The desired node pool logging configuration defaults for the cluster.
  /// [desiredNodeVersion] The Kubernetes version to change the nodes to (typically an upgrade). Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the Kubernetes master version
  /// [desiredNotificationConfig] The desired notification configuration.
  /// [desiredParentProductConfig] The desired parent product config for the cluster.
  /// [desiredPodSecurityPolicyConfig] The desired configuration options for the PodSecurityPolicy feature.
  /// [desiredPrivateClusterConfig] The desired private cluster configuration.
  /// [desiredPrivateIpv6GoogleAccess] The desired state of IPv6 connectivity to Google Services.
  /// [desiredProtectConfig] Deprecated: Use DesiredSecurityPostureConfig instead. Enable/Disable Protect API features for the cluster.
  /// [desiredReleaseChannel] The desired release channel configuration.
  /// [desiredResourceUsageExportConfig] The desired configuration for exporting resource usage.
  /// [desiredSecurityPostureConfig] Enable/Disable Security Posture API features for the cluster.
  /// [desiredServiceExternalIpsConfig] ServiceExternalIPsConfig specifies the config for the use of Services with ExternalIPs field.
  /// [desiredShieldedNodes] Configuration for Shielded Nodes.
  /// [desiredStackType] The desired stack type of the cluster. If a stack type is provided and does not match the current stack type of the cluster, update will attempt to change the stack type to the new type.
  /// [desiredTpuConfig] The desired Cloud TPU configuration.
  /// [desiredVerticalPodAutoscaling] Cluster-level Vertical Pod Autoscaling configuration.
  /// [desiredWorkloadAltsConfig] Configuration for direct-path (via ALTS) with workload identity.
  /// [desiredWorkloadCertificates] Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  /// [desiredWorkloadIdentityConfig] Configuration for Workload Identity.
  /// [enableK8sBetaApis] Kubernetes open source beta apis enabled on the cluster. Only beta apis
  /// [etag] The current etag of the cluster. If an etag is provided and does not match the current etag of the cluster, update will be blocked and an ABORTED error will be returned.
  /// [removedAdditionalPodRangesConfig] The additional pod ranges that are to be removed from the cluster. The pod ranges specified here must have been specified earlier in the 'additional_pod_ranges_config' argument.
  ClusterUpdateContainerV1beta1({
    this.additionalPodRangesConfig,
    this.desiredAddonsConfig,
    this.desiredAuthenticatorGroupsConfig,
    this.desiredAutopilotWorkloadPolicyConfig,
    this.desiredBinaryAuthorization,
    this.desiredClusterAutoscaling,
    this.desiredClusterTelemetry,
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
    this.desiredHostMaintenancePolicy,
    this.desiredIdentityServiceConfig,
    this.desiredImageType,
    this.desiredInTransitEncryptionConfig,
    this.desiredIntraNodeVisibilityConfig,
    this.desiredK8sBetaApis,
    this.desiredL4ilbSubsettingConfig,
    this.desiredLocations,
    this.desiredLoggingConfig,
    this.desiredLoggingService,
    this.desiredMaster,
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
    this.desiredPodSecurityPolicyConfig,
    this.desiredPrivateClusterConfig,
    this.desiredPrivateIpv6GoogleAccess,
    this.desiredProtectConfig,
    this.desiredReleaseChannel,
    this.desiredResourceUsageExportConfig,
    this.desiredSecurityPostureConfig,
    this.desiredServiceExternalIpsConfig,
    this.desiredShieldedNodes,
    this.desiredStackType,
    this.desiredTpuConfig,
    this.desiredVerticalPodAutoscaling,
    this.desiredWorkloadAltsConfig,
    this.desiredWorkloadCertificates,
    this.desiredWorkloadIdentityConfig,
    this.enableK8sBetaApis,
    this.etag,
    this.removedAdditionalPodRangesConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalPodRangesConfig': ?pulumi.Input.mapOptionalInputValue<AdditionalPodRangesConfigContainerV1beta1, Map<String, dynamic>>(additionalPodRangesConfig, (value) => value.toMap()),
      'desiredAddonsConfig': ?pulumi.Input.mapOptionalInputValue<AddonsConfigContainerV1beta1, Map<String, dynamic>>(desiredAddonsConfig, (value) => value.toMap()),
      'desiredAuthenticatorGroupsConfig': ?pulumi.Input.mapOptionalInputValue<AuthenticatorGroupsConfigContainerV1beta1, Map<String, dynamic>>(desiredAuthenticatorGroupsConfig, (value) => value.toMap()),
      'desiredAutopilotWorkloadPolicyConfig': ?pulumi.Input.mapOptionalInputValue<WorkloadPolicyConfigContainerV1beta1, Map<String, dynamic>>(desiredAutopilotWorkloadPolicyConfig, (value) => value.toMap()),
      'desiredBinaryAuthorization': ?pulumi.Input.mapOptionalInputValue<BinaryAuthorizationContainerV1beta1, Map<String, dynamic>>(desiredBinaryAuthorization, (value) => value.toMap()),
      'desiredClusterAutoscaling': ?pulumi.Input.mapOptionalInputValue<ClusterAutoscalingContainerV1beta1, Map<String, dynamic>>(desiredClusterAutoscaling, (value) => value.toMap()),
      'desiredClusterTelemetry': ?pulumi.Input.mapOptionalInputValue<ClusterTelemetry, Map<String, dynamic>>(desiredClusterTelemetry, (value) => value.toMap()),
      'desiredCostManagementConfig': ?pulumi.Input.mapOptionalInputValue<CostManagementConfigContainerV1beta1, Map<String, dynamic>>(desiredCostManagementConfig, (value) => value.toMap()),
      'desiredDatabaseEncryption': ?pulumi.Input.mapOptionalInputValue<DatabaseEncryptionContainerV1beta1, Map<String, dynamic>>(desiredDatabaseEncryption, (value) => value.toMap()),
      'desiredDatapathProvider': ?pulumi.Input.mapOptionalInputValue<ClusterUpdateDesiredDatapathProviderContainerV1beta1, String>(desiredDatapathProvider, (value) => value.value),
      'desiredDefaultSnatStatus': ?pulumi.Input.mapOptionalInputValue<DefaultSnatStatusContainerV1beta1, Map<String, dynamic>>(desiredDefaultSnatStatus, (value) => value.toMap()),
      'desiredDnsConfig': ?pulumi.Input.mapOptionalInputValue<DNSConfigContainerV1beta1, Map<String, dynamic>>(desiredDnsConfig, (value) => value.toMap()),
      'desiredEnableFqdnNetworkPolicy': ?desiredEnableFqdnNetworkPolicy,
      'desiredEnablePrivateEndpoint': ?desiredEnablePrivateEndpoint,
      'desiredFleet': ?pulumi.Input.mapOptionalInputValue<FleetContainerV1beta1, Map<String, dynamic>>(desiredFleet, (value) => value.toMap()),
      'desiredGatewayApiConfig': ?pulumi.Input.mapOptionalInputValue<GatewayAPIConfigContainerV1beta1, Map<String, dynamic>>(desiredGatewayApiConfig, (value) => value.toMap()),
      'desiredGcfsConfig': ?pulumi.Input.mapOptionalInputValue<GcfsConfigContainerV1beta1, Map<String, dynamic>>(desiredGcfsConfig, (value) => value.toMap()),
      'desiredHostMaintenancePolicy': ?pulumi.Input.mapOptionalInputValue<HostMaintenancePolicy, Map<String, dynamic>>(desiredHostMaintenancePolicy, (value) => value.toMap()),
      'desiredIdentityServiceConfig': ?pulumi.Input.mapOptionalInputValue<IdentityServiceConfigContainerV1beta1, Map<String, dynamic>>(desiredIdentityServiceConfig, (value) => value.toMap()),
      'desiredImageType': ?desiredImageType,
      'desiredInTransitEncryptionConfig': ?pulumi.Input.mapOptionalInputValue<ClusterUpdateDesiredInTransitEncryptionConfig, String>(desiredInTransitEncryptionConfig, (value) => value.value),
      'desiredIntraNodeVisibilityConfig': ?pulumi.Input.mapOptionalInputValue<IntraNodeVisibilityConfigContainerV1beta1, Map<String, dynamic>>(desiredIntraNodeVisibilityConfig, (value) => value.toMap()),
      'desiredK8sBetaApis': ?pulumi.Input.mapOptionalInputValue<K8sBetaAPIConfigContainerV1beta1, Map<String, dynamic>>(desiredK8sBetaApis, (value) => value.toMap()),
      'desiredL4ilbSubsettingConfig': ?pulumi.Input.mapOptionalInputValue<ILBSubsettingConfigContainerV1beta1, Map<String, dynamic>>(desiredL4ilbSubsettingConfig, (value) => value.toMap()),
      'desiredLocations': ?desiredLocations,
      'desiredLoggingConfig': ?pulumi.Input.mapOptionalInputValue<LoggingConfigContainerV1beta1, Map<String, dynamic>>(desiredLoggingConfig, (value) => value.toMap()),
      'desiredLoggingService': ?desiredLoggingService,
      'desiredMaster': ?desiredMaster,
      'desiredMasterAuthorizedNetworksConfig': ?pulumi.Input.mapOptionalInputValue<MasterAuthorizedNetworksConfigContainerV1beta1, Map<String, dynamic>>(desiredMasterAuthorizedNetworksConfig, (value) => value.toMap()),
      'desiredMasterVersion': ?desiredMasterVersion,
      'desiredMeshCertificates': ?pulumi.Input.mapOptionalInputValue<MeshCertificatesContainerV1beta1, Map<String, dynamic>>(desiredMeshCertificates, (value) => value.toMap()),
      'desiredMonitoringConfig': ?pulumi.Input.mapOptionalInputValue<MonitoringConfigContainerV1beta1, Map<String, dynamic>>(desiredMonitoringConfig, (value) => value.toMap()),
      'desiredMonitoringService': ?desiredMonitoringService,
      'desiredNetworkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNetworkPerformanceConfigContainerV1beta1, Map<String, dynamic>>(desiredNetworkPerformanceConfig, (value) => value.toMap()),
      'desiredNodePoolAutoConfigNetworkTags': ?pulumi.Input.mapOptionalInputValue<NetworkTagsContainerV1beta1, Map<String, dynamic>>(desiredNodePoolAutoConfigNetworkTags, (value) => value.toMap()),
      'desiredNodePoolAutoConfigResourceManagerTags': ?pulumi.Input.mapOptionalInputValue<ResourceManagerTagsContainerV1beta1, Map<String, dynamic>>(desiredNodePoolAutoConfigResourceManagerTags, (value) => value.toMap()),
      'desiredNodePoolAutoscaling': ?pulumi.Input.mapOptionalInputValue<NodePoolAutoscalingContainerV1beta1, Map<String, dynamic>>(desiredNodePoolAutoscaling, (value) => value.toMap()),
      'desiredNodePoolId': ?desiredNodePoolId,
      'desiredNodePoolLoggingConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolLoggingConfigContainerV1beta1, Map<String, dynamic>>(desiredNodePoolLoggingConfig, (value) => value.toMap()),
      'desiredNodeVersion': ?desiredNodeVersion,
      'desiredNotificationConfig': ?pulumi.Input.mapOptionalInputValue<NotificationConfigContainerV1beta1, Map<String, dynamic>>(desiredNotificationConfig, (value) => value.toMap()),
      'desiredParentProductConfig': ?pulumi.Input.mapOptionalInputValue<ParentProductConfigContainerV1beta1, Map<String, dynamic>>(desiredParentProductConfig, (value) => value.toMap()),
      'desiredPodSecurityPolicyConfig': ?pulumi.Input.mapOptionalInputValue<PodSecurityPolicyConfig, Map<String, dynamic>>(desiredPodSecurityPolicyConfig, (value) => value.toMap()),
      'desiredPrivateClusterConfig': ?pulumi.Input.mapOptionalInputValue<PrivateClusterConfigContainerV1beta1, Map<String, dynamic>>(desiredPrivateClusterConfig, (value) => value.toMap()),
      'desiredPrivateIpv6GoogleAccess': ?pulumi.Input.mapOptionalInputValue<ClusterUpdateDesiredPrivateIpv6GoogleAccessContainerV1beta1, String>(desiredPrivateIpv6GoogleAccess, (value) => value.value),
      'desiredProtectConfig': ?pulumi.Input.mapOptionalInputValue<ProtectConfig, Map<String, dynamic>>(desiredProtectConfig, (value) => value.toMap()),
      'desiredReleaseChannel': ?pulumi.Input.mapOptionalInputValue<ReleaseChannelContainerV1beta1, Map<String, dynamic>>(desiredReleaseChannel, (value) => value.toMap()),
      'desiredResourceUsageExportConfig': ?pulumi.Input.mapOptionalInputValue<ResourceUsageExportConfigContainerV1beta1, Map<String, dynamic>>(desiredResourceUsageExportConfig, (value) => value.toMap()),
      'desiredSecurityPostureConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPostureConfigContainerV1beta1, Map<String, dynamic>>(desiredSecurityPostureConfig, (value) => value.toMap()),
      'desiredServiceExternalIpsConfig': ?pulumi.Input.mapOptionalInputValue<ServiceExternalIPsConfigContainerV1beta1, Map<String, dynamic>>(desiredServiceExternalIpsConfig, (value) => value.toMap()),
      'desiredShieldedNodes': ?pulumi.Input.mapOptionalInputValue<ShieldedNodesContainerV1beta1, Map<String, dynamic>>(desiredShieldedNodes, (value) => value.toMap()),
      'desiredStackType': ?pulumi.Input.mapOptionalInputValue<ClusterUpdateDesiredStackTypeContainerV1beta1, String>(desiredStackType, (value) => value.value),
      'desiredTpuConfig': ?pulumi.Input.mapOptionalInputValue<TpuConfig, Map<String, dynamic>>(desiredTpuConfig, (value) => value.toMap()),
      'desiredVerticalPodAutoscaling': ?pulumi.Input.mapOptionalInputValue<VerticalPodAutoscalingContainerV1beta1, Map<String, dynamic>>(desiredVerticalPodAutoscaling, (value) => value.toMap()),
      'desiredWorkloadAltsConfig': ?pulumi.Input.mapOptionalInputValue<WorkloadALTSConfig, Map<String, dynamic>>(desiredWorkloadAltsConfig, (value) => value.toMap()),
      'desiredWorkloadCertificates': ?pulumi.Input.mapOptionalInputValue<WorkloadCertificates, Map<String, dynamic>>(desiredWorkloadCertificates, (value) => value.toMap()),
      'desiredWorkloadIdentityConfig': ?pulumi.Input.mapOptionalInputValue<WorkloadIdentityConfigContainerV1beta1, Map<String, dynamic>>(desiredWorkloadIdentityConfig, (value) => value.toMap()),
      'enableK8sBetaApis': ?pulumi.Input.mapOptionalInputValue<K8sBetaAPIConfigContainerV1beta1, Map<String, dynamic>>(enableK8sBetaApis, (value) => value.toMap()),
      'etag': ?etag,
      'removedAdditionalPodRangesConfig': ?pulumi.Input.mapOptionalInputValue<AdditionalPodRangesConfigContainerV1beta1, Map<String, dynamic>>(removedAdditionalPodRangesConfig, (value) => value.toMap()),
    };
  }

  factory ClusterUpdateContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ClusterUpdateContainerV1beta1(
      additionalPodRangesConfig: map['additionalPodRangesConfig'] == null ? null : (AdditionalPodRangesConfigContainerV1beta1.fromMap((map['additionalPodRangesConfig']! as Map).cast<String, dynamic>())).input(),
      desiredAddonsConfig: map['desiredAddonsConfig'] == null ? null : (AddonsConfigContainerV1beta1.fromMap((map['desiredAddonsConfig']! as Map).cast<String, dynamic>())).input(),
      desiredAuthenticatorGroupsConfig: map['desiredAuthenticatorGroupsConfig'] == null ? null : (AuthenticatorGroupsConfigContainerV1beta1.fromMap((map['desiredAuthenticatorGroupsConfig']! as Map).cast<String, dynamic>())).input(),
      desiredAutopilotWorkloadPolicyConfig: map['desiredAutopilotWorkloadPolicyConfig'] == null ? null : (WorkloadPolicyConfigContainerV1beta1.fromMap((map['desiredAutopilotWorkloadPolicyConfig']! as Map).cast<String, dynamic>())).input(),
      desiredBinaryAuthorization: map['desiredBinaryAuthorization'] == null ? null : (BinaryAuthorizationContainerV1beta1.fromMap((map['desiredBinaryAuthorization']! as Map).cast<String, dynamic>())).input(),
      desiredClusterAutoscaling: map['desiredClusterAutoscaling'] == null ? null : (ClusterAutoscalingContainerV1beta1.fromMap((map['desiredClusterAutoscaling']! as Map).cast<String, dynamic>())).input(),
      desiredClusterTelemetry: map['desiredClusterTelemetry'] == null ? null : (ClusterTelemetry.fromMap((map['desiredClusterTelemetry']! as Map).cast<String, dynamic>())).input(),
      desiredCostManagementConfig: map['desiredCostManagementConfig'] == null ? null : (CostManagementConfigContainerV1beta1.fromMap((map['desiredCostManagementConfig']! as Map).cast<String, dynamic>())).input(),
      desiredDatabaseEncryption: map['desiredDatabaseEncryption'] == null ? null : (DatabaseEncryptionContainerV1beta1.fromMap((map['desiredDatabaseEncryption']! as Map).cast<String, dynamic>())).input(),
      desiredDatapathProvider: map['desiredDatapathProvider'] == null ? null : (ClusterUpdateDesiredDatapathProviderContainerV1beta1.fromValue(map['desiredDatapathProvider']! as String)).input(),
      desiredDefaultSnatStatus: map['desiredDefaultSnatStatus'] == null ? null : (DefaultSnatStatusContainerV1beta1.fromMap((map['desiredDefaultSnatStatus']! as Map).cast<String, dynamic>())).input(),
      desiredDnsConfig: map['desiredDnsConfig'] == null ? null : (DNSConfigContainerV1beta1.fromMap((map['desiredDnsConfig']! as Map).cast<String, dynamic>())).input(),
      desiredEnableFqdnNetworkPolicy: map['desiredEnableFqdnNetworkPolicy'] == null ? null : (map['desiredEnableFqdnNetworkPolicy']! as bool).input(),
      desiredEnablePrivateEndpoint: map['desiredEnablePrivateEndpoint'] == null ? null : (map['desiredEnablePrivateEndpoint']! as bool).input(),
      desiredFleet: map['desiredFleet'] == null ? null : (FleetContainerV1beta1.fromMap((map['desiredFleet']! as Map).cast<String, dynamic>())).input(),
      desiredGatewayApiConfig: map['desiredGatewayApiConfig'] == null ? null : (GatewayAPIConfigContainerV1beta1.fromMap((map['desiredGatewayApiConfig']! as Map).cast<String, dynamic>())).input(),
      desiredGcfsConfig: map['desiredGcfsConfig'] == null ? null : (GcfsConfigContainerV1beta1.fromMap((map['desiredGcfsConfig']! as Map).cast<String, dynamic>())).input(),
      desiredHostMaintenancePolicy: map['desiredHostMaintenancePolicy'] == null ? null : (HostMaintenancePolicy.fromMap((map['desiredHostMaintenancePolicy']! as Map).cast<String, dynamic>())).input(),
      desiredIdentityServiceConfig: map['desiredIdentityServiceConfig'] == null ? null : (IdentityServiceConfigContainerV1beta1.fromMap((map['desiredIdentityServiceConfig']! as Map).cast<String, dynamic>())).input(),
      desiredImageType: map['desiredImageType'] == null ? null : (map['desiredImageType']! as String).input(),
      desiredInTransitEncryptionConfig: map['desiredInTransitEncryptionConfig'] == null ? null : (ClusterUpdateDesiredInTransitEncryptionConfig.fromValue(map['desiredInTransitEncryptionConfig']! as String)).input(),
      desiredIntraNodeVisibilityConfig: map['desiredIntraNodeVisibilityConfig'] == null ? null : (IntraNodeVisibilityConfigContainerV1beta1.fromMap((map['desiredIntraNodeVisibilityConfig']! as Map).cast<String, dynamic>())).input(),
      desiredK8sBetaApis: map['desiredK8sBetaApis'] == null ? null : (K8sBetaAPIConfigContainerV1beta1.fromMap((map['desiredK8sBetaApis']! as Map).cast<String, dynamic>())).input(),
      desiredL4ilbSubsettingConfig: map['desiredL4ilbSubsettingConfig'] == null ? null : (ILBSubsettingConfigContainerV1beta1.fromMap((map['desiredL4ilbSubsettingConfig']! as Map).cast<String, dynamic>())).input(),
      desiredLocations: map['desiredLocations'] == null ? null : ((map['desiredLocations']! as List).cast<String>()).input(),
      desiredLoggingConfig: map['desiredLoggingConfig'] == null ? null : (LoggingConfigContainerV1beta1.fromMap((map['desiredLoggingConfig']! as Map).cast<String, dynamic>())).input(),
      desiredLoggingService: map['desiredLoggingService'] == null ? null : (map['desiredLoggingService']! as String).input(),
      desiredMaster: map['desiredMaster'] == null ? null : ((map['desiredMaster']! as Map).cast<String, dynamic>()).input(),
      desiredMasterAuthorizedNetworksConfig: map['desiredMasterAuthorizedNetworksConfig'] == null ? null : (MasterAuthorizedNetworksConfigContainerV1beta1.fromMap((map['desiredMasterAuthorizedNetworksConfig']! as Map).cast<String, dynamic>())).input(),
      desiredMasterVersion: map['desiredMasterVersion'] == null ? null : (map['desiredMasterVersion']! as String).input(),
      desiredMeshCertificates: map['desiredMeshCertificates'] == null ? null : (MeshCertificatesContainerV1beta1.fromMap((map['desiredMeshCertificates']! as Map).cast<String, dynamic>())).input(),
      desiredMonitoringConfig: map['desiredMonitoringConfig'] == null ? null : (MonitoringConfigContainerV1beta1.fromMap((map['desiredMonitoringConfig']! as Map).cast<String, dynamic>())).input(),
      desiredMonitoringService: map['desiredMonitoringService'] == null ? null : (map['desiredMonitoringService']! as String).input(),
      desiredNetworkPerformanceConfig: map['desiredNetworkPerformanceConfig'] == null ? null : (ClusterNetworkPerformanceConfigContainerV1beta1.fromMap((map['desiredNetworkPerformanceConfig']! as Map).cast<String, dynamic>())).input(),
      desiredNodePoolAutoConfigNetworkTags: map['desiredNodePoolAutoConfigNetworkTags'] == null ? null : (NetworkTagsContainerV1beta1.fromMap((map['desiredNodePoolAutoConfigNetworkTags']! as Map).cast<String, dynamic>())).input(),
      desiredNodePoolAutoConfigResourceManagerTags: map['desiredNodePoolAutoConfigResourceManagerTags'] == null ? null : (ResourceManagerTagsContainerV1beta1.fromMap((map['desiredNodePoolAutoConfigResourceManagerTags']! as Map).cast<String, dynamic>())).input(),
      desiredNodePoolAutoscaling: map['desiredNodePoolAutoscaling'] == null ? null : (NodePoolAutoscalingContainerV1beta1.fromMap((map['desiredNodePoolAutoscaling']! as Map).cast<String, dynamic>())).input(),
      desiredNodePoolId: map['desiredNodePoolId'] == null ? null : (map['desiredNodePoolId']! as String).input(),
      desiredNodePoolLoggingConfig: map['desiredNodePoolLoggingConfig'] == null ? null : (NodePoolLoggingConfigContainerV1beta1.fromMap((map['desiredNodePoolLoggingConfig']! as Map).cast<String, dynamic>())).input(),
      desiredNodeVersion: map['desiredNodeVersion'] == null ? null : (map['desiredNodeVersion']! as String).input(),
      desiredNotificationConfig: map['desiredNotificationConfig'] == null ? null : (NotificationConfigContainerV1beta1.fromMap((map['desiredNotificationConfig']! as Map).cast<String, dynamic>())).input(),
      desiredParentProductConfig: map['desiredParentProductConfig'] == null ? null : (ParentProductConfigContainerV1beta1.fromMap((map['desiredParentProductConfig']! as Map).cast<String, dynamic>())).input(),
      desiredPodSecurityPolicyConfig: map['desiredPodSecurityPolicyConfig'] == null ? null : (PodSecurityPolicyConfig.fromMap((map['desiredPodSecurityPolicyConfig']! as Map).cast<String, dynamic>())).input(),
      desiredPrivateClusterConfig: map['desiredPrivateClusterConfig'] == null ? null : (PrivateClusterConfigContainerV1beta1.fromMap((map['desiredPrivateClusterConfig']! as Map).cast<String, dynamic>())).input(),
      desiredPrivateIpv6GoogleAccess: map['desiredPrivateIpv6GoogleAccess'] == null ? null : (ClusterUpdateDesiredPrivateIpv6GoogleAccessContainerV1beta1.fromValue(map['desiredPrivateIpv6GoogleAccess']! as String)).input(),
      desiredProtectConfig: map['desiredProtectConfig'] == null ? null : (ProtectConfig.fromMap((map['desiredProtectConfig']! as Map).cast<String, dynamic>())).input(),
      desiredReleaseChannel: map['desiredReleaseChannel'] == null ? null : (ReleaseChannelContainerV1beta1.fromMap((map['desiredReleaseChannel']! as Map).cast<String, dynamic>())).input(),
      desiredResourceUsageExportConfig: map['desiredResourceUsageExportConfig'] == null ? null : (ResourceUsageExportConfigContainerV1beta1.fromMap((map['desiredResourceUsageExportConfig']! as Map).cast<String, dynamic>())).input(),
      desiredSecurityPostureConfig: map['desiredSecurityPostureConfig'] == null ? null : (SecurityPostureConfigContainerV1beta1.fromMap((map['desiredSecurityPostureConfig']! as Map).cast<String, dynamic>())).input(),
      desiredServiceExternalIpsConfig: map['desiredServiceExternalIpsConfig'] == null ? null : (ServiceExternalIPsConfigContainerV1beta1.fromMap((map['desiredServiceExternalIpsConfig']! as Map).cast<String, dynamic>())).input(),
      desiredShieldedNodes: map['desiredShieldedNodes'] == null ? null : (ShieldedNodesContainerV1beta1.fromMap((map['desiredShieldedNodes']! as Map).cast<String, dynamic>())).input(),
      desiredStackType: map['desiredStackType'] == null ? null : (ClusterUpdateDesiredStackTypeContainerV1beta1.fromValue(map['desiredStackType']! as String)).input(),
      desiredTpuConfig: map['desiredTpuConfig'] == null ? null : (TpuConfig.fromMap((map['desiredTpuConfig']! as Map).cast<String, dynamic>())).input(),
      desiredVerticalPodAutoscaling: map['desiredVerticalPodAutoscaling'] == null ? null : (VerticalPodAutoscalingContainerV1beta1.fromMap((map['desiredVerticalPodAutoscaling']! as Map).cast<String, dynamic>())).input(),
      desiredWorkloadAltsConfig: map['desiredWorkloadAltsConfig'] == null ? null : (WorkloadALTSConfig.fromMap((map['desiredWorkloadAltsConfig']! as Map).cast<String, dynamic>())).input(),
      desiredWorkloadCertificates: map['desiredWorkloadCertificates'] == null ? null : (WorkloadCertificates.fromMap((map['desiredWorkloadCertificates']! as Map).cast<String, dynamic>())).input(),
      desiredWorkloadIdentityConfig: map['desiredWorkloadIdentityConfig'] == null ? null : (WorkloadIdentityConfigContainerV1beta1.fromMap((map['desiredWorkloadIdentityConfig']! as Map).cast<String, dynamic>())).input(),
      enableK8sBetaApis: map['enableK8sBetaApis'] == null ? null : (K8sBetaAPIConfigContainerV1beta1.fromMap((map['enableK8sBetaApis']! as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      removedAdditionalPodRangesConfig: map['removedAdditionalPodRangesConfig'] == null ? null : (AdditionalPodRangesConfigContainerV1beta1.fromMap((map['removedAdditionalPodRangesConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

