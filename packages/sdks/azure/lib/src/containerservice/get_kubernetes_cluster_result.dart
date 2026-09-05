// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_cluster_aci_connector_linux.dart';
import 'get_kubernetes_cluster_agent_pool_profile.dart';
import 'get_kubernetes_cluster_azure_active_directory_role_based_access_control.dart';
import 'get_kubernetes_cluster_bootstrap_profile.dart';
import 'get_kubernetes_cluster_identity.dart';
import 'get_kubernetes_cluster_ingress_application_gateway.dart';
import 'get_kubernetes_cluster_key_management_service.dart';
import 'get_kubernetes_cluster_key_vault_secrets_provider.dart';
import 'get_kubernetes_cluster_kube_admin_config.dart';
import 'get_kubernetes_cluster_kube_config.dart';
import 'get_kubernetes_cluster_kubelet_identity.dart';
import 'get_kubernetes_cluster_linux_profile.dart';
import 'get_kubernetes_cluster_microsoft_defender.dart';
import 'get_kubernetes_cluster_network_profile.dart';
import 'get_kubernetes_cluster_oms_agent.dart';
import 'get_kubernetes_cluster_service_mesh_profile.dart';
import 'get_kubernetes_cluster_service_principal.dart';
import 'get_kubernetes_cluster_storage_profile.dart';
import 'get_kubernetes_cluster_windows_profile.dart';

/// Result data returned by getKubernetesCluster.
class GetKubernetesClusterResult {
  /// An `aciConnectorLinux` block as documented below.
  final List<GetKubernetesClusterAciConnectorLinux>? aciConnectorLinuxes;
  /// An `agentPoolProfile` block as documented below.
  final List<GetKubernetesClusterAgentPoolProfile>? agentPoolProfiles;
  /// The IP ranges to whitelist for incoming traffic to the primaries.
  final List<String>? apiServerAuthorizedIpRanges;
  /// An `azureActiveDirectoryRoleBasedAccessControl` block as documented below.
  final List<GetKubernetesClusterAzureActiveDirectoryRoleBasedAccessControl>? azureActiveDirectoryRoleBasedAccessControls;
  /// Is Azure Policy enabled on this managed Kubernetes Cluster?
  final bool? azurePolicyEnabled;
  /// A `bootstrapProfile` block as documented below.
  final List<GetKubernetesClusterBootstrapProfile>? bootstrapProfiles;
  /// Contains the current version of Kubernetes running on the Cluster.
  final String? currentKubernetesVersion;
  /// The ID of the Disk Encryption Set used for the Nodes and Volumes.
  final String? diskEncryptionSetId;
  /// The DNS Prefix of the managed Kubernetes cluster.
  final String? dnsPrefix;
  /// The FQDN of the Azure Kubernetes Managed Cluster.
  final String? fqdn;
  /// Is HTTP Application Routing enabled for this managed Kubernetes Cluster?
  final bool? httpApplicationRoutingEnabled;
  /// The Zone Name of the HTTP Application Routing.
  final String? httpApplicationRoutingZoneName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as documented below.
  final List<GetKubernetesClusterIdentity>? identities;
  /// An `ingressApplicationGateway` block as documented below.
  final List<GetKubernetesClusterIngressApplicationGateway>? ingressApplicationGateways;
  /// A `keyManagementService` block as documented below.
  final List<GetKubernetesClusterKeyManagementService>? keyManagementServices;
  /// A `keyVaultSecretsProvider` block as documented below.
  final List<GetKubernetesClusterKeyVaultSecretsProvider>? keyVaultSecretsProviders;
  /// Raw Kubernetes config for the admin account to be used by [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/) and other compatible tools. This is only available when Role Based Access Control with Azure Active Directory is enabled and local accounts are not disabled.
  final String? kubeAdminConfigRaw;
  /// A `kubeAdminConfig` block as defined below. This is only available when Role Based Access Control with Azure Active Directory is enabled and local accounts are not disabled.
  final List<GetKubernetesClusterKubeAdminConfig>? kubeAdminConfigs;
  /// Base64 encoded Kubernetes configuration.
  final String? kubeConfigRaw;
  /// A `kubeConfig` block as defined below.
  final List<GetKubernetesClusterKubeConfig>? kubeConfigs;
  /// A `kubeletIdentity` block as documented below.
  final List<GetKubernetesClusterKubeletIdentity>? kubeletIdentities;
  /// The version of Kubernetes used on the managed Kubernetes Cluster.
  final String? kubernetesVersion;
  /// A `linuxProfile` block as documented below.
  final List<GetKubernetesClusterLinuxProfile>? linuxProfiles;
  /// The Azure Region in which the managed Kubernetes Cluster exists.
  final String? location;
  /// A `microsoftDefender` block as defined below.
  final List<GetKubernetesClusterMicrosoftDefender>? microsoftDefenders;
  /// The name assigned to this pool of agents.
  final String? name;
  /// A `networkProfile` block as documented below.
  final List<GetKubernetesClusterNetworkProfile>? networkProfiles;
  /// Auto-generated Resource Group containing AKS Cluster resources.
  final String? nodeResourceGroup;
  /// The ID of the Resource Group containing the resources for this Managed Kubernetes Cluster.
  final String? nodeResourceGroupId;
  /// Whether or not the OIDC feature is enabled or disabled.
  final bool? oidcIssuerEnabled;
  /// The OIDC issuer URL that is associated with the cluster.
  final String? oidcIssuerUrl;
  /// An `omsAgent` block as documented below.
  final List<GetKubernetesClusterOmsAgent>? omsAgents;
  /// Is Open Service Mesh enabled for this managed Kubernetes Cluster?
  final bool? openServiceMeshEnabled;
  /// If the cluster has the Kubernetes API only exposed on internal IP addresses.
  final bool? privateClusterEnabled;
  /// The FQDN of this Kubernetes Cluster when private link has been enabled. This name is only resolvable inside the Virtual Network where the Azure Kubernetes Service is located
  final String? privateFqdn;
  final String? resourceGroupName;
  /// Is Role Based Access Control enabled for this managed Kubernetes Cluster?
  final bool? roleBasedAccessControlEnabled;
  final List<GetKubernetesClusterServiceMeshProfile>? serviceMeshProfiles;
  /// A `servicePrincipal` block as documented below.
  final List<GetKubernetesClusterServicePrincipal>? servicePrincipals;
  /// A `storageProfile` block as documented below.
  final List<GetKubernetesClusterStorageProfile>? storageProfiles;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;
  /// A `windowsProfile` block as documented below.
  final List<GetKubernetesClusterWindowsProfile>? windowsProfiles;

  /// Creates a new [GetKubernetesClusterResult].
  /// [aciConnectorLinuxes] An `aciConnectorLinux` block as documented below.
  /// [agentPoolProfiles] An `agentPoolProfile` block as documented below.
  /// [apiServerAuthorizedIpRanges] The IP ranges to whitelist for incoming traffic to the primaries.
  /// [azureActiveDirectoryRoleBasedAccessControls] An `azureActiveDirectoryRoleBasedAccessControl` block as documented below.
  /// [azurePolicyEnabled] Is Azure Policy enabled on this managed Kubernetes Cluster?
  /// [bootstrapProfiles] A `bootstrapProfile` block as documented below.
  /// [currentKubernetesVersion] Contains the current version of Kubernetes running on the Cluster.
  /// [diskEncryptionSetId] The ID of the Disk Encryption Set used for the Nodes and Volumes.
  /// [dnsPrefix] The DNS Prefix of the managed Kubernetes cluster.
  /// [fqdn] The FQDN of the Azure Kubernetes Managed Cluster.
  /// [httpApplicationRoutingEnabled] Is HTTP Application Routing enabled for this managed Kubernetes Cluster?
  /// [httpApplicationRoutingZoneName] The Zone Name of the HTTP Application Routing.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as documented below.
  /// [ingressApplicationGateways] An `ingressApplicationGateway` block as documented below.
  /// [keyManagementServices] A `keyManagementService` block as documented below.
  /// [keyVaultSecretsProviders] A `keyVaultSecretsProvider` block as documented below.
  /// [kubeAdminConfigRaw] Raw Kubernetes config for the admin account to be used by [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/) and other compatible tools. This is only available when Role Based Access Control with Azure Active Directory is enabled and local accounts are not disabled.
  /// [kubeAdminConfigs] A `kubeAdminConfig` block as defined below. This is only available when Role Based Access Control with Azure Active Directory is enabled and local accounts are not disabled.
  /// [kubeConfigRaw] Base64 encoded Kubernetes configuration.
  /// [kubeConfigs] A `kubeConfig` block as defined below.
  /// [kubeletIdentities] A `kubeletIdentity` block as documented below.
  /// [kubernetesVersion] The version of Kubernetes used on the managed Kubernetes Cluster.
  /// [linuxProfiles] A `linuxProfile` block as documented below.
  /// [location] The Azure Region in which the managed Kubernetes Cluster exists.
  /// [microsoftDefenders] A `microsoftDefender` block as defined below.
  /// [name] The name assigned to this pool of agents.
  /// [networkProfiles] A `networkProfile` block as documented below.
  /// [nodeResourceGroup] Auto-generated Resource Group containing AKS Cluster resources.
  /// [nodeResourceGroupId] The ID of the Resource Group containing the resources for this Managed Kubernetes Cluster.
  /// [oidcIssuerEnabled] Whether or not the OIDC feature is enabled or disabled.
  /// [oidcIssuerUrl] The OIDC issuer URL that is associated with the cluster.
  /// [omsAgents] An `omsAgent` block as documented below.
  /// [openServiceMeshEnabled] Is Open Service Mesh enabled for this managed Kubernetes Cluster?
  /// [privateClusterEnabled] If the cluster has the Kubernetes API only exposed on internal IP addresses.
  /// [privateFqdn] The FQDN of this Kubernetes Cluster when private link has been enabled. This name is only resolvable inside the Virtual Network where the Azure Kubernetes Service is located
  /// [resourceGroupName] Optional.
  /// [roleBasedAccessControlEnabled] Is Role Based Access Control enabled for this managed Kubernetes Cluster?
  /// [serviceMeshProfiles] Optional.
  /// [servicePrincipals] A `servicePrincipal` block as documented below.
  /// [storageProfiles] A `storageProfile` block as documented below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [windowsProfiles] A `windowsProfile` block as documented below.
  const GetKubernetesClusterResult({
    this.aciConnectorLinuxes,
    this.agentPoolProfiles,
    this.apiServerAuthorizedIpRanges,
    this.azureActiveDirectoryRoleBasedAccessControls,
    this.azurePolicyEnabled,
    this.bootstrapProfiles,
    this.currentKubernetesVersion,
    this.diskEncryptionSetId,
    this.dnsPrefix,
    this.fqdn,
    this.httpApplicationRoutingEnabled,
    this.httpApplicationRoutingZoneName,
    this.id,
    this.identities,
    this.ingressApplicationGateways,
    this.keyManagementServices,
    this.keyVaultSecretsProviders,
    this.kubeAdminConfigRaw,
    this.kubeAdminConfigs,
    this.kubeConfigRaw,
    this.kubeConfigs,
    this.kubeletIdentities,
    this.kubernetesVersion,
    this.linuxProfiles,
    this.location,
    this.microsoftDefenders,
    this.name,
    this.networkProfiles,
    this.nodeResourceGroup,
    this.nodeResourceGroupId,
    this.oidcIssuerEnabled,
    this.oidcIssuerUrl,
    this.omsAgents,
    this.openServiceMeshEnabled,
    this.privateClusterEnabled,
    this.privateFqdn,
    this.resourceGroupName,
    this.roleBasedAccessControlEnabled,
    this.serviceMeshProfiles,
    this.servicePrincipals,
    this.storageProfiles,
    this.tags,
    this.windowsProfiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aciConnectorLinuxes': ?(() { final guardedValue = aciConnectorLinuxes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterAciConnectorLinux, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'agentPoolProfiles': ?(() { final guardedValue = agentPoolProfiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterAgentPoolProfile, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'apiServerAuthorizedIpRanges': ?apiServerAuthorizedIpRanges,
      'azureActiveDirectoryRoleBasedAccessControls': ?(() { final guardedValue = azureActiveDirectoryRoleBasedAccessControls; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterAzureActiveDirectoryRoleBasedAccessControl, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azurePolicyEnabled': ?azurePolicyEnabled,
      'bootstrapProfiles': ?(() { final guardedValue = bootstrapProfiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterBootstrapProfile, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'currentKubernetesVersion': ?currentKubernetesVersion,
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'dnsPrefix': ?dnsPrefix,
      'fqdn': ?fqdn,
      'httpApplicationRoutingEnabled': ?httpApplicationRoutingEnabled,
      'httpApplicationRoutingZoneName': ?httpApplicationRoutingZoneName,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ingressApplicationGateways': ?(() { final guardedValue = ingressApplicationGateways; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterIngressApplicationGateway, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'keyManagementServices': ?(() { final guardedValue = keyManagementServices; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterKeyManagementService, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'keyVaultSecretsProviders': ?(() { final guardedValue = keyVaultSecretsProviders; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterKeyVaultSecretsProvider, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kubeAdminConfigRaw': ?kubeAdminConfigRaw,
      'kubeAdminConfigs': ?(() { final guardedValue = kubeAdminConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterKubeAdminConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kubeConfigRaw': ?kubeConfigRaw,
      'kubeConfigs': ?(() { final guardedValue = kubeConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterKubeConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kubeletIdentities': ?(() { final guardedValue = kubeletIdentities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterKubeletIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kubernetesVersion': ?kubernetesVersion,
      'linuxProfiles': ?(() { final guardedValue = linuxProfiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterLinuxProfile, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'microsoftDefenders': ?(() { final guardedValue = microsoftDefenders; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterMicrosoftDefender, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'networkProfiles': ?(() { final guardedValue = networkProfiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterNetworkProfile, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'nodeResourceGroup': ?nodeResourceGroup,
      'nodeResourceGroupId': ?nodeResourceGroupId,
      'oidcIssuerEnabled': ?oidcIssuerEnabled,
      'oidcIssuerUrl': ?oidcIssuerUrl,
      'omsAgents': ?(() { final guardedValue = omsAgents; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterOmsAgent, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'openServiceMeshEnabled': ?openServiceMeshEnabled,
      'privateClusterEnabled': ?privateClusterEnabled,
      'privateFqdn': ?privateFqdn,
      'resourceGroupName': ?resourceGroupName,
      'roleBasedAccessControlEnabled': ?roleBasedAccessControlEnabled,
      'serviceMeshProfiles': ?(() { final guardedValue = serviceMeshProfiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterServiceMeshProfile, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'servicePrincipals': ?(() { final guardedValue = servicePrincipals; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterServicePrincipal, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'storageProfiles': ?(() { final guardedValue = storageProfiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterStorageProfile, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'windowsProfiles': ?(() { final guardedValue = windowsProfiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterWindowsProfile, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetKubernetesClusterResult.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterResult(
      aciConnectorLinuxes: (() { final guardedValue = map['aciConnectorLinuxes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterAciConnectorLinux>(guardedValue, (value) => GetKubernetesClusterAciConnectorLinux.fromMap((value as Map).cast<String, dynamic>())); })(),
      agentPoolProfiles: (() { final guardedValue = map['agentPoolProfiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterAgentPoolProfile>(guardedValue, (value) => GetKubernetesClusterAgentPoolProfile.fromMap((value as Map).cast<String, dynamic>())); })(),
      apiServerAuthorizedIpRanges: (() { final guardedValue = map['apiServerAuthorizedIpRanges']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureActiveDirectoryRoleBasedAccessControls: (() { final guardedValue = map['azureActiveDirectoryRoleBasedAccessControls']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterAzureActiveDirectoryRoleBasedAccessControl>(guardedValue, (value) => GetKubernetesClusterAzureActiveDirectoryRoleBasedAccessControl.fromMap((value as Map).cast<String, dynamic>())); })(),
      azurePolicyEnabled: (() { final guardedValue = map['azurePolicyEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      bootstrapProfiles: (() { final guardedValue = map['bootstrapProfiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterBootstrapProfile>(guardedValue, (value) => GetKubernetesClusterBootstrapProfile.fromMap((value as Map).cast<String, dynamic>())); })(),
      currentKubernetesVersion: (() { final guardedValue = map['currentKubernetesVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskEncryptionSetId: (() { final guardedValue = map['diskEncryptionSetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsPrefix: (() { final guardedValue = map['dnsPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      httpApplicationRoutingEnabled: (() { final guardedValue = map['httpApplicationRoutingEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      httpApplicationRoutingZoneName: (() { final guardedValue = map['httpApplicationRoutingZoneName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterIdentity>(guardedValue, (value) => GetKubernetesClusterIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      ingressApplicationGateways: (() { final guardedValue = map['ingressApplicationGateways']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterIngressApplicationGateway>(guardedValue, (value) => GetKubernetesClusterIngressApplicationGateway.fromMap((value as Map).cast<String, dynamic>())); })(),
      keyManagementServices: (() { final guardedValue = map['keyManagementServices']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterKeyManagementService>(guardedValue, (value) => GetKubernetesClusterKeyManagementService.fromMap((value as Map).cast<String, dynamic>())); })(),
      keyVaultSecretsProviders: (() { final guardedValue = map['keyVaultSecretsProviders']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterKeyVaultSecretsProvider>(guardedValue, (value) => GetKubernetesClusterKeyVaultSecretsProvider.fromMap((value as Map).cast<String, dynamic>())); })(),
      kubeAdminConfigRaw: (() { final guardedValue = map['kubeAdminConfigRaw']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kubeAdminConfigs: (() { final guardedValue = map['kubeAdminConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterKubeAdminConfig>(guardedValue, (value) => GetKubernetesClusterKubeAdminConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      kubeConfigRaw: (() { final guardedValue = map['kubeConfigRaw']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kubeConfigs: (() { final guardedValue = map['kubeConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterKubeConfig>(guardedValue, (value) => GetKubernetesClusterKubeConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      kubeletIdentities: (() { final guardedValue = map['kubeletIdentities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterKubeletIdentity>(guardedValue, (value) => GetKubernetesClusterKubeletIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      kubernetesVersion: (() { final guardedValue = map['kubernetesVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linuxProfiles: (() { final guardedValue = map['linuxProfiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterLinuxProfile>(guardedValue, (value) => GetKubernetesClusterLinuxProfile.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      microsoftDefenders: (() { final guardedValue = map['microsoftDefenders']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterMicrosoftDefender>(guardedValue, (value) => GetKubernetesClusterMicrosoftDefender.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkProfiles: (() { final guardedValue = map['networkProfiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterNetworkProfile>(guardedValue, (value) => GetKubernetesClusterNetworkProfile.fromMap((value as Map).cast<String, dynamic>())); })(),
      nodeResourceGroup: (() { final guardedValue = map['nodeResourceGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeResourceGroupId: (() { final guardedValue = map['nodeResourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      oidcIssuerEnabled: (() { final guardedValue = map['oidcIssuerEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      oidcIssuerUrl: (() { final guardedValue = map['oidcIssuerUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      omsAgents: (() { final guardedValue = map['omsAgents']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterOmsAgent>(guardedValue, (value) => GetKubernetesClusterOmsAgent.fromMap((value as Map).cast<String, dynamic>())); })(),
      openServiceMeshEnabled: (() { final guardedValue = map['openServiceMeshEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      privateClusterEnabled: (() { final guardedValue = map['privateClusterEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      privateFqdn: (() { final guardedValue = map['privateFqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleBasedAccessControlEnabled: (() { final guardedValue = map['roleBasedAccessControlEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      serviceMeshProfiles: (() { final guardedValue = map['serviceMeshProfiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterServiceMeshProfile>(guardedValue, (value) => GetKubernetesClusterServiceMeshProfile.fromMap((value as Map).cast<String, dynamic>())); })(),
      servicePrincipals: (() { final guardedValue = map['servicePrincipals']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterServicePrincipal>(guardedValue, (value) => GetKubernetesClusterServicePrincipal.fromMap((value as Map).cast<String, dynamic>())); })(),
      storageProfiles: (() { final guardedValue = map['storageProfiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterStorageProfile>(guardedValue, (value) => GetKubernetesClusterStorageProfile.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      windowsProfiles: (() { final guardedValue = map['windowsProfiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterWindowsProfile>(guardedValue, (value) => GetKubernetesClusterWindowsProfile.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
