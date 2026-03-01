import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_trigger_args.dart';
import 'sql_trigger_state.dart';

/// Manages an SQL Trigger.
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
/// const exampleSqlTrigger = new azure.cosmosdb.SqlTrigger("example", {
///     name: "test-trigger",
///     containerId: exampleSqlContainer.id,
///     body: "function trigger(){}",
///     operation: "Delete",
///     type: "Post",
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
/// example_sql_trigger = azure.cosmosdb.SqlTrigger("example",
///     name="test-trigger",
///     container_id=example_sql_container.id,
///     body="function trigger(){}",
///     operation="Delete",
///     type="Post")
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
///     var exampleSqlTrigger = new Azure.CosmosDB.SqlTrigger("example", new()
///     {
///         Name = "test-trigger",
///         ContainerId = exampleSqlContainer.Id,
///         Body = "function trigger(){}",
///         Operation = "Delete",
///         Type = "Post",
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
/// 		_, err = cosmosdb.NewSqlTrigger(ctx, "example", &cosmosdb.SqlTriggerArgs{
/// 			Name:        pulumi.String("test-trigger"),
/// 			ContainerId: exampleSqlContainer.ID(),
/// 			Body:        pulumi.String("function trigger(){}"),
/// 			Operation:   pulumi.String("Delete"),
/// 			Type:        pulumi.String("Post"),
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
/// import com.pulumi.azure.cosmosdb.CosmosdbFunctions;
/// import com.pulumi.azure.cosmosdb.inputs.GetAccountArgs;
/// import com.pulumi.azure.cosmosdb.SqlDatabase;
/// import com.pulumi.azure.cosmosdb.SqlDatabaseArgs;
/// import com.pulumi.azure.cosmosdb.SqlContainer;
/// import com.pulumi.azure.cosmosdb.SqlContainerArgs;
/// import com.pulumi.azure.cosmosdb.SqlTrigger;
/// import com.pulumi.azure.cosmosdb.SqlTriggerArgs;
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
///         var exampleSqlTrigger = new SqlTrigger("exampleSqlTrigger", SqlTriggerArgs.builder()
///             .name("test-trigger")
///             .containerId(exampleSqlContainer.id())
///             .body("function trigger(){}")
///             .operation("Delete")
///             .type("Post")
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
///   exampleSqlTrigger:
///     type: azure:cosmosdb:SqlTrigger
///     name: example
///     properties:
///       name: test-trigger
///       containerId: ${exampleSqlContainer.id}
///       body: function trigger(){}
///       operation: Delete
///       type: Post
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
/// ## Import
///
/// SQL Triggers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/sqlTrigger:SqlTrigger example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DocumentDB/databaseAccounts/account1/sqlDatabases/database1/containers/container1/triggers/trigger1
/// ```
class SqlTrigger extends pulumi.CustomResource {
  /// Body of the Trigger.
  late final pulumi.Output<String> body;
  /// The id of the Cosmos DB SQL Container to create the SQL Trigger within. Changing this forces a new SQL Trigger to be created.
  late final pulumi.Output<String> containerId;
  /// The name which should be used for this SQL Trigger. Changing this forces a new SQL Trigger to be created.
  late final pulumi.Output<String> name;
  /// The operation the trigger is associated with. Possible values are `All`, `Create`, `Update`, `Delete` and `Replace`.
  late final pulumi.Output<String> operation;
  /// Type of the Trigger. Possible values are `Pre` and `Post`.
  late final pulumi.Output<String> type;

  /// Creates a new [SqlTrigger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlTrigger]. {@macro pulumi_cosmosdb_sql_trigger_sql_trigger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlTrigger(
    String name, {
    SqlTriggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/sqlTrigger:SqlTrigger',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.body = registerOutput<String>('body');
    this.containerId = registerOutput<String>('containerId');
    this.name = registerOutput<String>('name');
    this.operation = registerOutput<String>('operation');
    this.type = registerOutput<String>('type');
  }

  /// Gets an existing [SqlTrigger] resource's state with the given [name] and [id].
  static SqlTrigger get(
    String name,
    pulumi.Input<String> id, {
    SqlTriggerState? state,
  }) {
    return SqlTrigger._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SqlTrigger._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/sqlTrigger:SqlTrigger',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.body = registerOutput<String>('body');
    this.containerId = registerOutput<String>('containerId');
    this.name = registerOutput<String>('name');
    this.operation = registerOutput<String>('operation');
    this.type = registerOutput<String>('type');
  }
}
