import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_role_definition_args.dart';
import 'sql_role_definition_permission.dart';
import 'sql_role_definition_state.dart';

/// Manages a Cosmos DB SQL Role Definition.
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
///     roleDefinitionId: "84cf3a8b-4122-4448-bce2-fa423cfe0a15",
///     resourceGroupName: example.name,
///     accountName: exampleAccount.name,
///     name: "acctestsqlrole",
///     assignableScopes: [pulumi.interpolate`${exampleAccount.id}/dbs/sales`],
///     permissions: [{
///         dataActions: ["Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/read"],
///     }],
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
///     role_definition_id="84cf3a8b-4122-4448-bce2-fa423cfe0a15",
///     resource_group_name=example.name,
///     account_name=example_account.name,
///     name="acctestsqlrole",
///     assignable_scopes=[example_account.id.apply(lambda id: f"{id}/dbs/sales")],
///     permissions=[{
///         "data_actions": ["Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/read"],
///     }])
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
///         RoleDefinitionId = "84cf3a8b-4122-4448-bce2-fa423cfe0a15",
///         ResourceGroupName = example.Name,
///         AccountName = exampleAccount.Name,
///         Name = "acctestsqlrole",
///         AssignableScopes = new[]
///         {
///             exampleAccount.Id.Apply(id => $"{id}/dbs/sales"),
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
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cosmosdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
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
/// 		_, err = cosmosdb.NewSqlRoleDefinition(ctx, "example", &cosmosdb.SqlRoleDefinitionArgs{
/// 			RoleDefinitionId:  pulumi.String("84cf3a8b-4122-4448-bce2-fa423cfe0a15"),
/// 			ResourceGroupName: example.Name,
/// 			AccountName:       exampleAccount.Name,
/// 			Name:              pulumi.String("acctestsqlrole"),
/// 			AssignableScopes: pulumi.StringArray{
/// 				exampleAccount.ID().ApplyT(func(id string) (string, error) {
/// 					return fmt.Sprintf("%v/dbs/sales", id), nil
/// 				}).(pulumi.StringOutput),
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
///             .roleDefinitionId("84cf3a8b-4122-4448-bce2-fa423cfe0a15")
///             .resourceGroupName(example.name())
///             .accountName(exampleAccount.name())
///             .name("acctestsqlrole")
///             .assignableScopes(exampleAccount.id().applyValue(_id -> String.format("%s/dbs/sales", _id)))
///             .permissions(SqlRoleDefinitionPermissionArgs.builder()
///                 .dataActions("Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/read")
///                 .build())
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
///       roleDefinitionId: 84cf3a8b-4122-4448-bce2-fa423cfe0a15
///       resourceGroupName: ${example.name}
///       accountName: ${exampleAccount.name}
///       name: acctestsqlrole
///       assignableScopes:
///         - ${exampleAccount.id}/dbs/sales
///       permissions:
///         - dataActions:
///             - Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/read
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
/// Cosmos DB SQL Role Definitions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/sqlRoleDefinition:SqlRoleDefinition example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DocumentDB/databaseAccounts/account1/sqlRoleDefinitions/28b3c337-f436-482b-a167-c2618dc52033
/// ```
class SqlRoleDefinition extends pulumi.CustomResource {
  /// The name of the Cosmos DB Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accountName;
  /// A list of fully qualified scopes at or below which Role Assignments may be created using this Cosmos DB SQL Role Definition. It will allow application of this Cosmos DB SQL Role Definition on the entire Database Account or any underlying Database/Collection. Scopes higher than Database Account are not enforceable as assignable scopes.
  ///
  /// > **Note:** The resources referenced in assignable scopes need not exist.
  late final pulumi.Output<List<String>> assignableScopes;
  /// An user-friendly name for the Cosmos DB SQL Role Definition which must be unique for the Database Account.
  late final pulumi.Output<String> name;
  /// A `permissions` block as defined below.
  late final pulumi.Output<List<SqlRoleDefinitionPermission>> permissions;
  /// The name of the Resource Group in which the Cosmos DB SQL Role Definition is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The GUID as the name of the Cosmos DB SQL Role Definition - one will be generated if not specified. Changing this forces a new resource to be created.
  late final pulumi.Output<String> roleDefinitionId;
  /// The type of the Cosmos DB SQL Role Definition. Possible values are `BuiltInRole` and `CustomRole`. Defaults to `CustomRole`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> type;

  /// Creates a new [SqlRoleDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlRoleDefinition]. {@macro pulumi_cosmosdb_sql_role_definition_sql_role_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlRoleDefinition(
    String name, {
    SqlRoleDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/sqlRoleDefinition:SqlRoleDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountName = registerOutput<String>('accountName');
    this.assignableScopes = registerOutput<List<String>>('assignableScopes');
    this.name = registerOutput<String>('name');
    this.permissions = registerOutput<List<SqlRoleDefinitionPermission>>('permissions');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.roleDefinitionId = registerOutput<String>('roleDefinitionId');
    this.type = registerOutput<String?>('type');
  }

  /// Gets an existing [SqlRoleDefinition] resource's state with the given [name] and [id].
  static SqlRoleDefinition get(
    String name,
    pulumi.Input<String> id, {
    SqlRoleDefinitionState? state,
  }) {
    return SqlRoleDefinition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SqlRoleDefinition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/sqlRoleDefinition:SqlRoleDefinition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountName = registerOutput<String>('accountName');
    this.assignableScopes = registerOutput<List<String>>('assignableScopes');
    this.name = registerOutput<String>('name');
    this.permissions = registerOutput<List<SqlRoleDefinitionPermission>>('permissions');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.roleDefinitionId = registerOutput<String>('roleDefinitionId');
    this.type = registerOutput<String?>('type');
  }
}
