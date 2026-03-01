import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_dedicated_gateway_args.dart';
import 'sql_dedicated_gateway_state.dart';

/// Manages a SQL Dedicated Gateway within a Cosmos DB Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resource-group",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.cosmosdb.Account("example", {
///     name: "example-ca",
///     location: example.location,
///     resourceGroupName: example.name,
///     offerType: "Standard",
///     kind: "GlobalDocumentDB",
///     consistencyPolicy: {
///         consistencyLevel: "BoundedStaleness",
///     },
///     geoLocations: [{
///         location: example.location,
///         failoverPriority: 0,
///     }],
/// });
/// const exampleSqlDedicatedGateway = new azure.cosmosdb.SqlDedicatedGateway("example", {
///     cosmosdbAccountId: exampleAccount.id,
///     instanceCount: 1,
///     instanceSize: "Cosmos.D4s",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resource-group",
///     location="West Europe")
/// example_account = azure.cosmosdb.Account("example",
///     name="example-ca",
///     location=example.location,
///     resource_group_name=example.name,
///     offer_type="Standard",
///     kind="GlobalDocumentDB",
///     consistency_policy={
///         "consistency_level": "BoundedStaleness",
///     },
///     geo_locations=[{
///         "location": example.location,
///         "failover_priority": 0,
///     }])
/// example_sql_dedicated_gateway = azure.cosmosdb.SqlDedicatedGateway("example",
///     cosmosdb_account_id=example_account.id,
///     instance_count=1,
///     instance_size="Cosmos.D4s")
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
///         Name = "example-resource-group",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.CosmosDB.Account("example", new()
///     {
///         Name = "example-ca",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         OfferType = "Standard",
///         Kind = "GlobalDocumentDB",
///         ConsistencyPolicy = new Azure.CosmosDB.Inputs.AccountConsistencyPolicyArgs
///         {
///             ConsistencyLevel = "BoundedStaleness",
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
///     var exampleSqlDedicatedGateway = new Azure.CosmosDB.SqlDedicatedGateway("example", new()
///     {
///         CosmosdbAccountId = exampleAccount.Id,
///         InstanceCount = 1,
///         InstanceSize = "Cosmos.D4s",
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
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resource-group"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := cosmosdb.NewAccount(ctx, "example", &cosmosdb.AccountArgs{
/// 			Name:              pulumi.String("example-ca"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			OfferType:         pulumi.String("Standard"),
/// 			Kind:              pulumi.String("GlobalDocumentDB"),
/// 			ConsistencyPolicy: &cosmosdb.AccountConsistencyPolicyArgs{
/// 				ConsistencyLevel: pulumi.String("BoundedStaleness"),
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
/// 		_, err = cosmosdb.NewSqlDedicatedGateway(ctx, "example", &cosmosdb.SqlDedicatedGatewayArgs{
/// 			CosmosdbAccountId: exampleAccount.ID(),
/// 			InstanceCount:     pulumi.Int(1),
/// 			InstanceSize:      pulumi.String("Cosmos.D4s"),
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
/// import com.pulumi.azure.cosmosdb.Account;
/// import com.pulumi.azure.cosmosdb.AccountArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountConsistencyPolicyArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountGeoLocationArgs;
/// import com.pulumi.azure.cosmosdb.SqlDedicatedGateway;
/// import com.pulumi.azure.cosmosdb.SqlDedicatedGatewayArgs;
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
///             .name("example-resource-group")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-ca")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .offerType("Standard")
///             .kind("GlobalDocumentDB")
///             .consistencyPolicy(AccountConsistencyPolicyArgs.builder()
///                 .consistencyLevel("BoundedStaleness")
///                 .build())
///             .geoLocations(AccountGeoLocationArgs.builder()
///                 .location(example.location())
///                 .failoverPriority(0)
///                 .build())
///             .build());
///
///         var exampleSqlDedicatedGateway = new SqlDedicatedGateway("exampleSqlDedicatedGateway", SqlDedicatedGatewayArgs.builder()
///             .cosmosdbAccountId(exampleAccount.id())
///             .instanceCount(1)
///             .instanceSize("Cosmos.D4s")
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
///       name: example-resource-group
///       location: West Europe
///   exampleAccount:
///     type: azure:cosmosdb:Account
///     name: example
///     properties:
///       name: example-ca
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       offerType: Standard
///       kind: GlobalDocumentDB
///       consistencyPolicy:
///         consistencyLevel: BoundedStaleness
///       geoLocations:
///         - location: ${example.location}
///           failoverPriority: 0
///   exampleSqlDedicatedGateway:
///     type: azure:cosmosdb:SqlDedicatedGateway
///     name: example
///     properties:
///       cosmosdbAccountId: ${exampleAccount.id}
///       instanceCount: 1
///       instanceSize: Cosmos.D4s
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DocumentDB` - 2022-05-15
///
/// ## Import
///
/// CosmosDB SQL Dedicated Gateways can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/sqlDedicatedGateway:SqlDedicatedGateway example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.DocumentDB/databaseAccounts/account1/services/SqlDedicatedGateway
/// ```
class SqlDedicatedGateway extends pulumi.CustomResource {
  /// The resource ID of the CosmosDB Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> cosmosdbAccountId;
  /// The instance count for the CosmosDB SQL Dedicated Gateway. Possible value is between `1` and `5`.
  late final pulumi.Output<int> instanceCount;
  /// The instance size for the CosmosDB SQL Dedicated Gateway. Changing this forces a new resource to be created. Possible values are `Cosmos.D4s`, `Cosmos.D8s` and `Cosmos.D16s`.
  late final pulumi.Output<String> instanceSize;

  /// Creates a new [SqlDedicatedGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlDedicatedGateway]. {@macro pulumi_cosmosdb_sql_dedicated_gateway_sql_dedicated_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlDedicatedGateway(
    String name, {
    SqlDedicatedGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/sqlDedicatedGateway:SqlDedicatedGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cosmosdbAccountId = registerOutput<String>('cosmosdbAccountId');
    this.instanceCount = registerOutput<int>('instanceCount');
    this.instanceSize = registerOutput<String>('instanceSize');
  }

  /// Gets an existing [SqlDedicatedGateway] resource's state with the given [name] and [id].
  static SqlDedicatedGateway get(
    String name,
    pulumi.Input<String> id, {
    SqlDedicatedGatewayState? state,
  }) {
    return SqlDedicatedGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SqlDedicatedGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/sqlDedicatedGateway:SqlDedicatedGateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cosmosdbAccountId = registerOutput<String>('cosmosdbAccountId');
    this.instanceCount = registerOutput<int>('instanceCount');
    this.instanceSize = registerOutput<String>('instanceSize');
  }
}
