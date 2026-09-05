import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_azure_args.dart';
import 'integration_runtime_azure_state.dart';

/// Manages a Synapse Azure Integration Runtime.
///
/// ## Example Usage
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
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "content",
///     storageAccountName: exampleAccount.name,
///     containerAccessType: "private",
/// });
/// const exampleDataLakeGen2Filesystem = new azure.storage.DataLakeGen2Filesystem("example", {
///     name: "example",
///     storageAccountId: exampleAccount.id,
/// });
/// const exampleWorkspace = new azure.synapse.Workspace("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     storageDataLakeGen2FilesystemId: exampleDataLakeGen2Filesystem.id,
///     sqlAdministratorLogin: "sqladminuser",
///     sqlAdministratorLoginPassword: "H@Sh1CoR3!",
///     managedVirtualNetworkEnabled: true,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleFirewallRule = new azure.synapse.FirewallRule("example", {
///     name: "AllowAll",
///     synapseWorkspaceId: exampleWorkspace.id,
///     startIpAddress: "0.0.0.0",
///     endIpAddress: "255.255.255.255",
/// });
/// const exampleIntegrationRuntimeAzure = new azure.synapse.IntegrationRuntimeAzure("example", {
///     name: "example",
///     synapseWorkspaceId: exampleWorkspace.id,
///     location: example.location,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_container = azure.storage.Container("example",
///     name="content",
///     storage_account_name=example_account.name,
///     container_access_type="private")
/// example_data_lake_gen2_filesystem = azure.storage.DataLakeGen2Filesystem("example",
///     name="example",
///     storage_account_id=example_account.id)
/// example_workspace = azure.synapse.Workspace("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     storage_data_lake_gen2_filesystem_id=example_data_lake_gen2_filesystem.id,
///     sql_administrator_login="sqladminuser",
///     sql_administrator_login_password="H@Sh1CoR3!",
///     managed_virtual_network_enabled=True,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_firewall_rule = azure.synapse.FirewallRule("example",
///     name="AllowAll",
///     synapse_workspace_id=example_workspace.id,
///     start_ip_address="0.0.0.0",
///     end_ip_address="255.255.255.255")
/// example_integration_runtime_azure = azure.synapse.IntegrationRuntimeAzure("example",
///     name="example",
///     synapse_workspace_id=example_workspace.id,
///     location=example.location)
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "content",
///         StorageAccountName = exampleAccount.Name,
///         ContainerAccessType = "private",
///     });
///
///     var exampleDataLakeGen2Filesystem = new Azure.Storage.DataLakeGen2Filesystem("example", new()
///     {
///         Name = "example",
///         StorageAccountId = exampleAccount.Id,
///     });
///
///     var exampleWorkspace = new Azure.Synapse.Workspace("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         StorageDataLakeGen2FilesystemId = exampleDataLakeGen2Filesystem.Id,
///         SqlAdministratorLogin = "sqladminuser",
///         SqlAdministratorLoginPassword = "H@Sh1CoR3!",
///         ManagedVirtualNetworkEnabled = true,
///         Identity = new Azure.Synapse.Inputs.WorkspaceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleFirewallRule = new Azure.Synapse.FirewallRule("example", new()
///     {
///         Name = "AllowAll",
///         SynapseWorkspaceId = exampleWorkspace.Id,
///         StartIpAddress = "0.0.0.0",
///         EndIpAddress = "255.255.255.255",
///     });
///
///     var exampleIntegrationRuntimeAzure = new Azure.Synapse.IntegrationRuntimeAzure("example", new()
///     {
///         Name = "example",
///         SynapseWorkspaceId = exampleWorkspace.Id,
///         Location = example.Location,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/synapse"
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
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("example"),
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("content"),
/// 			StorageAccountName:  exampleAccount.Name,
/// 			ContainerAccessType: pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDataLakeGen2Filesystem, err := storage.NewDataLakeGen2Filesystem(ctx, "example", &storage.DataLakeGen2FilesystemArgs{
/// 			Name:             pulumi.String("example"),
/// 			StorageAccountId: exampleAccount.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := synapse.NewWorkspace(ctx, "example", &synapse.WorkspaceArgs{
/// 			Name:                            pulumi.String("example"),
/// 			Location:                        example.Location,
/// 			ResourceGroupName:               example.Name,
/// 			StorageDataLakeGen2FilesystemId: exampleDataLakeGen2Filesystem.ID().ToIDOutput().ToStringOutput(),
/// 			SqlAdministratorLogin:           pulumi.String("sqladminuser"),
/// 			SqlAdministratorLoginPassword:   pulumi.String("H@Sh1CoR3!"),
/// 			ManagedVirtualNetworkEnabled:    pulumi.Bool(true),
/// 			Identity: &synapse.WorkspaceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synapse.NewFirewallRule(ctx, "example", &synapse.FirewallRuleArgs{
/// 			Name:               pulumi.String("AllowAll"),
/// 			SynapseWorkspaceId: exampleWorkspace.ID().ToIDOutput().ToStringOutput(),
/// 			StartIpAddress:     pulumi.String("0.0.0.0"),
/// 			EndIpAddress:       pulumi.String("255.255.255.255"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synapse.NewIntegrationRuntimeAzure(ctx, "example", &synapse.IntegrationRuntimeAzureArgs{
/// 			Name:               pulumi.String("example"),
/// 			SynapseWorkspaceId: exampleWorkspace.ID().ToIDOutput().ToStringOutput(),
/// 			Location:           example.Location,
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example"
///   location = "West Europe"
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "example"
///   location                 = azure_core_resourcegroup.example.location
///   resource_group_name      = azure_core_resourcegroup.example.name
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_storage_container" "example" {
///   name                  = "content"
///   storage_account_name  = azure_storage_account.example.name
///   container_access_type = "private"
/// }
/// resource "azure_storage_datalakegen2filesystem" "example" {
///   name               = "example"
///   storage_account_id = azure_storage_account.example.id
/// }
/// resource "azure_synapse_workspace" "example" {
///   name                                 = "example"
///   location                             = azure_core_resourcegroup.example.location
///   resource_group_name                  = azure_core_resourcegroup.example.name
///   storage_data_lake_gen2_filesystem_id = azure_storage_datalakegen2filesystem.example.id
///   sql_administrator_login              = "sqladminuser"
///   sql_administrator_login_password     = "H@Sh1CoR3!"
///   managed_virtual_network_enabled      = true
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_synapse_firewallrule" "example" {
///   name                 = "AllowAll"
///   synapse_workspace_id = azure_synapse_workspace.example.id
///   start_ip_address     = "0.0.0.0"
///   end_ip_address       = "255.255.255.255"
/// }
/// resource "azure_synapse_integrationruntimeazure" "example" {
///   name                 = "example"
///   synapse_workspace_id = azure_synapse_workspace.example.id
///   location             = azure_core_resourcegroup.example.location
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.storage.DataLakeGen2Filesystem;
/// import com.pulumi.azure.storage.DataLakeGen2FilesystemArgs;
/// import com.pulumi.azure.synapse.Workspace;
/// import com.pulumi.azure.synapse.WorkspaceArgs;
/// import com.pulumi.azure.synapse.inputs.WorkspaceIdentityArgs;
/// import com.pulumi.azure.synapse.FirewallRule;
/// import com.pulumi.azure.synapse.FirewallRuleArgs;
/// import com.pulumi.azure.synapse.IntegrationRuntimeAzure;
/// import com.pulumi.azure.synapse.IntegrationRuntimeAzureArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("content")
///             .storageAccountName(exampleAccount.name())
///             .containerAccessType("private")
///             .build());
///
///         var exampleDataLakeGen2Filesystem = new DataLakeGen2Filesystem("exampleDataLakeGen2Filesystem", DataLakeGen2FilesystemArgs.builder()
///             .name("example")
///             .storageAccountId(exampleAccount.id())
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .storageDataLakeGen2FilesystemId(exampleDataLakeGen2Filesystem.id())
///             .sqlAdministratorLogin("sqladminuser")
///             .sqlAdministratorLoginPassword("H@Sh1CoR3!")
///             .managedVirtualNetworkEnabled(true)
///             .identity(WorkspaceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleFirewallRule = new FirewallRule("exampleFirewallRule", FirewallRuleArgs.builder()
///             .name("AllowAll")
///             .synapseWorkspaceId(exampleWorkspace.id())
///             .startIpAddress("0.0.0.0")
///             .endIpAddress("255.255.255.255")
///             .build());
///
///         var exampleIntegrationRuntimeAzure = new IntegrationRuntimeAzure("exampleIntegrationRuntimeAzure", IntegrationRuntimeAzureArgs.builder()
///             .name("example")
///             .synapseWorkspaceId(exampleWorkspace.id())
///             .location(example.location())
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
///       name: example
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: content
///       storageAccountName: ${exampleAccount.name}
///       containerAccessType: private
///   exampleDataLakeGen2Filesystem:
///     type: azure:storage:DataLakeGen2Filesystem
///     name: example
///     properties:
///       name: example
///       storageAccountId: ${exampleAccount.id}
///   exampleWorkspace:
///     type: azure:synapse:Workspace
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       storageDataLakeGen2FilesystemId: ${exampleDataLakeGen2Filesystem.id}
///       sqlAdministratorLogin: sqladminuser
///       sqlAdministratorLoginPassword: H@Sh1CoR3!
///       managedVirtualNetworkEnabled: true
///       identity:
///         type: SystemAssigned
///   exampleFirewallRule:
///     type: azure:synapse:FirewallRule
///     name: example
///     properties:
///       name: AllowAll
///       synapseWorkspaceId: ${exampleWorkspace.id}
///       startIpAddress: 0.0.0.0
///       endIpAddress: 255.255.255.255
///   exampleIntegrationRuntimeAzure:
///     type: azure:synapse:IntegrationRuntimeAzure
///     name: example
///     properties:
///       name: example
///       synapseWorkspaceId: ${exampleWorkspace.id}
///       location: ${example.location}
/// ```
///
///
/// ## Import
///
/// Synapse Azure Integration Runtimes can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:synapse/integrationRuntimeAzure:IntegrationRuntimeAzure example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Synapse/workspaces/workspace1/integrationRuntimes/IntegrationRuntime1
/// ```
class IntegrationRuntimeAzure extends pulumi.CustomResource {
  /// Compute type of the cluster which will execute data flow job. Valid values are `General`, `ComputeOptimized` and `MemoryOptimized`. Defaults to `General`.
  late final pulumi.Output<String?> computeType;
  /// Core count of the cluster which will execute data flow job. Valid values are `8`, `16`, `32`, `48`, `80`, `144` and `272`. Defaults to `8`.
  late final pulumi.Output<int?> coreCount;
  /// Integration runtime description.
  late final pulumi.Output<String?> description;
  /// The Azure Region where the Synapse Azure Integration Runtime should exist. Use `AutoResolve` to create an auto-resolve integration runtime. Changing this forces a new Synapse Azure Integration Runtime to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Synapse Azure Integration Runtime. Changing this forces a new Synapse Azure Integration Runtime to be created.
  late final pulumi.Output<String> name;
  /// The Synapse Workspace ID in which to associate the Integration Runtime with. Changing this forces a new Synapse Azure Integration Runtime to be created.
  late final pulumi.Output<String> synapseWorkspaceId;
  /// Time to live (in minutes) setting of the cluster which will execute data flow job. Defaults to `0`.
  late final pulumi.Output<int?> timeToLiveMin;

  /// Creates a new [IntegrationRuntimeAzure].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationRuntimeAzure]. {@macro pulumi_synapse_integration_runtime_azure_integration_runtime_azure_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationRuntimeAzure(
    String name, {
    IntegrationRuntimeAzureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:synapse/integrationRuntimeAzure:IntegrationRuntimeAzure',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    computeType = registerOutput<String?>('computeType');
    coreCount = registerOutput<int?>('coreCount');
    description = registerOutput<String?>('description');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    synapseWorkspaceId = registerOutput<String>('synapseWorkspaceId');
    timeToLiveMin = registerOutput<int?>('timeToLiveMin');
  }

  /// Gets an existing [IntegrationRuntimeAzure] resource's state with the given [name] and [id].
  static IntegrationRuntimeAzure get(
    String name,
    pulumi.Input<String> id, {
    IntegrationRuntimeAzureState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return IntegrationRuntimeAzure._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  IntegrationRuntimeAzure._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:synapse/integrationRuntimeAzure:IntegrationRuntimeAzure',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    computeType = registerOutput<String?>('computeType');
    coreCount = registerOutput<int?>('coreCount');
    description = registerOutput<String?>('description');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    synapseWorkspaceId = registerOutput<String>('synapseWorkspaceId');
    timeToLiveMin = registerOutput<int?>('timeToLiveMin');
  }

  /// Creates a typed reference to an existing [IntegrationRuntimeAzure] resource.
  IntegrationRuntimeAzure.reference(String urn)
    : super(
        'azure:synapse/integrationRuntimeAzure:IntegrationRuntimeAzure',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    computeType = registerOutput<String?>('computeType');
    coreCount = registerOutput<int?>('coreCount');
    description = registerOutput<String?>('description');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    synapseWorkspaceId = registerOutput<String>('synapseWorkspaceId');
    timeToLiveMin = registerOutput<int?>('timeToLiveMin');
  }
}
