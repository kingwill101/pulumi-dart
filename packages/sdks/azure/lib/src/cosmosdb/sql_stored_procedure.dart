import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_stored_procedure_args.dart';
import 'sql_stored_procedure_state.dart';

/// Manages a SQL Stored Procedure within a Cosmos DB Account SQL Database.
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
/// const exampleSqlStoredProcedure = new azure.cosmosdb.SqlStoredProcedure("example", {
///     name: "test-stored-proc",
///     resourceGroupName: example.then(example => example.resourceGroupName),
///     accountName: example.then(example => example.name),
///     databaseName: exampleSqlDatabase.name,
///     containerName: exampleSqlContainer.name,
///     body: "   function () { var context = getContext(); var response = context.getResponse(); response.setBody('Hello, World'); }\n",
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
/// example_sql_stored_procedure = azure.cosmosdb.SqlStoredProcedure("example",
///     name="test-stored-proc",
///     resource_group_name=example.resource_group_name,
///     account_name=example.name,
///     database_name=example_sql_database.name,
///     container_name=example_sql_container.name,
///     body="   function () { var context = getContext(); var response = context.getResponse(); response.setBody('Hello, World'); }\n")
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
///     var exampleSqlStoredProcedure = new Azure.CosmosDB.SqlStoredProcedure("example", new()
///     {
///         Name = "test-stored-proc",
///         ResourceGroupName = example.Apply(getAccountResult => getAccountResult.ResourceGroupName),
///         AccountName = example.Apply(getAccountResult => getAccountResult.Name),
///         DatabaseName = exampleSqlDatabase.Name,
///         ContainerName = exampleSqlContainer.Name,
///         Body = @"   function () { var context = getContext(); var response = context.getResponse(); response.setBody('Hello, World'); }
/// ",
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
/// 		_, err = cosmosdb.NewSqlStoredProcedure(ctx, "example", &cosmosdb.SqlStoredProcedureArgs{
/// 			Name:              pulumi.String("test-stored-proc"),
/// 			ResourceGroupName: pulumi.String(example.ResourceGroupName),
/// 			AccountName:       pulumi.String(example.Name),
/// 			DatabaseName:      exampleSqlDatabase.Name,
/// 			ContainerName:     exampleSqlContainer.Name,
/// 			Body:              pulumi.String("   function () { var context = getContext(); var response = context.getResponse(); response.setBody('Hello, World'); }\n"),
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
/// import com.pulumi.azure.cosmosdb.SqlStoredProcedure;
/// import com.pulumi.azure.cosmosdb.SqlStoredProcedureArgs;
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
///         var exampleSqlStoredProcedure = new SqlStoredProcedure("exampleSqlStoredProcedure", SqlStoredProcedureArgs.builder()
///             .name("test-stored-proc")
///             .resourceGroupName(example.resourceGroupName())
///             .accountName(example.name())
///             .databaseName(exampleSqlDatabase.name())
///             .containerName(exampleSqlContainer.name())
///             .body("""
///    function () { var context = getContext(); var response = context.getResponse(); response.setBody('Hello, World'); }
///             """)
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
///   exampleSqlStoredProcedure:
///     type: azure:cosmosdb:SqlStoredProcedure
///     name: example
///     properties:
///       name: test-stored-proc
///       resourceGroupName: ${example.resourceGroupName}
///       accountName: ${example.name}
///       databaseName: ${exampleSqlDatabase.name}
///       containerName: ${exampleSqlContainer.name}
///       body: |2
///            function () { var context = getContext(); var response = context.getResponse(); response.setBody('Hello, World'); }
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
/// CosmosDB SQL Stored Procedures can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/sqlStoredProcedure:SqlStoredProcedure db1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.DocumentDB/databaseAccounts/account1/sqlDatabases/db1/containers/c1/storedProcedures/sp1
/// ```
class SqlStoredProcedure extends pulumi.CustomResource {
  /// The name of the Cosmos DB Account to create the stored procedure within. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accountName;
  /// The body of the stored procedure.
  late final pulumi.Output<String> body;
  /// The name of the Cosmos DB SQL Container to create the stored procedure within. Changing this forces a new resource to be created.
  late final pulumi.Output<String> containerName;
  /// The name of the Cosmos DB SQL Database to create the stored procedure within. Changing this forces a new resource to be created.
  late final pulumi.Output<String> databaseName;
  /// Specifies the name of the Cosmos DB SQL Stored Procedure. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which the Cosmos DB SQL Database is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [SqlStoredProcedure].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlStoredProcedure]. {@macro pulumi_cosmosdb_sql_stored_procedure_sql_stored_procedure_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlStoredProcedure(
    String name, {
    SqlStoredProcedureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/sqlStoredProcedure:SqlStoredProcedure',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountName = registerOutput<String>('accountName');
    this.body = registerOutput<String>('body');
    this.containerName = registerOutput<String>('containerName');
    this.databaseName = registerOutput<String>('databaseName');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [SqlStoredProcedure] resource's state with the given [name] and [id].
  static SqlStoredProcedure get(
    String name,
    pulumi.Input<String> id, {
    SqlStoredProcedureState? state,
  }) {
    return SqlStoredProcedure._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SqlStoredProcedure._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/sqlStoredProcedure:SqlStoredProcedure',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountName = registerOutput<String>('accountName');
    this.body = registerOutput<String>('body');
    this.containerName = registerOutput<String>('containerName');
    this.databaseName = registerOutput<String>('databaseName');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
