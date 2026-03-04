import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_private_endpoint_args.dart';
import 'managed_private_endpoint_state.dart';

/// Manages a Synapse Managed Private Endpoint.
///
/// ## Example Usage
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
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestorageacc",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     accountKind: "StorageV2",
///     isHnsEnabled: true,
/// });
/// const exampleDataLakeGen2Filesystem = new azure.storage.DataLakeGen2Filesystem("example", {
///     name: "example",
///     storageAccountId: exampleAccount.id,
/// });
/// const exampleWorkspace = new azure.synapse.Workspace("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
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
/// const exampleConnect = new azure.storage.Account("example_connect", {
///     name: "examplestorage2",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     accountKind: "BlobStorage",
/// });
/// const exampleManagedPrivateEndpoint = new azure.synapse.ManagedPrivateEndpoint("example", {
///     name: "example-endpoint",
///     synapseWorkspaceId: exampleWorkspace.id,
///     targetResourceId: exampleConnect.id,
///     subresourceName: "blob",
/// }, {
///     dependsOn: [exampleFirewallRule],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="examplestorageacc",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     account_kind="StorageV2",
///     is_hns_enabled=True)
/// example_data_lake_gen2_filesystem = azure.storage.DataLakeGen2Filesystem("example",
///     name="example",
///     storage_account_id=example_account.id)
/// example_workspace = azure.synapse.Workspace("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
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
/// example_connect = azure.storage.Account("example_connect",
///     name="examplestorage2",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     account_kind="BlobStorage")
/// example_managed_private_endpoint = azure.synapse.ManagedPrivateEndpoint("example",
///     name="example-endpoint",
///     synapse_workspace_id=example_workspace.id,
///     target_resource_id=example_connect.id,
///     subresource_name="blob",
///     opts = pulumi.ResourceOptions(depends_on=[example_firewall_rule]))
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestorageacc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         AccountKind = "StorageV2",
///         IsHnsEnabled = true,
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
///         ResourceGroupName = example.Name,
///         Location = example.Location,
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
///     var exampleConnect = new Azure.Storage.Account("example_connect", new()
///     {
///         Name = "examplestorage2",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         AccountKind = "BlobStorage",
///     });
///
///     var exampleManagedPrivateEndpoint = new Azure.Synapse.ManagedPrivateEndpoint("example", new()
///     {
///         Name = "example-endpoint",
///         SynapseWorkspaceId = exampleWorkspace.Id,
///         TargetResourceId = exampleConnect.Id,
///         SubresourceName = "blob",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleFirewallRule,
///         },
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
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorageacc"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 			AccountKind:            pulumi.String("StorageV2"),
/// 			IsHnsEnabled:           pulumi.Bool(true),
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
/// 			ResourceGroupName:               example.Name,
/// 			Location:                        example.Location,
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
/// 		exampleFirewallRule, err := synapse.NewFirewallRule(ctx, "example", &synapse.FirewallRuleArgs{
/// 			Name:               pulumi.String("AllowAll"),
/// 			SynapseWorkspaceId: exampleWorkspace.ID(),
/// 			StartIpAddress:     pulumi.String("0.0.0.0"),
/// 			EndIpAddress:       pulumi.String("255.255.255.255"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleConnect, err := storage.NewAccount(ctx, "example_connect", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorage2"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 			AccountKind:            pulumi.String("BlobStorage"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synapse.NewManagedPrivateEndpoint(ctx, "example", &synapse.ManagedPrivateEndpointArgs{
/// 			Name:               pulumi.String("example-endpoint"),
/// 			SynapseWorkspaceId: exampleWorkspace.ID(),
/// 			TargetResourceId:   exampleConnect.ID(),
/// 			SubresourceName:    pulumi.String("blob"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleFirewallRule,
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.DataLakeGen2Filesystem;
/// import com.pulumi.azure.storage.DataLakeGen2FilesystemArgs;
/// import com.pulumi.azure.synapse.Workspace;
/// import com.pulumi.azure.synapse.WorkspaceArgs;
/// import com.pulumi.azure.synapse.inputs.WorkspaceIdentityArgs;
/// import com.pulumi.azure.synapse.FirewallRule;
/// import com.pulumi.azure.synapse.FirewallRuleArgs;
/// import com.pulumi.azure.synapse.ManagedPrivateEndpoint;
/// import com.pulumi.azure.synapse.ManagedPrivateEndpointArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestorageacc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .accountKind("StorageV2")
///             .isHnsEnabled(true)
///             .build());
///
///         var exampleDataLakeGen2Filesystem = new DataLakeGen2Filesystem("exampleDataLakeGen2Filesystem", DataLakeGen2FilesystemArgs.builder()
///             .name("example")
///             .storageAccountId(exampleAccount.id())
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
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
///         var exampleConnect = new Account("exampleConnect", AccountArgs.builder()
///             .name("examplestorage2")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .accountKind("BlobStorage")
///             .build());
///
///         var exampleManagedPrivateEndpoint = new ManagedPrivateEndpoint("exampleManagedPrivateEndpoint", ManagedPrivateEndpointArgs.builder()
///             .name("example-endpoint")
///             .synapseWorkspaceId(exampleWorkspace.id())
///             .targetResourceId(exampleConnect.id())
///             .subresourceName("blob")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleFirewallRule)
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
///       name: example-resources
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestorageacc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       accountKind: StorageV2
///       isHnsEnabled: 'true'
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
///       resourceGroupName: ${example.name}
///       location: ${example.location}
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
///   exampleConnect:
///     type: azure:storage:Account
///     name: example_connect
///     properties:
///       name: examplestorage2
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       accountKind: BlobStorage
///   exampleManagedPrivateEndpoint:
///     type: azure:synapse:ManagedPrivateEndpoint
///     name: example
///     properties:
///       name: example-endpoint
///       synapseWorkspaceId: ${exampleWorkspace.id}
///       targetResourceId: ${exampleConnect.id}
///       subresourceName: blob
///     options:
///       dependsOn:
///         - ${exampleFirewallRule}
/// ```
///
///
/// ## Import
///
/// Synapse Managed Private Endpoint can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:synapse/managedPrivateEndpoint:ManagedPrivateEndpoint example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Synapse/workspaces/workspace1/managedVirtualNetworks/default/managedPrivateEndpoints/endpoint1
/// ```
class ManagedPrivateEndpoint extends pulumi.CustomResource {
  /// Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Specifies the sub resource name which the Synapse Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Possible values are listed in [documentation](https://docs.microsoft.com/azure/private-link/private-endpoint-overview#dns-configuration).
  late final pulumi.Output<String> subresourceName;

  /// The ID of the Synapse Workspace on which to create the Managed Private Endpoint. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** A Synapse firewall rule including local IP is needed for managing current resource.
  late final pulumi.Output<String> synapseWorkspaceId;

  /// The ID of the Private Link Enabled Remote Resource which this Synapse Private Endpoint should be connected to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> targetResourceId;

  /// Creates a new [ManagedPrivateEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedPrivateEndpoint]. {@macro pulumi_synapse_managed_private_endpoint_managed_private_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedPrivateEndpoint(
    String name, {
    ManagedPrivateEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:synapse/managedPrivateEndpoint:ManagedPrivateEndpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    subresourceName = registerOutput<String>('subresourceName');
    synapseWorkspaceId = registerOutput<String>('synapseWorkspaceId');
    targetResourceId = registerOutput<String>('targetResourceId');
  }

  /// Gets an existing [ManagedPrivateEndpoint] resource's state with the given [name] and [id].
  static ManagedPrivateEndpoint get(
    String name,
    pulumi.Input<String> id, {
    ManagedPrivateEndpointState? state,
  }) {
    return ManagedPrivateEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedPrivateEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:synapse/managedPrivateEndpoint:ManagedPrivateEndpoint',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    subresourceName = registerOutput<String>('subresourceName');
    synapseWorkspaceId = registerOutput<String>('synapseWorkspaceId');
    targetResourceId = registerOutput<String>('targetResourceId');
  }
}
