import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_table_args.dart';
import 'cassandra_table_autoscale_settings.dart';
import 'cassandra_table_schema.dart';
import 'cassandra_table_state.dart';

/// Manages a Cassandra Table within a Cosmos DB Cassandra Keyspace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "tflex-cosmosdb-account-rg",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.cosmosdb.Account("example", {
///     name: "tfex-cosmosdb-account",
///     resourceGroupName: example.name,
///     location: example.location,
///     offerType: "Standard",
///     capabilities: [{
///         name: "EnableCassandra",
///     }],
///     consistencyPolicy: {
///         consistencyLevel: "Strong",
///     },
///     geoLocations: [{
///         location: example.location,
///         failoverPriority: 0,
///     }],
/// });
/// const exampleCassandraKeyspace = new azure.cosmosdb.CassandraKeyspace("example", {
///     name: "tfex-cosmos-cassandra-keyspace",
///     resourceGroupName: exampleAccount.resourceGroupName,
///     accountName: exampleAccount.name,
///     throughput: 400,
/// });
/// const exampleCassandraTable = new azure.cosmosdb.CassandraTable("example", {
///     name: "testtable",
///     cassandraKeyspaceId: exampleCassandraKeyspace.id,
///     schema: {
///         columns: [
///             {
///                 name: "test1",
///                 type: "ascii",
///             },
///             {
///                 name: "test2",
///                 type: "int",
///             },
///         ],
///         partitionKeys: [{
///             name: "test1",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="tflex-cosmosdb-account-rg",
///     location="West Europe")
/// example_account = azure.cosmosdb.Account("example",
///     name="tfex-cosmosdb-account",
///     resource_group_name=example.name,
///     location=example.location,
///     offer_type="Standard",
///     capabilities=[{
///         "name": "EnableCassandra",
///     }],
///     consistency_policy={
///         "consistency_level": "Strong",
///     },
///     geo_locations=[{
///         "location": example.location,
///         "failover_priority": 0,
///     }])
/// example_cassandra_keyspace = azure.cosmosdb.CassandraKeyspace("example",
///     name="tfex-cosmos-cassandra-keyspace",
///     resource_group_name=example_account.resource_group_name,
///     account_name=example_account.name,
///     throughput=400)
/// example_cassandra_table = azure.cosmosdb.CassandraTable("example",
///     name="testtable",
///     cassandra_keyspace_id=example_cassandra_keyspace.id,
///     schema={
///         "columns": [
///             {
///                 "name": "test1",
///                 "type": "ascii",
///             },
///             {
///                 "name": "test2",
///                 "type": "int",
///             },
///         ],
///         "partition_keys": [{
///             "name": "test1",
///         }],
///     })
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
///         Name = "tflex-cosmosdb-account-rg",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.CosmosDB.Account("example", new()
///     {
///         Name = "tfex-cosmosdb-account",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         OfferType = "Standard",
///         Capabilities = new[]
///         {
///             new Azure.CosmosDB.Inputs.AccountCapabilityArgs
///             {
///                 Name = "EnableCassandra",
///             },
///         },
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
///     var exampleCassandraKeyspace = new Azure.CosmosDB.CassandraKeyspace("example", new()
///     {
///         Name = "tfex-cosmos-cassandra-keyspace",
///         ResourceGroupName = exampleAccount.ResourceGroupName,
///         AccountName = exampleAccount.Name,
///         Throughput = 400,
///     });
///
///     var exampleCassandraTable = new Azure.CosmosDB.CassandraTable("example", new()
///     {
///         Name = "testtable",
///         CassandraKeyspaceId = exampleCassandraKeyspace.Id,
///         Schema = new Azure.CosmosDB.Inputs.CassandraTableSchemaArgs
///         {
///             Columns = new[]
///             {
///                 new Azure.CosmosDB.Inputs.CassandraTableSchemaColumnArgs
///                 {
///                     Name = "test1",
///                     Type = "ascii",
///                 },
///                 new Azure.CosmosDB.Inputs.CassandraTableSchemaColumnArgs
///                 {
///                     Name = "test2",
///                     Type = "int",
///                 },
///             },
///             PartitionKeys = new[]
///             {
///                 new Azure.CosmosDB.Inputs.CassandraTableSchemaPartitionKeyArgs
///                 {
///                     Name = "test1",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cosmosdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tflex-cosmosdb-account-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := cosmosdb.NewAccount(ctx, "example", &cosmosdb.AccountArgs{
/// 			Name:              pulumi.String("tfex-cosmosdb-account"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			OfferType:         pulumi.String("Standard"),
/// 			Capabilities: cosmosdb.AccountCapabilityArray{
/// 				&cosmosdb.AccountCapabilityArgs{
/// 					Name: pulumi.String("EnableCassandra"),
/// 				},
/// 			},
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
/// 		exampleCassandraKeyspace, err := cosmosdb.NewCassandraKeyspace(ctx, "example", &cosmosdb.CassandraKeyspaceArgs{
/// 			Name:              pulumi.String("tfex-cosmos-cassandra-keyspace"),
/// 			ResourceGroupName: exampleAccount.ResourceGroupName,
/// 			AccountName:       exampleAccount.Name,
/// 			Throughput:        pulumi.Int(400),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cosmosdb.NewCassandraTable(ctx, "example", &cosmosdb.CassandraTableArgs{
/// 			Name:                pulumi.String("testtable"),
/// 			CassandraKeyspaceId: exampleCassandraKeyspace.ID(),
/// 			Schema: &cosmosdb.CassandraTableSchemaArgs{
/// 				Columns: cosmosdb.CassandraTableSchemaColumnArray{
/// 					&cosmosdb.CassandraTableSchemaColumnArgs{
/// 						Name: pulumi.String("test1"),
/// 						Type: pulumi.String("ascii"),
/// 					},
/// 					&cosmosdb.CassandraTableSchemaColumnArgs{
/// 						Name: pulumi.String("test2"),
/// 						Type: pulumi.String("int"),
/// 					},
/// 				},
/// 				PartitionKeys: cosmosdb.CassandraTableSchemaPartitionKeyArray{
/// 					&cosmosdb.CassandraTableSchemaPartitionKeyArgs{
/// 						Name: pulumi.String("test1"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.cosmosdb.Account;
/// import com.pulumi.azure.cosmosdb.AccountArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountCapabilityArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountConsistencyPolicyArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountGeoLocationArgs;
/// import com.pulumi.azure.cosmosdb.CassandraKeyspace;
/// import com.pulumi.azure.cosmosdb.CassandraKeyspaceArgs;
/// import com.pulumi.azure.cosmosdb.CassandraTable;
/// import com.pulumi.azure.cosmosdb.CassandraTableArgs;
/// import com.pulumi.azure.cosmosdb.inputs.CassandraTableSchemaArgs;
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
///             .name("tflex-cosmosdb-account-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("tfex-cosmosdb-account")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .offerType("Standard")
///             .capabilities(AccountCapabilityArgs.builder()
///                 .name("EnableCassandra")
///                 .build())
///             .consistencyPolicy(AccountConsistencyPolicyArgs.builder()
///                 .consistencyLevel("Strong")
///                 .build())
///             .geoLocations(AccountGeoLocationArgs.builder()
///                 .location(example.location())
///                 .failoverPriority(0)
///                 .build())
///             .build());
///
///         var exampleCassandraKeyspace = new CassandraKeyspace("exampleCassandraKeyspace", CassandraKeyspaceArgs.builder()
///             .name("tfex-cosmos-cassandra-keyspace")
///             .resourceGroupName(exampleAccount.resourceGroupName())
///             .accountName(exampleAccount.name())
///             .throughput(400)
///             .build());
///
///         var exampleCassandraTable = new CassandraTable("exampleCassandraTable", CassandraTableArgs.builder()
///             .name("testtable")
///             .cassandraKeyspaceId(exampleCassandraKeyspace.id())
///             .schema(CassandraTableSchemaArgs.builder()
///                 .columns(
///                     CassandraTableSchemaColumnArgs.builder()
///                         .name("test1")
///                         .type("ascii")
///                         .build(),
///                     CassandraTableSchemaColumnArgs.builder()
///                         .name("test2")
///                         .type("int")
///                         .build())
///                 .partitionKeys(CassandraTableSchemaPartitionKeyArgs.builder()
///                     .name("test1")
///                     .build())
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
///       name: tflex-cosmosdb-account-rg
///       location: West Europe
///   exampleAccount:
///     type: azure:cosmosdb:Account
///     name: example
///     properties:
///       name: tfex-cosmosdb-account
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       offerType: Standard
///       capabilities:
///         - name: EnableCassandra
///       consistencyPolicy:
///         consistencyLevel: Strong
///       geoLocations:
///         - location: ${example.location}
///           failoverPriority: 0
///   exampleCassandraKeyspace:
///     type: azure:cosmosdb:CassandraKeyspace
///     name: example
///     properties:
///       name: tfex-cosmos-cassandra-keyspace
///       resourceGroupName: ${exampleAccount.resourceGroupName}
///       accountName: ${exampleAccount.name}
///       throughput: 400
///   exampleCassandraTable:
///     type: azure:cosmosdb:CassandraTable
///     name: example
///     properties:
///       name: testtable
///       cassandraKeyspaceId: ${exampleCassandraKeyspace.id}
///       schema:
///         columns:
///           - name: test1
///             type: ascii
///           - name: test2
///             type: int
///         partitionKeys:
///           - name: test1
/// ```
///
///
/// ## Import
///
/// Cosmos Cassandra Table can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/cassandraTable:CassandraTable ks1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.DocumentDB/databaseAccounts/account1/cassandraKeyspaces/ks1/tables/table1
/// ```
class CassandraTable extends pulumi.CustomResource {
  /// Time to live of the Analytical Storage. Possible values are between `-1` and `2147483647` except `0`. `-1` means the Analytical Storage never expires. Changing this forces a new resource to be created.
  ///
  /// > **Note:** throughput has a maximum value of `1000000` unless a higher limit is requested via Azure Support
  late final pulumi.Output<int?> analyticalStorageTtl;
  /// An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply.
  ///
  /// > **Note:** Switching between autoscale and manual throughput is not supported via this provider and must be completed via the Azure Portal and refreshed.
  late final pulumi.Output<CassandraTableAutoscaleSettings?> autoscaleSettings;
  /// The ID of the Cosmos DB Cassandra Keyspace to create the table within. Changing this forces a new resource to be created.
  late final pulumi.Output<String> cassandraKeyspaceId;
  /// Time to live of the Cosmos DB Cassandra table. Possible values are at least `-1`. `-1` means the Cassandra table never expires.
  late final pulumi.Output<int?> defaultTtl;
  /// Specifies the name of the Cosmos DB Cassandra Table. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A `schema` block as defined below.
  late final pulumi.Output<CassandraTableSchema> schema;
  /// The throughput of Cassandra KeySpace (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply.
  late final pulumi.Output<int> throughput;

  /// Creates a new [CassandraTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CassandraTable]. {@macro pulumi_cosmosdb_cassandra_table_cassandra_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CassandraTable(
    String name, {
    CassandraTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/cassandraTable:CassandraTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.analyticalStorageTtl = registerOutput<int?>('analyticalStorageTtl');
    this.autoscaleSettings = registerOutput<CassandraTableAutoscaleSettings?>('autoscaleSettings');
    this.cassandraKeyspaceId = registerOutput<String>('cassandraKeyspaceId');
    this.defaultTtl = registerOutput<int?>('defaultTtl');
    this.name = registerOutput<String>('name');
    this.schema = registerOutput<CassandraTableSchema>('schema');
    this.throughput = registerOutput<int>('throughput');
  }

  /// Gets an existing [CassandraTable] resource's state with the given [name] and [id].
  static CassandraTable get(
    String name,
    pulumi.Input<String> id, {
    CassandraTableState? state,
  }) {
    return CassandraTable._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CassandraTable._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/cassandraTable:CassandraTable',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.analyticalStorageTtl = registerOutput<int?>('analyticalStorageTtl');
    this.autoscaleSettings = registerOutput<CassandraTableAutoscaleSettings?>('autoscaleSettings');
    this.cassandraKeyspaceId = registerOutput<String>('cassandraKeyspaceId');
    this.defaultTtl = registerOutput<int?>('defaultTtl');
    this.name = registerOutput<String>('name');
    this.schema = registerOutput<CassandraTableSchema>('schema');
    this.throughput = registerOutput<int>('throughput');
  }
}
