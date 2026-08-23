import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_keyspace_args.dart';
import 'cassandra_keyspace_autoscale_settings.dart';
import 'cassandra_keyspace_state.dart';

/// Manages a Cassandra KeySpace within a Cosmos DB Account.
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
/// 		_, err = cosmosdb.NewCassandraKeyspace(ctx, "example", &cosmosdb.CassandraKeyspaceArgs{
/// 			Name:              pulumi.String("tfex-cosmos-cassandra-keyspace"),
/// 			ResourceGroupName: exampleAccount.ResourceGroupName,
/// 			AccountName:       exampleAccount.Name,
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "tflex-cosmosdb-account-rg"
///   location = "West Europe"
/// }
/// resource "azure_cosmosdb_account" "example" {
///   name                = "tfex-cosmosdb-account"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   offer_type          = "Standard"
///   capabilities {
///     name = "EnableCassandra"
///   }
///   consistency_policy = {
///     consistency_level = "Strong"
///   }
///   geo_locations {
///     location          = azure_core_resourcegroup.example.location
///     failover_priority = 0
///   }
/// }
/// resource "azure_cosmosdb_cassandrakeyspace" "example" {
///   name                = "tfex-cosmos-cassandra-keyspace"
///   resource_group_name = azure_cosmosdb_account.example.resource_group_name
///   account_name        = azure_cosmosdb_account.example.name
///   throughput          = 400
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
/// Cosmos Cassandra KeySpace can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/cassandraKeyspace:CassandraKeyspace ks1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.DocumentDB/databaseAccounts/account1/cassandraKeyspaces/ks1
/// ```
class CassandraKeyspace extends pulumi.CustomResource {
  /// The name of the Cosmos DB Cassandra KeySpace to create the table within. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accountName;
  /// An `autoscaleSettings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  ///
  /// &gt; **Note:** Switching between autoscale and manual throughput is not supported via this provider and must be completed via the Azure Portal and refreshed.
  late final pulumi.Output<CassandraKeyspaceAutoscaleSettings?> autoscaleSettings;
  /// Specifies the name of the Cosmos DB Cassandra KeySpace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which the Cosmos DB Cassandra KeySpace is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The throughput of Cassandra KeySpace (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual resource destroy-apply.
  late final pulumi.Output<int> throughput;

  /// Creates a new [CassandraKeyspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CassandraKeyspace]. {@macro pulumi_cosmosdb_cassandra_keyspace_cassandra_keyspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CassandraKeyspace(
    String name, {
    CassandraKeyspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/cassandraKeyspace:CassandraKeyspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    autoscaleSettings = registerOutput<CassandraKeyspaceAutoscaleSettings?>('autoscaleSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CassandraKeyspaceAutoscaleSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    throughput = registerOutput<int>('throughput');
  }

  /// Gets an existing [CassandraKeyspace] resource's state with the given [name] and [id].
  static CassandraKeyspace get(
    String name,
    pulumi.Input<String> id, {
    CassandraKeyspaceState? state,
  }) {
    return CassandraKeyspace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CassandraKeyspace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/cassandraKeyspace:CassandraKeyspace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    autoscaleSettings = registerOutput<CassandraKeyspaceAutoscaleSettings?>('autoscaleSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CassandraKeyspaceAutoscaleSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    throughput = registerOutput<int>('throughput');
  }
}
