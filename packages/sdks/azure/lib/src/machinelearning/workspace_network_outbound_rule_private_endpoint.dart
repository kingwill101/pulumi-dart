import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_network_outbound_rule_private_endpoint_args.dart';
import 'workspace_network_outbound_rule_private_endpoint_state.dart';

/// Manages an Azure Machine Learning Workspace Network Outbound Rule Private Endpoint.
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
/// const example2 = new azure.storage.Account("example2", {
///     name: "example-sa",
///     location: test.location,
///     resourceGroupName: test.name,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleWorkspaceNetworkOutboundRulePrivateEndpoint = new azure.machinelearning.WorkspaceNetworkOutboundRulePrivateEndpoint("example", {
///     name: "example-outboundrule",
///     workspaceId: exampleWorkspace.id,
///     serviceResourceId: example2.id,
///     subResourceTarget: "blob",
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
/// example2 = azure.storage.Account("example2",
///     name="example-sa",
///     location=test["location"],
///     resource_group_name=test["name"],
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_workspace_network_outbound_rule_private_endpoint = azure.machinelearning.WorkspaceNetworkOutboundRulePrivateEndpoint("example",
///     name="example-outboundrule",
///     workspace_id=example_workspace.id,
///     service_resource_id=example2.id,
///     sub_resource_target="blob")
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
///     var example2 = new Azure.Storage.Account("example2", new()
///     {
///         Name = "example-sa",
///         Location = test.Location,
///         ResourceGroupName = test.Name,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleWorkspaceNetworkOutboundRulePrivateEndpoint = new Azure.MachineLearning.WorkspaceNetworkOutboundRulePrivateEndpoint("example", new()
///     {
///         Name = "example-outboundrule",
///         WorkspaceId = exampleWorkspace.Id,
///         ServiceResourceId = example2.Id,
///         SubResourceTarget = "blob",
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
/// 		example2, err := storage.NewAccount(ctx, "example2", &storage.AccountArgs{
/// 			Name:                   pulumi.String("example-sa"),
/// 			Location:               pulumi.Any(test.Location),
/// 			ResourceGroupName:      pulumi.Any(test.Name),
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = machinelearning.NewWorkspaceNetworkOutboundRulePrivateEndpoint(ctx, "example", &machinelearning.WorkspaceNetworkOutboundRulePrivateEndpointArgs{
/// 			Name:              pulumi.String("example-outboundrule"),
/// 			WorkspaceId:       exampleWorkspace.ID(),
/// 			ServiceResourceId: example2.ID(),
/// 			SubResourceTarget: pulumi.String("blob"),
/// 		})
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
/// import com.pulumi.azure.machinelearning.WorkspaceNetworkOutboundRulePrivateEndpoint;
/// import com.pulumi.azure.machinelearning.WorkspaceNetworkOutboundRulePrivateEndpointArgs;
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
///         var example2 = new Account("example2", AccountArgs.builder()
///             .name("example-sa")
///             .location(test.location())
///             .resourceGroupName(test.name())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleWorkspaceNetworkOutboundRulePrivateEndpoint = new WorkspaceNetworkOutboundRulePrivateEndpoint("exampleWorkspaceNetworkOutboundRulePrivateEndpoint", WorkspaceNetworkOutboundRulePrivateEndpointArgs.builder()
///             .name("example-outboundrule")
///             .workspaceId(exampleWorkspace.id())
///             .serviceResourceId(example2.id())
///             .subResourceTarget("blob")
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
///   example2:
///     type: azure:storage:Account
///     properties:
///       name: example-sa
///       location: ${test.location}
///       resourceGroupName: ${test.name}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleWorkspaceNetworkOutboundRulePrivateEndpoint:
///     type: azure:machinelearning:WorkspaceNetworkOutboundRulePrivateEndpoint
///     name: example
///     properties:
///       name: example-outboundrule
///       workspaceId: ${exampleWorkspace.id}
///       serviceResourceId: ${example2.id}
///       subResourceTarget: blob
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
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.MachineLearningServices` - 2025-06-01
///
/// ## Import
///
/// Machine Learning Workspace Network Outbound Rule Private Endpoint can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:machinelearning/workspaceNetworkOutboundRulePrivateEndpoint:WorkspaceNetworkOutboundRulePrivateEndpoint example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.MachineLearningServices/workspaces/workspace1/outboundRules/rule1
/// ```
class WorkspaceNetworkOutboundRulePrivateEndpoint extends pulumi.CustomResource {
  /// Specifies the name of the Machine Learning Workspace Network Outbound Rule Private Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the Service Resource ID to connect. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Supported service resources: **Key Vault**, **Storage Account**, **Machine Learning Workspace**, **Redis**.
  late final pulumi.Output<String> serviceResourceId;
  /// Whether to enable an additional private endpoint to be used by jobs running on Spark. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> sparkEnabled;
  /// Specifies the Sub Resource of the service resource to connect to. Possible values are `vault`,`amlworkspace`,`blob`,`table`,`queue`,`file`,`web`,`dfs`, `redisCache`. Changing this forces a new resource to be created.
  ///
  /// | Service                    | Sub Resource Type                         |
  /// |----------------------------|-------------------------------------------|
  /// | Machine Learning Workspace | `amlworkspace`                            |
  /// | Redis                      | `redisCache`                              |
  /// | Storage Account            | `blob`,`table`,`queue`,`file`,`web`,`dfs` |
  /// | Key Vault                  | `vault`                                   |
  late final pulumi.Output<String> subResourceTarget;
  /// Specifies the ID of the Machine Learning Workspace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [WorkspaceNetworkOutboundRulePrivateEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceNetworkOutboundRulePrivateEndpoint]. {@macro pulumi_machinelearning_workspace_network_outbound_rule_private_endpoint_workspace_network_outbound_rule_private_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceNetworkOutboundRulePrivateEndpoint(
    String name, {
    WorkspaceNetworkOutboundRulePrivateEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:machinelearning/workspaceNetworkOutboundRulePrivateEndpoint:WorkspaceNetworkOutboundRulePrivateEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.serviceResourceId = registerOutput<String>('serviceResourceId');
    this.sparkEnabled = registerOutput<bool?>('sparkEnabled');
    this.subResourceTarget = registerOutput<String>('subResourceTarget');
    this.workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [WorkspaceNetworkOutboundRulePrivateEndpoint] resource's state with the given [name] and [id].
  static WorkspaceNetworkOutboundRulePrivateEndpoint get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceNetworkOutboundRulePrivateEndpointState? state,
  }) {
    return WorkspaceNetworkOutboundRulePrivateEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkspaceNetworkOutboundRulePrivateEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:machinelearning/workspaceNetworkOutboundRulePrivateEndpoint:WorkspaceNetworkOutboundRulePrivateEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.serviceResourceId = registerOutput<String>('serviceResourceId');
    this.sparkEnabled = registerOutput<bool?>('sparkEnabled');
    this.subResourceTarget = registerOutput<String>('subResourceTarget');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
