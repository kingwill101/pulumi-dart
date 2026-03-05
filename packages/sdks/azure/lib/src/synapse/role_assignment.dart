import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_assignment_args.dart';
import 'role_assignment_state.dart';

/// Manages a Synapse Role Assignment.
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
/// const current = azure.core.getClientConfig({});
/// const exampleRoleAssignment = new azure.synapse.RoleAssignment("example", {
///     synapseWorkspaceId: exampleWorkspace.id,
///     roleName: "Synapse SQL Administrator",
///     principalId: current.then(current => current.objectId),
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
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_firewall_rule = azure.synapse.FirewallRule("example",
///     name="AllowAll",
///     synapse_workspace_id=example_workspace.id,
///     start_ip_address="0.0.0.0",
///     end_ip_address="255.255.255.255")
/// current = azure.core.get_client_config()
/// example_role_assignment = azure.synapse.RoleAssignment("example",
///     synapse_workspace_id=example_workspace.id,
///     role_name="Synapse SQL Administrator",
///     principal_id=current.object_id,
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
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleRoleAssignment = new Azure.Synapse.RoleAssignment("example", new()
///     {
///         SynapseWorkspaceId = exampleWorkspace.Id,
///         RoleName = "Synapse SQL Administrator",
///         PrincipalId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
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
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synapse.NewRoleAssignment(ctx, "example", &synapse.RoleAssignmentArgs{
/// 			SynapseWorkspaceId: exampleWorkspace.ID(),
/// 			RoleName:           pulumi.String("Synapse SQL Administrator"),
/// 			PrincipalId:        pulumi.String(current.ObjectId),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.synapse.RoleAssignment;
/// import com.pulumi.azure.synapse.RoleAssignmentArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleRoleAssignment = new RoleAssignment("exampleRoleAssignment", RoleAssignmentArgs.builder()
///             .synapseWorkspaceId(exampleWorkspace.id())
///             .roleName("Synapse SQL Administrator")
///             .principalId(current.objectId())
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
///   exampleRoleAssignment:
///     type: azure:synapse:RoleAssignment
///     name: example
///     properties:
///       synapseWorkspaceId: ${exampleWorkspace.id}
///       roleName: Synapse SQL Administrator
///       principalId: ${current.objectId}
///     options:
///       dependsOn:
///         - ${exampleFirewallRule}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Synapse Role Assignment can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:synapse/roleAssignment:RoleAssignment example "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Synapse/workspaces/workspace1|000000000000"
/// ```
///
/// &gt; **NOTE:** This ID is specific to this provider - and is of the format `{synapseScope}|{synapseRoleAssignmentId}`.
class RoleAssignment extends pulumi.CustomResource {
  /// The ID of the Principal (User, Group or Service Principal) to assign the Synapse Role Definition to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> principalId;
  /// The Type of the Principal. One of `User`, `Group` or `ServicePrincipal`. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** While `principal_type` is optional, it's still recommended to set this value, as some Synapse use-cases may not work correctly if this is not specified. Service Principals for example can't run SQL statements using `Entra ID` authentication if `principal_type` is not set to `ServicePrincipal`.
  late final pulumi.Output<String?> principalType;
  /// The Role Name of the Synapse Built-In Role. Possible values are `Apache Spark Administrator`, `Synapse Administrator`, `Synapse Artifact Publisher`, `Synapse Artifact User`, `Synapse Compute Operator`, `Synapse Contributor`, `Synapse Credential User`, `Synapse Linked Data Manager`, `Synapse Monitoring Operator`, `Synapse SQL Administrator` and `Synapse User`. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** Currently, the Synapse built-in roles are `Apache Spark Administrator`, `Synapse Administrator`, `Synapse Artifact Publisher`, `Synapse Artifact User`, `Synapse Compute Operator`, `Synapse Contributor`, `Synapse Credential User`, `Synapse Linked Data Manager`, `Synapse Monitoring Operator`, `Synapse SQL Administrator` and `Synapse User`.
  ///
  /// &gt; **NOTE:** Old roles are still supported: `Workspace Admin`, `Apache Spark Admin`, `Sql Admin`. These values will be removed in the next Major Version 3.0.
  late final pulumi.Output<String> roleName;
  /// The Synapse Spark Pool which the Synapse Role Assignment applies to. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** A Synapse firewall rule including local IP is needed to allow access. Only one of `synapse_workspace_id`, `synapse_spark_pool_id` must be set.
  late final pulumi.Output<String?> synapseSparkPoolId;
  /// The Synapse Workspace which the Synapse Role Assignment applies to. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> synapseWorkspaceId;

  /// Creates a new [RoleAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleAssignment]. {@macro pulumi_synapse_role_assignment_role_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleAssignment(
    String name, {
    RoleAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:synapse/roleAssignment:RoleAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    principalId = registerOutput<String>('principalId');
    principalType = registerOutput<String?>('principalType');
    roleName = registerOutput<String>('roleName');
    synapseSparkPoolId = registerOutput<String?>('synapseSparkPoolId');
    synapseWorkspaceId = registerOutput<String?>('synapseWorkspaceId');
  }

  /// Gets an existing [RoleAssignment] resource's state with the given [name] and [id].
  static RoleAssignment get(
    String name,
    pulumi.Input<String> id, {
    RoleAssignmentState? state,
  }) {
    return RoleAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RoleAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:synapse/roleAssignment:RoleAssignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    principalId = registerOutput<String>('principalId');
    principalType = registerOutput<String?>('principalType');
    roleName = registerOutput<String>('roleName');
    synapseSparkPoolId = registerOutput<String?>('synapseSparkPoolId');
    synapseWorkspaceId = registerOutput<String?>('synapseWorkspaceId');
  }
}
