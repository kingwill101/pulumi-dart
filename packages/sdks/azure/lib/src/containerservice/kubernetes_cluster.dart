import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_aci_connector_linux.dart';
import 'kubernetes_cluster_api_server_access_profile.dart';
import 'kubernetes_cluster_args.dart';
import 'kubernetes_cluster_auto_scaler_profile.dart';
import 'kubernetes_cluster_azure_active_directory_role_based_access_control.dart';
import 'kubernetes_cluster_bootstrap_profile.dart';
import 'kubernetes_cluster_confidential_computing.dart';
import 'kubernetes_cluster_default_node_pool.dart';
import 'kubernetes_cluster_http_proxy_config.dart';
import 'kubernetes_cluster_identity.dart';
import 'kubernetes_cluster_ingress_application_gateway.dart';
import 'kubernetes_cluster_key_management_service.dart';
import 'kubernetes_cluster_key_vault_secrets_provider.dart';
import 'kubernetes_cluster_kubelet_identity.dart';
import 'kubernetes_cluster_linux_profile.dart';
import 'kubernetes_cluster_maintenance_window.dart';
import 'kubernetes_cluster_maintenance_window_auto_upgrade.dart';
import 'kubernetes_cluster_maintenance_window_node_os.dart';
import 'kubernetes_cluster_microsoft_defender.dart';
import 'kubernetes_cluster_monitor_metrics.dart';
import 'kubernetes_cluster_network_profile.dart';
import 'kubernetes_cluster_node_provisioning_profile.dart';
import 'kubernetes_cluster_oms_agent.dart';
import 'kubernetes_cluster_service_mesh_profile.dart';
import 'kubernetes_cluster_service_principal.dart';
import 'kubernetes_cluster_state.dart';
import 'kubernetes_cluster_storage_profile.dart';
import 'kubernetes_cluster_upgrade_override.dart';
import 'kubernetes_cluster_web_app_routing.dart';
import 'kubernetes_cluster_windows_profile.dart';
import 'kubernetes_cluster_workload_autoscaler_profile.dart';

/// Manages a Managed Kubernetes Cluster (also known as AKS / Azure Kubernetes Service)
///
/// &gt; **Note:** Due to the fast-moving nature of AKS, we recommend using the latest version of the Azure Provider when using AKS.
///
/// ## Example Usage
///
/// This example provisions a basic Managed Kubernetes Cluster.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleKubernetesCluster = new azure.containerservice.KubernetesCluster("example", {
///     name: "example-aks1",
///     location: example.location,
///     resourceGroupName: example.name,
///     dnsPrefix: "exampleaks1",
///     defaultNodePool: {
///         name: "default",
///         nodeCount: 1,
///         vmSize: "Standard_D2_v2",
///     },
///     identity: {
///         type: "SystemAssigned",
///     },
///     tags: {
///         Environment: "Production",
///     },
/// });
/// export const clientCertificate = exampleKubernetesCluster.kubeConfigs.apply(kubeConfigs => kubeConfigs[0].clientCertificate);
/// export const kubeConfig = exampleKubernetesCluster.kubeConfigRaw;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_kubernetes_cluster = azure.containerservice.KubernetesCluster("example",
///     name="example-aks1",
///     location=example.location,
///     resource_group_name=example.name,
///     dns_prefix="exampleaks1",
///     default_node_pool={
///         "name": "default",
///         "node_count": 1,
///         "vm_size": "Standard_D2_v2",
///     },
///     identity={
///         "type": "SystemAssigned",
///     },
///     tags={
///         "Environment": "Production",
///     })
/// pulumi.export("clientCertificate", example_kubernetes_cluster.kube_configs[0].client_certificate)
/// pulumi.export("kubeConfig", example_kubernetes_cluster.kube_config_raw)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleKubernetesCluster = new Azure.ContainerService.KubernetesCluster("example", new()
///     {
///         Name = "example-aks1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         DnsPrefix = "exampleaks1",
///         DefaultNodePool = new Azure.ContainerService.Inputs.KubernetesClusterDefaultNodePoolArgs
///         {
///             Name = "default",
///             NodeCount = 1,
///             VmSize = "Standard_D2_v2",
///         },
///         Identity = new Azure.ContainerService.Inputs.KubernetesClusterIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         Tags =
///         {
///             { "Environment", "Production" },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["clientCertificate"] = exampleKubernetesCluster.KubeConfigs.Apply(kubeConfigs => kubeConfigs[0].ClientCertificate),
///         ["kubeConfig"] = exampleKubernetesCluster.KubeConfigRaw,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKubernetesCluster, err := containerservice.NewKubernetesCluster(ctx, "example", &containerservice.KubernetesClusterArgs{
/// 			Name:              pulumi.String("example-aks1"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			DnsPrefix:         pulumi.String("exampleaks1"),
/// 			DefaultNodePool: &containerservice.KubernetesClusterDefaultNodePoolArgs{
/// 				Name:      pulumi.String("default"),
/// 				NodeCount: pulumi.Int(1),
/// 				VmSize:    pulumi.String("Standard_D2_v2"),
/// 			},
/// 			Identity: &containerservice.KubernetesClusterIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("clientCertificate", exampleKubernetesCluster.KubeConfigs.ApplyT(func(kubeConfigs []containerservice.KubernetesClusterKubeConfig) (*string, error) {
/// 			return &kubeConfigs[0].ClientCertificate, nil
/// 		}).(pulumi.StringPtrOutput))
/// 		ctx.Export("kubeConfig", exampleKubernetesCluster.KubeConfigRaw)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.containerservice.KubernetesCluster;
/// import com.pulumi.azure.containerservice.KubernetesClusterArgs;
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterDefaultNodePoolArgs;
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterIdentityArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleKubernetesCluster = new KubernetesCluster("exampleKubernetesCluster", KubernetesClusterArgs.builder()
///             .name("example-aks1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .dnsPrefix("exampleaks1")
///             .defaultNodePool(KubernetesClusterDefaultNodePoolArgs.builder()
///                 .name("default")
///                 .nodeCount(1)
///                 .vmSize("Standard_D2_v2")
///                 .build())
///             .identity(KubernetesClusterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .tags(Map.of("Environment", "Production"))
///             .build());
///
///         ctx.export("clientCertificate", exampleKubernetesCluster.kubeConfigs().applyValue(_kubeConfigs -> _kubeConfigs[0].clientCertificate()));
///         ctx.export("kubeConfig", exampleKubernetesCluster.kubeConfigRaw());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleKubernetesCluster:
///     type: azure:containerservice:KubernetesCluster
///     name: example
///     properties:
///       name: example-aks1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       dnsPrefix: exampleaks1
///       defaultNodePool:
///         name: default
///         nodeCount: 1
///         vmSize: Standard_D2_v2
///       identity:
///         type: SystemAssigned
///       tags:
///         Environment: Production
/// outputs:
///   clientCertificate: ${exampleKubernetesCluster.kubeConfigs[0].clientCertificate}
///   kubeConfig: ${exampleKubernetesCluster.kubeConfigRaw}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ContainerService` - 2025-07-01
///
/// ## Import
///
/// Managed Kubernetes Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerservice/kubernetesCluster:KubernetesCluster cluster1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ContainerService/managedClusters/cluster1
/// ```
class KubernetesCluster extends pulumi.CustomResource {
  /// A `aci_connector_linux` block as defined below. For more details, please visit [Create and configure an AKS cluster to use virtual nodes](https://docs.microsoft.com/azure/aks/virtual-nodes-portal).
  late final pulumi.Output<KubernetesClusterAciConnectorLinux?>
  aciConnectorLinux;

  /// Specifies whether the AI Toolchain Operator should be enabled for the Cluster. Defaults to `false`.
  late final pulumi.Output<bool?> aiToolchainOperatorEnabled;

  /// An `api_server_access_profile` block as defined below.
  late final pulumi.Output<KubernetesClusterApiServerAccessProfile?>
  apiServerAccessProfile;

  /// A `auto_scaler_profile` block as defined below.
  late final pulumi.Output<KubernetesClusterAutoScalerProfile>
  autoScalerProfile;

  /// The upgrade channel for this Kubernetes Cluster. Possible values are `patch`, `rapid`, `node-image` and `stable`. Omitting this field sets this value to `none`.
  ///
  /// !&gt; **Note:** Cluster Auto-Upgrade will update the Kubernetes Cluster (and its Node Pools) to the latest GA version of Kubernetes automatically - please [see the Azure documentation for more information](https://docs.microsoft.com/azure/aks/upgrade-cluster#set-auto-upgrade-channel).
  ///
  /// &gt; **Note:** Cluster Auto-Upgrade only updates to GA versions of Kubernetes and will not update to Preview versions.
  late final pulumi.Output<String?> automaticUpgradeChannel;

  /// A `azure_active_directory_role_based_access_control` block as defined below.
  late final pulumi.Output<
    KubernetesClusterAzureActiveDirectoryRoleBasedAccessControl?
  >
  azureActiveDirectoryRoleBasedAccessControl;

  /// Should the Azure Policy Add-On be enabled? For more details please visit [Understand Azure Policy for Azure Kubernetes Service](https://docs.microsoft.com/en-ie/azure/governance/policy/concepts/rego-for-aks)
  late final pulumi.Output<bool?> azurePolicyEnabled;

  /// A `bootstrap_profile` block as defined below.
  late final pulumi.Output<KubernetesClusterBootstrapProfile> bootstrapProfile;

  /// A `confidential_computing` block as defined below. For more details please [the documentation](https://learn.microsoft.com/en-us/azure/confidential-computing/confidential-nodes-aks-overview)
  late final pulumi.Output<KubernetesClusterConfidentialComputing?>
  confidentialComputing;

  /// Should cost analysis be enabled for this Kubernetes Cluster? Defaults to `false`. The `sku_tier` must be set to `Standard` or `Premium` to enable this feature. Enabling this will add Kubernetes Namespace and Deployment details to the Cost Analysis views in the Azure portal.
  late final pulumi.Output<bool?> costAnalysisEnabled;

  /// The current version running on the Azure Kubernetes Managed Cluster.
  late final pulumi.Output<String> currentKubernetesVersion;

  /// A list of up to 10 base64 encoded CA certificates that will be added to the trust store on nodes.
  late final pulumi.Output<List<String>?> customCaTrustCertificatesBase64s;

  /// Specifies configuration for "System" mode node pool. A `default_node_pool` block as defined below.
  late final pulumi.Output<KubernetesClusterDefaultNodePool> defaultNodePool;

  /// The ID of the Disk Encryption Set which should be used for the Nodes and Volumes. More information [can be found in the documentation](https://docs.microsoft.com/azure/aks/azure-disk-customer-managed-keys). Changing this forces a new resource to be created.
  late final pulumi.Output<String?> diskEncryptionSetId;

  /// DNS prefix specified when creating the managed cluster. Possible values must begin and end with a letter or number, contain only letters, numbers, and hyphens and be between 1 and 54 characters in length. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> dnsPrefix;

  /// Specifies the DNS prefix to use with private clusters. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** You must define either a `dns_prefix` or a `dns_prefix_private_cluster` field.
  ///
  /// In addition, one of either `identity` or `service_principal` blocks must be specified.
  late final pulumi.Output<String?> dnsPrefixPrivateCluster;

  /// Specifies the Extended Zone (formerly called Edge Zone) within the Azure Region where this Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> edgeZone;

  /// The FQDN of the Azure Kubernetes Managed Cluster.
  late final pulumi.Output<String> fqdn;

  /// Should HTTP Application Routing be enabled?
  ///
  /// &gt; **Note:** At this time HTTP Application Routing is not supported in Azure China or Azure US Government.
  late final pulumi.Output<bool?> httpApplicationRoutingEnabled;

  /// The Zone Name of the HTTP Application Routing.
  late final pulumi.Output<String> httpApplicationRoutingZoneName;

  /// A `http_proxy_config` block as defined below.
  late final pulumi.Output<KubernetesClusterHttpProxyConfig?> httpProxyConfig;

  /// An `identity` block as defined below. One of either `identity` or `service_principal` must be specified.
  ///
  /// !&gt; **Note:** A migration scenario from `service_principal` to `identity` is supported. When upgrading `service_principal` to `identity`, your cluster's control plane and addon pods will switch to use managed identity, but the kubelets will keep using your configured `service_principal` until you upgrade your Node Pool.
  late final pulumi.Output<KubernetesClusterIdentity?> identity;

  /// Specifies whether Image Cleaner is enabled.
  late final pulumi.Output<bool?> imageCleanerEnabled;

  /// Specifies the interval in hours when images should be cleaned up.
  late final pulumi.Output<int?> imageCleanerIntervalHours;

  /// A `ingress_application_gateway` block as defined below.
  ///
  /// &gt; **Note:** Since the Application Gateway is deployed inside a Virtual Network, users (and Service Principals) that are operating the Application Gateway must have the `Microsoft.Network/virtualNetworks/subnets/join/action` permission on the Virtual Network or Subnet. For more details, please visit [Virtual Network Permission](https://learn.microsoft.com/en-us/azure/application-gateway/configuration-infrastructure#virtual-network-permission).
  late final pulumi.Output<KubernetesClusterIngressApplicationGateway?>
  ingressApplicationGateway;

  /// A `key_management_service` block as defined below. For more details, please visit [Key Management Service (KMS) etcd encryption to an AKS cluster](https://learn.microsoft.com/en-us/azure/aks/use-kms-etcd-encryption).
  late final pulumi.Output<KubernetesClusterKeyManagementService?>
  keyManagementService;

  /// A `key_vault_secrets_provider` block as defined below. For more details, please visit [Azure Keyvault Secrets Provider for AKS](https://docs.microsoft.com/azure/aks/csi-secrets-store-driver).
  late final pulumi.Output<KubernetesClusterKeyVaultSecretsProvider?>
  keyVaultSecretsProvider;

  /// Raw Kubernetes config for the admin account to be used by [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/) and other compatible tools. This is only available when Role Based Access Control with Azure Active Directory is enabled and local accounts enabled.
  late final pulumi.Output<String> kubeAdminConfigRaw;

  /// A `kube_admin_config` block as defined below. This is only available when Role Based Access Control with Azure Active Directory is enabled and local accounts enabled.
  late final pulumi.Output<List<Map<String, dynamic>>> kubeAdminConfigs;

  /// Raw Kubernetes config to be used by [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/) and other compatible tools.
  late final pulumi.Output<String> kubeConfigRaw;

  /// A `kube_config` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> kubeConfigs;

  /// A `kubelet_identity` block as defined below.
  late final pulumi.Output<KubernetesClusterKubeletIdentity> kubeletIdentity;

  /// Version of Kubernetes specified when creating the AKS managed cluster. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as `1.22` are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in [the documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version).
  ///
  /// &gt; **Note:** Upgrading your cluster may take up to 10 minutes per node.
  late final pulumi.Output<String> kubernetesVersion;

  /// A `linux_profile` block as defined below.
  late final pulumi.Output<KubernetesClusterLinuxProfile?> linuxProfile;

  /// If `true` local accounts will be disabled. See [the documentation](https://docs.microsoft.com/azure/aks/managed-aad#disable-local-accounts) for more information.
  ///
  /// &gt; **Note:** If `local_account_disabled` is set to `true`, it is required to enable Kubernetes RBAC and AKS-managed Azure AD integration. See [the documentation](https://docs.microsoft.com/azure/aks/managed-aad#azure-ad-authentication-overview) for more information.
  late final pulumi.Output<bool?> localAccountDisabled;

  /// The location where the Managed Kubernetes Cluster should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// A `maintenance_window` block as defined below.
  late final pulumi.Output<KubernetesClusterMaintenanceWindow?>
  maintenanceWindow;

  /// A `maintenance_window_auto_upgrade` block as defined below.
  late final pulumi.Output<KubernetesClusterMaintenanceWindowAutoUpgrade?>
  maintenanceWindowAutoUpgrade;

  /// A `maintenance_window_node_os` block as defined below.
  late final pulumi.Output<KubernetesClusterMaintenanceWindowNodeOs?>
  maintenanceWindowNodeOs;

  /// A `microsoft_defender` block as defined below.
  late final pulumi.Output<KubernetesClusterMicrosoftDefender?>
  microsoftDefender;

  /// Specifies a Prometheus add-on profile for the Kubernetes Cluster. A `monitor_metrics` block as defined below.
  ///
  /// &gt; **Note:** If deploying Managed Prometheus, the `monitor_metrics` properties are required to configure the cluster for metrics collection. If no value is needed, set properties to `null`.
  late final pulumi.Output<KubernetesClusterMonitorMetrics?> monitorMetrics;

  /// The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// A `network_profile` block as defined below. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If `network_profile` is not defined, `kubenet` profile will be used by default.
  late final pulumi.Output<KubernetesClusterNetworkProfile> networkProfile;

  /// The upgrade channel for this Kubernetes Cluster Nodes' OS Image. Possible values are `Unmanaged`, `SecurityPatch`, `NodeImage` and `None`. Defaults to `NodeImage`.
  ///
  /// &gt; **Note:** `node_os_upgrade_channel` must be set to `NodeImage` if `automatic_upgrade_channel` has been set to `node-image`
  late final pulumi.Output<String?> nodeOsUpgradeChannel;

  /// A `node_provisioning_profile` block as defined below.
  late final pulumi.Output<KubernetesClusterNodeProvisioningProfile>
  nodeProvisioningProfile;

  /// The name of the Resource Group where the Kubernetes Nodes should exist. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Azure requires that a new, non-existent Resource Group is used, as otherwise, the provisioning of the Kubernetes Service will fail.
  late final pulumi.Output<String> nodeResourceGroup;

  /// The ID of the Resource Group containing the resources for this Managed Kubernetes Cluster.
  late final pulumi.Output<String> nodeResourceGroupId;

  /// Enable or Disable the [OIDC issuer URL](https://learn.microsoft.com/en-gb/azure/aks/use-oidc-issuer)
  late final pulumi.Output<bool?> oidcIssuerEnabled;

  /// The OIDC issuer URL that is associated with the cluster.
  late final pulumi.Output<String> oidcIssuerUrl;

  /// A `oms_agent` block as defined below.
  late final pulumi.Output<KubernetesClusterOmsAgent?> omsAgent;

  /// Is Open Service Mesh enabled? For more details, please visit [Open Service Mesh for AKS](https://docs.microsoft.com/azure/aks/open-service-mesh-about).
  late final pulumi.Output<bool?> openServiceMeshEnabled;

  /// The FQDN for the Azure Portal resources when private link has been enabled, which is only resolvable inside the Virtual Network used by the Kubernetes Cluster.
  late final pulumi.Output<String> portalFqdn;

  /// Should this Kubernetes Cluster have its API server only exposed on internal IP addresses? This provides a Private IP Address for the Kubernetes API on the Virtual Network where the Kubernetes Cluster is located. Defaults to `false`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> privateClusterEnabled;

  /// Specifies whether a Public FQDN for this Private Cluster should be added. Defaults to `false`.
  ///
  /// &gt; **Note:** If you use BYO DNS Zone, the AKS cluster should either use a User Assigned Identity or a service principal (which is deprecated) with the `Private DNS Zone Contributor` role and access to this Private DNS Zone. If `UserAssigned` identity is used - to prevent improper resource order destruction - the cluster should depend on the role assignment, like in this example:
  ///
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as azure from "@pulumi/azure";
  ///
  /// const example = new azure.core.ResourceGroup("example", {
  ///     name: "example",
  ///     location: "West Europe",
  /// });
  /// const exampleZone = new azure.privatedns.Zone("example", {
  ///     name: "privatelink.eastus2.azmk8s.io",
  ///     resourceGroupName: example.name,
  /// });
  /// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
  ///     name: "aks-example-identity",
  ///     resourceGroupName: example.name,
  ///     location: example.location,
  /// });
  /// const exampleAssignment = new azure.authorization.Assignment("example", {
  ///     scope: exampleZone.id,
  ///     roleDefinitionName: "Private DNS Zone Contributor",
  ///     principalId: exampleUserAssignedIdentity.principalId,
  /// });
  /// const exampleKubernetesCluster = new azure.containerservice.KubernetesCluster("example", {
  ///     name: "aksexamplewithprivatednszone1",
  ///     location: example.location,
  ///     resourceGroupName: example.name,
  ///     dnsPrefix: "aksexamplednsprefix1",
  ///     privateClusterEnabled: true,
  ///     privateDnsZoneId: exampleZone.id,
  /// }, {
  ///     dependsOn: [exampleAssignment],
  /// });
  /// ```
  /// ```python
  /// import pulumi
  /// import pulumi_azure as azure
  ///
  /// example = azure.core.ResourceGroup("example",
  ///     name="example",
  ///     location="West Europe")
  /// example_zone = azure.privatedns.Zone("example",
  ///     name="privatelink.eastus2.azmk8s.io",
  ///     resource_group_name=example.name)
  /// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
  ///     name="aks-example-identity",
  ///     resource_group_name=example.name,
  ///     location=example.location)
  /// example_assignment = azure.authorization.Assignment("example",
  ///     scope=example_zone.id,
  ///     role_definition_name="Private DNS Zone Contributor",
  ///     principal_id=example_user_assigned_identity.principal_id)
  /// example_kubernetes_cluster = azure.containerservice.KubernetesCluster("example",
  ///     name="aksexamplewithprivatednszone1",
  ///     location=example.location,
  ///     resource_group_name=example.name,
  ///     dns_prefix="aksexamplednsprefix1",
  ///     private_cluster_enabled=True,
  ///     private_dns_zone_id=example_zone.id,
  ///     opts = pulumi.ResourceOptions(depends_on=[example_assignment]))
  /// ```
  /// ```csharp
  /// using System.Collections.Generic;
  /// using System.Linq;
  /// using Pulumi;
  /// using Azure = Pulumi.Azure;
  ///
  /// return await Deployment.RunAsync(() =>
  /// {
  ///     var example = new Azure.Core.ResourceGroup("example", new()
  ///     {
  ///         Name = "example",
  ///         Location = "West Europe",
  ///     });
  ///
  ///     var exampleZone = new Azure.PrivateDns.Zone("example", new()
  ///     {
  ///         Name = "privatelink.eastus2.azmk8s.io",
  ///         ResourceGroupName = example.Name,
  ///     });
  ///
  ///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
  ///     {
  ///         Name = "aks-example-identity",
  ///         ResourceGroupName = example.Name,
  ///         Location = example.Location,
  ///     });
  ///
  ///     var exampleAssignment = new Azure.Authorization.Assignment("example", new()
  ///     {
  ///         Scope = exampleZone.Id,
  ///         RoleDefinitionName = "Private DNS Zone Contributor",
  ///         PrincipalId = exampleUserAssignedIdentity.PrincipalId,
  ///     });
  ///
  ///     var exampleKubernetesCluster = new Azure.ContainerService.KubernetesCluster("example", new()
  ///     {
  ///         Name = "aksexamplewithprivatednszone1",
  ///         Location = example.Location,
  ///         ResourceGroupName = example.Name,
  ///         DnsPrefix = "aksexamplednsprefix1",
  ///         PrivateClusterEnabled = true,
  ///         PrivateDnsZoneId = exampleZone.Id,
  ///     }, new CustomResourceOptions
  ///     {
  ///         DependsOn =
  ///         {
  ///             exampleAssignment,
  ///         },
  ///     });
  ///
  /// });
  /// ```
  /// ```go
  /// package main
  ///
  /// import (
  /// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
  /// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
  /// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
  /// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
  /// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// 	pulumi.Run(func(ctx *pulumi.Context) error {
  /// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
  /// 			Name:     pulumi.String("example"),
  /// 			Location: pulumi.String("West Europe"),
  /// 		})
  /// 		if err != nil {
  /// 			return err
  /// 		}
  /// 		exampleZone, err := privatedns.NewZone(ctx, "example", &privatedns.ZoneArgs{
  /// 			Name:              pulumi.String("privatelink.eastus2.azmk8s.io"),
  /// 			ResourceGroupName: example.Name,
  /// 		})
  /// 		if err != nil {
  /// 			return err
  /// 		}
  /// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
  /// 			Name:              pulumi.String("aks-example-identity"),
  /// 			ResourceGroupName: example.Name,
  /// 			Location:          example.Location,
  /// 		})
  /// 		if err != nil {
  /// 			return err
  /// 		}
  /// 		exampleAssignment, err := authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
  /// 			Scope:              exampleZone.ID(),
  /// 			RoleDefinitionName: pulumi.String("Private DNS Zone Contributor"),
  /// 			PrincipalId:        exampleUserAssignedIdentity.PrincipalId,
  /// 		})
  /// 		if err != nil {
  /// 			return err
  /// 		}
  /// 		_, err = containerservice.NewKubernetesCluster(ctx, "example", &containerservice.KubernetesClusterArgs{
  /// 			Name:                  pulumi.String("aksexamplewithprivatednszone1"),
  /// 			Location:              example.Location,
  /// 			ResourceGroupName:     example.Name,
  /// 			DnsPrefix:             pulumi.String("aksexamplednsprefix1"),
  /// 			PrivateClusterEnabled: pulumi.Bool(true),
  /// 			PrivateDnsZoneId:      exampleZone.ID(),
  /// 		}, pulumi.DependsOn([]pulumi.Resource{
  /// 			exampleAssignment,
  /// 		}))
  /// 		if err != nil {
  /// 			return err
  /// 		}
  /// 		return nil
  /// 	})
  /// }
  /// ```
  /// ```java
  /// package generated_program;
  ///
  /// import com.pulumi.Context;
  /// import com.pulumi.Pulumi;
  /// import com.pulumi.core.Output;
  /// import com.pulumi.azure.core.ResourceGroup;
  /// import com.pulumi.azure.core.ResourceGroupArgs;
  /// import com.pulumi.azure.privatedns.Zone;
  /// import com.pulumi.azure.privatedns.ZoneArgs;
  /// import com.pulumi.azure.authorization.UserAssignedIdentity;
  /// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
  /// import com.pulumi.azure.authorization.Assignment;
  /// import com.pulumi.azure.authorization.AssignmentArgs;
  /// import com.pulumi.azure.containerservice.KubernetesCluster;
  /// import com.pulumi.azure.containerservice.KubernetesClusterArgs;
  /// import com.pulumi.resources.CustomResourceOptions;
  /// import java.util.List;
  /// import java.util.ArrayList;
  /// import java.util.Map;
  /// import java.io.File;
  /// import java.nio.file.Files;
  /// import java.nio.file.Paths;
  ///
  /// public class App {
  ///     public static void main(String[] args) {
  ///         Pulumi.run(App::stack);
  ///     }
  ///
  ///     public static void stack(Context ctx) {
  ///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
  ///             .name("example")
  ///             .location("West Europe")
  ///             .build());
  ///
  ///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
  ///             .name("privatelink.eastus2.azmk8s.io")
  ///             .resourceGroupName(example.name())
  ///             .build());
  ///
  ///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
  ///             .name("aks-example-identity")
  ///             .resourceGroupName(example.name())
  ///             .location(example.location())
  ///             .build());
  ///
  ///         var exampleAssignment = new Assignment("exampleAssignment", AssignmentArgs.builder()
  ///             .scope(exampleZone.id())
  ///             .roleDefinitionName("Private DNS Zone Contributor")
  ///             .principalId(exampleUserAssignedIdentity.principalId())
  ///             .build());
  ///
  ///         var exampleKubernetesCluster = new KubernetesCluster("exampleKubernetesCluster", KubernetesClusterArgs.builder()
  ///             .name("aksexamplewithprivatednszone1")
  ///             .location(example.location())
  ///             .resourceGroupName(example.name())
  ///             .dnsPrefix("aksexamplednsprefix1")
  ///             .privateClusterEnabled(true)
  ///             .privateDnsZoneId(exampleZone.id())
  ///             .build(), CustomResourceOptions.builder()
  ///                 .dependsOn(exampleAssignment)
  ///                 .build());
  ///
  ///     }
  /// }
  /// ```
  /// ```yaml
  /// resources:
  ///   example:
  ///     type: azure:core:ResourceGroup
  ///     properties:
  ///       name: example
  ///       location: West Europe
  ///   exampleZone:
  ///     type: azure:privatedns:Zone
  ///     name: example
  ///     properties:
  ///       name: privatelink.eastus2.azmk8s.io
  ///       resourceGroupName: ${example.name}
  ///   exampleUserAssignedIdentity:
  ///     type: azure:authorization:UserAssignedIdentity
  ///     name: example
  ///     properties:
  ///       name: aks-example-identity
  ///       resourceGroupName: ${example.name}
  ///       location: ${example.location}
  ///   exampleAssignment:
  ///     type: azure:authorization:Assignment
  ///     name: example
  ///     properties:
  ///       scope: ${exampleZone.id}
  ///       roleDefinitionName: Private DNS Zone Contributor
  ///       principalId: ${exampleUserAssignedIdentity.principalId}
  ///   exampleKubernetesCluster:
  ///     type: azure:containerservice:KubernetesCluster
  ///     name: example
  ///     properties:
  ///       name: aksexamplewithprivatednszone1
  ///       location: ${example.location}
  ///       resourceGroupName: ${example.name}
  ///       dnsPrefix: aksexamplednsprefix1
  ///       privateClusterEnabled: true
  ///       privateDnsZoneId: ${exampleZone.id}
  ///     options:
  ///       dependsOn:
  ///         - ${exampleAssignment}
  /// ```
  late final pulumi.Output<bool?> privateClusterPublicFqdnEnabled;

  /// Either the ID of Private DNS Zone which should be delegated to this Cluster, `System` to have AKS manage this or `None`. In case of `None` you will need to bring your own DNS server and set up resolving, otherwise, the cluster will have issues after provisioning. Changing this forces a new resource to be created.
  late final pulumi.Output<String> privateDnsZoneId;

  /// The FQDN for the Kubernetes Cluster when private link has been enabled, which is only resolvable inside the Virtual Network used by the Kubernetes Cluster.
  late final pulumi.Output<String> privateFqdn;

  /// Specifies the Resource Group where the Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Whether Role Based Access Control for the Kubernetes Cluster should be enabled. Defaults to `true`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> roleBasedAccessControlEnabled;

  /// Whether to enable run command for the cluster or not. Defaults to `true`.
  late final pulumi.Output<bool?> runCommandEnabled;

  /// A `service_mesh_profile` block as defined below.
  late final pulumi.Output<KubernetesClusterServiceMeshProfile?>
  serviceMeshProfile;

  /// A `service_principal` block as documented below. One of either `identity` or `service_principal` must be specified.
  ///
  /// !&gt; **Note:** A migration scenario from `service_principal` to `identity` is supported. When upgrading `service_principal` to `identity`, your cluster's control plane and addon pods will switch to use managed identity, but the kubelets will keep using your configured `service_principal` until you upgrade your Node Pool.
  late final pulumi.Output<KubernetesClusterServicePrincipal?> servicePrincipal;

  /// The SKU Tier that should be used for this Kubernetes Cluster. Possible values are `Free`, `Standard` (which includes the Uptime SLA) and `Premium`. Defaults to `Free`.
  ///
  /// &gt; **Note:** Whilst the AKS API previously supported the `Paid` SKU - the AKS API introduced a breaking change in API Version `2023-02-01` (used in v3.51.0 and later) where the value `Paid` must now be set to `Standard`.
  late final pulumi.Output<String?> skuTier;

  /// A `storage_profile` block as defined below.
  late final pulumi.Output<KubernetesClusterStorageProfile?> storageProfile;

  /// Specifies the support plan which should be used for this Kubernetes Cluster. Possible values are `KubernetesOfficial` and `AKSLongTermSupport`. Defaults to `KubernetesOfficial`.
  late final pulumi.Output<String?> supportPlan;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A `upgrade_override` block as defined below.
  late final pulumi.Output<KubernetesClusterUpgradeOverride?> upgradeOverride;

  /// A `web_app_routing` block as defined below.
  late final pulumi.Output<KubernetesClusterWebAppRouting?> webAppRouting;

  /// A `windows_profile` block as defined below.
  late final pulumi.Output<KubernetesClusterWindowsProfile> windowsProfile;

  /// A `workload_autoscaler_profile` block defined below.
  late final pulumi.Output<KubernetesClusterWorkloadAutoscalerProfile?>
  workloadAutoscalerProfile;

  /// Specifies whether Azure AD Workload Identity should be enabled for the Cluster. Defaults to `false`.
  ///
  /// &gt; **Note:** To enable Azure AD Workload Identity `oidc_issuer_enabled` must be set to `true`.
  ///
  /// &gt; **Note:** Enabling this option will allocate Workload Identity resources to the `kube-system` namespace in Kubernetes. If you wish to customize the deployment of Workload Identity, you can refer to [the documentation on Azure AD Workload Identity.](https://azure.github.io/azure-workload-identity/docs/installation/mutating-admission-webhook.html) The documentation provides guidance on how to install the mutating admission webhook, which allows for the customization of Workload Identity deployment.
  late final pulumi.Output<bool?> workloadIdentityEnabled;

  /// Creates a new [KubernetesCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KubernetesCluster]. {@macro pulumi_containerservice_kubernetes_cluster_kubernetes_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KubernetesCluster(
    String name, {
    KubernetesClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:containerservice/kubernetesCluster:KubernetesCluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aciConnectorLinux = registerOutput<KubernetesClusterAciConnectorLinux?>(
      'aciConnectorLinux',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterAciConnectorLinux.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    aiToolchainOperatorEnabled = registerOutput<bool?>(
      'aiToolchainOperatorEnabled',
    );
    apiServerAccessProfile =
        registerOutput<KubernetesClusterApiServerAccessProfile?>(
          'apiServerAccessProfile',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KubernetesClusterApiServerAccessProfile.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    autoScalerProfile = registerOutput<KubernetesClusterAutoScalerProfile>(
      'autoScalerProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterAutoScalerProfile.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    automaticUpgradeChannel = registerOutput<String?>(
      'automaticUpgradeChannel',
    );
    azureActiveDirectoryRoleBasedAccessControl =
        registerOutput<
          KubernetesClusterAzureActiveDirectoryRoleBasedAccessControl?
        >(
          'azureActiveDirectoryRoleBasedAccessControl',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KubernetesClusterAzureActiveDirectoryRoleBasedAccessControl.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    azurePolicyEnabled = registerOutput<bool?>('azurePolicyEnabled');
    bootstrapProfile = registerOutput<KubernetesClusterBootstrapProfile>(
      'bootstrapProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterBootstrapProfile.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    confidentialComputing =
        registerOutput<KubernetesClusterConfidentialComputing?>(
          'confidentialComputing',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KubernetesClusterConfidentialComputing.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    costAnalysisEnabled = registerOutput<bool?>('costAnalysisEnabled');
    currentKubernetesVersion = registerOutput<String>(
      'currentKubernetesVersion',
    );
    customCaTrustCertificatesBase64s = registerOutput<List<String>?>(
      'customCaTrustCertificatesBase64s',
    );
    defaultNodePool = registerOutput<KubernetesClusterDefaultNodePool>(
      'defaultNodePool',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterDefaultNodePool.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    diskEncryptionSetId = registerOutput<String?>('diskEncryptionSetId');
    dnsPrefix = registerOutput<String?>('dnsPrefix');
    dnsPrefixPrivateCluster = registerOutput<String?>(
      'dnsPrefixPrivateCluster',
    );
    edgeZone = registerOutput<String?>('edgeZone');
    fqdn = registerOutput<String>('fqdn');
    httpApplicationRoutingEnabled = registerOutput<bool?>(
      'httpApplicationRoutingEnabled',
    );
    httpApplicationRoutingZoneName = registerOutput<String>(
      'httpApplicationRoutingZoneName',
    );
    httpProxyConfig = registerOutput<KubernetesClusterHttpProxyConfig?>(
      'httpProxyConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterHttpProxyConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    identity = registerOutput<KubernetesClusterIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    imageCleanerEnabled = registerOutput<bool?>('imageCleanerEnabled');
    imageCleanerIntervalHours = registerOutput<int?>(
      'imageCleanerIntervalHours',
    );
    ingressApplicationGateway =
        registerOutput<KubernetesClusterIngressApplicationGateway?>(
          'ingressApplicationGateway',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KubernetesClusterIngressApplicationGateway.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    keyManagementService =
        registerOutput<KubernetesClusterKeyManagementService?>(
          'keyManagementService',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KubernetesClusterKeyManagementService.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    keyVaultSecretsProvider =
        registerOutput<KubernetesClusterKeyVaultSecretsProvider?>(
          'keyVaultSecretsProvider',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KubernetesClusterKeyVaultSecretsProvider.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    kubeAdminConfigRaw = registerOutput<String>('kubeAdminConfigRaw');
    kubeAdminConfigs = registerOutput<List<Map<String, dynamic>>>(
      'kubeAdminConfigs',
    );
    kubeConfigRaw = registerOutput<String>('kubeConfigRaw');
    kubeConfigs = registerOutput<List<Map<String, dynamic>>>('kubeConfigs');
    kubeletIdentity = registerOutput<KubernetesClusterKubeletIdentity>(
      'kubeletIdentity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterKubeletIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    kubernetesVersion = registerOutput<String>('kubernetesVersion');
    linuxProfile = registerOutput<KubernetesClusterLinuxProfile?>(
      'linuxProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterLinuxProfile.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    localAccountDisabled = registerOutput<bool?>('localAccountDisabled');
    location = registerOutput<String>('location');
    maintenanceWindow = registerOutput<KubernetesClusterMaintenanceWindow?>(
      'maintenanceWindow',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterMaintenanceWindow.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    maintenanceWindowAutoUpgrade =
        registerOutput<KubernetesClusterMaintenanceWindowAutoUpgrade?>(
          'maintenanceWindowAutoUpgrade',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KubernetesClusterMaintenanceWindowAutoUpgrade.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    maintenanceWindowNodeOs =
        registerOutput<KubernetesClusterMaintenanceWindowNodeOs?>(
          'maintenanceWindowNodeOs',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KubernetesClusterMaintenanceWindowNodeOs.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    microsoftDefender = registerOutput<KubernetesClusterMicrosoftDefender?>(
      'microsoftDefender',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterMicrosoftDefender.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    monitorMetrics = registerOutput<KubernetesClusterMonitorMetrics?>(
      'monitorMetrics',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterMonitorMetrics.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<KubernetesClusterNetworkProfile>(
      'networkProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterNetworkProfile.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    nodeOsUpgradeChannel = registerOutput<String?>('nodeOsUpgradeChannel');
    nodeProvisioningProfile =
        registerOutput<KubernetesClusterNodeProvisioningProfile>(
          'nodeProvisioningProfile',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KubernetesClusterNodeProvisioningProfile.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    nodeResourceGroup = registerOutput<String>('nodeResourceGroup');
    nodeResourceGroupId = registerOutput<String>('nodeResourceGroupId');
    oidcIssuerEnabled = registerOutput<bool?>('oidcIssuerEnabled');
    oidcIssuerUrl = registerOutput<String>('oidcIssuerUrl');
    omsAgent = registerOutput<KubernetesClusterOmsAgent?>(
      'omsAgent',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterOmsAgent.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    openServiceMeshEnabled = registerOutput<bool?>('openServiceMeshEnabled');
    portalFqdn = registerOutput<String>('portalFqdn');
    privateClusterEnabled = registerOutput<bool?>('privateClusterEnabled');
    privateClusterPublicFqdnEnabled = registerOutput<bool?>(
      'privateClusterPublicFqdnEnabled',
    );
    privateDnsZoneId = registerOutput<String>('privateDnsZoneId');
    privateFqdn = registerOutput<String>('privateFqdn');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    roleBasedAccessControlEnabled = registerOutput<bool?>(
      'roleBasedAccessControlEnabled',
    );
    runCommandEnabled = registerOutput<bool?>('runCommandEnabled');
    serviceMeshProfile = registerOutput<KubernetesClusterServiceMeshProfile?>(
      'serviceMeshProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterServiceMeshProfile.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    servicePrincipal = registerOutput<KubernetesClusterServicePrincipal?>(
      'servicePrincipal',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterServicePrincipal.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    skuTier = registerOutput<String?>('skuTier');
    storageProfile = registerOutput<KubernetesClusterStorageProfile?>(
      'storageProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterStorageProfile.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    supportPlan = registerOutput<String?>('supportPlan');
    tags = registerOutput<Map<String, String>?>('tags');
    upgradeOverride = registerOutput<KubernetesClusterUpgradeOverride?>(
      'upgradeOverride',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterUpgradeOverride.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    webAppRouting = registerOutput<KubernetesClusterWebAppRouting?>(
      'webAppRouting',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterWebAppRouting.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    windowsProfile = registerOutput<KubernetesClusterWindowsProfile>(
      'windowsProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterWindowsProfile.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    workloadAutoscalerProfile =
        registerOutput<KubernetesClusterWorkloadAutoscalerProfile?>(
          'workloadAutoscalerProfile',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KubernetesClusterWorkloadAutoscalerProfile.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    workloadIdentityEnabled = registerOutput<bool?>('workloadIdentityEnabled');
  }

  /// Gets an existing [KubernetesCluster] resource's state with the given [name] and [id].
  static KubernetesCluster get(
    String name,
    pulumi.Input<String> id, {
    KubernetesClusterState? state,
  }) {
    return KubernetesCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KubernetesCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:containerservice/kubernetesCluster:KubernetesCluster',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aciConnectorLinux = registerOutput<KubernetesClusterAciConnectorLinux?>(
      'aciConnectorLinux',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterAciConnectorLinux.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    aiToolchainOperatorEnabled = registerOutput<bool?>(
      'aiToolchainOperatorEnabled',
    );
    apiServerAccessProfile =
        registerOutput<KubernetesClusterApiServerAccessProfile?>(
          'apiServerAccessProfile',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KubernetesClusterApiServerAccessProfile.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    autoScalerProfile = registerOutput<KubernetesClusterAutoScalerProfile>(
      'autoScalerProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterAutoScalerProfile.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    automaticUpgradeChannel = registerOutput<String?>(
      'automaticUpgradeChannel',
    );
    azureActiveDirectoryRoleBasedAccessControl =
        registerOutput<
          KubernetesClusterAzureActiveDirectoryRoleBasedAccessControl?
        >(
          'azureActiveDirectoryRoleBasedAccessControl',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KubernetesClusterAzureActiveDirectoryRoleBasedAccessControl.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    azurePolicyEnabled = registerOutput<bool?>('azurePolicyEnabled');
    bootstrapProfile = registerOutput<KubernetesClusterBootstrapProfile>(
      'bootstrapProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterBootstrapProfile.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    confidentialComputing =
        registerOutput<KubernetesClusterConfidentialComputing?>(
          'confidentialComputing',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KubernetesClusterConfidentialComputing.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    costAnalysisEnabled = registerOutput<bool?>('costAnalysisEnabled');
    currentKubernetesVersion = registerOutput<String>(
      'currentKubernetesVersion',
    );
    customCaTrustCertificatesBase64s = registerOutput<List<String>?>(
      'customCaTrustCertificatesBase64s',
    );
    defaultNodePool = registerOutput<KubernetesClusterDefaultNodePool>(
      'defaultNodePool',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterDefaultNodePool.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    diskEncryptionSetId = registerOutput<String?>('diskEncryptionSetId');
    dnsPrefix = registerOutput<String?>('dnsPrefix');
    dnsPrefixPrivateCluster = registerOutput<String?>(
      'dnsPrefixPrivateCluster',
    );
    edgeZone = registerOutput<String?>('edgeZone');
    fqdn = registerOutput<String>('fqdn');
    httpApplicationRoutingEnabled = registerOutput<bool?>(
      'httpApplicationRoutingEnabled',
    );
    httpApplicationRoutingZoneName = registerOutput<String>(
      'httpApplicationRoutingZoneName',
    );
    httpProxyConfig = registerOutput<KubernetesClusterHttpProxyConfig?>(
      'httpProxyConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterHttpProxyConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    identity = registerOutput<KubernetesClusterIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    imageCleanerEnabled = registerOutput<bool?>('imageCleanerEnabled');
    imageCleanerIntervalHours = registerOutput<int?>(
      'imageCleanerIntervalHours',
    );
    ingressApplicationGateway =
        registerOutput<KubernetesClusterIngressApplicationGateway?>(
          'ingressApplicationGateway',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KubernetesClusterIngressApplicationGateway.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    keyManagementService =
        registerOutput<KubernetesClusterKeyManagementService?>(
          'keyManagementService',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KubernetesClusterKeyManagementService.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    keyVaultSecretsProvider =
        registerOutput<KubernetesClusterKeyVaultSecretsProvider?>(
          'keyVaultSecretsProvider',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KubernetesClusterKeyVaultSecretsProvider.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    kubeAdminConfigRaw = registerOutput<String>('kubeAdminConfigRaw');
    kubeAdminConfigs = registerOutput<List<Map<String, dynamic>>>(
      'kubeAdminConfigs',
    );
    kubeConfigRaw = registerOutput<String>('kubeConfigRaw');
    kubeConfigs = registerOutput<List<Map<String, dynamic>>>('kubeConfigs');
    kubeletIdentity = registerOutput<KubernetesClusterKubeletIdentity>(
      'kubeletIdentity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterKubeletIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    kubernetesVersion = registerOutput<String>('kubernetesVersion');
    linuxProfile = registerOutput<KubernetesClusterLinuxProfile?>(
      'linuxProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterLinuxProfile.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    localAccountDisabled = registerOutput<bool?>('localAccountDisabled');
    location = registerOutput<String>('location');
    maintenanceWindow = registerOutput<KubernetesClusterMaintenanceWindow?>(
      'maintenanceWindow',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterMaintenanceWindow.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    maintenanceWindowAutoUpgrade =
        registerOutput<KubernetesClusterMaintenanceWindowAutoUpgrade?>(
          'maintenanceWindowAutoUpgrade',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KubernetesClusterMaintenanceWindowAutoUpgrade.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    maintenanceWindowNodeOs =
        registerOutput<KubernetesClusterMaintenanceWindowNodeOs?>(
          'maintenanceWindowNodeOs',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KubernetesClusterMaintenanceWindowNodeOs.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    microsoftDefender = registerOutput<KubernetesClusterMicrosoftDefender?>(
      'microsoftDefender',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterMicrosoftDefender.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    monitorMetrics = registerOutput<KubernetesClusterMonitorMetrics?>(
      'monitorMetrics',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterMonitorMetrics.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<KubernetesClusterNetworkProfile>(
      'networkProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterNetworkProfile.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    nodeOsUpgradeChannel = registerOutput<String?>('nodeOsUpgradeChannel');
    nodeProvisioningProfile =
        registerOutput<KubernetesClusterNodeProvisioningProfile>(
          'nodeProvisioningProfile',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KubernetesClusterNodeProvisioningProfile.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    nodeResourceGroup = registerOutput<String>('nodeResourceGroup');
    nodeResourceGroupId = registerOutput<String>('nodeResourceGroupId');
    oidcIssuerEnabled = registerOutput<bool?>('oidcIssuerEnabled');
    oidcIssuerUrl = registerOutput<String>('oidcIssuerUrl');
    omsAgent = registerOutput<KubernetesClusterOmsAgent?>(
      'omsAgent',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterOmsAgent.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    openServiceMeshEnabled = registerOutput<bool?>('openServiceMeshEnabled');
    portalFqdn = registerOutput<String>('portalFqdn');
    privateClusterEnabled = registerOutput<bool?>('privateClusterEnabled');
    privateClusterPublicFqdnEnabled = registerOutput<bool?>(
      'privateClusterPublicFqdnEnabled',
    );
    privateDnsZoneId = registerOutput<String>('privateDnsZoneId');
    privateFqdn = registerOutput<String>('privateFqdn');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    roleBasedAccessControlEnabled = registerOutput<bool?>(
      'roleBasedAccessControlEnabled',
    );
    runCommandEnabled = registerOutput<bool?>('runCommandEnabled');
    serviceMeshProfile = registerOutput<KubernetesClusterServiceMeshProfile?>(
      'serviceMeshProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterServiceMeshProfile.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    servicePrincipal = registerOutput<KubernetesClusterServicePrincipal?>(
      'servicePrincipal',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterServicePrincipal.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    skuTier = registerOutput<String?>('skuTier');
    storageProfile = registerOutput<KubernetesClusterStorageProfile?>(
      'storageProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterStorageProfile.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    supportPlan = registerOutput<String?>('supportPlan');
    tags = registerOutput<Map<String, String>?>('tags');
    upgradeOverride = registerOutput<KubernetesClusterUpgradeOverride?>(
      'upgradeOverride',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterUpgradeOverride.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    webAppRouting = registerOutput<KubernetesClusterWebAppRouting?>(
      'webAppRouting',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterWebAppRouting.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    windowsProfile = registerOutput<KubernetesClusterWindowsProfile>(
      'windowsProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KubernetesClusterWindowsProfile.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    workloadAutoscalerProfile =
        registerOutput<KubernetesClusterWorkloadAutoscalerProfile?>(
          'workloadAutoscalerProfile',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KubernetesClusterWorkloadAutoscalerProfile.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    workloadIdentityEnabled = registerOutput<bool?>('workloadIdentityEnabled');
  }
}
