import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_function_args.dart';
import 'sql_function_state.dart';

/// Manages an SQL User Defined Function.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cosmosdb.getAccount({
///     name: "tfex-cosmosdb-account",
///     resourceGroupName: "tfex-cosmosdb-account-rg",
/// });
/// const exampleSqlDatabase = new azure.cosmosdb.SqlDatabase("example", {
///     name: "tfex-cosmos-db",
///     resourceGroupName: example.then(example => example.resourceGroupName),
///     accountName: example.then(example => example.name),
///     throughput: 400,
/// });
/// const exampleSqlContainer = new azure.cosmosdb.SqlContainer("example", {
///     name: "example-container",
///     resourceGroupName: example.then(example => example.resourceGroupName),
///     accountName: example.then(example => example.name),
///     databaseName: exampleSqlDatabase.name,
///     partitionKeyPath: "/id",
/// });
/// const exampleSqlFunction = new azure.cosmosdb.SqlFunction("example", {
///     name: "test-function",
///     containerId: exampleSqlContainer.id,
///     body: "function trigger(){}",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cosmosdb.get_account(name="tfex-cosmosdb-account",
///     resource_group_name="tfex-cosmosdb-account-rg")
/// example_sql_database = azure.cosmosdb.SqlDatabase("example",
///     name="tfex-cosmos-db",
///     resource_group_name=example.resource_group_name,
///     account_name=example.name,
///     throughput=400)
/// example_sql_container = azure.cosmosdb.SqlContainer("example",
///     name="example-container",
///     resource_group_name=example.resource_group_name,
///     account_name=example.name,
///     database_name=example_sql_database.name,
///     partition_key_path="/id")
/// example_sql_function = azure.cosmosdb.SqlFunction("example",
///     name="test-function",
///     container_id=example_sql_container.id,
///     body="function trigger(){}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.CosmosDB.GetAccount.Invoke(new()
///     {
///         Name = "tfex-cosmosdb-account",
///         ResourceGroupName = "tfex-cosmosdb-account-rg",
///     });
///
///     var exampleSqlDatabase = new Azure.CosmosDB.SqlDatabase("example", new()
///     {
///         Name = "tfex-cosmos-db",
///         ResourceGroupName = example.Apply(getAccountResult => getAccountResult.ResourceGroupName),
///         AccountName = example.Apply(getAccountResult => getAccountResult.Name),
///         Throughput = 400,
///     });
///
///     var exampleSqlContainer = new Azure.CosmosDB.SqlContainer("example", new()
///     {
///         Name = "example-container",
///         ResourceGroupName = example.Apply(getAccountResult => getAccountResult.ResourceGroupName),
///         AccountName = example.Apply(getAccountResult => getAccountResult.Name),
///         DatabaseName = exampleSqlDatabase.Name,
///         PartitionKeyPath = "/id",
///     });
///
///     var exampleSqlFunction = new Azure.CosmosDB.SqlFunction("example", new()
///     {
///         Name = "test-function",
///         ContainerId = exampleSqlContainer.Id,
///         Body = "function trigger(){}",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cosmosdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cosmosdb.LookupAccount(ctx, &cosmosdb.LookupAccountArgs{
/// 			Name:              "tfex-cosmosdb-account",
/// 			ResourceGroupName: "tfex-cosmosdb-account-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSqlDatabase, err := cosmosdb.NewSqlDatabase(ctx, "example", &cosmosdb.SqlDatabaseArgs{
/// 			Name:              pulumi.String("tfex-cosmos-db"),
/// 			ResourceGroupName: pulumi.String(example.ResourceGroupName),
/// 			AccountName:       pulumi.String(example.Name),
/// 			Throughput:        pulumi.Int(400),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSqlContainer, err := cosmosdb.NewSqlContainer(ctx, "example", &cosmosdb.SqlContainerArgs{
/// 			Name:              pulumi.String("example-container"),
/// 			ResourceGroupName: pulumi.String(example.ResourceGroupName),
/// 			AccountName:       pulumi.String(example.Name),
/// 			DatabaseName:      exampleSqlDatabase.Name,
/// 			PartitionKeyPath:  "/id",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cosmosdb.NewSqlFunction(ctx, "example", &cosmosdb.SqlFunctionArgs{
/// 			Name:        pulumi.String("test-function"),
/// 			ContainerId: exampleSqlContainer.ID().ToIDOutput().ToStringOutput(),
/// 			Body:        pulumi.String("function trigger(){}"),
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
/// data "azure_cosmosdb_getaccount" "example" {
///   name                = "tfex-cosmosdb-account"
///   resource_group_name = "tfex-cosmosdb-account-rg"
/// }
///
/// resource "azure_cosmosdb_sqldatabase" "example" {
///   name                = "tfex-cosmos-db"
///   resource_group_name = data.azure_cosmosdb_getaccount.example.resource_group_name
///   account_name        = data.azure_cosmosdb_getaccount.example.name
///   throughput          = 400
/// }
/// resource "azure_cosmosdb_sqlcontainer" "example" {
///   name                = "example-container"
///   resource_group_name = data.azure_cosmosdb_getaccount.example.resource_group_name
///   account_name        = data.azure_cosmosdb_getaccount.example.name
///   database_name       = azure_cosmosdb_sqldatabase.example.name
///   partition_key_path  = "/id"
/// }
/// resource "azure_cosmosdb_sqlfunction" "example" {
///   name         = "test-function"
///   container_id = azure_cosmosdb_sqlcontainer.example.id
///   body         = "function trigger(){}"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.cosmosdb.CosmosdbFunctions;
/// import com.pulumi.azure.cosmosdb.inputs.GetAccountArgs;
/// import com.pulumi.azure.cosmosdb.SqlDatabase;
/// import com.pulumi.azure.cosmosdb.SqlDatabaseArgs;
/// import com.pulumi.azure.cosmosdb.SqlContainer;
/// import com.pulumi.azure.cosmosdb.SqlContainerArgs;
/// import com.pulumi.azure.cosmosdb.SqlFunction;
/// import com.pulumi.azure.cosmosdb.SqlFunctionArgs;
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
///         final var example = CosmosdbFunctions.getAccount(GetAccountArgs.builder()
///             .name("tfex-cosmosdb-account")
///             .resourceGroupName("tfex-cosmosdb-account-rg")
///             .build());
///
///         var exampleSqlDatabase = new SqlDatabase("exampleSqlDatabase", SqlDatabaseArgs.builder()
///             .name("tfex-cosmos-db")
///             .resourceGroupName(example.resourceGroupName())
///             .accountName(example.name())
///             .throughput(400)
///             .build());
///
///         var exampleSqlContainer = new SqlContainer("exampleSqlContainer", SqlContainerArgs.builder()
///             .name("example-container")
///             .resourceGroupName(example.resourceGroupName())
///             .accountName(example.name())
///             .databaseName(exampleSqlDatabase.name())
///             .partitionKeyPath("/id")
///             .build());
///
///         var exampleSqlFunction = new SqlFunction("exampleSqlFunction", SqlFunctionArgs.builder()
///             .name("test-function")
///             .containerId(exampleSqlContainer.id())
///             .body("function trigger(){}")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSqlDatabase:
///     type: azure:cosmosdb:SqlDatabase
///     name: example
///     properties:
///       name: tfex-cosmos-db
///       resourceGroupName: ${example.resourceGroupName}
///       accountName: ${example.name}
///       throughput: 400
///   exampleSqlContainer:
///     type: azure:cosmosdb:SqlContainer
///     name: example
///     properties:
///       name: example-container
///       resourceGroupName: ${example.resourceGroupName}
///       accountName: ${example.name}
///       databaseName: ${exampleSqlDatabase.name}
///       partitionKeyPath: /id
///   exampleSqlFunction:
///     type: azure:cosmosdb:SqlFunction
///     name: example
///     properties:
///       name: test-function
///       containerId: ${exampleSqlContainer.id}
///       body: function trigger(){}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cosmosdb:getAccount
///       arguments:
///         name: tfex-cosmosdb-account
///         resourceGroupName: tfex-cosmosdb-account-rg
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DocumentDB` - 2024-08-15
///
/// ## Import
///
/// SQL User Defined Functions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/sqlFunction:SqlFunction example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DocumentDB/databaseAccounts/account1/sqlDatabases/database1/containers/container1/userDefinedFunctions/userDefinedFunction1
/// ```
class SqlFunction extends pulumi.CustomResource {
  /// Body of the User Defined Function.
  late final pulumi.Output<String> body;
  /// The id of the Cosmos DB SQL Container to create the SQL User Defined Function within. Changing this forces a new SQL User Defined Function to be created.
  late final pulumi.Output<String> containerId;
  /// The name which should be used for this SQL User Defined Function. Changing this forces a new SQL User Defined Function to be created.
  late final pulumi.Output<String> name;

  /// Creates a new [SqlFunction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlFunction]. {@macro pulumi_cosmosdb_sql_function_sql_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlFunction(
    String name, {
    SqlFunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/sqlFunction:SqlFunction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    body = registerOutput<String>('body');
    containerId = registerOutput<String>('containerId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [SqlFunction] resource's state with the given [name] and [id].
  static SqlFunction get(
    String name,
    pulumi.Input<String> id, {
    SqlFunctionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SqlFunction._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SqlFunction._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/sqlFunction:SqlFunction',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    body = registerOutput<String>('body');
    containerId = registerOutput<String>('containerId');
    this.name = registerOutput<String>('name');
  }

  /// Creates a typed reference to an existing [SqlFunction] resource.
  SqlFunction.reference(String urn)
    : super(
        'azure:cosmosdb/sqlFunction:SqlFunction',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    body = registerOutput<String>('body');
    containerId = registerOutput<String>('containerId');
    this.name = registerOutput<String>('name');
  }
}
