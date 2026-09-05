import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_container_args.dart';
import 'sql_container_autoscale_settings.dart';
import 'sql_container_conflict_resolution_policy.dart';
import 'sql_container_indexing_policy.dart';
import 'sql_container_state.dart';
import 'sql_container_unique_key.dart';

/// Manages a SQL Container within a Cosmos DB Account.
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
///     name: "example-acsd",
///     resourceGroupName: example.then(example => example.resourceGroupName),
///     accountName: example.then(example => example.name),
/// });
/// const exampleSqlContainer = new azure.cosmosdb.SqlContainer("example", {
///     name: "example-container",
///     resourceGroupName: example.then(example => example.resourceGroupName),
///     accountName: example.then(example => example.name),
///     databaseName: exampleSqlDatabase.name,
///     partitionKeyPaths: ["/definition/id"],
///     partitionKeyVersion: 1,
///     throughput: 400,
///     indexingPolicy: {
///         indexingMode: "consistent",
///         includedPaths: [
///             {
///                 path: "/*",
///             },
///             {
///                 path: "/included/?",
///             },
///         ],
///         excludedPaths: [{
///             path: "/excluded/?",
///         }],
///     },
///     uniqueKeys: [{
///         paths: [
///             "/definition/idlong",
///             "/definition/idshort",
///         ],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cosmosdb.get_account(name="tfex-cosmosdb-account",
///     resource_group_name="tfex-cosmosdb-account-rg")
/// example_sql_database = azure.cosmosdb.SqlDatabase("example",
///     name="example-acsd",
///     resource_group_name=example.resource_group_name,
///     account_name=example.name)
/// example_sql_container = azure.cosmosdb.SqlContainer("example",
///     name="example-container",
///     resource_group_name=example.resource_group_name,
///     account_name=example.name,
///     database_name=example_sql_database.name,
///     partition_key_paths=["/definition/id"],
///     partition_key_version=1,
///     throughput=400,
///     indexing_policy={
///         "indexing_mode": "consistent",
///         "included_paths": [
///             {
///                 "path": "/*",
///             },
///             {
///                 "path": "/included/?",
///             },
///         ],
///         "excluded_paths": [{
///             "path": "/excluded/?",
///         }],
///     },
///     unique_keys=[{
///         "paths": [
///             "/definition/idlong",
///             "/definition/idshort",
///         ],
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
///     var example = Azure.CosmosDB.GetAccount.Invoke(new()
///     {
///         Name = "tfex-cosmosdb-account",
///         ResourceGroupName = "tfex-cosmosdb-account-rg",
///     });
///
///     var exampleSqlDatabase = new Azure.CosmosDB.SqlDatabase("example", new()
///     {
///         Name = "example-acsd",
///         ResourceGroupName = example.Apply(getAccountResult => getAccountResult.ResourceGroupName),
///         AccountName = example.Apply(getAccountResult => getAccountResult.Name),
///     });
///
///     var exampleSqlContainer = new Azure.CosmosDB.SqlContainer("example", new()
///     {
///         Name = "example-container",
///         ResourceGroupName = example.Apply(getAccountResult => getAccountResult.ResourceGroupName),
///         AccountName = example.Apply(getAccountResult => getAccountResult.Name),
///         DatabaseName = exampleSqlDatabase.Name,
///         PartitionKeyPaths = new[]
///         {
///             "/definition/id",
///         },
///         PartitionKeyVersion = 1,
///         Throughput = 400,
///         IndexingPolicy = new Azure.CosmosDB.Inputs.SqlContainerIndexingPolicyArgs
///         {
///             IndexingMode = "consistent",
///             IncludedPaths = new[]
///             {
///                 new Azure.CosmosDB.Inputs.SqlContainerIndexingPolicyIncludedPathArgs
///                 {
///                     Path = "/*",
///                 },
///                 new Azure.CosmosDB.Inputs.SqlContainerIndexingPolicyIncludedPathArgs
///                 {
///                     Path = "/included/?",
///                 },
///             },
///             ExcludedPaths = new[]
///             {
///                 new Azure.CosmosDB.Inputs.SqlContainerIndexingPolicyExcludedPathArgs
///                 {
///                     Path = "/excluded/?",
///                 },
///             },
///         },
///         UniqueKeys = new[]
///         {
///             new Azure.CosmosDB.Inputs.SqlContainerUniqueKeyArgs
///             {
///                 Paths = new[]
///                 {
///                     "/definition/idlong",
///                     "/definition/idshort",
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
/// 			Name:              pulumi.String("example-acsd"),
/// 			ResourceGroupName: pulumi.String(example.ResourceGroupName),
/// 			AccountName:       pulumi.String(example.Name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cosmosdb.NewSqlContainer(ctx, "example", &cosmosdb.SqlContainerArgs{
/// 			Name:              pulumi.String("example-container"),
/// 			ResourceGroupName: pulumi.String(example.ResourceGroupName),
/// 			AccountName:       pulumi.String(example.Name),
/// 			DatabaseName:      exampleSqlDatabase.Name,
/// 			PartitionKeyPaths: pulumi.StringArray{
/// 				pulumi.String("/definition/id"),
/// 			},
/// 			PartitionKeyVersion: pulumi.Int(1),
/// 			Throughput:          pulumi.Int(400),
/// 			IndexingPolicy: &cosmosdb.SqlContainerIndexingPolicyArgs{
/// 				IndexingMode: pulumi.String("consistent"),
/// 				IncludedPaths: cosmosdb.SqlContainerIndexingPolicyIncludedPathArray{
/// 					&cosmosdb.SqlContainerIndexingPolicyIncludedPathArgs{
/// 						Path: pulumi.String("/*"),
/// 					},
/// 					&cosmosdb.SqlContainerIndexingPolicyIncludedPathArgs{
/// 						Path: pulumi.String("/included/?"),
/// 					},
/// 				},
/// 				ExcludedPaths: cosmosdb.SqlContainerIndexingPolicyExcludedPathArray{
/// 					&cosmosdb.SqlContainerIndexingPolicyExcludedPathArgs{
/// 						Path: pulumi.String("/excluded/?"),
/// 					},
/// 				},
/// 			},
/// 			UniqueKeys: cosmosdb.SqlContainerUniqueKeyArray{
/// 				&cosmosdb.SqlContainerUniqueKeyArgs{
/// 					Paths: pulumi.StringArray{
/// 						pulumi.String("/definition/idlong"),
/// 						pulumi.String("/definition/idshort"),
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
///   name                = "example-acsd"
///   resource_group_name = data.azure_cosmosdb_getaccount.example.resource_group_name
///   account_name        = data.azure_cosmosdb_getaccount.example.name
/// }
/// resource "azure_cosmosdb_sqlcontainer" "example" {
///   name                  = "example-container"
///   resource_group_name   = data.azure_cosmosdb_getaccount.example.resource_group_name
///   account_name          = data.azure_cosmosdb_getaccount.example.name
///   database_name         = azure_cosmosdb_sqldatabase.example.name
///   partition_key_paths   = ["/definition/id"]
///   partition_key_version = 1
///   throughput            = 400
///   indexing_policy = {
///     indexing_mode = "consistent"
///     included_paths = [{
///       "path" = "/*"
///       }, {
///       "path" = "/included/?"
///     }]
///     excluded_paths = [{
///       "path" = "/excluded/?"
///     }]
///   }
///   unique_keys {
///     paths = ["/definition/idlong", "/definition/idshort"]
///   }
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
/// import com.pulumi.azure.cosmosdb.inputs.SqlContainerIndexingPolicyArgs;
/// import com.pulumi.azure.cosmosdb.inputs.SqlContainerIndexingPolicyIncludedPathArgs;
/// import com.pulumi.azure.cosmosdb.inputs.SqlContainerIndexingPolicyExcludedPathArgs;
/// import com.pulumi.azure.cosmosdb.inputs.SqlContainerUniqueKeyArgs;
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
///             .name("example-acsd")
///             .resourceGroupName(example.resourceGroupName())
///             .accountName(example.name())
///             .build());
///
///         var exampleSqlContainer = new SqlContainer("exampleSqlContainer", SqlContainerArgs.builder()
///             .name("example-container")
///             .resourceGroupName(example.resourceGroupName())
///             .accountName(example.name())
///             .databaseName(exampleSqlDatabase.name())
///             .partitionKeyPaths("/definition/id")
///             .partitionKeyVersion(1)
///             .throughput(400)
///             .indexingPolicy(SqlContainerIndexingPolicyArgs.builder()
///                 .indexingMode("consistent")
///                 .includedPaths(
///                     SqlContainerIndexingPolicyIncludedPathArgs.builder()
///                         .path("/*")
///                         .build(),
///                     SqlContainerIndexingPolicyIncludedPathArgs.builder()
///                         .path("/included/?")
///                         .build())
///                 .excludedPaths(SqlContainerIndexingPolicyExcludedPathArgs.builder()
///                     .path("/excluded/?")
///                     .build())
///                 .build())
///             .uniqueKeys(SqlContainerUniqueKeyArgs.builder()
///                 .paths(
///                     "/definition/idlong",
///                     "/definition/idshort")
///                 .build())
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
///       name: example-acsd
///       resourceGroupName: ${example.resourceGroupName}
///       accountName: ${example.name}
///   exampleSqlContainer:
///     type: azure:cosmosdb:SqlContainer
///     name: example
///     properties:
///       name: example-container
///       resourceGroupName: ${example.resourceGroupName}
///       accountName: ${example.name}
///       databaseName: ${exampleSqlDatabase.name}
///       partitionKeyPaths:
///         - /definition/id
///       partitionKeyVersion: 1
///       throughput: 400
///       indexingPolicy:
///         indexingMode: consistent
///         includedPaths:
///           - path: /*
///           - path: /included/?
///         excludedPaths:
///           - path: /excluded/?
///       uniqueKeys:
///         - paths:
///             - /definition/idlong
///             - /definition/idshort
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
/// Cosmos SQL Containers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/sqlContainer:SqlContainer example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DocumentDB/databaseAccounts/account1/sqlDatabases/database1/containers/container1
/// ```
class SqlContainer extends pulumi.CustomResource {
  /// The name of the Cosmos DB Account to create the container within. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accountName;
  /// The default time to live of Analytical Storage for this SQL container. If present and the value is set to `-1`, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number `n` – items will expire `n` seconds after their last modified time.
  late final pulumi.Output<int?> analyticalStorageTtl;
  /// An `autoscaleSettings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  ///
  /// &gt; **Note:** Switching between autoscale and manual throughput is not supported via this provider and must be completed via the Azure Portal and refreshed.
  late final pulumi.Output<SqlContainerAutoscaleSettings?> autoscaleSettings;
  /// A `conflictResolutionPolicy` blocks as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<SqlContainerConflictResolutionPolicy> conflictResolutionPolicy;
  /// The name of the Cosmos DB SQL Database to create the container within. Changing this forces a new resource to be created.
  late final pulumi.Output<String> databaseName;
  /// The default time to live of SQL container. If missing, items are not expired automatically. If present and the value is set to `-1`, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number `n` – items will expire `n` seconds after their last modified time.
  late final pulumi.Output<int?> defaultTtl;
  /// An `indexingPolicy` block as defined below.
  late final pulumi.Output<SqlContainerIndexingPolicy> indexingPolicy;
  /// Specifies the name of the Cosmos DB SQL Container. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Define a partition key kind. Possible values are `Hash` and `MultiHash`. Defaults to `Hash`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> partitionKeyKind;
  /// A list of partition key paths. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>> partitionKeyPaths;
  /// Define a partition key version. Possible values are `1`and `2`. This should be set to `2` in order to use large partition keys.
  ///
  /// &gt; **Note:** If `partitionKeyVersion` is not specified when creating a new resource, you can update `partitionKeyVersion` to `1`, updating to `2` forces a new resource to be created.
  late final pulumi.Output<int?> partitionKeyVersion;
  /// The name of the resource group in which the Cosmos DB SQL Container is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The throughput of SQL container (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon container creation otherwise it cannot be updated without a manual resource destroy-apply.
  late final pulumi.Output<int> throughput;
  /// One or more `uniqueKey` blocks as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<SqlContainerUniqueKey>?> uniqueKeys;

  /// Creates a new [SqlContainer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlContainer]. {@macro pulumi_cosmosdb_sql_container_sql_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlContainer(
    String name, {
    SqlContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/sqlContainer:SqlContainer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    accountName = registerOutput<String>('accountName');
    analyticalStorageTtl = registerOutput<int?>('analyticalStorageTtl');
    autoscaleSettings = registerOutput<SqlContainerAutoscaleSettings?>('autoscaleSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqlContainerAutoscaleSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    conflictResolutionPolicy = registerOutput<SqlContainerConflictResolutionPolicy>('conflictResolutionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqlContainerConflictResolutionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    databaseName = registerOutput<String>('databaseName');
    defaultTtl = registerOutput<int?>('defaultTtl');
    indexingPolicy = registerOutput<SqlContainerIndexingPolicy>('indexingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqlContainerIndexingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    partitionKeyKind = registerOutput<String?>('partitionKeyKind');
    partitionKeyPaths = registerOutput<List<String>>('partitionKeyPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    partitionKeyVersion = registerOutput<int?>('partitionKeyVersion');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    throughput = registerOutput<int>('throughput');
    uniqueKeys = registerOutput<List<SqlContainerUniqueKey>?>('uniqueKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SqlContainerUniqueKey>(guardedValue, (value) => SqlContainerUniqueKey.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [SqlContainer] resource's state with the given [name] and [id].
  static SqlContainer get(
    String name,
    pulumi.Input<String> id, {
    SqlContainerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SqlContainer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SqlContainer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/sqlContainer:SqlContainer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    analyticalStorageTtl = registerOutput<int?>('analyticalStorageTtl');
    autoscaleSettings = registerOutput<SqlContainerAutoscaleSettings?>('autoscaleSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqlContainerAutoscaleSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    conflictResolutionPolicy = registerOutput<SqlContainerConflictResolutionPolicy>('conflictResolutionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqlContainerConflictResolutionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    databaseName = registerOutput<String>('databaseName');
    defaultTtl = registerOutput<int?>('defaultTtl');
    indexingPolicy = registerOutput<SqlContainerIndexingPolicy>('indexingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqlContainerIndexingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    partitionKeyKind = registerOutput<String?>('partitionKeyKind');
    partitionKeyPaths = registerOutput<List<String>>('partitionKeyPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    partitionKeyVersion = registerOutput<int?>('partitionKeyVersion');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    throughput = registerOutput<int>('throughput');
    uniqueKeys = registerOutput<List<SqlContainerUniqueKey>?>('uniqueKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SqlContainerUniqueKey>(guardedValue, (value) => SqlContainerUniqueKey.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [SqlContainer] resource.
  SqlContainer.reference(String urn)
    : super(
        'azure:cosmosdb/sqlContainer:SqlContainer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountName = registerOutput<String>('accountName');
    analyticalStorageTtl = registerOutput<int?>('analyticalStorageTtl');
    autoscaleSettings = registerOutput<SqlContainerAutoscaleSettings?>('autoscaleSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqlContainerAutoscaleSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    conflictResolutionPolicy = registerOutput<SqlContainerConflictResolutionPolicy>('conflictResolutionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqlContainerConflictResolutionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    databaseName = registerOutput<String>('databaseName');
    defaultTtl = registerOutput<int?>('defaultTtl');
    indexingPolicy = registerOutput<SqlContainerIndexingPolicy>('indexingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqlContainerIndexingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    partitionKeyKind = registerOutput<String?>('partitionKeyKind');
    partitionKeyPaths = registerOutput<List<String>>('partitionKeyPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    partitionKeyVersion = registerOutput<int?>('partitionKeyVersion');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    throughput = registerOutput<int>('throughput');
    uniqueKeys = registerOutput<List<SqlContainerUniqueKey>?>('uniqueKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SqlContainerUniqueKey>(guardedValue, (value) => SqlContainerUniqueKey.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
