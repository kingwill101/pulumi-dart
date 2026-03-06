// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_addons_config.dart';
import 'get_cluster_anonymous_authentication_config.dart';
import 'get_cluster_authenticator_groups_config.dart';
import 'get_cluster_binary_authorization.dart';
import 'get_cluster_cluster_autoscaling.dart';
import 'get_cluster_cluster_telemetry.dart';
import 'get_cluster_confidential_node.dart';
import 'get_cluster_control_plane_endpoints_config.dart';
import 'get_cluster_cost_management_config.dart';
import 'get_cluster_database_encryption.dart';
import 'get_cluster_default_snat_status.dart';
import 'get_cluster_dns_config.dart';
import 'get_cluster_enable_k8s_beta_api.dart';
import 'get_cluster_enterprise_config.dart';
import 'get_cluster_fleet.dart';
import 'get_cluster_gateway_api_config.dart';
import 'get_cluster_gke_auto_upgrade_config.dart';
import 'get_cluster_identity_service_config.dart';
import 'get_cluster_ip_allocation_policy.dart';
import 'get_cluster_logging_config.dart';
import 'get_cluster_maintenance_policy.dart';
import 'get_cluster_managed_opentelemetry_config.dart';
import 'get_cluster_master_auth.dart';
import 'get_cluster_master_authorized_networks_config.dart';
import 'get_cluster_mesh_certificate.dart';
import 'get_cluster_monitoring_config.dart';
import 'get_cluster_network_performance_config.dart';
import 'get_cluster_network_policy.dart';
import 'get_cluster_node_config.dart';
import 'get_cluster_node_pool.dart';
import 'get_cluster_node_pool_auto_config.dart';
import 'get_cluster_node_pool_default.dart';
import 'get_cluster_notification_config.dart';
import 'get_cluster_pod_autoscaling.dart';
import 'get_cluster_pod_security_policy_config.dart';
import 'get_cluster_private_cluster_config.dart';
import 'get_cluster_protect_config.dart';
import 'get_cluster_rbac_binding_config.dart';
import 'get_cluster_release_channel.dart';
import 'get_cluster_resource_usage_export_config.dart';
import 'get_cluster_secret_manager_config.dart';
import 'get_cluster_secret_sync_config.dart';
import 'get_cluster_security_posture_config.dart';
import 'get_cluster_service_external_ips_config.dart';
import 'get_cluster_tpu_config.dart';
import 'get_cluster_user_managed_keys_config.dart';
import 'get_cluster_vertical_pod_autoscaling.dart';
import 'get_cluster_workload_alts_config.dart';
import 'get_cluster_workload_identity_config.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  final List<GetClusterAddonsConfig> addonsConfigs;
  final bool allowNetAdmin;
  final List<GetClusterAnonymousAuthenticationConfig> anonymousAuthenticationConfigs;
  final List<GetClusterAuthenticatorGroupsConfig> authenticatorGroupsConfigs;
  final List<GetClusterBinaryAuthorization> binaryAuthorizations;
  final List<GetClusterClusterAutoscaling> clusterAutoscalings;
  final String clusterIpv4Cidr;
  final List<GetClusterClusterTelemetry> clusterTelemetries;
  final List<GetClusterConfidentialNode> confidentialNodes;
  final List<GetClusterControlPlaneEndpointsConfig> controlPlaneEndpointsConfigs;
  final List<GetClusterCostManagementConfig> costManagementConfigs;
  final List<GetClusterDatabaseEncryption> databaseEncryptions;
  final String datapathProvider;
  final int defaultMaxPodsPerNode;
  final List<GetClusterDefaultSnatStatus> defaultSnatStatuses;
  final bool deletionProtection;
  final String description;
  final bool disableL4LbFirewallReconciliation;
  final List<GetClusterDnsConfig> dnsConfigs;
  final Map<String, String> effectiveLabels;
  final bool enableAutopilot;
  final bool enableCiliumClusterwideNetworkPolicy;
  final bool enableFqdnNetworkPolicy;
  final bool enableIntranodeVisibility;
  final List<GetClusterEnableK8sBetaApi> enableK8sBetaApis;
  final bool enableKubernetesAlpha;
  final bool enableL4IlbSubsetting;
  final bool enableLegacyAbac;
  final bool enableMultiNetworking;
  final bool enableShieldedNodes;
  final bool enableTpu;
  final String endpoint;
  final List<GetClusterEnterpriseConfig> enterpriseConfigs;
  final List<GetClusterFleet> fleets;
  final List<GetClusterGatewayApiConfig> gatewayApiConfigs;
  final List<GetClusterGkeAutoUpgradeConfig> gkeAutoUpgradeConfigs;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetClusterIdentityServiceConfig> identityServiceConfigs;
  final String inTransitEncryptionConfig;
  final int initialNodeCount;
  final List<GetClusterIpAllocationPolicy> ipAllocationPolicies;
  final String labelFingerprint;
  final String? location;
  final List<GetClusterLoggingConfig> loggingConfigs;
  final String loggingService;
  final List<GetClusterMaintenancePolicy> maintenancePolicies;
  final List<GetClusterManagedOpentelemetryConfig> managedOpentelemetryConfigs;
  final List<GetClusterMasterAuthorizedNetworksConfig> masterAuthorizedNetworksConfigs;
  final List<GetClusterMasterAuth> masterAuths;
  final String masterVersion;
  final List<GetClusterMeshCertificate> meshCertificates;
  final String minMasterVersion;
  final List<GetClusterMonitoringConfig> monitoringConfigs;
  final String monitoringService;
  final String name;
  final String network;
  final List<GetClusterNetworkPerformanceConfig> networkPerformanceConfigs;
  final List<GetClusterNetworkPolicy> networkPolicies;
  final String networkingMode;
  final List<GetClusterNodeConfig> nodeConfigs;
  final List<String> nodeLocations;
  final List<GetClusterNodePoolAutoConfig> nodePoolAutoConfigs;
  final List<GetClusterNodePoolDefault> nodePoolDefaults;
  final List<GetClusterNodePool> nodePools;
  final String nodeVersion;
  final List<GetClusterNotificationConfig> notificationConfigs;
  final String operation;
  final List<GetClusterPodAutoscaling> podAutoscalings;
  final List<GetClusterPodSecurityPolicyConfig> podSecurityPolicyConfigs;
  final List<GetClusterPrivateClusterConfig> privateClusterConfigs;
  final String privateIpv6GoogleAccess;
  final String? project;
  final List<GetClusterProtectConfig> protectConfigs;
  final Map<String, String> pulumiLabels;
  final List<GetClusterRbacBindingConfig> rbacBindingConfigs;
  final List<GetClusterReleaseChannel> releaseChannels;
  final bool removeDefaultNodePool;
  final Map<String, String> resourceLabels;
  final List<GetClusterResourceUsageExportConfig> resourceUsageExportConfigs;
  final List<GetClusterSecretManagerConfig> secretManagerConfigs;
  final List<GetClusterSecretSyncConfig> secretSyncConfigs;
  final List<GetClusterSecurityPostureConfig> securityPostureConfigs;
  final String selfLink;
  final List<GetClusterServiceExternalIpsConfig> serviceExternalIpsConfigs;
  final String servicesIpv4Cidr;
  final String subnetwork;
  final List<GetClusterTpuConfig> tpuConfigs;
  final String tpuIpv4CidrBlock;
  final List<GetClusterUserManagedKeysConfig> userManagedKeysConfigs;
  final List<GetClusterVerticalPodAutoscaling> verticalPodAutoscalings;
  final List<GetClusterWorkloadAltsConfig> workloadAltsConfigs;
  final List<GetClusterWorkloadIdentityConfig> workloadIdentityConfigs;

  /// Creates a new [GetClusterResult].
  /// [addonsConfigs] Required.
  /// [allowNetAdmin] Required.
  /// [anonymousAuthenticationConfigs] Required.
  /// [authenticatorGroupsConfigs] Required.
  /// [binaryAuthorizations] Required.
  /// [clusterAutoscalings] Required.
  /// [clusterIpv4Cidr] Required.
  /// [clusterTelemetries] Required.
  /// [confidentialNodes] Required.
  /// [controlPlaneEndpointsConfigs] Required.
  /// [costManagementConfigs] Required.
  /// [databaseEncryptions] Required.
  /// [datapathProvider] Required.
  /// [defaultMaxPodsPerNode] Required.
  /// [defaultSnatStatuses] Required.
  /// [deletionProtection] Required.
  /// [description] Required.
  /// [disableL4LbFirewallReconciliation] Required.
  /// [dnsConfigs] Required.
  /// [effectiveLabels] Required.
  /// [enableAutopilot] Required.
  /// [enableCiliumClusterwideNetworkPolicy] Required.
  /// [enableFqdnNetworkPolicy] Required.
  /// [enableIntranodeVisibility] Required.
  /// [enableK8sBetaApis] Required.
  /// [enableKubernetesAlpha] Required.
  /// [enableL4IlbSubsetting] Required.
  /// [enableLegacyAbac] Required.
  /// [enableMultiNetworking] Required.
  /// [enableShieldedNodes] Required.
  /// [enableTpu] Required.
  /// [endpoint] Required.
  /// [enterpriseConfigs] Required.
  /// [fleets] Required.
  /// [gatewayApiConfigs] Required.
  /// [gkeAutoUpgradeConfigs] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityServiceConfigs] Required.
  /// [inTransitEncryptionConfig] Required.
  /// [initialNodeCount] Required.
  /// [ipAllocationPolicies] Required.
  /// [labelFingerprint] Required.
  /// [location] Optional.
  /// [loggingConfigs] Required.
  /// [loggingService] Required.
  /// [maintenancePolicies] Required.
  /// [managedOpentelemetryConfigs] Required.
  /// [masterAuthorizedNetworksConfigs] Required.
  /// [masterAuths] Required.
  /// [masterVersion] Required.
  /// [meshCertificates] Required.
  /// [minMasterVersion] Required.
  /// [monitoringConfigs] Required.
  /// [monitoringService] Required.
  /// [name] Required.
  /// [network] Required.
  /// [networkPerformanceConfigs] Required.
  /// [networkPolicies] Required.
  /// [networkingMode] Required.
  /// [nodeConfigs] Required.
  /// [nodeLocations] Required.
  /// [nodePoolAutoConfigs] Required.
  /// [nodePoolDefaults] Required.
  /// [nodePools] Required.
  /// [nodeVersion] Required.
  /// [notificationConfigs] Required.
  /// [operation] Required.
  /// [podAutoscalings] Required.
  /// [podSecurityPolicyConfigs] Required.
  /// [privateClusterConfigs] Required.
  /// [privateIpv6GoogleAccess] Required.
  /// [project] Optional.
  /// [protectConfigs] Required.
  /// [pulumiLabels] Required.
  /// [rbacBindingConfigs] Required.
  /// [releaseChannels] Required.
  /// [removeDefaultNodePool] Required.
  /// [resourceLabels] Required.
  /// [resourceUsageExportConfigs] Required.
  /// [secretManagerConfigs] Required.
  /// [secretSyncConfigs] Required.
  /// [securityPostureConfigs] Required.
  /// [selfLink] Required.
  /// [serviceExternalIpsConfigs] Required.
  /// [servicesIpv4Cidr] Required.
  /// [subnetwork] Required.
  /// [tpuConfigs] Required.
  /// [tpuIpv4CidrBlock] Required.
  /// [userManagedKeysConfigs] Required.
  /// [verticalPodAutoscalings] Required.
  /// [workloadAltsConfigs] Required.
  /// [workloadIdentityConfigs] Required.
  const GetClusterResult({
    required this.addonsConfigs,
    required this.allowNetAdmin,
    required this.anonymousAuthenticationConfigs,
    required this.authenticatorGroupsConfigs,
    required this.binaryAuthorizations,
    required this.clusterAutoscalings,
    required this.clusterIpv4Cidr,
    required this.clusterTelemetries,
    required this.confidentialNodes,
    required this.controlPlaneEndpointsConfigs,
    required this.costManagementConfigs,
    required this.databaseEncryptions,
    required this.datapathProvider,
    required this.defaultMaxPodsPerNode,
    required this.defaultSnatStatuses,
    required this.deletionProtection,
    required this.description,
    required this.disableL4LbFirewallReconciliation,
    required this.dnsConfigs,
    required this.effectiveLabels,
    required this.enableAutopilot,
    required this.enableCiliumClusterwideNetworkPolicy,
    required this.enableFqdnNetworkPolicy,
    required this.enableIntranodeVisibility,
    required this.enableK8sBetaApis,
    required this.enableKubernetesAlpha,
    required this.enableL4IlbSubsetting,
    required this.enableLegacyAbac,
    required this.enableMultiNetworking,
    required this.enableShieldedNodes,
    required this.enableTpu,
    required this.endpoint,
    required this.enterpriseConfigs,
    required this.fleets,
    required this.gatewayApiConfigs,
    required this.gkeAutoUpgradeConfigs,
    required this.id,
    required this.identityServiceConfigs,
    required this.inTransitEncryptionConfig,
    required this.initialNodeCount,
    required this.ipAllocationPolicies,
    required this.labelFingerprint,
    this.location,
    required this.loggingConfigs,
    required this.loggingService,
    required this.maintenancePolicies,
    required this.managedOpentelemetryConfigs,
    required this.masterAuthorizedNetworksConfigs,
    required this.masterAuths,
    required this.masterVersion,
    required this.meshCertificates,
    required this.minMasterVersion,
    required this.monitoringConfigs,
    required this.monitoringService,
    required this.name,
    required this.network,
    required this.networkPerformanceConfigs,
    required this.networkPolicies,
    required this.networkingMode,
    required this.nodeConfigs,
    required this.nodeLocations,
    required this.nodePoolAutoConfigs,
    required this.nodePoolDefaults,
    required this.nodePools,
    required this.nodeVersion,
    required this.notificationConfigs,
    required this.operation,
    required this.podAutoscalings,
    required this.podSecurityPolicyConfigs,
    required this.privateClusterConfigs,
    required this.privateIpv6GoogleAccess,
    this.project,
    required this.protectConfigs,
    required this.pulumiLabels,
    required this.rbacBindingConfigs,
    required this.releaseChannels,
    required this.removeDefaultNodePool,
    required this.resourceLabels,
    required this.resourceUsageExportConfigs,
    required this.secretManagerConfigs,
    required this.secretSyncConfigs,
    required this.securityPostureConfigs,
    required this.selfLink,
    required this.serviceExternalIpsConfigs,
    required this.servicesIpv4Cidr,
    required this.subnetwork,
    required this.tpuConfigs,
    required this.tpuIpv4CidrBlock,
    required this.userManagedKeysConfigs,
    required this.verticalPodAutoscalings,
    required this.workloadAltsConfigs,
    required this.workloadIdentityConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonsConfigs': pulumi.Input.encodeList<GetClusterAddonsConfig, Map<String, dynamic>>(addonsConfigs, (value) => value.toMap()),
      'allowNetAdmin': allowNetAdmin,
      'anonymousAuthenticationConfigs': pulumi.Input.encodeList<GetClusterAnonymousAuthenticationConfig, Map<String, dynamic>>(anonymousAuthenticationConfigs, (value) => value.toMap()),
      'authenticatorGroupsConfigs': pulumi.Input.encodeList<GetClusterAuthenticatorGroupsConfig, Map<String, dynamic>>(authenticatorGroupsConfigs, (value) => value.toMap()),
      'binaryAuthorizations': pulumi.Input.encodeList<GetClusterBinaryAuthorization, Map<String, dynamic>>(binaryAuthorizations, (value) => value.toMap()),
      'clusterAutoscalings': pulumi.Input.encodeList<GetClusterClusterAutoscaling, Map<String, dynamic>>(clusterAutoscalings, (value) => value.toMap()),
      'clusterIpv4Cidr': clusterIpv4Cidr,
      'clusterTelemetries': pulumi.Input.encodeList<GetClusterClusterTelemetry, Map<String, dynamic>>(clusterTelemetries, (value) => value.toMap()),
      'confidentialNodes': pulumi.Input.encodeList<GetClusterConfidentialNode, Map<String, dynamic>>(confidentialNodes, (value) => value.toMap()),
      'controlPlaneEndpointsConfigs': pulumi.Input.encodeList<GetClusterControlPlaneEndpointsConfig, Map<String, dynamic>>(controlPlaneEndpointsConfigs, (value) => value.toMap()),
      'costManagementConfigs': pulumi.Input.encodeList<GetClusterCostManagementConfig, Map<String, dynamic>>(costManagementConfigs, (value) => value.toMap()),
      'databaseEncryptions': pulumi.Input.encodeList<GetClusterDatabaseEncryption, Map<String, dynamic>>(databaseEncryptions, (value) => value.toMap()),
      'datapathProvider': datapathProvider,
      'defaultMaxPodsPerNode': defaultMaxPodsPerNode,
      'defaultSnatStatuses': pulumi.Input.encodeList<GetClusterDefaultSnatStatus, Map<String, dynamic>>(defaultSnatStatuses, (value) => value.toMap()),
      'deletionProtection': deletionProtection,
      'description': description,
      'disableL4LbFirewallReconciliation': disableL4LbFirewallReconciliation,
      'dnsConfigs': pulumi.Input.encodeList<GetClusterDnsConfig, Map<String, dynamic>>(dnsConfigs, (value) => value.toMap()),
      'effectiveLabels': effectiveLabels,
      'enableAutopilot': enableAutopilot,
      'enableCiliumClusterwideNetworkPolicy': enableCiliumClusterwideNetworkPolicy,
      'enableFqdnNetworkPolicy': enableFqdnNetworkPolicy,
      'enableIntranodeVisibility': enableIntranodeVisibility,
      'enableK8sBetaApis': pulumi.Input.encodeList<GetClusterEnableK8sBetaApi, Map<String, dynamic>>(enableK8sBetaApis, (value) => value.toMap()),
      'enableKubernetesAlpha': enableKubernetesAlpha,
      'enableL4IlbSubsetting': enableL4IlbSubsetting,
      'enableLegacyAbac': enableLegacyAbac,
      'enableMultiNetworking': enableMultiNetworking,
      'enableShieldedNodes': enableShieldedNodes,
      'enableTpu': enableTpu,
      'endpoint': endpoint,
      'enterpriseConfigs': pulumi.Input.encodeList<GetClusterEnterpriseConfig, Map<String, dynamic>>(enterpriseConfigs, (value) => value.toMap()),
      'fleets': pulumi.Input.encodeList<GetClusterFleet, Map<String, dynamic>>(fleets, (value) => value.toMap()),
      'gatewayApiConfigs': pulumi.Input.encodeList<GetClusterGatewayApiConfig, Map<String, dynamic>>(gatewayApiConfigs, (value) => value.toMap()),
      'gkeAutoUpgradeConfigs': pulumi.Input.encodeList<GetClusterGkeAutoUpgradeConfig, Map<String, dynamic>>(gkeAutoUpgradeConfigs, (value) => value.toMap()),
      'id': id,
      'identityServiceConfigs': pulumi.Input.encodeList<GetClusterIdentityServiceConfig, Map<String, dynamic>>(identityServiceConfigs, (value) => value.toMap()),
      'inTransitEncryptionConfig': inTransitEncryptionConfig,
      'initialNodeCount': initialNodeCount,
      'ipAllocationPolicies': pulumi.Input.encodeList<GetClusterIpAllocationPolicy, Map<String, dynamic>>(ipAllocationPolicies, (value) => value.toMap()),
      'labelFingerprint': labelFingerprint,
      'location': ?location,
      'loggingConfigs': pulumi.Input.encodeList<GetClusterLoggingConfig, Map<String, dynamic>>(loggingConfigs, (value) => value.toMap()),
      'loggingService': loggingService,
      'maintenancePolicies': pulumi.Input.encodeList<GetClusterMaintenancePolicy, Map<String, dynamic>>(maintenancePolicies, (value) => value.toMap()),
      'managedOpentelemetryConfigs': pulumi.Input.encodeList<GetClusterManagedOpentelemetryConfig, Map<String, dynamic>>(managedOpentelemetryConfigs, (value) => value.toMap()),
      'masterAuthorizedNetworksConfigs': pulumi.Input.encodeList<GetClusterMasterAuthorizedNetworksConfig, Map<String, dynamic>>(masterAuthorizedNetworksConfigs, (value) => value.toMap()),
      'masterAuths': pulumi.Input.encodeList<GetClusterMasterAuth, Map<String, dynamic>>(masterAuths, (value) => value.toMap()),
      'masterVersion': masterVersion,
      'meshCertificates': pulumi.Input.encodeList<GetClusterMeshCertificate, Map<String, dynamic>>(meshCertificates, (value) => value.toMap()),
      'minMasterVersion': minMasterVersion,
      'monitoringConfigs': pulumi.Input.encodeList<GetClusterMonitoringConfig, Map<String, dynamic>>(monitoringConfigs, (value) => value.toMap()),
      'monitoringService': monitoringService,
      'name': name,
      'network': network,
      'networkPerformanceConfigs': pulumi.Input.encodeList<GetClusterNetworkPerformanceConfig, Map<String, dynamic>>(networkPerformanceConfigs, (value) => value.toMap()),
      'networkPolicies': pulumi.Input.encodeList<GetClusterNetworkPolicy, Map<String, dynamic>>(networkPolicies, (value) => value.toMap()),
      'networkingMode': networkingMode,
      'nodeConfigs': pulumi.Input.encodeList<GetClusterNodeConfig, Map<String, dynamic>>(nodeConfigs, (value) => value.toMap()),
      'nodeLocations': nodeLocations,
      'nodePoolAutoConfigs': pulumi.Input.encodeList<GetClusterNodePoolAutoConfig, Map<String, dynamic>>(nodePoolAutoConfigs, (value) => value.toMap()),
      'nodePoolDefaults': pulumi.Input.encodeList<GetClusterNodePoolDefault, Map<String, dynamic>>(nodePoolDefaults, (value) => value.toMap()),
      'nodePools': pulumi.Input.encodeList<GetClusterNodePool, Map<String, dynamic>>(nodePools, (value) => value.toMap()),
      'nodeVersion': nodeVersion,
      'notificationConfigs': pulumi.Input.encodeList<GetClusterNotificationConfig, Map<String, dynamic>>(notificationConfigs, (value) => value.toMap()),
      'operation': operation,
      'podAutoscalings': pulumi.Input.encodeList<GetClusterPodAutoscaling, Map<String, dynamic>>(podAutoscalings, (value) => value.toMap()),
      'podSecurityPolicyConfigs': pulumi.Input.encodeList<GetClusterPodSecurityPolicyConfig, Map<String, dynamic>>(podSecurityPolicyConfigs, (value) => value.toMap()),
      'privateClusterConfigs': pulumi.Input.encodeList<GetClusterPrivateClusterConfig, Map<String, dynamic>>(privateClusterConfigs, (value) => value.toMap()),
      'privateIpv6GoogleAccess': privateIpv6GoogleAccess,
      'project': ?project,
      'protectConfigs': pulumi.Input.encodeList<GetClusterProtectConfig, Map<String, dynamic>>(protectConfigs, (value) => value.toMap()),
      'pulumiLabels': pulumiLabels,
      'rbacBindingConfigs': pulumi.Input.encodeList<GetClusterRbacBindingConfig, Map<String, dynamic>>(rbacBindingConfigs, (value) => value.toMap()),
      'releaseChannels': pulumi.Input.encodeList<GetClusterReleaseChannel, Map<String, dynamic>>(releaseChannels, (value) => value.toMap()),
      'removeDefaultNodePool': removeDefaultNodePool,
      'resourceLabels': resourceLabels,
      'resourceUsageExportConfigs': pulumi.Input.encodeList<GetClusterResourceUsageExportConfig, Map<String, dynamic>>(resourceUsageExportConfigs, (value) => value.toMap()),
      'secretManagerConfigs': pulumi.Input.encodeList<GetClusterSecretManagerConfig, Map<String, dynamic>>(secretManagerConfigs, (value) => value.toMap()),
      'secretSyncConfigs': pulumi.Input.encodeList<GetClusterSecretSyncConfig, Map<String, dynamic>>(secretSyncConfigs, (value) => value.toMap()),
      'securityPostureConfigs': pulumi.Input.encodeList<GetClusterSecurityPostureConfig, Map<String, dynamic>>(securityPostureConfigs, (value) => value.toMap()),
      'selfLink': selfLink,
      'serviceExternalIpsConfigs': pulumi.Input.encodeList<GetClusterServiceExternalIpsConfig, Map<String, dynamic>>(serviceExternalIpsConfigs, (value) => value.toMap()),
      'servicesIpv4Cidr': servicesIpv4Cidr,
      'subnetwork': subnetwork,
      'tpuConfigs': pulumi.Input.encodeList<GetClusterTpuConfig, Map<String, dynamic>>(tpuConfigs, (value) => value.toMap()),
      'tpuIpv4CidrBlock': tpuIpv4CidrBlock,
      'userManagedKeysConfigs': pulumi.Input.encodeList<GetClusterUserManagedKeysConfig, Map<String, dynamic>>(userManagedKeysConfigs, (value) => value.toMap()),
      'verticalPodAutoscalings': pulumi.Input.encodeList<GetClusterVerticalPodAutoscaling, Map<String, dynamic>>(verticalPodAutoscalings, (value) => value.toMap()),
      'workloadAltsConfigs': pulumi.Input.encodeList<GetClusterWorkloadAltsConfig, Map<String, dynamic>>(workloadAltsConfigs, (value) => value.toMap()),
      'workloadIdentityConfigs': pulumi.Input.encodeList<GetClusterWorkloadIdentityConfig, Map<String, dynamic>>(workloadIdentityConfigs, (value) => value.toMap()),
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      addonsConfigs: pulumi.Input.decodeList<GetClusterAddonsConfig>(map['addonsConfigs']!, (value) => GetClusterAddonsConfig.fromMap((value as Map).cast<String, dynamic>())),
      allowNetAdmin: map['allowNetAdmin'] as bool,
      anonymousAuthenticationConfigs: pulumi.Input.decodeList<GetClusterAnonymousAuthenticationConfig>(map['anonymousAuthenticationConfigs']!, (value) => GetClusterAnonymousAuthenticationConfig.fromMap((value as Map).cast<String, dynamic>())),
      authenticatorGroupsConfigs: pulumi.Input.decodeList<GetClusterAuthenticatorGroupsConfig>(map['authenticatorGroupsConfigs']!, (value) => GetClusterAuthenticatorGroupsConfig.fromMap((value as Map).cast<String, dynamic>())),
      binaryAuthorizations: pulumi.Input.decodeList<GetClusterBinaryAuthorization>(map['binaryAuthorizations']!, (value) => GetClusterBinaryAuthorization.fromMap((value as Map).cast<String, dynamic>())),
      clusterAutoscalings: pulumi.Input.decodeList<GetClusterClusterAutoscaling>(map['clusterAutoscalings']!, (value) => GetClusterClusterAutoscaling.fromMap((value as Map).cast<String, dynamic>())),
      clusterIpv4Cidr: map['clusterIpv4Cidr'] as String,
      clusterTelemetries: pulumi.Input.decodeList<GetClusterClusterTelemetry>(map['clusterTelemetries']!, (value) => GetClusterClusterTelemetry.fromMap((value as Map).cast<String, dynamic>())),
      confidentialNodes: pulumi.Input.decodeList<GetClusterConfidentialNode>(map['confidentialNodes']!, (value) => GetClusterConfidentialNode.fromMap((value as Map).cast<String, dynamic>())),
      controlPlaneEndpointsConfigs: pulumi.Input.decodeList<GetClusterControlPlaneEndpointsConfig>(map['controlPlaneEndpointsConfigs']!, (value) => GetClusterControlPlaneEndpointsConfig.fromMap((value as Map).cast<String, dynamic>())),
      costManagementConfigs: pulumi.Input.decodeList<GetClusterCostManagementConfig>(map['costManagementConfigs']!, (value) => GetClusterCostManagementConfig.fromMap((value as Map).cast<String, dynamic>())),
      databaseEncryptions: pulumi.Input.decodeList<GetClusterDatabaseEncryption>(map['databaseEncryptions']!, (value) => GetClusterDatabaseEncryption.fromMap((value as Map).cast<String, dynamic>())),
      datapathProvider: map['datapathProvider'] as String,
      defaultMaxPodsPerNode: map['defaultMaxPodsPerNode'] as int,
      defaultSnatStatuses: pulumi.Input.decodeList<GetClusterDefaultSnatStatus>(map['defaultSnatStatuses']!, (value) => GetClusterDefaultSnatStatus.fromMap((value as Map).cast<String, dynamic>())),
      deletionProtection: map['deletionProtection'] as bool,
      description: map['description'] as String,
      disableL4LbFirewallReconciliation: map['disableL4LbFirewallReconciliation'] as bool,
      dnsConfigs: pulumi.Input.decodeList<GetClusterDnsConfig>(map['dnsConfigs']!, (value) => GetClusterDnsConfig.fromMap((value as Map).cast<String, dynamic>())),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      enableAutopilot: map['enableAutopilot'] as bool,
      enableCiliumClusterwideNetworkPolicy: map['enableCiliumClusterwideNetworkPolicy'] as bool,
      enableFqdnNetworkPolicy: map['enableFqdnNetworkPolicy'] as bool,
      enableIntranodeVisibility: map['enableIntranodeVisibility'] as bool,
      enableK8sBetaApis: pulumi.Input.decodeList<GetClusterEnableK8sBetaApi>(map['enableK8sBetaApis']!, (value) => GetClusterEnableK8sBetaApi.fromMap((value as Map).cast<String, dynamic>())),
      enableKubernetesAlpha: map['enableKubernetesAlpha'] as bool,
      enableL4IlbSubsetting: map['enableL4IlbSubsetting'] as bool,
      enableLegacyAbac: map['enableLegacyAbac'] as bool,
      enableMultiNetworking: map['enableMultiNetworking'] as bool,
      enableShieldedNodes: map['enableShieldedNodes'] as bool,
      enableTpu: map['enableTpu'] as bool,
      endpoint: map['endpoint'] as String,
      enterpriseConfigs: pulumi.Input.decodeList<GetClusterEnterpriseConfig>(map['enterpriseConfigs']!, (value) => GetClusterEnterpriseConfig.fromMap((value as Map).cast<String, dynamic>())),
      fleets: pulumi.Input.decodeList<GetClusterFleet>(map['fleets']!, (value) => GetClusterFleet.fromMap((value as Map).cast<String, dynamic>())),
      gatewayApiConfigs: pulumi.Input.decodeList<GetClusterGatewayApiConfig>(map['gatewayApiConfigs']!, (value) => GetClusterGatewayApiConfig.fromMap((value as Map).cast<String, dynamic>())),
      gkeAutoUpgradeConfigs: pulumi.Input.decodeList<GetClusterGkeAutoUpgradeConfig>(map['gkeAutoUpgradeConfigs']!, (value) => GetClusterGkeAutoUpgradeConfig.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      identityServiceConfigs: pulumi.Input.decodeList<GetClusterIdentityServiceConfig>(map['identityServiceConfigs']!, (value) => GetClusterIdentityServiceConfig.fromMap((value as Map).cast<String, dynamic>())),
      inTransitEncryptionConfig: map['inTransitEncryptionConfig'] as String,
      initialNodeCount: map['initialNodeCount'] as int,
      ipAllocationPolicies: pulumi.Input.decodeList<GetClusterIpAllocationPolicy>(map['ipAllocationPolicies']!, (value) => GetClusterIpAllocationPolicy.fromMap((value as Map).cast<String, dynamic>())),
      labelFingerprint: map['labelFingerprint'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loggingConfigs: pulumi.Input.decodeList<GetClusterLoggingConfig>(map['loggingConfigs']!, (value) => GetClusterLoggingConfig.fromMap((value as Map).cast<String, dynamic>())),
      loggingService: map['loggingService'] as String,
      maintenancePolicies: pulumi.Input.decodeList<GetClusterMaintenancePolicy>(map['maintenancePolicies']!, (value) => GetClusterMaintenancePolicy.fromMap((value as Map).cast<String, dynamic>())),
      managedOpentelemetryConfigs: pulumi.Input.decodeList<GetClusterManagedOpentelemetryConfig>(map['managedOpentelemetryConfigs']!, (value) => GetClusterManagedOpentelemetryConfig.fromMap((value as Map).cast<String, dynamic>())),
      masterAuthorizedNetworksConfigs: pulumi.Input.decodeList<GetClusterMasterAuthorizedNetworksConfig>(map['masterAuthorizedNetworksConfigs']!, (value) => GetClusterMasterAuthorizedNetworksConfig.fromMap((value as Map).cast<String, dynamic>())),
      masterAuths: pulumi.Input.decodeList<GetClusterMasterAuth>(map['masterAuths']!, (value) => GetClusterMasterAuth.fromMap((value as Map).cast<String, dynamic>())),
      masterVersion: map['masterVersion'] as String,
      meshCertificates: pulumi.Input.decodeList<GetClusterMeshCertificate>(map['meshCertificates']!, (value) => GetClusterMeshCertificate.fromMap((value as Map).cast<String, dynamic>())),
      minMasterVersion: map['minMasterVersion'] as String,
      monitoringConfigs: pulumi.Input.decodeList<GetClusterMonitoringConfig>(map['monitoringConfigs']!, (value) => GetClusterMonitoringConfig.fromMap((value as Map).cast<String, dynamic>())),
      monitoringService: map['monitoringService'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      networkPerformanceConfigs: pulumi.Input.decodeList<GetClusterNetworkPerformanceConfig>(map['networkPerformanceConfigs']!, (value) => GetClusterNetworkPerformanceConfig.fromMap((value as Map).cast<String, dynamic>())),
      networkPolicies: pulumi.Input.decodeList<GetClusterNetworkPolicy>(map['networkPolicies']!, (value) => GetClusterNetworkPolicy.fromMap((value as Map).cast<String, dynamic>())),
      networkingMode: map['networkingMode'] as String,
      nodeConfigs: pulumi.Input.decodeList<GetClusterNodeConfig>(map['nodeConfigs']!, (value) => GetClusterNodeConfig.fromMap((value as Map).cast<String, dynamic>())),
      nodeLocations: (map['nodeLocations'] as List).cast<String>(),
      nodePoolAutoConfigs: pulumi.Input.decodeList<GetClusterNodePoolAutoConfig>(map['nodePoolAutoConfigs']!, (value) => GetClusterNodePoolAutoConfig.fromMap((value as Map).cast<String, dynamic>())),
      nodePoolDefaults: pulumi.Input.decodeList<GetClusterNodePoolDefault>(map['nodePoolDefaults']!, (value) => GetClusterNodePoolDefault.fromMap((value as Map).cast<String, dynamic>())),
      nodePools: pulumi.Input.decodeList<GetClusterNodePool>(map['nodePools']!, (value) => GetClusterNodePool.fromMap((value as Map).cast<String, dynamic>())),
      nodeVersion: map['nodeVersion'] as String,
      notificationConfigs: pulumi.Input.decodeList<GetClusterNotificationConfig>(map['notificationConfigs']!, (value) => GetClusterNotificationConfig.fromMap((value as Map).cast<String, dynamic>())),
      operation: map['operation'] as String,
      podAutoscalings: pulumi.Input.decodeList<GetClusterPodAutoscaling>(map['podAutoscalings']!, (value) => GetClusterPodAutoscaling.fromMap((value as Map).cast<String, dynamic>())),
      podSecurityPolicyConfigs: pulumi.Input.decodeList<GetClusterPodSecurityPolicyConfig>(map['podSecurityPolicyConfigs']!, (value) => GetClusterPodSecurityPolicyConfig.fromMap((value as Map).cast<String, dynamic>())),
      privateClusterConfigs: pulumi.Input.decodeList<GetClusterPrivateClusterConfig>(map['privateClusterConfigs']!, (value) => GetClusterPrivateClusterConfig.fromMap((value as Map).cast<String, dynamic>())),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protectConfigs: pulumi.Input.decodeList<GetClusterProtectConfig>(map['protectConfigs']!, (value) => GetClusterProtectConfig.fromMap((value as Map).cast<String, dynamic>())),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      rbacBindingConfigs: pulumi.Input.decodeList<GetClusterRbacBindingConfig>(map['rbacBindingConfigs']!, (value) => GetClusterRbacBindingConfig.fromMap((value as Map).cast<String, dynamic>())),
      releaseChannels: pulumi.Input.decodeList<GetClusterReleaseChannel>(map['releaseChannels']!, (value) => GetClusterReleaseChannel.fromMap((value as Map).cast<String, dynamic>())),
      removeDefaultNodePool: map['removeDefaultNodePool'] as bool,
      resourceLabels: (map['resourceLabels'] as Map).cast<String, String>(),
      resourceUsageExportConfigs: pulumi.Input.decodeList<GetClusterResourceUsageExportConfig>(map['resourceUsageExportConfigs']!, (value) => GetClusterResourceUsageExportConfig.fromMap((value as Map).cast<String, dynamic>())),
      secretManagerConfigs: pulumi.Input.decodeList<GetClusterSecretManagerConfig>(map['secretManagerConfigs']!, (value) => GetClusterSecretManagerConfig.fromMap((value as Map).cast<String, dynamic>())),
      secretSyncConfigs: pulumi.Input.decodeList<GetClusterSecretSyncConfig>(map['secretSyncConfigs']!, (value) => GetClusterSecretSyncConfig.fromMap((value as Map).cast<String, dynamic>())),
      securityPostureConfigs: pulumi.Input.decodeList<GetClusterSecurityPostureConfig>(map['securityPostureConfigs']!, (value) => GetClusterSecurityPostureConfig.fromMap((value as Map).cast<String, dynamic>())),
      selfLink: map['selfLink'] as String,
      serviceExternalIpsConfigs: pulumi.Input.decodeList<GetClusterServiceExternalIpsConfig>(map['serviceExternalIpsConfigs']!, (value) => GetClusterServiceExternalIpsConfig.fromMap((value as Map).cast<String, dynamic>())),
      servicesIpv4Cidr: map['servicesIpv4Cidr'] as String,
      subnetwork: map['subnetwork'] as String,
      tpuConfigs: pulumi.Input.decodeList<GetClusterTpuConfig>(map['tpuConfigs']!, (value) => GetClusterTpuConfig.fromMap((value as Map).cast<String, dynamic>())),
      tpuIpv4CidrBlock: map['tpuIpv4CidrBlock'] as String,
      userManagedKeysConfigs: pulumi.Input.decodeList<GetClusterUserManagedKeysConfig>(map['userManagedKeysConfigs']!, (value) => GetClusterUserManagedKeysConfig.fromMap((value as Map).cast<String, dynamic>())),
      verticalPodAutoscalings: pulumi.Input.decodeList<GetClusterVerticalPodAutoscaling>(map['verticalPodAutoscalings']!, (value) => GetClusterVerticalPodAutoscaling.fromMap((value as Map).cast<String, dynamic>())),
      workloadAltsConfigs: pulumi.Input.decodeList<GetClusterWorkloadAltsConfig>(map['workloadAltsConfigs']!, (value) => GetClusterWorkloadAltsConfig.fromMap((value as Map).cast<String, dynamic>())),
      workloadIdentityConfigs: pulumi.Input.decodeList<GetClusterWorkloadIdentityConfig>(map['workloadIdentityConfigs']!, (value) => GetClusterWorkloadIdentityConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

