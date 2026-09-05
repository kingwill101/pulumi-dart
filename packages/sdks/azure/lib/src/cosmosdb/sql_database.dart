import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_database_args.dart';
import 'sql_database_autoscale_settings.dart';
import 'sql_database_state.dart';

/// Manages a SQL Database within a Cosmos DB Account.
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
///     name: "tfex-cosmos-sql-db",
///     resourceGroupName: example.then(example => example.resourceGroupName),
///     accountName: example.then(example => example.name),
///     throughput: 400,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cosmosdb.get_account(name="tfex-cosmosdb-account",
///     resource_group_name="tfex-cosmosdb-account-rg")
/// example_sql_database = azure.cosmosdb.SqlDatabase("example",
///     name="tfex-cosmos-sql-db",
///     resource_group_name=example.resource_group_name,
///     account_name=example.name,
///     throughput=400)
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
///         Name = "tfex-cosmos-sql-db",
///         ResourceGroupName = example.Apply(getAccountResult => getAccountResult.ResourceGroupName),
///         AccountName = example.Apply(getAccountResult => getAccountResult.Name),
///         Throughput = 400,
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
/// 		_, err = cosmosdb.NewSqlDatabase(ctx, "example", &cosmosdb.SqlDatabaseArgs{
/// 			Name:              pulumi.String("tfex-cosmos-sql-db"),
/// 			ResourceGroupName: pulumi.String(example.ResourceGroupName),
/// 			AccountName:       pulumi.String(example.Name),
/// 			Throughput:        pulumi.Int(400),
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
///   name                = "tfex-cosmos-sql-db"
///   resource_group_name = data.azure_cosmosdb_getaccount.example.resource_group_name
///   account_name        = data.azure_cosmosdb_getaccount.example.name
///   throughput          = 400
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
///             .name("tfex-cosmos-sql-db")
///             .resourceGroupName(example.resourceGroupName())
///             .accountName(example.name())
///             .throughput(400)
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
///       name: tfex-cosmos-sql-db
///       resourceGroupName: ${example.resourceGroupName}
///       accountName: ${example.name}
///       throughput: 400
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
/// Cosmos SQL Database can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/sqlDatabase:SqlDatabase db1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.DocumentDB/databaseAccounts/account1/sqlDatabases/db1
/// ```
class SqlDatabase extends pulumi.CustomResource {
  /// The name of the Cosmos DB SQL Database to create the table within. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accountName;
  /// An `autoscaleSettings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  ///
  /// &gt; **Note:** Switching between autoscale and manual throughput is not supported via this provider and must be completed via the Azure Portal and refreshed.
  late final pulumi.Output<SqlDatabaseAutoscaleSettings?> autoscaleSettings;
  /// Specifies the name of the Cosmos DB SQL Database. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which the Cosmos DB SQL Database is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The throughput of SQL database (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. Do not set when `azure.cosmosdb.Account` is configured with `EnableServerless` capability.
  ///
  /// &gt; **Note:** Throughput has a maximum value of `1000000` unless a higher limit is requested via Azure Support
  late final pulumi.Output<int> throughput;

  /// Creates a new [SqlDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlDatabase]. {@macro pulumi_cosmosdb_sql_database_sql_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlDatabase(
    String name, {
    SqlDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/sqlDatabase:SqlDatabase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    accountName = registerOutput<String>('accountName');
    autoscaleSettings = registerOutput<SqlDatabaseAutoscaleSettings?>('autoscaleSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqlDatabaseAutoscaleSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    throughput = registerOutput<int>('throughput');
  }

  /// Gets an existing [SqlDatabase] resource's state with the given [name] and [id].
  static SqlDatabase get(
    String name,
    pulumi.Input<String> id, {
    SqlDatabaseState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SqlDatabase._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SqlDatabase._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/sqlDatabase:SqlDatabase',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    autoscaleSettings = registerOutput<SqlDatabaseAutoscaleSettings?>('autoscaleSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqlDatabaseAutoscaleSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    throughput = registerOutput<int>('throughput');
  }

  /// Creates a typed reference to an existing [SqlDatabase] resource.
  SqlDatabase.reference(String urn)
    : super(
        'azure:cosmosdb/sqlDatabase:SqlDatabase',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountName = registerOutput<String>('accountName');
    autoscaleSettings = registerOutput<SqlDatabaseAutoscaleSettings?>('autoscaleSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqlDatabaseAutoscaleSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    throughput = registerOutput<int>('throughput');
  }
}
