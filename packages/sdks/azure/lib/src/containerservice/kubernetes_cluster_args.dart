// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_aci_connector_linux.dart';
import 'kubernetes_cluster_api_server_access_profile.dart';
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
import 'kubernetes_cluster_storage_profile.dart';
import 'kubernetes_cluster_upgrade_override.dart';
import 'kubernetes_cluster_web_app_routing.dart';
import 'kubernetes_cluster_windows_profile.dart';
import 'kubernetes_cluster_workload_autoscaler_profile.dart';

/// {@template pulumi_containerservice_kubernetes_cluster_kubernetes_cluster_args_doc}
/// The set of arguments for KubernetesCluster.
/// {@endtemplate}
/// {@macro pulumi_containerservice_kubernetes_cluster_kubernetes_cluster_args_doc}
class KubernetesClusterArgs {
  /// A `aciConnectorLinux` block as defined below. For more details, please visit [Create and configure an AKS cluster to use virtual nodes](https://docs.microsoft.com/azure/aks/virtual-nodes-portal).
  final pulumi.Input<KubernetesClusterAciConnectorLinux>? aciConnectorLinux;
  /// Specifies whether the AI Toolchain Operator should be enabled for the Cluster. Defaults to `false`.
  final pulumi.Input<bool>? aiToolchainOperatorEnabled;
  /// An `apiServerAccessProfile` block as defined below.
  final pulumi.Input<KubernetesClusterApiServerAccessProfile>? apiServerAccessProfile;
  /// A `autoScalerProfile` block as defined below.
  final pulumi.Input<KubernetesClusterAutoScalerProfile>? autoScalerProfile;
  /// The upgrade channel for this Kubernetes Cluster. Possible values are `patch`, `rapid`, `node-image` and `stable`. Omitting this field sets this value to `none`.
  ///
  /// &gt; **Note:** Cluster Auto-Upgrade will update the Kubernetes Cluster (and its Node Pools) to the latest GA version of Kubernetes automatically - please [see the Azure documentation for more information](https://docs.microsoft.com/azure/aks/upgrade-cluster#set-auto-upgrade-channel).
  ///
  /// &gt; **Note:** Cluster Auto-Upgrade only updates to GA versions of Kubernetes and will not update to Preview versions.
  final pulumi.Input<String>? automaticUpgradeChannel;
  /// A `azureActiveDirectoryRoleBasedAccessControl` block as defined below.
  final pulumi.Input<KubernetesClusterAzureActiveDirectoryRoleBasedAccessControl>? azureActiveDirectoryRoleBasedAccessControl;
  /// Should the Azure Policy Add-On be enabled? For more details please visit [Understand Azure Policy for Azure Kubernetes Service](https://docs.microsoft.com/en-ie/azure/governance/policy/concepts/rego-for-aks)
  final pulumi.Input<bool>? azurePolicyEnabled;
  /// A `bootstrapProfile` block as defined below.
  final pulumi.Input<KubernetesClusterBootstrapProfile>? bootstrapProfile;
  /// A `confidentialComputing` block as defined below. For more details please [the documentation](https://learn.microsoft.com/en-us/azure/confidential-computing/confidential-nodes-aks-overview)
  final pulumi.Input<KubernetesClusterConfidentialComputing>? confidentialComputing;
  /// Should cost analysis be enabled for this Kubernetes Cluster? Defaults to `false`. The `skuTier` must be set to `Standard` or `Premium` to enable this feature. Enabling this will add Kubernetes Namespace and Deployment details to the Cost Analysis views in the Azure portal.
  final pulumi.Input<bool>? costAnalysisEnabled;
  /// A list of up to 10 base64 encoded CA certificates that will be added to the trust store on nodes.
  final pulumi.Input<List<String>>? customCaTrustCertificatesBase64s;
  /// Specifies configuration for "System" mode node pool. A `defaultNodePool` block as defined below.
  final pulumi.Input<KubernetesClusterDefaultNodePool> defaultNodePool;
  /// The ID of the Disk Encryption Set which should be used for the Nodes and Volumes. More information [can be found in the documentation](https://docs.microsoft.com/azure/aks/azure-disk-customer-managed-keys). Changing this forces a new resource to be created.
  final pulumi.Input<String>? diskEncryptionSetId;
  /// DNS prefix specified when creating the managed cluster. Possible values must begin and end with a letter or number, contain only letters, numbers, and hyphens and be between 1 and 54 characters in length. Changing this forces a new resource to be created.
  final pulumi.Input<String>? dnsPrefix;
  /// Specifies the DNS prefix to use with private clusters. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** You must define either a `dnsPrefix` or a `dnsPrefixPrivateCluster` field.
  ///
  /// In addition, one of either `identity` or `servicePrincipal` blocks must be specified.
  final pulumi.Input<String>? dnsPrefixPrivateCluster;
  /// Specifies the Extended Zone (formerly called Edge Zone) within the Azure Region where this Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? edgeZone;
  /// Should HTTP Application Routing be enabled?
  ///
  /// &gt; **Note:** At this time HTTP Application Routing is not supported in Azure China or Azure US Government.
  final pulumi.Input<bool>? httpApplicationRoutingEnabled;
  /// A `httpProxyConfig` block as defined below.
  final pulumi.Input<KubernetesClusterHttpProxyConfig>? httpProxyConfig;
  /// An `identity` block as defined below. One of either `identity` or `servicePrincipal` must be specified.
  ///
  /// &gt; **Note:** A migration scenario from `servicePrincipal` to `identity` is supported. When upgrading `servicePrincipal` to `identity`, your cluster's control plane and addon pods will switch to use managed identity, but the kubelets will keep using your configured `servicePrincipal` until you upgrade your Node Pool.
  final pulumi.Input<KubernetesClusterIdentity>? identity;
  /// Specifies whether Image Cleaner is enabled.
  final pulumi.Input<bool>? imageCleanerEnabled;
  /// Specifies the interval in hours when images should be cleaned up.
  final pulumi.Input<int>? imageCleanerIntervalHours;
  /// A `ingressApplicationGateway` block as defined below.
  ///
  /// &gt; **Note:** Since the Application Gateway is deployed inside a Virtual Network, users (and Service Principals) that are operating the Application Gateway must have the `Microsoft.Network/virtualNetworks/subnets/join/action` permission on the Virtual Network or Subnet. For more details, please visit [Virtual Network Permission](https://learn.microsoft.com/en-us/azure/application-gateway/configuration-infrastructure#virtual-network-permission).
  final pulumi.Input<KubernetesClusterIngressApplicationGateway>? ingressApplicationGateway;
  /// A `keyManagementService` block as defined below. For more details, please visit [Key Management Service (KMS) etcd encryption to an AKS cluster](https://learn.microsoft.com/en-us/azure/aks/use-kms-etcd-encryption).
  final pulumi.Input<KubernetesClusterKeyManagementService>? keyManagementService;
  /// A `keyVaultSecretsProvider` block as defined below. For more details, please visit [Azure Keyvault Secrets Provider for AKS](https://docs.microsoft.com/azure/aks/csi-secrets-store-driver).
  final pulumi.Input<KubernetesClusterKeyVaultSecretsProvider>? keyVaultSecretsProvider;
  /// A `kubeletIdentity` block as defined below.
  final pulumi.Input<KubernetesClusterKubeletIdentity>? kubeletIdentity;
  /// Version of Kubernetes specified when creating the AKS managed cluster. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as `1.22` are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in [the documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version).
  ///
  /// &gt; **Note:** Upgrading your cluster may take up to 10 minutes per node.
  final pulumi.Input<String>? kubernetesVersion;
  /// A `linuxProfile` block as defined below.
  final pulumi.Input<KubernetesClusterLinuxProfile>? linuxProfile;
  /// If `true` local accounts will be disabled. See [the documentation](https://docs.microsoft.com/azure/aks/managed-aad#disable-local-accounts) for more information.
  ///
  /// &gt; **Note:** If `localAccountDisabled` is set to `true`, it is required to enable Kubernetes RBAC and AKS-managed Azure AD integration. See [the documentation](https://docs.microsoft.com/azure/aks/managed-aad#azure-ad-authentication-overview) for more information.
  final pulumi.Input<bool>? localAccountDisabled;
  /// The location where the Managed Kubernetes Cluster should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `maintenanceWindow` block as defined below.
  final pulumi.Input<KubernetesClusterMaintenanceWindow>? maintenanceWindow;
  /// A `maintenanceWindowAutoUpgrade` block as defined below.
  final pulumi.Input<KubernetesClusterMaintenanceWindowAutoUpgrade>? maintenanceWindowAutoUpgrade;
  /// A `maintenanceWindowNodeOs` block as defined below.
  final pulumi.Input<KubernetesClusterMaintenanceWindowNodeOs>? maintenanceWindowNodeOs;
  /// A `microsoftDefender` block as defined below.
  final pulumi.Input<KubernetesClusterMicrosoftDefender>? microsoftDefender;
  /// Specifies a Prometheus add-on profile for the Kubernetes Cluster. A `monitorMetrics` block as defined below.
  ///
  /// &gt; **Note:** If deploying Managed Prometheus, the `monitorMetrics` properties are required to configure the cluster for metrics collection. If no value is needed, set properties to `null`.
  final pulumi.Input<KubernetesClusterMonitorMetrics>? monitorMetrics;
  /// The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `networkProfile` block as defined below. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If `networkProfile` is not defined, `kubenet` profile will be used by default.
  final pulumi.Input<KubernetesClusterNetworkProfile>? networkProfile;
  /// The upgrade channel for this Kubernetes Cluster Nodes' OS Image. Possible values are `Unmanaged`, `SecurityPatch`, `NodeImage` and `None`. Defaults to `NodeImage`.
  ///
  /// &gt; **Note:** `nodeOsUpgradeChannel` must be set to `NodeImage` if `automaticUpgradeChannel` has been set to `node-image`
  final pulumi.Input<String>? nodeOsUpgradeChannel;
  /// A `nodeProvisioningProfile` block as defined below.
  final pulumi.Input<KubernetesClusterNodeProvisioningProfile>? nodeProvisioningProfile;
  /// The name of the Resource Group where the Kubernetes Nodes should exist. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Azure requires that a new, non-existent Resource Group is used, as otherwise, the provisioning of the Kubernetes Service will fail.
  final pulumi.Input<String>? nodeResourceGroup;
  /// Whether to enable the [OIDC issuer feature](https://learn.microsoft.com/en-gb/azure/aks/use-oidc-issuer).
  ///
  /// &gt; **Note:** Once enabled, this feature cannot be disabled, doing so forces a new resource to be created.
  final pulumi.Input<bool>? oidcIssuerEnabled;
  /// A `omsAgent` block as defined below.
  final pulumi.Input<KubernetesClusterOmsAgent>? omsAgent;
  /// Is Open Service Mesh enabled? For more details, please visit [Open Service Mesh for AKS](https://docs.microsoft.com/azure/aks/open-service-mesh-about).
  final pulumi.Input<bool>? openServiceMeshEnabled;
  /// Should this Kubernetes Cluster have its API server only exposed on internal IP addresses? This provides a Private IP Address for the Kubernetes API on the Virtual Network where the Kubernetes Cluster is located. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? privateClusterEnabled;
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
  /// ```hcl
  /// pulumi {
  ///   required_providers {
  ///     azure = {
  ///       source = "pulumi/azure"
  ///     }
  ///   }
  /// }
  ///
  /// resource "azure_core_resourcegroup" "example" {
  ///   name     = "example"
  ///   location = "West Europe"
  /// }
  /// resource "azure_privatedns_zone" "example" {
  ///   name                = "privatelink.eastus2.azmk8s.io"
  ///   resource_group_name = azure_core_resourcegroup.example.name
  /// }
  /// resource "azure_authorization_userassignedidentity" "example" {
  ///   name                = "aks-example-identity"
  ///   resource_group_name = azure_core_resourcegroup.example.name
  ///   location            = azure_core_resourcegroup.example.location
  /// }
  /// resource "azure_authorization_assignment" "example" {
  ///   scope                = azure_privatedns_zone.example.id
  ///   role_definition_name = "Private DNS Zone Contributor"
  ///   principal_id         = azure_authorization_userassignedidentity.example.principal_id
  /// }
  /// resource "azure_containerservice_kubernetescluster" "example" {
  ///   depends_on              = [azure_authorization_assignment.example]
  ///   name                    = "aksexamplewithprivatednszone1"
  ///   location                = azure_core_resourcegroup.example.location
  ///   resource_group_name     = azure_core_resourcegroup.example.name
  ///   dns_prefix              = "aksexamplednsprefix1"
  ///   private_cluster_enabled = true
  ///   private_dns_zone_id     = azure_privatedns_zone.example.id
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
  /// import java.util.ArrayList;
  /// import java.util.Arrays;
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
  final pulumi.Input<bool>? privateClusterPublicFqdnEnabled;
  /// Either the ID of Private DNS Zone which should be delegated to this Cluster, `System` to have AKS manage this or `None`. In case of `None` you will need to bring your own DNS server and set up resolving, otherwise, the cluster will have issues after provisioning. Changing this forces a new resource to be created.
  final pulumi.Input<String>? privateDnsZoneId;
  /// Specifies the Resource Group where the Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Whether Role Based Access Control for the Kubernetes Cluster should be enabled. Defaults to `true`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? roleBasedAccessControlEnabled;
  /// Whether to enable run command for the cluster or not. Defaults to `true`.
  final pulumi.Input<bool>? runCommandEnabled;
  /// A `serviceMeshProfile` block as defined below.
  final pulumi.Input<KubernetesClusterServiceMeshProfile>? serviceMeshProfile;
  /// A `servicePrincipal` block as documented below. One of either `identity` or `servicePrincipal` must be specified.
  ///
  /// &gt; **Note:** A migration scenario from `servicePrincipal` to `identity` is supported. When upgrading `servicePrincipal` to `identity`, your cluster's control plane and addon pods will switch to use managed identity, but the kubelets will keep using your configured `servicePrincipal` until you upgrade your Node Pool.
  final pulumi.Input<KubernetesClusterServicePrincipal>? servicePrincipal;
  /// The SKU Tier that should be used for this Kubernetes Cluster. Possible values are `Free`, `Standard` (which includes the Uptime SLA) and `Premium`. Defaults to `Free`.
  ///
  /// &gt; **Note:** Whilst the AKS API previously supported the `Paid` SKU - the AKS API introduced a breaking change in API Version `2023-02-01` (used in v3.51.0 and later) where the value `Paid` must now be set to `Standard`.
  final pulumi.Input<String>? skuTier;
  /// A `storageProfile` block as defined below.
  final pulumi.Input<KubernetesClusterStorageProfile>? storageProfile;
  /// Specifies the support plan which should be used for this Kubernetes Cluster. Possible values are `KubernetesOfficial` and `AKSLongTermSupport`. Defaults to `KubernetesOfficial`.
  final pulumi.Input<String>? supportPlan;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `upgradeOverride` block as defined below.
  final pulumi.Input<KubernetesClusterUpgradeOverride>? upgradeOverride;
  /// A `webAppRouting` block as defined below.
  final pulumi.Input<KubernetesClusterWebAppRouting>? webAppRouting;
  /// A `windowsProfile` block as defined below.
  final pulumi.Input<KubernetesClusterWindowsProfile>? windowsProfile;
  /// A `workloadAutoscalerProfile` block defined below.
  final pulumi.Input<KubernetesClusterWorkloadAutoscalerProfile>? workloadAutoscalerProfile;
  /// Specifies whether Azure AD Workload Identity should be enabled for the Cluster. Defaults to `false`.
  ///
  /// &gt; **Note:** To enable Azure AD Workload Identity `oidcIssuerEnabled` must be set to `true`.
  ///
  /// &gt; **Note:** Enabling this option will allocate Workload Identity resources to the `kube-system` namespace in Kubernetes. If you wish to customize the deployment of Workload Identity, you can refer to [the documentation on Azure AD Workload Identity.](https://azure.github.io/azure-workload-identity/docs/installation/mutating-admission-webhook.html) The documentation provides guidance on how to install the mutating admission webhook, which allows for the customization of Workload Identity deployment.
  final pulumi.Input<bool>? workloadIdentityEnabled;

  /// Creates a new [KubernetesClusterArgs].
  /// [aciConnectorLinux] A `aciConnectorLinux` block as defined below. For more details, please visit [Create and configure an AKS cluster to use virtual nodes](https://docs.microsoft.com/azure/aks/virtual-nodes-portal).
  /// [aiToolchainOperatorEnabled] Specifies whether the AI Toolchain Operator should be enabled for the Cluster. Defaults to `false`.
  /// [apiServerAccessProfile] An `apiServerAccessProfile` block as defined below.
  /// [autoScalerProfile] A `autoScalerProfile` block as defined below.
  /// [automaticUpgradeChannel] The upgrade channel for this Kubernetes Cluster. Possible values are `patch`, `rapid`, `node-image` and `stable`. Omitting this field sets this value to `none`.
  /// [azureActiveDirectoryRoleBasedAccessControl] A `azureActiveDirectoryRoleBasedAccessControl` block as defined below.
  /// [azurePolicyEnabled] Should the Azure Policy Add-On be enabled? For more details please visit [Understand Azure Policy for Azure Kubernetes Service](https://docs.microsoft.com/en-ie/azure/governance/policy/concepts/rego-for-aks)
  /// [bootstrapProfile] A `bootstrapProfile` block as defined below.
  /// [confidentialComputing] A `confidentialComputing` block as defined below. For more details please [the documentation](https://learn.microsoft.com/en-us/azure/confidential-computing/confidential-nodes-aks-overview)
  /// [costAnalysisEnabled] Should cost analysis be enabled for this Kubernetes Cluster? Defaults to `false`. The `skuTier` must be set to `Standard` or `Premium` to enable this feature. Enabling this will add Kubernetes Namespace and Deployment details to the Cost Analysis views in the Azure portal.
  /// [customCaTrustCertificatesBase64s] A list of up to 10 base64 encoded CA certificates that will be added to the trust store on nodes.
  /// [defaultNodePool] Specifies configuration for "System" mode node pool. A `defaultNodePool` block as defined below.
  /// [diskEncryptionSetId] The ID of the Disk Encryption Set which should be used for the Nodes and Volumes. More information [can be found in the documentation](https://docs.microsoft.com/azure/aks/azure-disk-customer-managed-keys). Changing this forces a new resource to be created.
  /// [dnsPrefix] DNS prefix specified when creating the managed cluster. Possible values must begin and end with a letter or number, contain only letters, numbers, and hyphens and be between 1 and 54 characters in length. Changing this forces a new resource to be created.
  /// [dnsPrefixPrivateCluster] Specifies the DNS prefix to use with private clusters. Changing this forces a new resource to be created.
  /// [edgeZone] Specifies the Extended Zone (formerly called Edge Zone) within the Azure Region where this Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  /// [httpApplicationRoutingEnabled] Should HTTP Application Routing be enabled?
  /// [httpProxyConfig] A `httpProxyConfig` block as defined below.
  /// [identity] An `identity` block as defined below. One of either `identity` or `servicePrincipal` must be specified.
  /// [imageCleanerEnabled] Specifies whether Image Cleaner is enabled.
  /// [imageCleanerIntervalHours] Specifies the interval in hours when images should be cleaned up.
  /// [ingressApplicationGateway] A `ingressApplicationGateway` block as defined below.
  /// [keyManagementService] A `keyManagementService` block as defined below. For more details, please visit [Key Management Service (KMS) etcd encryption to an AKS cluster](https://learn.microsoft.com/en-us/azure/aks/use-kms-etcd-encryption).
  /// [keyVaultSecretsProvider] A `keyVaultSecretsProvider` block as defined below. For more details, please visit [Azure Keyvault Secrets Provider for AKS](https://docs.microsoft.com/azure/aks/csi-secrets-store-driver).
  /// [kubeletIdentity] A `kubeletIdentity` block as defined below.
  /// [kubernetesVersion] Version of Kubernetes specified when creating the AKS managed cluster. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as `1.22` are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in [the documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version).
  /// [linuxProfile] A `linuxProfile` block as defined below.
  /// [localAccountDisabled] If `true` local accounts will be disabled. See [the documentation](https://docs.microsoft.com/azure/aks/managed-aad#disable-local-accounts) for more information.
  /// [location] The location where the Managed Kubernetes Cluster should be created. Changing this forces a new resource to be created.
  /// [maintenanceWindow] A `maintenanceWindow` block as defined below.
  /// [maintenanceWindowAutoUpgrade] A `maintenanceWindowAutoUpgrade` block as defined below.
  /// [maintenanceWindowNodeOs] A `maintenanceWindowNodeOs` block as defined below.
  /// [microsoftDefender] A `microsoftDefender` block as defined below.
  /// [monitorMetrics] Specifies a Prometheus add-on profile for the Kubernetes Cluster. A `monitorMetrics` block as defined below.
  /// [name] The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created.
  /// [networkProfile] A `networkProfile` block as defined below. Changing this forces a new resource to be created.
  /// [nodeOsUpgradeChannel] The upgrade channel for this Kubernetes Cluster Nodes' OS Image. Possible values are `Unmanaged`, `SecurityPatch`, `NodeImage` and `None`. Defaults to `NodeImage`.
  /// [nodeProvisioningProfile] A `nodeProvisioningProfile` block as defined below.
  /// [nodeResourceGroup] The name of the Resource Group where the Kubernetes Nodes should exist. Changing this forces a new resource to be created.
  /// [oidcIssuerEnabled] Whether to enable the [OIDC issuer feature](https://learn.microsoft.com/en-gb/azure/aks/use-oidc-issuer).
  /// [omsAgent] A `omsAgent` block as defined below.
  /// [openServiceMeshEnabled] Is Open Service Mesh enabled? For more details, please visit [Open Service Mesh for AKS](https://docs.microsoft.com/azure/aks/open-service-mesh-about).
  /// [privateClusterEnabled] Should this Kubernetes Cluster have its API server only exposed on internal IP addresses? This provides a Private IP Address for the Kubernetes API on the Virtual Network where the Kubernetes Cluster is located. Defaults to `false`. Changing this forces a new resource to be created.
  /// [privateClusterPublicFqdnEnabled] Specifies whether a Public FQDN for this Private Cluster should be added. Defaults to `false`.
  /// [privateDnsZoneId] Either the ID of Private DNS Zone which should be delegated to this Cluster, `System` to have AKS manage this or `None`. In case of `None` you will need to bring your own DNS server and set up resolving, otherwise, the cluster will have issues after provisioning. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the Resource Group where the Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  /// [roleBasedAccessControlEnabled] Whether Role Based Access Control for the Kubernetes Cluster should be enabled. Defaults to `true`. Changing this forces a new resource to be created.
  /// [runCommandEnabled] Whether to enable run command for the cluster or not. Defaults to `true`.
  /// [serviceMeshProfile] A `serviceMeshProfile` block as defined below.
  /// [servicePrincipal] A `servicePrincipal` block as documented below. One of either `identity` or `servicePrincipal` must be specified.
  /// [skuTier] The SKU Tier that should be used for this Kubernetes Cluster. Possible values are `Free`, `Standard` (which includes the Uptime SLA) and `Premium`. Defaults to `Free`.
  /// [storageProfile] A `storageProfile` block as defined below.
  /// [supportPlan] Specifies the support plan which should be used for this Kubernetes Cluster. Possible values are `KubernetesOfficial` and `AKSLongTermSupport`. Defaults to `KubernetesOfficial`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [upgradeOverride] A `upgradeOverride` block as defined below.
  /// [webAppRouting] A `webAppRouting` block as defined below.
  /// [windowsProfile] A `windowsProfile` block as defined below.
  /// [workloadAutoscalerProfile] A `workloadAutoscalerProfile` block defined below.
  /// [workloadIdentityEnabled] Specifies whether Azure AD Workload Identity should be enabled for the Cluster. Defaults to `false`.
  const KubernetesClusterArgs({
    this.aciConnectorLinux,
    this.aiToolchainOperatorEnabled,
    this.apiServerAccessProfile,
    this.autoScalerProfile,
    this.automaticUpgradeChannel,
    this.azureActiveDirectoryRoleBasedAccessControl,
    this.azurePolicyEnabled,
    this.bootstrapProfile,
    this.confidentialComputing,
    this.costAnalysisEnabled,
    this.customCaTrustCertificatesBase64s,
    required this.defaultNodePool,
    this.diskEncryptionSetId,
    this.dnsPrefix,
    this.dnsPrefixPrivateCluster,
    this.edgeZone,
    this.httpApplicationRoutingEnabled,
    this.httpProxyConfig,
    this.identity,
    this.imageCleanerEnabled,
    this.imageCleanerIntervalHours,
    this.ingressApplicationGateway,
    this.keyManagementService,
    this.keyVaultSecretsProvider,
    this.kubeletIdentity,
    this.kubernetesVersion,
    this.linuxProfile,
    this.localAccountDisabled,
    this.location,
    this.maintenanceWindow,
    this.maintenanceWindowAutoUpgrade,
    this.maintenanceWindowNodeOs,
    this.microsoftDefender,
    this.monitorMetrics,
    this.name,
    this.networkProfile,
    this.nodeOsUpgradeChannel,
    this.nodeProvisioningProfile,
    this.nodeResourceGroup,
    this.oidcIssuerEnabled,
    this.omsAgent,
    this.openServiceMeshEnabled,
    this.privateClusterEnabled,
    this.privateClusterPublicFqdnEnabled,
    this.privateDnsZoneId,
    required this.resourceGroupName,
    this.roleBasedAccessControlEnabled,
    this.runCommandEnabled,
    this.serviceMeshProfile,
    this.servicePrincipal,
    this.skuTier,
    this.storageProfile,
    this.supportPlan,
    this.tags,
    this.upgradeOverride,
    this.webAppRouting,
    this.windowsProfile,
    this.workloadAutoscalerProfile,
    this.workloadIdentityEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aciConnectorLinux': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterAciConnectorLinux, Map<String, dynamic>>(aciConnectorLinux, (value) => value.toMap()),
      'aiToolchainOperatorEnabled': ?aiToolchainOperatorEnabled,
      'apiServerAccessProfile': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterApiServerAccessProfile, Map<String, dynamic>>(apiServerAccessProfile, (value) => value.toMap()),
      'autoScalerProfile': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterAutoScalerProfile, Map<String, dynamic>>(autoScalerProfile, (value) => value.toMap()),
      'automaticUpgradeChannel': ?automaticUpgradeChannel,
      'azureActiveDirectoryRoleBasedAccessControl': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterAzureActiveDirectoryRoleBasedAccessControl, Map<String, dynamic>>(azureActiveDirectoryRoleBasedAccessControl, (value) => value.toMap()),
      'azurePolicyEnabled': ?azurePolicyEnabled,
      'bootstrapProfile': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterBootstrapProfile, Map<String, dynamic>>(bootstrapProfile, (value) => value.toMap()),
      'confidentialComputing': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterConfidentialComputing, Map<String, dynamic>>(confidentialComputing, (value) => value.toMap()),
      'costAnalysisEnabled': ?costAnalysisEnabled,
      'customCaTrustCertificatesBase64s': ?customCaTrustCertificatesBase64s,
      'defaultNodePool': pulumi.Input.mapInputValue<KubernetesClusterDefaultNodePool, Map<String, dynamic>>(defaultNodePool, (value) => value.toMap()),
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'dnsPrefix': ?dnsPrefix,
      'dnsPrefixPrivateCluster': ?dnsPrefixPrivateCluster,
      'edgeZone': ?edgeZone,
      'httpApplicationRoutingEnabled': ?httpApplicationRoutingEnabled,
      'httpProxyConfig': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterHttpProxyConfig, Map<String, dynamic>>(httpProxyConfig, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'imageCleanerEnabled': ?imageCleanerEnabled,
      'imageCleanerIntervalHours': ?imageCleanerIntervalHours,
      'ingressApplicationGateway': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterIngressApplicationGateway, Map<String, dynamic>>(ingressApplicationGateway, (value) => value.toMap()),
      'keyManagementService': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterKeyManagementService, Map<String, dynamic>>(keyManagementService, (value) => value.toMap()),
      'keyVaultSecretsProvider': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterKeyVaultSecretsProvider, Map<String, dynamic>>(keyVaultSecretsProvider, (value) => value.toMap()),
      'kubeletIdentity': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterKubeletIdentity, Map<String, dynamic>>(kubeletIdentity, (value) => value.toMap()),
      'kubernetesVersion': ?kubernetesVersion,
      'linuxProfile': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterLinuxProfile, Map<String, dynamic>>(linuxProfile, (value) => value.toMap()),
      'localAccountDisabled': ?localAccountDisabled,
      'location': ?location,
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'maintenanceWindowAutoUpgrade': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterMaintenanceWindowAutoUpgrade, Map<String, dynamic>>(maintenanceWindowAutoUpgrade, (value) => value.toMap()),
      'maintenanceWindowNodeOs': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterMaintenanceWindowNodeOs, Map<String, dynamic>>(maintenanceWindowNodeOs, (value) => value.toMap()),
      'microsoftDefender': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterMicrosoftDefender, Map<String, dynamic>>(microsoftDefender, (value) => value.toMap()),
      'monitorMetrics': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterMonitorMetrics, Map<String, dynamic>>(monitorMetrics, (value) => value.toMap()),
      'name': ?name,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterNetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'nodeOsUpgradeChannel': ?nodeOsUpgradeChannel,
      'nodeProvisioningProfile': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterNodeProvisioningProfile, Map<String, dynamic>>(nodeProvisioningProfile, (value) => value.toMap()),
      'nodeResourceGroup': ?nodeResourceGroup,
      'oidcIssuerEnabled': ?oidcIssuerEnabled,
      'omsAgent': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterOmsAgent, Map<String, dynamic>>(omsAgent, (value) => value.toMap()),
      'openServiceMeshEnabled': ?openServiceMeshEnabled,
      'privateClusterEnabled': ?privateClusterEnabled,
      'privateClusterPublicFqdnEnabled': ?privateClusterPublicFqdnEnabled,
      'privateDnsZoneId': ?privateDnsZoneId,
      'resourceGroupName': resourceGroupName,
      'roleBasedAccessControlEnabled': ?roleBasedAccessControlEnabled,
      'runCommandEnabled': ?runCommandEnabled,
      'serviceMeshProfile': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterServiceMeshProfile, Map<String, dynamic>>(serviceMeshProfile, (value) => value.toMap()),
      'servicePrincipal': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterServicePrincipal, Map<String, dynamic>>(servicePrincipal, (value) => value.toMap()),
      'skuTier': ?skuTier,
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterStorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'supportPlan': ?supportPlan,
      'tags': ?tags,
      'upgradeOverride': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterUpgradeOverride, Map<String, dynamic>>(upgradeOverride, (value) => value.toMap()),
      'webAppRouting': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterWebAppRouting, Map<String, dynamic>>(webAppRouting, (value) => value.toMap()),
      'windowsProfile': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterWindowsProfile, Map<String, dynamic>>(windowsProfile, (value) => value.toMap()),
      'workloadAutoscalerProfile': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterWorkloadAutoscalerProfile, Map<String, dynamic>>(workloadAutoscalerProfile, (value) => value.toMap()),
      'workloadIdentityEnabled': ?workloadIdentityEnabled,
    };
  }

  factory KubernetesClusterArgs.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterArgs(
      aciConnectorLinux: (() { final guardedValue = map['aciConnectorLinux']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterAciConnectorLinux.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      aiToolchainOperatorEnabled: (() { final guardedValue = map['aiToolchainOperatorEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      apiServerAccessProfile: (() { final guardedValue = map['apiServerAccessProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterApiServerAccessProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoScalerProfile: (() { final guardedValue = map['autoScalerProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterAutoScalerProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      automaticUpgradeChannel: (() { final guardedValue = map['automaticUpgradeChannel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureActiveDirectoryRoleBasedAccessControl: (() { final guardedValue = map['azureActiveDirectoryRoleBasedAccessControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterAzureActiveDirectoryRoleBasedAccessControl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azurePolicyEnabled: (() { final guardedValue = map['azurePolicyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bootstrapProfile: (() { final guardedValue = map['bootstrapProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterBootstrapProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      confidentialComputing: (() { final guardedValue = map['confidentialComputing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterConfidentialComputing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      costAnalysisEnabled: (() { final guardedValue = map['costAnalysisEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      customCaTrustCertificatesBase64s: (() { final guardedValue = map['customCaTrustCertificatesBase64s']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultNodePool: pulumi.Input.fromValue(KubernetesClusterDefaultNodePool.fromMap((map['defaultNodePool']! as Map).cast<String, dynamic>())),
      diskEncryptionSetId: (() { final guardedValue = map['diskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsPrefix: (() { final guardedValue = map['dnsPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsPrefixPrivateCluster: (() { final guardedValue = map['dnsPrefixPrivateCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edgeZone: (() { final guardedValue = map['edgeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpApplicationRoutingEnabled: (() { final guardedValue = map['httpApplicationRoutingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpProxyConfig: (() { final guardedValue = map['httpProxyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterHttpProxyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageCleanerEnabled: (() { final guardedValue = map['imageCleanerEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      imageCleanerIntervalHours: (() { final guardedValue = map['imageCleanerIntervalHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ingressApplicationGateway: (() { final guardedValue = map['ingressApplicationGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterIngressApplicationGateway.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyManagementService: (() { final guardedValue = map['keyManagementService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterKeyManagementService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVaultSecretsProvider: (() { final guardedValue = map['keyVaultSecretsProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterKeyVaultSecretsProvider.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubeletIdentity: (() { final guardedValue = map['kubeletIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterKubeletIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubernetesVersion: (() { final guardedValue = map['kubernetesVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linuxProfile: (() { final guardedValue = map['linuxProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterLinuxProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localAccountDisabled: (() { final guardedValue = map['localAccountDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceWindowAutoUpgrade: (() { final guardedValue = map['maintenanceWindowAutoUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterMaintenanceWindowAutoUpgrade.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceWindowNodeOs: (() { final guardedValue = map['maintenanceWindowNodeOs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterMaintenanceWindowNodeOs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      microsoftDefender: (() { final guardedValue = map['microsoftDefender']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterMicrosoftDefender.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitorMetrics: (() { final guardedValue = map['monitorMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterMonitorMetrics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeOsUpgradeChannel: (() { final guardedValue = map['nodeOsUpgradeChannel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeProvisioningProfile: (() { final guardedValue = map['nodeProvisioningProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterNodeProvisioningProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeResourceGroup: (() { final guardedValue = map['nodeResourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oidcIssuerEnabled: (() { final guardedValue = map['oidcIssuerEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      omsAgent: (() { final guardedValue = map['omsAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterOmsAgent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      openServiceMeshEnabled: (() { final guardedValue = map['openServiceMeshEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateClusterEnabled: (() { final guardedValue = map['privateClusterEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateClusterPublicFqdnEnabled: (() { final guardedValue = map['privateClusterPublicFqdnEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateDnsZoneId: (() { final guardedValue = map['privateDnsZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      roleBasedAccessControlEnabled: (() { final guardedValue = map['roleBasedAccessControlEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runCommandEnabled: (() { final guardedValue = map['runCommandEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceMeshProfile: (() { final guardedValue = map['serviceMeshProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterServiceMeshProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      servicePrincipal: (() { final guardedValue = map['servicePrincipal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterServicePrincipal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      skuTier: (() { final guardedValue = map['skuTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterStorageProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      supportPlan: (() { final guardedValue = map['supportPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      upgradeOverride: (() { final guardedValue = map['upgradeOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterUpgradeOverride.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webAppRouting: (() { final guardedValue = map['webAppRouting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterWebAppRouting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      windowsProfile: (() { final guardedValue = map['windowsProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterWindowsProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadAutoscalerProfile: (() { final guardedValue = map['workloadAutoscalerProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterWorkloadAutoscalerProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadIdentityEnabled: (() { final guardedValue = map['workloadIdentityEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
