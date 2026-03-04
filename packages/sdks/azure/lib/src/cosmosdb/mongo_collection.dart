import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_collection_args.dart';
import 'mongo_collection_autoscale_settings.dart';
import 'mongo_collection_state.dart';

/// Manages a Mongo Collection within a Cosmos DB Account.
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
/// const exampleMongoDatabase = new azure.cosmosdb.MongoDatabase("example", {
///     name: "tfex-cosmos-mongo-db",
///     resourceGroupName: example.then(example => example.resourceGroupName),
///     accountName: example.then(example => example.name),
/// });
/// const exampleMongoCollection = new azure.cosmosdb.MongoCollection("example", {
///     name: "tfex-cosmos-mongo-db",
///     resourceGroupName: example.then(example => example.resourceGroupName),
///     accountName: example.then(example => example.name),
///     databaseName: exampleMongoDatabase.name,
///     defaultTtlSeconds: 777,
///     shardKey: "uniqueKey",
///     throughput: 400,
///     indices: [{
///         keys: ["_id"],
///         unique: true,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cosmosdb.get_account(name="tfex-cosmosdb-account",
///     resource_group_name="tfex-cosmosdb-account-rg")
/// example_mongo_database = azure.cosmosdb.MongoDatabase("example",
///     name="tfex-cosmos-mongo-db",
///     resource_group_name=example.resource_group_name,
///     account_name=example.name)
/// example_mongo_collection = azure.cosmosdb.MongoCollection("example",
///     name="tfex-cosmos-mongo-db",
///     resource_group_name=example.resource_group_name,
///     account_name=example.name,
///     database_name=example_mongo_database.name,
///     default_ttl_seconds=777,
///     shard_key="uniqueKey",
///     throughput=400,
///     indices=[{
///         "keys": ["_id"],
///         "unique": True,
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
///     var exampleMongoDatabase = new Azure.CosmosDB.MongoDatabase("example", new()
///     {
///         Name = "tfex-cosmos-mongo-db",
///         ResourceGroupName = example.Apply(getAccountResult => getAccountResult.ResourceGroupName),
///         AccountName = example.Apply(getAccountResult => getAccountResult.Name),
///     });
///
///     var exampleMongoCollection = new Azure.CosmosDB.MongoCollection("example", new()
///     {
///         Name = "tfex-cosmos-mongo-db",
///         ResourceGroupName = example.Apply(getAccountResult => getAccountResult.ResourceGroupName),
///         AccountName = example.Apply(getAccountResult => getAccountResult.Name),
///         DatabaseName = exampleMongoDatabase.Name,
///         DefaultTtlSeconds = 777,
///         ShardKey = "uniqueKey",
///         Throughput = 400,
///         Indices = new[]
///         {
///             new Azure.CosmosDB.Inputs.MongoCollectionIndexArgs
///             {
///                 Keys = new[]
///                 {
///                     "_id",
///                 },
///                 Unique = true,
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
/// 		exampleMongoDatabase, err := cosmosdb.NewMongoDatabase(ctx, "example", &cosmosdb.MongoDatabaseArgs{
/// 			Name:              pulumi.String("tfex-cosmos-mongo-db"),
/// 			ResourceGroupName: pulumi.String(example.ResourceGroupName),
/// 			AccountName:       pulumi.String(example.Name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cosmosdb.NewMongoCollection(ctx, "example", &cosmosdb.MongoCollectionArgs{
/// 			Name:              pulumi.String("tfex-cosmos-mongo-db"),
/// 			ResourceGroupName: pulumi.String(example.ResourceGroupName),
/// 			AccountName:       pulumi.String(example.Name),
/// 			DatabaseName:      exampleMongoDatabase.Name,
/// 			DefaultTtlSeconds: pulumi.Int(777),
/// 			ShardKey:          pulumi.String("uniqueKey"),
/// 			Throughput:        pulumi.Int(400),
/// 			Indices: cosmosdb.MongoCollectionIndexArray{
/// 				&cosmosdb.MongoCollectionIndexArgs{
/// 					Keys: pulumi.StringArray{
/// 						pulumi.String("_id"),
/// 					},
/// 					Unique: pulumi.Bool(true),
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
/// import com.pulumi.azure.cosmosdb.CosmosdbFunctions;
/// import com.pulumi.azure.cosmosdb.inputs.GetAccountArgs;
/// import com.pulumi.azure.cosmosdb.MongoDatabase;
/// import com.pulumi.azure.cosmosdb.MongoDatabaseArgs;
/// import com.pulumi.azure.cosmosdb.MongoCollection;
/// import com.pulumi.azure.cosmosdb.MongoCollectionArgs;
/// import com.pulumi.azure.cosmosdb.inputs.MongoCollectionIndexArgs;
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
///         var exampleMongoDatabase = new MongoDatabase("exampleMongoDatabase", MongoDatabaseArgs.builder()
///             .name("tfex-cosmos-mongo-db")
///             .resourceGroupName(example.resourceGroupName())
///             .accountName(example.name())
///             .build());
///
///         var exampleMongoCollection = new MongoCollection("exampleMongoCollection", MongoCollectionArgs.builder()
///             .name("tfex-cosmos-mongo-db")
///             .resourceGroupName(example.resourceGroupName())
///             .accountName(example.name())
///             .databaseName(exampleMongoDatabase.name())
///             .defaultTtlSeconds(777)
///             .shardKey("uniqueKey")
///             .throughput(400)
///             .indices(MongoCollectionIndexArgs.builder()
///                 .keys("_id")
///                 .unique(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleMongoDatabase:
///     type: azure:cosmosdb:MongoDatabase
///     name: example
///     properties:
///       name: tfex-cosmos-mongo-db
///       resourceGroupName: ${example.resourceGroupName}
///       accountName: ${example.name}
///   exampleMongoCollection:
///     type: azure:cosmosdb:MongoCollection
///     name: example
///     properties:
///       name: tfex-cosmos-mongo-db
///       resourceGroupName: ${example.resourceGroupName}
///       accountName: ${example.name}
///       databaseName: ${exampleMongoDatabase.name}
///       defaultTtlSeconds: '777'
///       shardKey: uniqueKey
///       throughput: 400
///       indices:
///         - keys:
///             - _id
///           unique: true
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
/// CosmosDB Mongo Collection can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/mongoCollection:MongoCollection collection1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.DocumentDB/databaseAccounts/account1/mongodbDatabases/db1/collections/collection1
/// ```
class MongoCollection extends pulumi.CustomResource {
  /// The name of the Cosmos DB Account in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accountName;

  /// The default time to live of Analytical Storage for this Mongo Collection. If present and the value is set to `-1`, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number `n` – items will expire `n` seconds after their last modified time.
  late final pulumi.Output<int?> analyticalStorageTtl;

  /// An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply.
  ///
  /// &gt; **Note:** Switching between autoscale and manual throughput is not supported via this provider and must be completed via the Azure Portal and refreshed.
  late final pulumi.Output<MongoCollectionAutoscaleSettings?> autoscaleSettings;

  /// The name of the Cosmos DB Mongo Database in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> databaseName;

  /// The default Time To Live in seconds. If the value is `-1`, items are not automatically expired.
  late final pulumi.Output<int?> defaultTtlSeconds;

  /// One or more `index` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> indices;

  /// Specifies the name of the Cosmos DB Mongo Collection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the resource group in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The name of the key to partition on for sharding. There must not be any other unique index keys. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> shardKey;

  /// One or more `system_indexes` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> systemIndexes;

  /// The throughput of the MongoDB collection (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply.
  late final pulumi.Output<int> throughput;

  /// Creates a new [MongoCollection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MongoCollection]. {@macro pulumi_cosmosdb_mongo_collection_mongo_collection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MongoCollection(
    String name, {
    MongoCollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:cosmosdb/mongoCollection:MongoCollection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountName = registerOutput<String>('accountName');
    analyticalStorageTtl = registerOutput<int?>('analyticalStorageTtl');
    autoscaleSettings = registerOutput<MongoCollectionAutoscaleSettings?>(
      'autoscaleSettings',
    );
    databaseName = registerOutput<String>('databaseName');
    defaultTtlSeconds = registerOutput<int?>('defaultTtlSeconds');
    indices = registerOutput<List<Map<String, dynamic>>?>('indices');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    shardKey = registerOutput<String?>('shardKey');
    systemIndexes = registerOutput<List<Map<String, dynamic>>>('systemIndexes');
    throughput = registerOutput<int>('throughput');
  }

  /// Gets an existing [MongoCollection] resource's state with the given [name] and [id].
  static MongoCollection get(
    String name,
    pulumi.Input<String> id, {
    MongoCollectionState? state,
  }) {
    return MongoCollection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MongoCollection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:cosmosdb/mongoCollection:MongoCollection',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountName = registerOutput<String>('accountName');
    analyticalStorageTtl = registerOutput<int?>('analyticalStorageTtl');
    autoscaleSettings = registerOutput<MongoCollectionAutoscaleSettings?>(
      'autoscaleSettings',
    );
    databaseName = registerOutput<String>('databaseName');
    defaultTtlSeconds = registerOutput<int?>('defaultTtlSeconds');
    indices = registerOutput<List<Map<String, dynamic>>?>('indices');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    shardKey = registerOutput<String?>('shardKey');
    systemIndexes = registerOutput<List<Map<String, dynamic>>>('systemIndexes');
    throughput = registerOutput<int>('throughput');
  }
}
