import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_network_outbound_rule_fqdn_args.dart';
import 'workspace_network_outbound_rule_fqdn_state.dart';

/// Manages an Azure Machine Learning Workspace FQDN Network Outbound Rule.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleInsights = new azure.appinsights.Insights("example", {
///     name: "workspace-example-ai",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationType: "web",
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "workspaceexamplekeyvault",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "premium",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "workspacestorageaccount",
///     location: example.location,
///     resourceGroupName: example.name,
///     accountTier: "Standard",
///     accountReplicationType: "GRS",
/// });
/// const exampleWorkspace = new azure.machinelearning.Workspace("example", {
///     name: "example-workspace",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationInsightsId: exampleInsights.id,
///     keyVaultId: exampleKeyVault.id,
///     storageAccountId: exampleAccount.id,
///     managedNetwork: {
///         isolationMode: "AllowOnlyApprovedOutbound",
///     },
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleWorkspaceNetworkOutboundRuleFqdn = new azure.machinelearning.WorkspaceNetworkOutboundRuleFqdn("example", {
///     name: "example-outboundrule",
///     workspaceId: exampleWorkspace.id,
///     destinationFqdn: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_insights = azure.appinsights.Insights("example",
///     name="workspace-example-ai",
///     location=example.location,
///     resource_group_name=example.name,
///     application_type="web")
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="workspaceexamplekeyvault",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="premium")
/// example_account = azure.storage.Account("example",
///     name="workspacestorageaccount",
///     location=example.location,
///     resource_group_name=example.name,
///     account_tier="Standard",
///     account_replication_type="GRS")
/// example_workspace = azure.machinelearning.Workspace("example",
///     name="example-workspace",
///     location=example.location,
///     resource_group_name=example.name,
///     application_insights_id=example_insights.id,
///     key_vault_id=example_key_vault.id,
///     storage_account_id=example_account.id,
///     managed_network={
///         "isolation_mode": "AllowOnlyApprovedOutbound",
///     },
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_workspace_network_outbound_rule_fqdn = azure.machinelearning.WorkspaceNetworkOutboundRuleFqdn("example",
///     name="example-outboundrule",
///     workspace_id=example_workspace.id,
///     destination_fqdn="example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleInsights = new Azure.AppInsights.Insights("example", new()
///     {
///         Name = "workspace-example-ai",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationType = "web",
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "workspaceexamplekeyvault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "premium",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "workspacestorageaccount",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountTier = "Standard",
///         AccountReplicationType = "GRS",
///     });
///
///     var exampleWorkspace = new Azure.MachineLearning.Workspace("example", new()
///     {
///         Name = "example-workspace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationInsightsId = exampleInsights.Id,
///         KeyVaultId = exampleKeyVault.Id,
///         StorageAccountId = exampleAccount.Id,
///         ManagedNetwork = new Azure.MachineLearning.Inputs.WorkspaceManagedNetworkArgs
///         {
///             IsolationMode = "AllowOnlyApprovedOutbound",
///         },
///         Identity = new Azure.MachineLearning.Inputs.WorkspaceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleWorkspaceNetworkOutboundRuleFqdn = new Azure.MachineLearning.WorkspaceNetworkOutboundRuleFqdn("example", new()
///     {
///         Name = "example-outboundrule",
///         WorkspaceId = exampleWorkspace.Id,
///         DestinationFqdn = "example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/machinelearning"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInsights, err := appinsights.NewInsights(ctx, "example", &appinsights.InsightsArgs{
/// 			Name:              pulumi.String("workspace-example-ai"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ApplicationType:   pulumi.String("web"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:              pulumi.String("workspaceexamplekeyvault"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			TenantId:          pulumi.String(current.TenantId),
/// 			SkuName:           pulumi.String("premium"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("workspacestorageaccount"),
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("GRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := machinelearning.NewWorkspace(ctx, "example", &machinelearning.WorkspaceArgs{
/// 			Name:                  pulumi.String("example-workspace"),
/// 			Location:              example.Location,
/// 			ResourceGroupName:     example.Name,
/// 			ApplicationInsightsId: exampleInsights.ID(),
/// 			KeyVaultId:            exampleKeyVault.ID(),
/// 			StorageAccountId:      exampleAccount.ID(),
/// 			ManagedNetwork: &machinelearning.WorkspaceManagedNetworkArgs{
/// 				IsolationMode: pulumi.String("AllowOnlyApprovedOutbound"),
/// 			},
/// 			Identity: &machinelearning.WorkspaceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = machinelearning.NewWorkspaceNetworkOutboundRuleFqdn(ctx, "example", &machinelearning.WorkspaceNetworkOutboundRuleFqdnArgs{
/// 			Name:            pulumi.String("example-outboundrule"),
/// 			WorkspaceId:     exampleWorkspace.ID(),
/// 			DestinationFqdn: pulumi.String("example.com"),
/// 		})
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
/// data "azure_core_getclientconfig" "current" {
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_appinsights_insights" "example" {
///   name                = "workspace-example-ai"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   application_type    = "web"
/// }
/// resource "azure_keyvault_keyvault" "example" {
///   name                = "workspaceexamplekeyvault"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   tenant_id           = data.azure_core_getclientconfig.current.tenant_id
///   sku_name            = "premium"
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "workspacestorageaccount"
///   location                 = azure_core_resourcegroup.example.location
///   resource_group_name      = azure_core_resourcegroup.example.name
///   account_tier             = "Standard"
///   account_replication_type = "GRS"
/// }
/// resource "azure_machinelearning_workspace" "example" {
///   name                    = "example-workspace"
///   location                = azure_core_resourcegroup.example.location
///   resource_group_name     = azure_core_resourcegroup.example.name
///   application_insights_id = azure_appinsights_insights.example.id
///   key_vault_id            = azure_keyvault_keyvault.example.id
///   storage_account_id      = azure_storage_account.example.id
///   managed_network = {
///     isolation_mode = "AllowOnlyApprovedOutbound"
///   }
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_machinelearning_workspacenetworkoutboundrulefqdn" "example" {
///   name             = "example-outboundrule"
///   workspace_id     = azure_machinelearning_workspace.example.id
///   destination_fqdn = "example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appinsights.Insights;
/// import com.pulumi.azure.appinsights.InsightsArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.machinelearning.Workspace;
/// import com.pulumi.azure.machinelearning.WorkspaceArgs;
/// import com.pulumi.azure.machinelearning.inputs.WorkspaceManagedNetworkArgs;
/// import com.pulumi.azure.machinelearning.inputs.WorkspaceIdentityArgs;
/// import com.pulumi.azure.machinelearning.WorkspaceNetworkOutboundRuleFqdn;
/// import com.pulumi.azure.machinelearning.WorkspaceNetworkOutboundRuleFqdnArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleInsights = new Insights("exampleInsights", InsightsArgs.builder()
///             .name("workspace-example-ai")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationType("web")
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("workspaceexamplekeyvault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("premium")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("workspacestorageaccount")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountTier("Standard")
///             .accountReplicationType("GRS")
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example-workspace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationInsightsId(exampleInsights.id())
///             .keyVaultId(exampleKeyVault.id())
///             .storageAccountId(exampleAccount.id())
///             .managedNetwork(WorkspaceManagedNetworkArgs.builder()
///                 .isolationMode("AllowOnlyApprovedOutbound")
///                 .build())
///             .identity(WorkspaceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleWorkspaceNetworkOutboundRuleFqdn = new WorkspaceNetworkOutboundRuleFqdn("exampleWorkspaceNetworkOutboundRuleFqdn", WorkspaceNetworkOutboundRuleFqdnArgs.builder()
///             .name("example-outboundrule")
///             .workspaceId(exampleWorkspace.id())
///             .destinationFqdn("example.com")
///             .build());
///
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
///   exampleInsights:
///     type: azure:appinsights:Insights
///     name: example
///     properties:
///       name: workspace-example-ai
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationType: web
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: workspaceexamplekeyvault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: premium
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: workspacestorageaccount
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountTier: Standard
///       accountReplicationType: GRS
///   exampleWorkspace:
///     type: azure:machinelearning:Workspace
///     name: example
///     properties:
///       name: example-workspace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationInsightsId: ${exampleInsights.id}
///       keyVaultId: ${exampleKeyVault.id}
///       storageAccountId: ${exampleAccount.id}
///       managedNetwork:
///         isolationMode: AllowOnlyApprovedOutbound
///       identity:
///         type: SystemAssigned
///   exampleWorkspaceNetworkOutboundRuleFqdn:
///     type: azure:machinelearning:WorkspaceNetworkOutboundRuleFqdn
///     name: example
///     properties:
///       name: example-outboundrule
///       workspaceId: ${exampleWorkspace.id}
///       destinationFqdn: example.com
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.MachineLearningServices` - 2025-06-01
///
/// ## Import
///
/// Machine Learning Workspace FQDN Network Outbound Rule can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:machinelearning/workspaceNetworkOutboundRuleFqdn:WorkspaceNetworkOutboundRuleFqdn example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.MachineLearningServices/workspaces/workspace1/outboundRules/rule1
/// ```
class WorkspaceNetworkOutboundRuleFqdn extends pulumi.CustomResource {
  /// Specifies the fully qualified domain name to allow for outbound traffic.
  late final pulumi.Output<String> destinationFqdn;
  /// Specifies the name of the Machine Learning Workspace FQDN Network Outbound Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the ID of the Machine Learning Workspace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [WorkspaceNetworkOutboundRuleFqdn].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceNetworkOutboundRuleFqdn]. {@macro pulumi_machinelearning_workspace_network_outbound_rule_fqdn_workspace_network_outbound_rule_fqdn_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceNetworkOutboundRuleFqdn(
    String name, {
    WorkspaceNetworkOutboundRuleFqdnArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:machinelearning/workspaceNetworkOutboundRuleFqdn:WorkspaceNetworkOutboundRuleFqdn',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinationFqdn = registerOutput<String>('destinationFqdn');
    this.name = registerOutput<String>('name');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [WorkspaceNetworkOutboundRuleFqdn] resource's state with the given [name] and [id].
  static WorkspaceNetworkOutboundRuleFqdn get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceNetworkOutboundRuleFqdnState? state,
  }) {
    return WorkspaceNetworkOutboundRuleFqdn._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkspaceNetworkOutboundRuleFqdn._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:machinelearning/workspaceNetworkOutboundRuleFqdn:WorkspaceNetworkOutboundRuleFqdn',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinationFqdn = registerOutput<String>('destinationFqdn');
    this.name = registerOutput<String>('name');
    workspaceId = registerOutput<String>('workspaceId');
  }
}
