import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_self_hosted_args.dart';
import 'integration_runtime_self_hosted_state.dart';

/// Manages a Synapse Self-hosted Integration Runtime.
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
/// const exampleIntegrationRuntimeSelfHosted = new azure.synapse.IntegrationRuntimeSelfHosted("example", {
///     name: "example",
///     synapseWorkspaceId: exampleWorkspace.id,
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
/// example_integration_runtime_self_hosted = azure.synapse.IntegrationRuntimeSelfHosted("example",
///     name="example",
///     synapse_workspace_id=example_workspace.id)
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
///     var exampleIntegrationRuntimeSelfHosted = new Azure.Synapse.IntegrationRuntimeSelfHosted("example", new()
///     {
///         Name = "example",
///         SynapseWorkspaceId = exampleWorkspace.Id,
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
/// 			StorageAccountId: exampleAccount.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := synapse.NewWorkspace(ctx, "example", &synapse.WorkspaceArgs{
/// 			Name:                            pulumi.String("example"),
/// 			Location:                        example.Location,
/// 			ResourceGroupName:               example.Name,
/// 			StorageDataLakeGen2FilesystemId: exampleDataLakeGen2Filesystem.ID(),
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
/// 			SynapseWorkspaceId: exampleWorkspace.ID(),
/// 			StartIpAddress:     pulumi.String("0.0.0.0"),
/// 			EndIpAddress:       pulumi.String("255.255.255.255"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synapse.NewIntegrationRuntimeSelfHosted(ctx, "example", &synapse.IntegrationRuntimeSelfHostedArgs{
/// 			Name:               pulumi.String("example"),
/// 			SynapseWorkspaceId: exampleWorkspace.ID(),
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
/// import com.pulumi.azure.synapse.IntegrationRuntimeSelfHosted;
/// import com.pulumi.azure.synapse.IntegrationRuntimeSelfHostedArgs;
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
///         var exampleIntegrationRuntimeSelfHosted = new IntegrationRuntimeSelfHosted("exampleIntegrationRuntimeSelfHosted", IntegrationRuntimeSelfHostedArgs.builder()
///             .name("example")
///             .synapseWorkspaceId(exampleWorkspace.id())
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
///   exampleIntegrationRuntimeSelfHosted:
///     type: azure:synapse:IntegrationRuntimeSelfHosted
///     name: example
///     properties:
///       name: example
///       synapseWorkspaceId: ${exampleWorkspace.id}
/// ```
///
///
/// ## Import
///
/// Synapse Self-hosted Integration Runtimes can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:synapse/integrationRuntimeSelfHosted:IntegrationRuntimeSelfHosted example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Synapse/workspaces/workspace1/integrationRuntimes/IntegrationRuntime1
/// ```
class IntegrationRuntimeSelfHosted extends pulumi.CustomResource {
  /// The primary integration runtime authentication key.
  late final pulumi.Output<String> authorizationKeyPrimary;
  /// The secondary integration runtime authentication key.
  late final pulumi.Output<String> authorizationKeySecondary;
  /// Integration runtime description.
  late final pulumi.Output<String?> description;
  /// The name which should be used for this Synapse Self-hosted Integration Runtime. Changing this forces a new Synapse Self-hosted Integration Runtime to be created.
  late final pulumi.Output<String> name;
  /// The Synapse Workspace ID in which to associate the Integration Runtime with. Changing this forces a new Synapse Self-hosted Integration Runtime to be created.
  late final pulumi.Output<String> synapseWorkspaceId;

  /// Creates a new [IntegrationRuntimeSelfHosted].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationRuntimeSelfHosted]. {@macro pulumi_synapse_integration_runtime_self_hosted_integration_runtime_self_hosted_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationRuntimeSelfHosted(
    String name, {
    IntegrationRuntimeSelfHostedArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:synapse/integrationRuntimeSelfHosted:IntegrationRuntimeSelfHosted',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authorizationKeyPrimary = registerOutput<String>('authorizationKeyPrimary');
    this.authorizationKeySecondary = registerOutput<String>('authorizationKeySecondary');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.synapseWorkspaceId = registerOutput<String>('synapseWorkspaceId');
  }

  /// Gets an existing [IntegrationRuntimeSelfHosted] resource's state with the given [name] and [id].
  static IntegrationRuntimeSelfHosted get(
    String name,
    pulumi.Input<String> id, {
    IntegrationRuntimeSelfHostedState? state,
  }) {
    return IntegrationRuntimeSelfHosted._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IntegrationRuntimeSelfHosted._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:synapse/integrationRuntimeSelfHosted:IntegrationRuntimeSelfHosted',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authorizationKeyPrimary = registerOutput<String>('authorizationKeyPrimary');
    this.authorizationKeySecondary = registerOutput<String>('authorizationKeySecondary');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.synapseWorkspaceId = registerOutput<String>('synapseWorkspaceId');
  }
}
