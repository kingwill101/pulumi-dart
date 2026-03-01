import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_role_assignment_args.dart';
import 'sql_role_assignment_state.dart';

/// Manages a Cosmos DB SQL Role Assignment.
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
/// const exampleAccount = new azure.cosmosdb.Account("example", {
///     name: "example-cosmosdb",
///     location: example.location,
///     resourceGroupName: example.name,
///     offerType: "Standard",
///     kind: "GlobalDocumentDB",
///     consistencyPolicy: {
///         consistencyLevel: "Strong",
///     },
///     geoLocations: [{
///         location: example.location,
///         failoverPriority: 0,
///     }],
/// });
/// const exampleSqlRoleDefinition = new azure.cosmosdb.SqlRoleDefinition("example", {
///     name: "examplesqlroledef",
///     resourceGroupName: example.name,
///     accountName: exampleAccount.name,
///     type: "CustomRole",
///     assignableScopes: [exampleAccount.id],
///     permissions: [{
///         dataActions: ["Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/read"],
///     }],
/// });
/// const exampleSqlRoleAssignment = new azure.cosmosdb.SqlRoleAssignment("example", {
///     name: "736180af-7fbc-4c7f-9004-22735173c1c3",
///     resourceGroupName: example.name,
///     accountName: exampleAccount.name,
///     roleDefinitionId: exampleSqlRoleDefinition.id,
///     principalId: current.then(current => current.objectId),
///     scope: exampleAccount.id,
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
/// example_account = azure.cosmosdb.Account("example",
///     name="example-cosmosdb",
///     location=example.location,
///     resource_group_name=example.name,
///     offer_type="Standard",
///     kind="GlobalDocumentDB",
///     consistency_policy={
///         "consistency_level": "Strong",
///     },
///     geo_locations=[{
///         "location": example.location,
///         "failover_priority": 0,
///     }])
/// example_sql_role_definition = azure.cosmosdb.SqlRoleDefinition("example",
///     name="examplesqlroledef",
///     resource_group_name=example.name,
///     account_name=example_account.name,
///     type="CustomRole",
///     assignable_scopes=[example_account.id],
///     permissions=[{
///         "data_actions": ["Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/read"],
///     }])
/// example_sql_role_assignment = azure.cosmosdb.SqlRoleAssignment("example",
///     name="736180af-7fbc-4c7f-9004-22735173c1c3",
///     resource_group_name=example.name,
///     account_name=example_account.name,
///     role_definition_id=example_sql_role_definition.id,
///     principal_id=current.object_id,
///     scope=example_account.id)
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
///     var exampleAccount = new Azure.CosmosDB.Account("example", new()
///     {
///         Name = "example-cosmosdb",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         OfferType = "Standard",
///         Kind = "GlobalDocumentDB",
///         ConsistencyPolicy = new Azure.CosmosDB.Inputs.AccountConsistencyPolicyArgs
///         {
///             ConsistencyLevel = "Strong",
///         },
///         GeoLocations = new[]
///         {
///             new Azure.CosmosDB.Inputs.AccountGeoLocationArgs
///             {
///                 Location = example.Location,
///                 FailoverPriority = 0,
///             },
///         },
///     });
///
///     var exampleSqlRoleDefinition = new Azure.CosmosDB.SqlRoleDefinition("example", new()
///     {
///         Name = "examplesqlroledef",
///         ResourceGroupName = example.Name,
///         AccountName = exampleAccount.Name,
///         Type = "CustomRole",
///         AssignableScopes = new[]
///         {
///             exampleAccount.Id,
///         },
///         Permissions = new[]
///         {
///             new Azure.CosmosDB.Inputs.SqlRoleDefinitionPermissionArgs
///             {
///                 DataActions = new[]
///                 {
///                     "Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/read",
///                 },
///             },
///         },
///     });
///
///     var exampleSqlRoleAssignment = new Azure.CosmosDB.SqlRoleAssignment("example", new()
///     {
///         Name = "736180af-7fbc-4c7f-9004-22735173c1c3",
///         ResourceGroupName = example.Name,
///         AccountName = exampleAccount.Name,
///         RoleDefinitionId = exampleSqlRoleDefinition.Id,
///         PrincipalId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         Scope = exampleAccount.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cosmosdb"
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
/// 		exampleAccount, err := cosmosdb.NewAccount(ctx, "example", &cosmosdb.AccountArgs{
/// 			Name:              pulumi.String("example-cosmosdb"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			OfferType:         pulumi.String("Standard"),
/// 			Kind:              pulumi.String("GlobalDocumentDB"),
/// 			ConsistencyPolicy: &cosmosdb.AccountConsistencyPolicyArgs{
/// 				ConsistencyLevel: pulumi.String("Strong"),
/// 			},
/// 			GeoLocations: cosmosdb.AccountGeoLocationArray{
/// 				&cosmosdb.AccountGeoLocationArgs{
/// 					Location:         example.Location,
/// 					FailoverPriority: pulumi.Int(0),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSqlRoleDefinition, err := cosmosdb.NewSqlRoleDefinition(ctx, "example", &cosmosdb.SqlRoleDefinitionArgs{
/// 			Name:              pulumi.String("examplesqlroledef"),
/// 			ResourceGroupName: example.Name,
/// 			AccountName:       exampleAccount.Name,
/// 			Type:              pulumi.String("CustomRole"),
/// 			AssignableScopes: pulumi.StringArray{
/// 				exampleAccount.ID(),
/// 			},
/// 			Permissions: cosmosdb.SqlRoleDefinitionPermissionArray{
/// 				&cosmosdb.SqlRoleDefinitionPermissionArgs{
/// 					DataActions: pulumi.StringArray{
/// 						pulumi.String("Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/read"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cosmosdb.NewSqlRoleAssignment(ctx, "example", &cosmosdb.SqlRoleAssignmentArgs{
/// 			Name:              pulumi.String("736180af-7fbc-4c7f-9004-22735173c1c3"),
/// 			ResourceGroupName: example.Name,
/// 			AccountName:       exampleAccount.Name,
/// 			RoleDefinitionId:  exampleSqlRoleDefinition.ID(),
/// 			PrincipalId:       pulumi.String(current.ObjectId),
/// 			Scope:             exampleAccount.ID(),
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
/// import com.pulumi.azure.cosmosdb.Account;
/// import com.pulumi.azure.cosmosdb.AccountArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountConsistencyPolicyArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountGeoLocationArgs;
/// import com.pulumi.azure.cosmosdb.SqlRoleDefinition;
/// import com.pulumi.azure.cosmosdb.SqlRoleDefinitionArgs;
/// import com.pulumi.azure.cosmosdb.inputs.SqlRoleDefinitionPermissionArgs;
/// import com.pulumi.azure.cosmosdb.SqlRoleAssignment;
/// import com.pulumi.azure.cosmosdb.SqlRoleAssignmentArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-cosmosdb")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .offerType("Standard")
///             .kind("GlobalDocumentDB")
///             .consistencyPolicy(AccountConsistencyPolicyArgs.builder()
///                 .consistencyLevel("Strong")
///                 .build())
///             .geoLocations(AccountGeoLocationArgs.builder()
///                 .location(example.location())
///                 .failoverPriority(0)
///                 .build())
///             .build());
///
///         var exampleSqlRoleDefinition = new SqlRoleDefinition("exampleSqlRoleDefinition", SqlRoleDefinitionArgs.builder()
///             .name("examplesqlroledef")
///             .resourceGroupName(example.name())
///             .accountName(exampleAccount.name())
///             .type("CustomRole")
///             .assignableScopes(exampleAccount.id())
///             .permissions(SqlRoleDefinitionPermissionArgs.builder()
///                 .dataActions("Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/read")
///                 .build())
///             .build());
///
///         var exampleSqlRoleAssignment = new SqlRoleAssignment("exampleSqlRoleAssignment", SqlRoleAssignmentArgs.builder()
///             .name("736180af-7fbc-4c7f-9004-22735173c1c3")
///             .resourceGroupName(example.name())
///             .accountName(exampleAccount.name())
///             .roleDefinitionId(exampleSqlRoleDefinition.id())
///             .principalId(current.objectId())
///             .scope(exampleAccount.id())
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
///   exampleAccount:
///     type: azure:cosmosdb:Account
///     name: example
///     properties:
///       name: example-cosmosdb
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       offerType: Standard
///       kind: GlobalDocumentDB
///       consistencyPolicy:
///         consistencyLevel: Strong
///       geoLocations:
///         - location: ${example.location}
///           failoverPriority: 0
///   exampleSqlRoleDefinition:
///     type: azure:cosmosdb:SqlRoleDefinition
///     name: example
///     properties:
///       name: examplesqlroledef
///       resourceGroupName: ${example.name}
///       accountName: ${exampleAccount.name}
///       type: CustomRole
///       assignableScopes:
///         - ${exampleAccount.id}
///       permissions:
///         - dataActions:
///             - Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/read
///   exampleSqlRoleAssignment:
///     type: azure:cosmosdb:SqlRoleAssignment
///     name: example
///     properties:
///       name: 736180af-7fbc-4c7f-9004-22735173c1c3
///       resourceGroupName: ${example.name}
///       accountName: ${exampleAccount.name}
///       roleDefinitionId: ${exampleSqlRoleDefinition.id}
///       principalId: ${current.objectId}
///       scope: ${exampleAccount.id}
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
/// Cosmos DB SQL Role Assignments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/sqlRoleAssignment:SqlRoleAssignment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DocumentDB/databaseAccounts/account1/sqlRoleAssignments/9e007587-dbcd-4190-84cb-fcab5a09ca39
/// ```
class SqlRoleAssignment extends pulumi.CustomResource {
  /// The name of the Cosmos DB Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accountName;
  /// The GUID as the name of the Cosmos DB SQL Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Principal (Client) in Azure Active Directory. Changing this forces a new resource to be created.
  late final pulumi.Output<String> principalId;
  /// The name of the Resource Group in which the Cosmos DB SQL Role Assignment is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The resource ID of the Cosmos DB SQL Role Definition.
  late final pulumi.Output<String> roleDefinitionId;
  /// The data plane resource path for which access is being granted through this Cosmos DB SQL Role Assignment. Changing this forces a new resource to be created.
  late final pulumi.Output<String> scope;

  /// Creates a new [SqlRoleAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlRoleAssignment]. {@macro pulumi_cosmosdb_sql_role_assignment_sql_role_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlRoleAssignment(
    String name, {
    SqlRoleAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/sqlRoleAssignment:SqlRoleAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountName = registerOutput<String>('accountName');
    this.name = registerOutput<String>('name');
    this.principalId = registerOutput<String>('principalId');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.roleDefinitionId = registerOutput<String>('roleDefinitionId');
    this.scope = registerOutput<String>('scope');
  }

  /// Gets an existing [SqlRoleAssignment] resource's state with the given [name] and [id].
  static SqlRoleAssignment get(
    String name,
    pulumi.Input<String> id, {
    SqlRoleAssignmentState? state,
  }) {
    return SqlRoleAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SqlRoleAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/sqlRoleAssignment:SqlRoleAssignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountName = registerOutput<String>('accountName');
    this.name = registerOutput<String>('name');
    this.principalId = registerOutput<String>('principalId');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.roleDefinitionId = registerOutput<String>('roleDefinitionId');
    this.scope = registerOutput<String>('scope');
  }
}
