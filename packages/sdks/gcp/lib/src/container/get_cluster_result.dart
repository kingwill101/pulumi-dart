// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_addons_config.dart';
import 'get_cluster_anonymous_authentication_config.dart';
import 'get_cluster_authenticator_groups_config.dart';
import 'get_cluster_autopilot_cluster_policy_config.dart';
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
import 'get_cluster_managed_machine_learning_diagnostics_config.dart';
import 'get_cluster_managed_opentelemetry_config.dart';
import 'get_cluster_master_auth.dart';
import 'get_cluster_master_authorized_networks_config.dart';
import 'get_cluster_mesh_certificate.dart';
import 'get_cluster_monitoring_config.dart';
import 'get_cluster_network_performance_config.dart';
import 'get_cluster_network_policy.dart';
import 'get_cluster_node_config.dart';
import 'get_cluster_node_creation_config.dart';
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
import 'get_cluster_rollback_safe_upgrade.dart';
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
  final List<GetClusterAddonsConfig>? addonsConfigs;
  final bool? allowNetAdmin;
  final List<GetClusterAnonymousAuthenticationConfig>? anonymousAuthenticationConfigs;
  final List<GetClusterAuthenticatorGroupsConfig>? authenticatorGroupsConfigs;
  final List<GetClusterAutopilotClusterPolicyConfig>? autopilotClusterPolicyConfigs;
  final List<String>? autopilotPrivilegedAdmissions;
  final List<GetClusterBinaryAuthorization>? binaryAuthorizations;
  final List<GetClusterClusterAutoscaling>? clusterAutoscalings;
  final String? clusterIpv4Cidr;
  final List<GetClusterClusterTelemetry>? clusterTelemetries;
  final List<GetClusterConfidentialNode>? confidentialNodes;
  final List<GetClusterControlPlaneEndpointsConfig>? controlPlaneEndpointsConfigs;
  final List<GetClusterCostManagementConfig>? costManagementConfigs;
  final List<GetClusterDatabaseEncryption>? databaseEncryptions;
  final String? datapathProvider;
  final String? dataplaneOptimizationMode;
  final int? defaultMaxPodsPerNode;
  final List<GetClusterDefaultSnatStatus>? defaultSnatStatuses;
  final String? deletionPolicy;
  final bool? deletionProtection;
  final String? description;
  final String? desiredEmulatedVersion;
  final bool? disableL4LbFirewallReconciliation;
  final List<GetClusterDnsConfig>? dnsConfigs;
  final Map<String, String>? effectiveLabels;
  final String? emulatedVersion;
  final bool? enableAutopilot;
  final bool? enableCiliumClusterwideNetworkPolicy;
  final bool? enableFqdnNetworkPolicy;
  final bool? enableIntranodeVisibility;
  final List<GetClusterEnableK8sBetaApi>? enableK8sBetaApis;
  final bool? enableKubernetesAlpha;
  final bool? enableL4IlbSubsetting;
  final bool? enableLegacyAbac;
  final bool? enableMultiNetworking;
  final bool? enableShieldedNodes;
  final bool? enableTpu;
  final String? endpoint;
  final List<GetClusterEnterpriseConfig>? enterpriseConfigs;
  final List<GetClusterFleet>? fleets;
  final List<GetClusterGatewayApiConfig>? gatewayApiConfigs;
  final List<GetClusterGkeAutoUpgradeConfig>? gkeAutoUpgradeConfigs;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetClusterIdentityServiceConfig>? identityServiceConfigs;
  final bool? ignoreNodeCountChanges;
  final String? inTransitEncryptionConfig;
  final int? initialNodeCount;
  final List<GetClusterIpAllocationPolicy>? ipAllocationPolicies;
  final String? labelFingerprint;
  final String? location;
  final List<GetClusterLoggingConfig>? loggingConfigs;
  final String? loggingService;
  final List<GetClusterMaintenancePolicy>? maintenancePolicies;
  final List<GetClusterManagedMachineLearningDiagnosticsConfig>? managedMachineLearningDiagnosticsConfigs;
  final List<GetClusterManagedOpentelemetryConfig>? managedOpentelemetryConfigs;
  final List<GetClusterMasterAuthorizedNetworksConfig>? masterAuthorizedNetworksConfigs;
  final List<GetClusterMasterAuth>? masterAuths;
  final String? masterVersion;
  final List<GetClusterMeshCertificate>? meshCertificates;
  final String? minMasterVersion;
  final List<GetClusterMonitoringConfig>? monitoringConfigs;
  final String? monitoringService;
  final String? name;
  final String? network;
  final List<GetClusterNetworkPerformanceConfig>? networkPerformanceConfigs;
  final List<GetClusterNetworkPolicy>? networkPolicies;
  final String? networkingMode;
  final List<GetClusterNodeConfig>? nodeConfigs;
  final List<GetClusterNodeCreationConfig>? nodeCreationConfigs;
  final List<String>? nodeLocations;
  final List<GetClusterNodePoolAutoConfig>? nodePoolAutoConfigs;
  final List<GetClusterNodePoolDefault>? nodePoolDefaults;
  final List<GetClusterNodePool>? nodePools;
  final String? nodeVersion;
  final List<GetClusterNotificationConfig>? notificationConfigs;
  final String? operation;
  final List<GetClusterPodAutoscaling>? podAutoscalings;
  final List<GetClusterPodSecurityPolicyConfig>? podSecurityPolicyConfigs;
  final List<GetClusterPrivateClusterConfig>? privateClusterConfigs;
  final String? privateIpv6GoogleAccess;
  final String? project;
  final List<GetClusterProtectConfig>? protectConfigs;
  final Map<String, String>? pulumiLabels;
  final List<GetClusterRbacBindingConfig>? rbacBindingConfigs;
  final List<GetClusterReleaseChannel>? releaseChannels;
  final bool? removeDefaultNodePool;
  final Map<String, String>? resourceLabels;
  final List<GetClusterResourceUsageExportConfig>? resourceUsageExportConfigs;
  final List<GetClusterRollbackSafeUpgrade>? rollbackSafeUpgrades;
  final List<GetClusterSecretManagerConfig>? secretManagerConfigs;
  final List<GetClusterSecretSyncConfig>? secretSyncConfigs;
  final List<GetClusterSecurityPostureConfig>? securityPostureConfigs;
  final String? selfLink;
  final List<GetClusterServiceExternalIpsConfig>? serviceExternalIpsConfigs;
  final String? servicesIpv4Cidr;
  final bool? skipNodePoolRefresh;
  final String? subnetwork;
  final List<GetClusterTpuConfig>? tpuConfigs;
  final String? tpuIpv4CidrBlock;
  final List<GetClusterUserManagedKeysConfig>? userManagedKeysConfigs;
  final List<GetClusterVerticalPodAutoscaling>? verticalPodAutoscalings;
  final List<GetClusterWorkloadAltsConfig>? workloadAltsConfigs;
  final List<GetClusterWorkloadIdentityConfig>? workloadIdentityConfigs;

  /// Creates a new [GetClusterResult].
  /// [addonsConfigs] Optional.
  /// [allowNetAdmin] Optional.
  /// [anonymousAuthenticationConfigs] Optional.
  /// [authenticatorGroupsConfigs] Optional.
  /// [autopilotClusterPolicyConfigs] Optional.
  /// [autopilotPrivilegedAdmissions] Optional.
  /// [binaryAuthorizations] Optional.
  /// [clusterAutoscalings] Optional.
  /// [clusterIpv4Cidr] Optional.
  /// [clusterTelemetries] Optional.
  /// [confidentialNodes] Optional.
  /// [controlPlaneEndpointsConfigs] Optional.
  /// [costManagementConfigs] Optional.
  /// [databaseEncryptions] Optional.
  /// [datapathProvider] Optional.
  /// [dataplaneOptimizationMode] Optional.
  /// [defaultMaxPodsPerNode] Optional.
  /// [defaultSnatStatuses] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [description] Optional.
  /// [desiredEmulatedVersion] Optional.
  /// [disableL4LbFirewallReconciliation] Optional.
  /// [dnsConfigs] Optional.
  /// [effectiveLabels] Optional.
  /// [emulatedVersion] Optional.
  /// [enableAutopilot] Optional.
  /// [enableCiliumClusterwideNetworkPolicy] Optional.
  /// [enableFqdnNetworkPolicy] Optional.
  /// [enableIntranodeVisibility] Optional.
  /// [enableK8sBetaApis] Optional.
  /// [enableKubernetesAlpha] Optional.
  /// [enableL4IlbSubsetting] Optional.
  /// [enableLegacyAbac] Optional.
  /// [enableMultiNetworking] Optional.
  /// [enableShieldedNodes] Optional.
  /// [enableTpu] Optional.
  /// [endpoint] Optional.
  /// [enterpriseConfigs] Optional.
  /// [fleets] Optional.
  /// [gatewayApiConfigs] Optional.
  /// [gkeAutoUpgradeConfigs] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityServiceConfigs] Optional.
  /// [ignoreNodeCountChanges] Optional.
  /// [inTransitEncryptionConfig] Optional.
  /// [initialNodeCount] Optional.
  /// [ipAllocationPolicies] Optional.
  /// [labelFingerprint] Optional.
  /// [location] Optional.
  /// [loggingConfigs] Optional.
  /// [loggingService] Optional.
  /// [maintenancePolicies] Optional.
  /// [managedMachineLearningDiagnosticsConfigs] Optional.
  /// [managedOpentelemetryConfigs] Optional.
  /// [masterAuthorizedNetworksConfigs] Optional.
  /// [masterAuths] Optional.
  /// [masterVersion] Optional.
  /// [meshCertificates] Optional.
  /// [minMasterVersion] Optional.
  /// [monitoringConfigs] Optional.
  /// [monitoringService] Optional.
  /// [name] Optional.
  /// [network] Optional.
  /// [networkPerformanceConfigs] Optional.
  /// [networkPolicies] Optional.
  /// [networkingMode] Optional.
  /// [nodeConfigs] Optional.
  /// [nodeCreationConfigs] Optional.
  /// [nodeLocations] Optional.
  /// [nodePoolAutoConfigs] Optional.
  /// [nodePoolDefaults] Optional.
  /// [nodePools] Optional.
  /// [nodeVersion] Optional.
  /// [notificationConfigs] Optional.
  /// [operation] Optional.
  /// [podAutoscalings] Optional.
  /// [podSecurityPolicyConfigs] Optional.
  /// [privateClusterConfigs] Optional.
  /// [privateIpv6GoogleAccess] Optional.
  /// [project] Optional.
  /// [protectConfigs] Optional.
  /// [pulumiLabels] Optional.
  /// [rbacBindingConfigs] Optional.
  /// [releaseChannels] Optional.
  /// [removeDefaultNodePool] Optional.
  /// [resourceLabels] Optional.
  /// [resourceUsageExportConfigs] Optional.
  /// [rollbackSafeUpgrades] Optional.
  /// [secretManagerConfigs] Optional.
  /// [secretSyncConfigs] Optional.
  /// [securityPostureConfigs] Optional.
  /// [selfLink] Optional.
  /// [serviceExternalIpsConfigs] Optional.
  /// [servicesIpv4Cidr] Optional.
  /// [skipNodePoolRefresh] Optional.
  /// [subnetwork] Optional.
  /// [tpuConfigs] Optional.
  /// [tpuIpv4CidrBlock] Optional.
  /// [userManagedKeysConfigs] Optional.
  /// [verticalPodAutoscalings] Optional.
  /// [workloadAltsConfigs] Optional.
  /// [workloadIdentityConfigs] Optional.
  const GetClusterResult({
    this.addonsConfigs,
    this.allowNetAdmin,
    this.anonymousAuthenticationConfigs,
    this.authenticatorGroupsConfigs,
    this.autopilotClusterPolicyConfigs,
    this.autopilotPrivilegedAdmissions,
    this.binaryAuthorizations,
    this.clusterAutoscalings,
    this.clusterIpv4Cidr,
    this.clusterTelemetries,
    this.confidentialNodes,
    this.controlPlaneEndpointsConfigs,
    this.costManagementConfigs,
    this.databaseEncryptions,
    this.datapathProvider,
    this.dataplaneOptimizationMode,
    this.defaultMaxPodsPerNode,
    this.defaultSnatStatuses,
    this.deletionPolicy,
    this.deletionProtection,
    this.description,
    this.desiredEmulatedVersion,
    this.disableL4LbFirewallReconciliation,
    this.dnsConfigs,
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
    this.enterpriseConfigs,
    this.fleets,
    this.gatewayApiConfigs,
    this.gkeAutoUpgradeConfigs,
    this.id,
    this.identityServiceConfigs,
    this.ignoreNodeCountChanges,
    this.inTransitEncryptionConfig,
    this.initialNodeCount,
    this.ipAllocationPolicies,
    this.labelFingerprint,
    this.location,
    this.loggingConfigs,
    this.loggingService,
    this.maintenancePolicies,
    this.managedMachineLearningDiagnosticsConfigs,
    this.managedOpentelemetryConfigs,
    this.masterAuthorizedNetworksConfigs,
    this.masterAuths,
    this.masterVersion,
    this.meshCertificates,
    this.minMasterVersion,
    this.monitoringConfigs,
    this.monitoringService,
    this.name,
    this.network,
    this.networkPerformanceConfigs,
    this.networkPolicies,
    this.networkingMode,
    this.nodeConfigs,
    this.nodeCreationConfigs,
    this.nodeLocations,
    this.nodePoolAutoConfigs,
    this.nodePoolDefaults,
    this.nodePools,
    this.nodeVersion,
    this.notificationConfigs,
    this.operation,
    this.podAutoscalings,
    this.podSecurityPolicyConfigs,
    this.privateClusterConfigs,
    this.privateIpv6GoogleAccess,
    this.project,
    this.protectConfigs,
    this.pulumiLabels,
    this.rbacBindingConfigs,
    this.releaseChannels,
    this.removeDefaultNodePool,
    this.resourceLabels,
    this.resourceUsageExportConfigs,
    this.rollbackSafeUpgrades,
    this.secretManagerConfigs,
    this.secretSyncConfigs,
    this.securityPostureConfigs,
    this.selfLink,
    this.serviceExternalIpsConfigs,
    this.servicesIpv4Cidr,
    this.skipNodePoolRefresh,
    this.subnetwork,
    this.tpuConfigs,
    this.tpuIpv4CidrBlock,
    this.userManagedKeysConfigs,
    this.verticalPodAutoscalings,
    this.workloadAltsConfigs,
    this.workloadIdentityConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonsConfigs': ?(() { final guardedValue = addonsConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterAddonsConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'allowNetAdmin': ?allowNetAdmin,
      'anonymousAuthenticationConfigs': ?(() { final guardedValue = anonymousAuthenticationConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterAnonymousAuthenticationConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'authenticatorGroupsConfigs': ?(() { final guardedValue = authenticatorGroupsConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterAuthenticatorGroupsConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'autopilotClusterPolicyConfigs': ?(() { final guardedValue = autopilotClusterPolicyConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterAutopilotClusterPolicyConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'autopilotPrivilegedAdmissions': ?autopilotPrivilegedAdmissions,
      'binaryAuthorizations': ?(() { final guardedValue = binaryAuthorizations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterBinaryAuthorization, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clusterAutoscalings': ?(() { final guardedValue = clusterAutoscalings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterClusterAutoscaling, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clusterIpv4Cidr': ?clusterIpv4Cidr,
      'clusterTelemetries': ?(() { final guardedValue = clusterTelemetries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterClusterTelemetry, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'confidentialNodes': ?(() { final guardedValue = confidentialNodes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterConfidentialNode, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'controlPlaneEndpointsConfigs': ?(() { final guardedValue = controlPlaneEndpointsConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterControlPlaneEndpointsConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'costManagementConfigs': ?(() { final guardedValue = costManagementConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterCostManagementConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'databaseEncryptions': ?(() { final guardedValue = databaseEncryptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterDatabaseEncryption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'datapathProvider': ?datapathProvider,
      'dataplaneOptimizationMode': ?dataplaneOptimizationMode,
      'defaultMaxPodsPerNode': ?defaultMaxPodsPerNode,
      'defaultSnatStatuses': ?(() { final guardedValue = defaultSnatStatuses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterDefaultSnatStatus, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'desiredEmulatedVersion': ?desiredEmulatedVersion,
      'disableL4LbFirewallReconciliation': ?disableL4LbFirewallReconciliation,
      'dnsConfigs': ?(() { final guardedValue = dnsConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterDnsConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'effectiveLabels': ?effectiveLabels,
      'emulatedVersion': ?emulatedVersion,
      'enableAutopilot': ?enableAutopilot,
      'enableCiliumClusterwideNetworkPolicy': ?enableCiliumClusterwideNetworkPolicy,
      'enableFqdnNetworkPolicy': ?enableFqdnNetworkPolicy,
      'enableIntranodeVisibility': ?enableIntranodeVisibility,
      'enableK8sBetaApis': ?(() { final guardedValue = enableK8sBetaApis; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterEnableK8sBetaApi, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'enableKubernetesAlpha': ?enableKubernetesAlpha,
      'enableL4IlbSubsetting': ?enableL4IlbSubsetting,
      'enableLegacyAbac': ?enableLegacyAbac,
      'enableMultiNetworking': ?enableMultiNetworking,
      'enableShieldedNodes': ?enableShieldedNodes,
      'enableTpu': ?enableTpu,
      'endpoint': ?endpoint,
      'enterpriseConfigs': ?(() { final guardedValue = enterpriseConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterEnterpriseConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'fleets': ?(() { final guardedValue = fleets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterFleet, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'gatewayApiConfigs': ?(() { final guardedValue = gatewayApiConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterGatewayApiConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'gkeAutoUpgradeConfigs': ?(() { final guardedValue = gkeAutoUpgradeConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterGkeAutoUpgradeConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'identityServiceConfigs': ?(() { final guardedValue = identityServiceConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterIdentityServiceConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ignoreNodeCountChanges': ?ignoreNodeCountChanges,
      'inTransitEncryptionConfig': ?inTransitEncryptionConfig,
      'initialNodeCount': ?initialNodeCount,
      'ipAllocationPolicies': ?(() { final guardedValue = ipAllocationPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterIpAllocationPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'labelFingerprint': ?labelFingerprint,
      'location': ?location,
      'loggingConfigs': ?(() { final guardedValue = loggingConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterLoggingConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'loggingService': ?loggingService,
      'maintenancePolicies': ?(() { final guardedValue = maintenancePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterMaintenancePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'managedMachineLearningDiagnosticsConfigs': ?(() { final guardedValue = managedMachineLearningDiagnosticsConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterManagedMachineLearningDiagnosticsConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'managedOpentelemetryConfigs': ?(() { final guardedValue = managedOpentelemetryConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterManagedOpentelemetryConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'masterAuthorizedNetworksConfigs': ?(() { final guardedValue = masterAuthorizedNetworksConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterMasterAuthorizedNetworksConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'masterAuths': ?(() { final guardedValue = masterAuths; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterMasterAuth, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'masterVersion': ?masterVersion,
      'meshCertificates': ?(() { final guardedValue = meshCertificates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterMeshCertificate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'minMasterVersion': ?minMasterVersion,
      'monitoringConfigs': ?(() { final guardedValue = monitoringConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterMonitoringConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'monitoringService': ?monitoringService,
      'name': ?name,
      'network': ?network,
      'networkPerformanceConfigs': ?(() { final guardedValue = networkPerformanceConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterNetworkPerformanceConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'networkPolicies': ?(() { final guardedValue = networkPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterNetworkPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'networkingMode': ?networkingMode,
      'nodeConfigs': ?(() { final guardedValue = nodeConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterNodeConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'nodeCreationConfigs': ?(() { final guardedValue = nodeCreationConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterNodeCreationConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'nodeLocations': ?nodeLocations,
      'nodePoolAutoConfigs': ?(() { final guardedValue = nodePoolAutoConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterNodePoolAutoConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'nodePoolDefaults': ?(() { final guardedValue = nodePoolDefaults; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterNodePoolDefault, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'nodePools': ?(() { final guardedValue = nodePools; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterNodePool, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'nodeVersion': ?nodeVersion,
      'notificationConfigs': ?(() { final guardedValue = notificationConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterNotificationConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'operation': ?operation,
      'podAutoscalings': ?(() { final guardedValue = podAutoscalings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterPodAutoscaling, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'podSecurityPolicyConfigs': ?(() { final guardedValue = podSecurityPolicyConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterPodSecurityPolicyConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'privateClusterConfigs': ?(() { final guardedValue = privateClusterConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterPrivateClusterConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'privateIpv6GoogleAccess': ?privateIpv6GoogleAccess,
      'project': ?project,
      'protectConfigs': ?(() { final guardedValue = protectConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterProtectConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'pulumiLabels': ?pulumiLabels,
      'rbacBindingConfigs': ?(() { final guardedValue = rbacBindingConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterRbacBindingConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'releaseChannels': ?(() { final guardedValue = releaseChannels; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterReleaseChannel, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'removeDefaultNodePool': ?removeDefaultNodePool,
      'resourceLabels': ?resourceLabels,
      'resourceUsageExportConfigs': ?(() { final guardedValue = resourceUsageExportConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterResourceUsageExportConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'rollbackSafeUpgrades': ?(() { final guardedValue = rollbackSafeUpgrades; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterRollbackSafeUpgrade, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'secretManagerConfigs': ?(() { final guardedValue = secretManagerConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterSecretManagerConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'secretSyncConfigs': ?(() { final guardedValue = secretSyncConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterSecretSyncConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'securityPostureConfigs': ?(() { final guardedValue = securityPostureConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterSecurityPostureConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'selfLink': ?selfLink,
      'serviceExternalIpsConfigs': ?(() { final guardedValue = serviceExternalIpsConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterServiceExternalIpsConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'servicesIpv4Cidr': ?servicesIpv4Cidr,
      'skipNodePoolRefresh': ?skipNodePoolRefresh,
      'subnetwork': ?subnetwork,
      'tpuConfigs': ?(() { final guardedValue = tpuConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterTpuConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tpuIpv4CidrBlock': ?tpuIpv4CidrBlock,
      'userManagedKeysConfigs': ?(() { final guardedValue = userManagedKeysConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterUserManagedKeysConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'verticalPodAutoscalings': ?(() { final guardedValue = verticalPodAutoscalings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterVerticalPodAutoscaling, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'workloadAltsConfigs': ?(() { final guardedValue = workloadAltsConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterWorkloadAltsConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'workloadIdentityConfigs': ?(() { final guardedValue = workloadIdentityConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterWorkloadIdentityConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      addonsConfigs: (() { final guardedValue = map['addonsConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterAddonsConfig>(guardedValue, (value) => GetClusterAddonsConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      allowNetAdmin: (() { final guardedValue = map['allowNetAdmin']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      anonymousAuthenticationConfigs: (() { final guardedValue = map['anonymousAuthenticationConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterAnonymousAuthenticationConfig>(guardedValue, (value) => GetClusterAnonymousAuthenticationConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      authenticatorGroupsConfigs: (() { final guardedValue = map['authenticatorGroupsConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterAuthenticatorGroupsConfig>(guardedValue, (value) => GetClusterAuthenticatorGroupsConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      autopilotClusterPolicyConfigs: (() { final guardedValue = map['autopilotClusterPolicyConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterAutopilotClusterPolicyConfig>(guardedValue, (value) => GetClusterAutopilotClusterPolicyConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      autopilotPrivilegedAdmissions: (() { final guardedValue = map['autopilotPrivilegedAdmissions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      binaryAuthorizations: (() { final guardedValue = map['binaryAuthorizations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterBinaryAuthorization>(guardedValue, (value) => GetClusterBinaryAuthorization.fromMap((value as Map).cast<String, dynamic>())); })(),
      clusterAutoscalings: (() { final guardedValue = map['clusterAutoscalings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterClusterAutoscaling>(guardedValue, (value) => GetClusterClusterAutoscaling.fromMap((value as Map).cast<String, dynamic>())); })(),
      clusterIpv4Cidr: (() { final guardedValue = map['clusterIpv4Cidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterTelemetries: (() { final guardedValue = map['clusterTelemetries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterClusterTelemetry>(guardedValue, (value) => GetClusterClusterTelemetry.fromMap((value as Map).cast<String, dynamic>())); })(),
      confidentialNodes: (() { final guardedValue = map['confidentialNodes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterConfidentialNode>(guardedValue, (value) => GetClusterConfidentialNode.fromMap((value as Map).cast<String, dynamic>())); })(),
      controlPlaneEndpointsConfigs: (() { final guardedValue = map['controlPlaneEndpointsConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterControlPlaneEndpointsConfig>(guardedValue, (value) => GetClusterControlPlaneEndpointsConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      costManagementConfigs: (() { final guardedValue = map['costManagementConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterCostManagementConfig>(guardedValue, (value) => GetClusterCostManagementConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      databaseEncryptions: (() { final guardedValue = map['databaseEncryptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterDatabaseEncryption>(guardedValue, (value) => GetClusterDatabaseEncryption.fromMap((value as Map).cast<String, dynamic>())); })(),
      datapathProvider: (() { final guardedValue = map['datapathProvider']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataplaneOptimizationMode: (() { final guardedValue = map['dataplaneOptimizationMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultMaxPodsPerNode: (() { final guardedValue = map['defaultMaxPodsPerNode']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      defaultSnatStatuses: (() { final guardedValue = map['defaultSnatStatuses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterDefaultSnatStatus>(guardedValue, (value) => GetClusterDefaultSnatStatus.fromMap((value as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      desiredEmulatedVersion: (() { final guardedValue = map['desiredEmulatedVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disableL4LbFirewallReconciliation: (() { final guardedValue = map['disableL4LbFirewallReconciliation']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dnsConfigs: (() { final guardedValue = map['dnsConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterDnsConfig>(guardedValue, (value) => GetClusterDnsConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      emulatedVersion: (() { final guardedValue = map['emulatedVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableAutopilot: (() { final guardedValue = map['enableAutopilot']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableCiliumClusterwideNetworkPolicy: (() { final guardedValue = map['enableCiliumClusterwideNetworkPolicy']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableFqdnNetworkPolicy: (() { final guardedValue = map['enableFqdnNetworkPolicy']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableIntranodeVisibility: (() { final guardedValue = map['enableIntranodeVisibility']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableK8sBetaApis: (() { final guardedValue = map['enableK8sBetaApis']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterEnableK8sBetaApi>(guardedValue, (value) => GetClusterEnableK8sBetaApi.fromMap((value as Map).cast<String, dynamic>())); })(),
      enableKubernetesAlpha: (() { final guardedValue = map['enableKubernetesAlpha']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableL4IlbSubsetting: (() { final guardedValue = map['enableL4IlbSubsetting']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableLegacyAbac: (() { final guardedValue = map['enableLegacyAbac']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableMultiNetworking: (() { final guardedValue = map['enableMultiNetworking']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableShieldedNodes: (() { final guardedValue = map['enableShieldedNodes']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableTpu: (() { final guardedValue = map['enableTpu']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enterpriseConfigs: (() { final guardedValue = map['enterpriseConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterEnterpriseConfig>(guardedValue, (value) => GetClusterEnterpriseConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      fleets: (() { final guardedValue = map['fleets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterFleet>(guardedValue, (value) => GetClusterFleet.fromMap((value as Map).cast<String, dynamic>())); })(),
      gatewayApiConfigs: (() { final guardedValue = map['gatewayApiConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterGatewayApiConfig>(guardedValue, (value) => GetClusterGatewayApiConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      gkeAutoUpgradeConfigs: (() { final guardedValue = map['gkeAutoUpgradeConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterGkeAutoUpgradeConfig>(guardedValue, (value) => GetClusterGkeAutoUpgradeConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identityServiceConfigs: (() { final guardedValue = map['identityServiceConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterIdentityServiceConfig>(guardedValue, (value) => GetClusterIdentityServiceConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      ignoreNodeCountChanges: (() { final guardedValue = map['ignoreNodeCountChanges']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      inTransitEncryptionConfig: (() { final guardedValue = map['inTransitEncryptionConfig']; if (guardedValue == null) return null; return guardedValue as String; })(),
      initialNodeCount: (() { final guardedValue = map['initialNodeCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      ipAllocationPolicies: (() { final guardedValue = map['ipAllocationPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterIpAllocationPolicy>(guardedValue, (value) => GetClusterIpAllocationPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      labelFingerprint: (() { final guardedValue = map['labelFingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loggingConfigs: (() { final guardedValue = map['loggingConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterLoggingConfig>(guardedValue, (value) => GetClusterLoggingConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      loggingService: (() { final guardedValue = map['loggingService']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenancePolicies: (() { final guardedValue = map['maintenancePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterMaintenancePolicy>(guardedValue, (value) => GetClusterMaintenancePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      managedMachineLearningDiagnosticsConfigs: (() { final guardedValue = map['managedMachineLearningDiagnosticsConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterManagedMachineLearningDiagnosticsConfig>(guardedValue, (value) => GetClusterManagedMachineLearningDiagnosticsConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      managedOpentelemetryConfigs: (() { final guardedValue = map['managedOpentelemetryConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterManagedOpentelemetryConfig>(guardedValue, (value) => GetClusterManagedOpentelemetryConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      masterAuthorizedNetworksConfigs: (() { final guardedValue = map['masterAuthorizedNetworksConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterMasterAuthorizedNetworksConfig>(guardedValue, (value) => GetClusterMasterAuthorizedNetworksConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      masterAuths: (() { final guardedValue = map['masterAuths']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterMasterAuth>(guardedValue, (value) => GetClusterMasterAuth.fromMap((value as Map).cast<String, dynamic>())); })(),
      masterVersion: (() { final guardedValue = map['masterVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      meshCertificates: (() { final guardedValue = map['meshCertificates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterMeshCertificate>(guardedValue, (value) => GetClusterMeshCertificate.fromMap((value as Map).cast<String, dynamic>())); })(),
      minMasterVersion: (() { final guardedValue = map['minMasterVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      monitoringConfigs: (() { final guardedValue = map['monitoringConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterMonitoringConfig>(guardedValue, (value) => GetClusterMonitoringConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      monitoringService: (() { final guardedValue = map['monitoringService']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkPerformanceConfigs: (() { final guardedValue = map['networkPerformanceConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterNetworkPerformanceConfig>(guardedValue, (value) => GetClusterNetworkPerformanceConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      networkPolicies: (() { final guardedValue = map['networkPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterNetworkPolicy>(guardedValue, (value) => GetClusterNetworkPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      networkingMode: (() { final guardedValue = map['networkingMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeConfigs: (() { final guardedValue = map['nodeConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterNodeConfig>(guardedValue, (value) => GetClusterNodeConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      nodeCreationConfigs: (() { final guardedValue = map['nodeCreationConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterNodeCreationConfig>(guardedValue, (value) => GetClusterNodeCreationConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      nodeLocations: (() { final guardedValue = map['nodeLocations']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      nodePoolAutoConfigs: (() { final guardedValue = map['nodePoolAutoConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterNodePoolAutoConfig>(guardedValue, (value) => GetClusterNodePoolAutoConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      nodePoolDefaults: (() { final guardedValue = map['nodePoolDefaults']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterNodePoolDefault>(guardedValue, (value) => GetClusterNodePoolDefault.fromMap((value as Map).cast<String, dynamic>())); })(),
      nodePools: (() { final guardedValue = map['nodePools']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterNodePool>(guardedValue, (value) => GetClusterNodePool.fromMap((value as Map).cast<String, dynamic>())); })(),
      nodeVersion: (() { final guardedValue = map['nodeVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notificationConfigs: (() { final guardedValue = map['notificationConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterNotificationConfig>(guardedValue, (value) => GetClusterNotificationConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      operation: (() { final guardedValue = map['operation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      podAutoscalings: (() { final guardedValue = map['podAutoscalings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterPodAutoscaling>(guardedValue, (value) => GetClusterPodAutoscaling.fromMap((value as Map).cast<String, dynamic>())); })(),
      podSecurityPolicyConfigs: (() { final guardedValue = map['podSecurityPolicyConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterPodSecurityPolicyConfig>(guardedValue, (value) => GetClusterPodSecurityPolicyConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      privateClusterConfigs: (() { final guardedValue = map['privateClusterConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterPrivateClusterConfig>(guardedValue, (value) => GetClusterPrivateClusterConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      privateIpv6GoogleAccess: (() { final guardedValue = map['privateIpv6GoogleAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protectConfigs: (() { final guardedValue = map['protectConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterProtectConfig>(guardedValue, (value) => GetClusterProtectConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      rbacBindingConfigs: (() { final guardedValue = map['rbacBindingConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterRbacBindingConfig>(guardedValue, (value) => GetClusterRbacBindingConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      releaseChannels: (() { final guardedValue = map['releaseChannels']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterReleaseChannel>(guardedValue, (value) => GetClusterReleaseChannel.fromMap((value as Map).cast<String, dynamic>())); })(),
      removeDefaultNodePool: (() { final guardedValue = map['removeDefaultNodePool']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceLabels: (() { final guardedValue = map['resourceLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      resourceUsageExportConfigs: (() { final guardedValue = map['resourceUsageExportConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterResourceUsageExportConfig>(guardedValue, (value) => GetClusterResourceUsageExportConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      rollbackSafeUpgrades: (() { final guardedValue = map['rollbackSafeUpgrades']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterRollbackSafeUpgrade>(guardedValue, (value) => GetClusterRollbackSafeUpgrade.fromMap((value as Map).cast<String, dynamic>())); })(),
      secretManagerConfigs: (() { final guardedValue = map['secretManagerConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterSecretManagerConfig>(guardedValue, (value) => GetClusterSecretManagerConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      secretSyncConfigs: (() { final guardedValue = map['secretSyncConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterSecretSyncConfig>(guardedValue, (value) => GetClusterSecretSyncConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      securityPostureConfigs: (() { final guardedValue = map['securityPostureConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterSecurityPostureConfig>(guardedValue, (value) => GetClusterSecurityPostureConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceExternalIpsConfigs: (() { final guardedValue = map['serviceExternalIpsConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterServiceExternalIpsConfig>(guardedValue, (value) => GetClusterServiceExternalIpsConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      servicesIpv4Cidr: (() { final guardedValue = map['servicesIpv4Cidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skipNodePoolRefresh: (() { final guardedValue = map['skipNodePoolRefresh']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tpuConfigs: (() { final guardedValue = map['tpuConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterTpuConfig>(guardedValue, (value) => GetClusterTpuConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      tpuIpv4CidrBlock: (() { final guardedValue = map['tpuIpv4CidrBlock']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userManagedKeysConfigs: (() { final guardedValue = map['userManagedKeysConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterUserManagedKeysConfig>(guardedValue, (value) => GetClusterUserManagedKeysConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      verticalPodAutoscalings: (() { final guardedValue = map['verticalPodAutoscalings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterVerticalPodAutoscaling>(guardedValue, (value) => GetClusterVerticalPodAutoscaling.fromMap((value as Map).cast<String, dynamic>())); })(),
      workloadAltsConfigs: (() { final guardedValue = map['workloadAltsConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterWorkloadAltsConfig>(guardedValue, (value) => GetClusterWorkloadAltsConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      workloadIdentityConfigs: (() { final guardedValue = map['workloadIdentityConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterWorkloadIdentityConfig>(guardedValue, (value) => GetClusterWorkloadIdentityConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
