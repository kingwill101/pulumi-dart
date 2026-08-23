import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_args.dart';
import 'table_autoscale_settings.dart';
import 'table_state.dart';

/// Manages a Table within a Cosmos DB Account.
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
/// const exampleTable = new azure.cosmosdb.Table("example", {
///     name: "tfex-cosmos-table",
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
/// example_table = azure.cosmosdb.Table("example",
///     name="tfex-cosmos-table",
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
///     var exampleTable = new Azure.CosmosDB.Table("example", new()
///     {
///         Name = "tfex-cosmos-table",
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
/// 		_, err = cosmosdb.NewTable(ctx, "example", &cosmosdb.TableArgs{
/// 			Name:              pulumi.String("tfex-cosmos-table"),
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
/// resource "azure_cosmosdb_table" "example" {
///   name                = "tfex-cosmos-table"
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
/// import com.pulumi.azure.cosmosdb.Table;
/// import com.pulumi.azure.cosmosdb.TableArgs;
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
///         var exampleTable = new Table("exampleTable", TableArgs.builder()
///             .name("tfex-cosmos-table")
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
///   exampleTable:
///     type: azure:cosmosdb:Table
///     name: example
///     properties:
///       name: tfex-cosmos-table
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
/// CosmosDB Tables can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/table:Table table1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.DocumentDB/databaseAccounts/account1/tables/table1
/// ```
class Table extends pulumi.CustomResource {
  /// The name of the Cosmos DB Table to create the table within. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accountName;
  /// An `autoscaleSettings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  ///
  /// &gt; **Note:** Switching between autoscale and manual throughput is not supported via this provider and must be completed via the Azure Portal and refreshed.
  late final pulumi.Output<TableAutoscaleSettings?> autoscaleSettings;
  /// Specifies the name of the Cosmos DB Table. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which the Cosmos DB Table is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The throughput of Table (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual resource destroy-apply.
  ///
  /// &gt; **Note:** throughput has a maximum value of `1000000` unless a higher limit is requested via Azure Support
  late final pulumi.Output<int> throughput;

  /// Creates a new [Table].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Table]. {@macro pulumi_cosmosdb_table_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Table(
    String name, {
    TableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/table:Table',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    autoscaleSettings = registerOutput<TableAutoscaleSettings?>('autoscaleSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableAutoscaleSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    throughput = registerOutput<int>('throughput');
  }

  /// Gets an existing [Table] resource's state with the given [name] and [id].
  static Table get(
    String name,
    pulumi.Input<String> id, {
    TableState? state,
  }) {
    return Table._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Table._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/table:Table',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    autoscaleSettings = registerOutput<TableAutoscaleSettings?>('autoscaleSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableAutoscaleSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    throughput = registerOutput<int>('throughput');
  }
}
