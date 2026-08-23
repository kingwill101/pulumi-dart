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
  final List<GetKubernetesClusterAciConnectorLinux> aciConnectorLinuxes;
  /// An `agentPoolProfile` block as documented below.
  final List<GetKubernetesClusterAgentPoolProfile> agentPoolProfiles;
  /// The IP ranges to whitelist for incoming traffic to the primaries.
  final List<String> apiServerAuthorizedIpRanges;
  /// An `azureActiveDirectoryRoleBasedAccessControl` block as documented below.
  final List<GetKubernetesClusterAzureActiveDirectoryRoleBasedAccessControl> azureActiveDirectoryRoleBasedAccessControls;
  /// Is Azure Policy enabled on this managed Kubernetes Cluster?
  final bool azurePolicyEnabled;
  /// A `bootstrapProfile` block as documented below.
  final List<GetKubernetesClusterBootstrapProfile> bootstrapProfiles;
  /// Contains the current version of Kubernetes running on the Cluster.
  final String currentKubernetesVersion;
  /// The ID of the Disk Encryption Set used for the Nodes and Volumes.
  final String diskEncryptionSetId;
  /// The DNS Prefix of the managed Kubernetes cluster.
  final String dnsPrefix;
  /// The FQDN of the Azure Kubernetes Managed Cluster.
  final String fqdn;
  /// Is HTTP Application Routing enabled for this managed Kubernetes Cluster?
  final bool httpApplicationRoutingEnabled;
  /// The Zone Name of the HTTP Application Routing.
  final String httpApplicationRoutingZoneName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as documented below.
  final List<GetKubernetesClusterIdentity> identities;
  /// An `ingressApplicationGateway` block as documented below.
  final List<GetKubernetesClusterIngressApplicationGateway> ingressApplicationGateways;
  /// A `keyManagementService` block as documented below.
  final List<GetKubernetesClusterKeyManagementService> keyManagementServices;
  /// A `keyVaultSecretsProvider` block as documented below.
  final List<GetKubernetesClusterKeyVaultSecretsProvider> keyVaultSecretsProviders;
  /// Raw Kubernetes config for the admin account to be used by [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/) and other compatible tools. This is only available when Role Based Access Control with Azure Active Directory is enabled and local accounts are not disabled.
  final String kubeAdminConfigRaw;
  /// A `kubeAdminConfig` block as defined below. This is only available when Role Based Access Control with Azure Active Directory is enabled and local accounts are not disabled.
  final List<GetKubernetesClusterKubeAdminConfig> kubeAdminConfigs;
  /// Base64 encoded Kubernetes configuration.
  final String kubeConfigRaw;
  /// A `kubeConfig` block as defined below.
  final List<GetKubernetesClusterKubeConfig> kubeConfigs;
  /// A `kubeletIdentity` block as documented below.
  final List<GetKubernetesClusterKubeletIdentity> kubeletIdentities;
  /// The version of Kubernetes used on the managed Kubernetes Cluster.
  final String kubernetesVersion;
  /// A `linuxProfile` block as documented below.
  final List<GetKubernetesClusterLinuxProfile> linuxProfiles;
  /// The Azure Region in which the managed Kubernetes Cluster exists.
  final String location;
  /// A `microsoftDefender` block as defined below.
  final List<GetKubernetesClusterMicrosoftDefender> microsoftDefenders;
  /// The name assigned to this pool of agents.
  final String name;
  /// A `networkProfile` block as documented below.
  final List<GetKubernetesClusterNetworkProfile> networkProfiles;
  /// Auto-generated Resource Group containing AKS Cluster resources.
  final String nodeResourceGroup;
  /// The ID of the Resource Group containing the resources for this Managed Kubernetes Cluster.
  final String nodeResourceGroupId;
  /// Whether or not the OIDC feature is enabled or disabled.
  final bool oidcIssuerEnabled;
  /// The OIDC issuer URL that is associated with the cluster.
  final String oidcIssuerUrl;
  /// An `omsAgent` block as documented below.
  final List<GetKubernetesClusterOmsAgent> omsAgents;
  /// Is Open Service Mesh enabled for this managed Kubernetes Cluster?
  final bool openServiceMeshEnabled;
  /// If the cluster has the Kubernetes API only exposed on internal IP addresses.
  final bool privateClusterEnabled;
  /// The FQDN of this Kubernetes Cluster when private link has been enabled. This name is only resolvable inside the Virtual Network where the Azure Kubernetes Service is located
  final String privateFqdn;
  final String resourceGroupName;
  /// Is Role Based Access Control enabled for this managed Kubernetes Cluster?
  final bool roleBasedAccessControlEnabled;
  final List<GetKubernetesClusterServiceMeshProfile> serviceMeshProfiles;
  /// A `servicePrincipal` block as documented below.
  final List<GetKubernetesClusterServicePrincipal> servicePrincipals;
  /// A `storageProfile` block as documented below.
  final List<GetKubernetesClusterStorageProfile> storageProfiles;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// A `windowsProfile` block as documented below.
  final List<GetKubernetesClusterWindowsProfile> windowsProfiles;

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
  /// [resourceGroupName] Required.
  /// [roleBasedAccessControlEnabled] Is Role Based Access Control enabled for this managed Kubernetes Cluster?
  /// [serviceMeshProfiles] Required.
  /// [servicePrincipals] A `servicePrincipal` block as documented below.
  /// [storageProfiles] A `storageProfile` block as documented below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [windowsProfiles] A `windowsProfile` block as documented below.
  const GetKubernetesClusterResult({
    required this.aciConnectorLinuxes,
    required this.agentPoolProfiles,
    required this.apiServerAuthorizedIpRanges,
    required this.azureActiveDirectoryRoleBasedAccessControls,
    required this.azurePolicyEnabled,
    required this.bootstrapProfiles,
    required this.currentKubernetesVersion,
    required this.diskEncryptionSetId,
    required this.dnsPrefix,
    required this.fqdn,
    required this.httpApplicationRoutingEnabled,
    required this.httpApplicationRoutingZoneName,
    required this.id,
    required this.identities,
    required this.ingressApplicationGateways,
    required this.keyManagementServices,
    required this.keyVaultSecretsProviders,
    required this.kubeAdminConfigRaw,
    required this.kubeAdminConfigs,
    required this.kubeConfigRaw,
    required this.kubeConfigs,
    required this.kubeletIdentities,
    required this.kubernetesVersion,
    required this.linuxProfiles,
    required this.location,
    required this.microsoftDefenders,
    required this.name,
    required this.networkProfiles,
    required this.nodeResourceGroup,
    required this.nodeResourceGroupId,
    required this.oidcIssuerEnabled,
    required this.oidcIssuerUrl,
    required this.omsAgents,
    required this.openServiceMeshEnabled,
    required this.privateClusterEnabled,
    required this.privateFqdn,
    required this.resourceGroupName,
    required this.roleBasedAccessControlEnabled,
    required this.serviceMeshProfiles,
    required this.servicePrincipals,
    required this.storageProfiles,
    required this.tags,
    required this.windowsProfiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aciConnectorLinuxes': pulumi.Input.encodeList<GetKubernetesClusterAciConnectorLinux, Map<String, dynamic>>(aciConnectorLinuxes, (value) => value.toMap()),
      'agentPoolProfiles': pulumi.Input.encodeList<GetKubernetesClusterAgentPoolProfile, Map<String, dynamic>>(agentPoolProfiles, (value) => value.toMap()),
      'apiServerAuthorizedIpRanges': apiServerAuthorizedIpRanges,
      'azureActiveDirectoryRoleBasedAccessControls': pulumi.Input.encodeList<GetKubernetesClusterAzureActiveDirectoryRoleBasedAccessControl, Map<String, dynamic>>(azureActiveDirectoryRoleBasedAccessControls, (value) => value.toMap()),
      'azurePolicyEnabled': azurePolicyEnabled,
      'bootstrapProfiles': pulumi.Input.encodeList<GetKubernetesClusterBootstrapProfile, Map<String, dynamic>>(bootstrapProfiles, (value) => value.toMap()),
      'currentKubernetesVersion': currentKubernetesVersion,
      'diskEncryptionSetId': diskEncryptionSetId,
      'dnsPrefix': dnsPrefix,
      'fqdn': fqdn,
      'httpApplicationRoutingEnabled': httpApplicationRoutingEnabled,
      'httpApplicationRoutingZoneName': httpApplicationRoutingZoneName,
      'id': id,
      'identities': pulumi.Input.encodeList<GetKubernetesClusterIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'ingressApplicationGateways': pulumi.Input.encodeList<GetKubernetesClusterIngressApplicationGateway, Map<String, dynamic>>(ingressApplicationGateways, (value) => value.toMap()),
      'keyManagementServices': pulumi.Input.encodeList<GetKubernetesClusterKeyManagementService, Map<String, dynamic>>(keyManagementServices, (value) => value.toMap()),
      'keyVaultSecretsProviders': pulumi.Input.encodeList<GetKubernetesClusterKeyVaultSecretsProvider, Map<String, dynamic>>(keyVaultSecretsProviders, (value) => value.toMap()),
      'kubeAdminConfigRaw': kubeAdminConfigRaw,
      'kubeAdminConfigs': pulumi.Input.encodeList<GetKubernetesClusterKubeAdminConfig, Map<String, dynamic>>(kubeAdminConfigs, (value) => value.toMap()),
      'kubeConfigRaw': kubeConfigRaw,
      'kubeConfigs': pulumi.Input.encodeList<GetKubernetesClusterKubeConfig, Map<String, dynamic>>(kubeConfigs, (value) => value.toMap()),
      'kubeletIdentities': pulumi.Input.encodeList<GetKubernetesClusterKubeletIdentity, Map<String, dynamic>>(kubeletIdentities, (value) => value.toMap()),
      'kubernetesVersion': kubernetesVersion,
      'linuxProfiles': pulumi.Input.encodeList<GetKubernetesClusterLinuxProfile, Map<String, dynamic>>(linuxProfiles, (value) => value.toMap()),
      'location': location,
      'microsoftDefenders': pulumi.Input.encodeList<GetKubernetesClusterMicrosoftDefender, Map<String, dynamic>>(microsoftDefenders, (value) => value.toMap()),
      'name': name,
      'networkProfiles': pulumi.Input.encodeList<GetKubernetesClusterNetworkProfile, Map<String, dynamic>>(networkProfiles, (value) => value.toMap()),
      'nodeResourceGroup': nodeResourceGroup,
      'nodeResourceGroupId': nodeResourceGroupId,
      'oidcIssuerEnabled': oidcIssuerEnabled,
      'oidcIssuerUrl': oidcIssuerUrl,
      'omsAgents': pulumi.Input.encodeList<GetKubernetesClusterOmsAgent, Map<String, dynamic>>(omsAgents, (value) => value.toMap()),
      'openServiceMeshEnabled': openServiceMeshEnabled,
      'privateClusterEnabled': privateClusterEnabled,
      'privateFqdn': privateFqdn,
      'resourceGroupName': resourceGroupName,
      'roleBasedAccessControlEnabled': roleBasedAccessControlEnabled,
      'serviceMeshProfiles': pulumi.Input.encodeList<GetKubernetesClusterServiceMeshProfile, Map<String, dynamic>>(serviceMeshProfiles, (value) => value.toMap()),
      'servicePrincipals': pulumi.Input.encodeList<GetKubernetesClusterServicePrincipal, Map<String, dynamic>>(servicePrincipals, (value) => value.toMap()),
      'storageProfiles': pulumi.Input.encodeList<GetKubernetesClusterStorageProfile, Map<String, dynamic>>(storageProfiles, (value) => value.toMap()),
      'tags': tags,
      'windowsProfiles': pulumi.Input.encodeList<GetKubernetesClusterWindowsProfile, Map<String, dynamic>>(windowsProfiles, (value) => value.toMap()),
    };
  }

  factory GetKubernetesClusterResult.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterResult(
      aciConnectorLinuxes: pulumi.Input.decodeList<GetKubernetesClusterAciConnectorLinux>(map['aciConnectorLinuxes']!, (value) => GetKubernetesClusterAciConnectorLinux.fromMap((value as Map).cast<String, dynamic>())),
      agentPoolProfiles: pulumi.Input.decodeList<GetKubernetesClusterAgentPoolProfile>(map['agentPoolProfiles']!, (value) => GetKubernetesClusterAgentPoolProfile.fromMap((value as Map).cast<String, dynamic>())),
      apiServerAuthorizedIpRanges: (map['apiServerAuthorizedIpRanges'] as List).cast<String>(),
      azureActiveDirectoryRoleBasedAccessControls: pulumi.Input.decodeList<GetKubernetesClusterAzureActiveDirectoryRoleBasedAccessControl>(map['azureActiveDirectoryRoleBasedAccessControls']!, (value) => GetKubernetesClusterAzureActiveDirectoryRoleBasedAccessControl.fromMap((value as Map).cast<String, dynamic>())),
      azurePolicyEnabled: map['azurePolicyEnabled'] as bool,
      bootstrapProfiles: pulumi.Input.decodeList<GetKubernetesClusterBootstrapProfile>(map['bootstrapProfiles']!, (value) => GetKubernetesClusterBootstrapProfile.fromMap((value as Map).cast<String, dynamic>())),
      currentKubernetesVersion: map['currentKubernetesVersion'] as String,
      diskEncryptionSetId: map['diskEncryptionSetId'] as String,
      dnsPrefix: map['dnsPrefix'] as String,
      fqdn: map['fqdn'] as String,
      httpApplicationRoutingEnabled: map['httpApplicationRoutingEnabled'] as bool,
      httpApplicationRoutingZoneName: map['httpApplicationRoutingZoneName'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetKubernetesClusterIdentity>(map['identities']!, (value) => GetKubernetesClusterIdentity.fromMap((value as Map).cast<String, dynamic>())),
      ingressApplicationGateways: pulumi.Input.decodeList<GetKubernetesClusterIngressApplicationGateway>(map['ingressApplicationGateways']!, (value) => GetKubernetesClusterIngressApplicationGateway.fromMap((value as Map).cast<String, dynamic>())),
      keyManagementServices: pulumi.Input.decodeList<GetKubernetesClusterKeyManagementService>(map['keyManagementServices']!, (value) => GetKubernetesClusterKeyManagementService.fromMap((value as Map).cast<String, dynamic>())),
      keyVaultSecretsProviders: pulumi.Input.decodeList<GetKubernetesClusterKeyVaultSecretsProvider>(map['keyVaultSecretsProviders']!, (value) => GetKubernetesClusterKeyVaultSecretsProvider.fromMap((value as Map).cast<String, dynamic>())),
      kubeAdminConfigRaw: map['kubeAdminConfigRaw'] as String,
      kubeAdminConfigs: pulumi.Input.decodeList<GetKubernetesClusterKubeAdminConfig>(map['kubeAdminConfigs']!, (value) => GetKubernetesClusterKubeAdminConfig.fromMap((value as Map).cast<String, dynamic>())),
      kubeConfigRaw: map['kubeConfigRaw'] as String,
      kubeConfigs: pulumi.Input.decodeList<GetKubernetesClusterKubeConfig>(map['kubeConfigs']!, (value) => GetKubernetesClusterKubeConfig.fromMap((value as Map).cast<String, dynamic>())),
      kubeletIdentities: pulumi.Input.decodeList<GetKubernetesClusterKubeletIdentity>(map['kubeletIdentities']!, (value) => GetKubernetesClusterKubeletIdentity.fromMap((value as Map).cast<String, dynamic>())),
      kubernetesVersion: map['kubernetesVersion'] as String,
      linuxProfiles: pulumi.Input.decodeList<GetKubernetesClusterLinuxProfile>(map['linuxProfiles']!, (value) => GetKubernetesClusterLinuxProfile.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      microsoftDefenders: pulumi.Input.decodeList<GetKubernetesClusterMicrosoftDefender>(map['microsoftDefenders']!, (value) => GetKubernetesClusterMicrosoftDefender.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      networkProfiles: pulumi.Input.decodeList<GetKubernetesClusterNetworkProfile>(map['networkProfiles']!, (value) => GetKubernetesClusterNetworkProfile.fromMap((value as Map).cast<String, dynamic>())),
      nodeResourceGroup: map['nodeResourceGroup'] as String,
      nodeResourceGroupId: map['nodeResourceGroupId'] as String,
      oidcIssuerEnabled: map['oidcIssuerEnabled'] as bool,
      oidcIssuerUrl: map['oidcIssuerUrl'] as String,
      omsAgents: pulumi.Input.decodeList<GetKubernetesClusterOmsAgent>(map['omsAgents']!, (value) => GetKubernetesClusterOmsAgent.fromMap((value as Map).cast<String, dynamic>())),
      openServiceMeshEnabled: map['openServiceMeshEnabled'] as bool,
      privateClusterEnabled: map['privateClusterEnabled'] as bool,
      privateFqdn: map['privateFqdn'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      roleBasedAccessControlEnabled: map['roleBasedAccessControlEnabled'] as bool,
      serviceMeshProfiles: pulumi.Input.decodeList<GetKubernetesClusterServiceMeshProfile>(map['serviceMeshProfiles']!, (value) => GetKubernetesClusterServiceMeshProfile.fromMap((value as Map).cast<String, dynamic>())),
      servicePrincipals: pulumi.Input.decodeList<GetKubernetesClusterServicePrincipal>(map['servicePrincipals']!, (value) => GetKubernetesClusterServicePrincipal.fromMap((value as Map).cast<String, dynamic>())),
      storageProfiles: pulumi.Input.decodeList<GetKubernetesClusterStorageProfile>(map['storageProfiles']!, (value) => GetKubernetesClusterStorageProfile.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      windowsProfiles: pulumi.Input.decodeList<GetKubernetesClusterWindowsProfile>(map['windowsProfiles']!, (value) => GetKubernetesClusterWindowsProfile.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
