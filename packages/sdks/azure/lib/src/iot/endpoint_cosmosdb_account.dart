import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_cosmosdb_account_args.dart';
import 'endpoint_cosmosdb_account_state.dart';

/// Manages an IotHub Cosmos DB Account Endpoint
///
/// &gt; **Note:** Endpoints can be defined either directly on the `azure.iot.IoTHub` resource, or using the `azurerm_iothub_endpoint_*` resources - but the two ways of defining the endpoints cannot be used together. If both are used against the same IoTHub, spurious changes will occur. Also, defining a `azurerm_iothub_endpoint_*` resource and another endpoint of a different type directly on the `azure.iot.IoTHub` resource is not supported.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleIoTHub = new azure.iot.IoTHub("example", {
///     name: "exampleIothub",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: {
///         name: "B1",
///         capacity: 1,
///     },
///     tags: {
///         purpose: "example",
///     },
/// });
/// const exampleAccount = new azure.cosmosdb.Account("example", {
///     name: "cosmosdb-account",
///     location: example.location,
///     resourceGroupName: example.name,
///     offerType: "Standard",
///     kind: "GlobalDocumentDB",
///     consistencyPolicy: {
///         consistencyLevel: "Strong",
///     },
///     geoLocations: [{
///         location: example.location,
///         failoverPriority: 0,
///     }],
/// });
/// const exampleSqlDatabase = new azure.cosmosdb.SqlDatabase("example", {
///     name: "cosmos-sql-db",
///     resourceGroupName: exampleAccount.resourceGroupName,
///     accountName: exampleAccount.name,
/// });
/// const exampleSqlContainer = new azure.cosmosdb.SqlContainer("example", {
///     name: "example-container",
///     resourceGroupName: exampleAccount.resourceGroupName,
///     accountName: exampleAccount.name,
///     databaseName: exampleSqlDatabase.name,
///     partitionKeyPath: "/definition/id",
/// });
/// const exampleEndpointCosmosdbAccount = new azure.iot.EndpointCosmosdbAccount("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     iothubId: exampleIoTHub.id,
///     containerName: exampleSqlContainer.name,
///     databaseName: exampleSqlDatabase.name,
///     endpointUri: exampleAccount.endpoint,
///     primaryKey: exampleAccount.primaryKey,
///     secondaryKey: exampleAccount.secondaryKey,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_io_t_hub = azure.iot.IoTHub("example",
///     name="exampleIothub",
///     resource_group_name=example.name,
///     location=example.location,
///     sku={
///         "name": "B1",
///         "capacity": 1,
///     },
///     tags={
///         "purpose": "example",
///     })
/// example_account = azure.cosmosdb.Account("example",
///     name="cosmosdb-account",
///     location=example.location,
///     resource_group_name=example.name,
///     offer_type="Standard",
///     kind="GlobalDocumentDB",
///     consistency_policy={
///         "consistency_level": "Strong",
///     },
///     geo_locations=[{
///         "location": example.location,
///         "failover_priority": 0,
///     }])
/// example_sql_database = azure.cosmosdb.SqlDatabase("example",
///     name="cosmos-sql-db",
///     resource_group_name=example_account.resource_group_name,
///     account_name=example_account.name)
/// example_sql_container = azure.cosmosdb.SqlContainer("example",
///     name="example-container",
///     resource_group_name=example_account.resource_group_name,
///     account_name=example_account.name,
///     database_name=example_sql_database.name,
///     partition_key_path="/definition/id")
/// example_endpoint_cosmosdb_account = azure.iot.EndpointCosmosdbAccount("example",
///     name="example",
///     resource_group_name=example.name,
///     iothub_id=example_io_t_hub.id,
///     container_name=example_sql_container.name,
///     database_name=example_sql_database.name,
///     endpoint_uri=example_account.endpoint,
///     primary_key=example_account.primary_key,
///     secondary_key=example_account.secondary_key)
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleIoTHub = new Azure.Iot.IoTHub("example", new()
///     {
///         Name = "exampleIothub",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = new Azure.Iot.Inputs.IoTHubSkuArgs
///         {
///             Name = "B1",
///             Capacity = 1,
///         },
///         Tags =
///         {
///             { "purpose", "example" },
///         },
///     });
///
///     var exampleAccount = new Azure.CosmosDB.Account("example", new()
///     {
///         Name = "cosmosdb-account",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         OfferType = "Standard",
///         Kind = "GlobalDocumentDB",
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
///     var exampleSqlDatabase = new Azure.CosmosDB.SqlDatabase("example", new()
///     {
///         Name = "cosmos-sql-db",
///         ResourceGroupName = exampleAccount.ResourceGroupName,
///         AccountName = exampleAccount.Name,
///     });
///
///     var exampleSqlContainer = new Azure.CosmosDB.SqlContainer("example", new()
///     {
///         Name = "example-container",
///         ResourceGroupName = exampleAccount.ResourceGroupName,
///         AccountName = exampleAccount.Name,
///         DatabaseName = exampleSqlDatabase.Name,
///         PartitionKeyPath = "/definition/id",
///     });
///
///     var exampleEndpointCosmosdbAccount = new Azure.Iot.EndpointCosmosdbAccount("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         IothubId = exampleIoTHub.Id,
///         ContainerName = exampleSqlContainer.Name,
///         DatabaseName = exampleSqlDatabase.Name,
///         EndpointUri = exampleAccount.Endpoint,
///         PrimaryKey = exampleAccount.PrimaryKey,
///         SecondaryKey = exampleAccount.SecondaryKey,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/iot"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleIoTHub, err := iot.NewIoTHub(ctx, "example", &iot.IoTHubArgs{
/// 			Name:              pulumi.String("exampleIothub"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku: &iot.IoTHubSkuArgs{
/// 				Name:     pulumi.String("B1"),
/// 				Capacity: pulumi.Int(1),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"purpose": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := cosmosdb.NewAccount(ctx, "example", &cosmosdb.AccountArgs{
/// 			Name:              pulumi.String("cosmosdb-account"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			OfferType:         pulumi.String("Standard"),
/// 			Kind:              pulumi.String("GlobalDocumentDB"),
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
/// 		exampleSqlDatabase, err := cosmosdb.NewSqlDatabase(ctx, "example", &cosmosdb.SqlDatabaseArgs{
/// 			Name:              pulumi.String("cosmos-sql-db"),
/// 			ResourceGroupName: exampleAccount.ResourceGroupName,
/// 			AccountName:       exampleAccount.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSqlContainer, err := cosmosdb.NewSqlContainer(ctx, "example", &cosmosdb.SqlContainerArgs{
/// 			Name:              pulumi.String("example-container"),
/// 			ResourceGroupName: exampleAccount.ResourceGroupName,
/// 			AccountName:       exampleAccount.Name,
/// 			DatabaseName:      exampleSqlDatabase.Name,
/// 			PartitionKeyPath:  "/definition/id",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iot.NewEndpointCosmosdbAccount(ctx, "example", &iot.EndpointCosmosdbAccountArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			IothubId:          exampleIoTHub.ID(),
/// 			ContainerName:     exampleSqlContainer.Name,
/// 			DatabaseName:      exampleSqlDatabase.Name,
/// 			EndpointUri:       exampleAccount.Endpoint,
/// 			PrimaryKey:        exampleAccount.PrimaryKey,
/// 			SecondaryKey:      exampleAccount.SecondaryKey,
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
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_iot_iothub" "example" {
///   name                = "exampleIothub"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   sku = {
///     name     = "B1"
///     capacity = "1"
///   }
///   tags = {
///     "purpose" = "example"
///   }
/// }
/// resource "azure_cosmosdb_account" "example" {
///   name                = "cosmosdb-account"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   offer_type          = "Standard"
///   kind                = "GlobalDocumentDB"
///   consistency_policy = {
///     consistency_level = "Strong"
///   }
///   geo_locations {
///     location          = azure_core_resourcegroup.example.location
///     failover_priority = 0
///   }
/// }
/// resource "azure_cosmosdb_sqldatabase" "example" {
///   name                = "cosmos-sql-db"
///   resource_group_name = azure_cosmosdb_account.example.resource_group_name
///   account_name        = azure_cosmosdb_account.example.name
/// }
/// resource "azure_cosmosdb_sqlcontainer" "example" {
///   name                = "example-container"
///   resource_group_name = azure_cosmosdb_account.example.resource_group_name
///   account_name        = azure_cosmosdb_account.example.name
///   database_name       = azure_cosmosdb_sqldatabase.example.name
///   partition_key_path  = "/definition/id"
/// }
/// resource "azure_iot_endpointcosmosdbaccount" "example" {
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   iothub_id           = azure_iot_iothub.example.id
///   container_name      = azure_cosmosdb_sqlcontainer.example.name
///   database_name       = azure_cosmosdb_sqldatabase.example.name
///   endpoint_uri        = azure_cosmosdb_account.example.endpoint
///   primary_key         = azure_cosmosdb_account.example.primary_key
///   secondary_key       = azure_cosmosdb_account.example.secondary_key
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
/// import com.pulumi.azure.iot.IoTHub;
/// import com.pulumi.azure.iot.IoTHubArgs;
/// import com.pulumi.azure.iot.inputs.IoTHubSkuArgs;
/// import com.pulumi.azure.cosmosdb.Account;
/// import com.pulumi.azure.cosmosdb.AccountArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountConsistencyPolicyArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountGeoLocationArgs;
/// import com.pulumi.azure.cosmosdb.SqlDatabase;
/// import com.pulumi.azure.cosmosdb.SqlDatabaseArgs;
/// import com.pulumi.azure.cosmosdb.SqlContainer;
/// import com.pulumi.azure.cosmosdb.SqlContainerArgs;
/// import com.pulumi.azure.iot.EndpointCosmosdbAccount;
/// import com.pulumi.azure.iot.EndpointCosmosdbAccountArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleIoTHub = new IoTHub("exampleIoTHub", IoTHubArgs.builder()
///             .name("exampleIothub")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku(IoTHubSkuArgs.builder()
///                 .name("B1")
///                 .capacity(1)
///                 .build())
///             .tags(Map.of("purpose", "example"))
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("cosmosdb-account")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .offerType("Standard")
///             .kind("GlobalDocumentDB")
///             .consistencyPolicy(AccountConsistencyPolicyArgs.builder()
///                 .consistencyLevel("Strong")
///                 .build())
///             .geoLocations(AccountGeoLocationArgs.builder()
///                 .location(example.location())
///                 .failoverPriority(0)
///                 .build())
///             .build());
///
///         var exampleSqlDatabase = new SqlDatabase("exampleSqlDatabase", SqlDatabaseArgs.builder()
///             .name("cosmos-sql-db")
///             .resourceGroupName(exampleAccount.resourceGroupName())
///             .accountName(exampleAccount.name())
///             .build());
///
///         var exampleSqlContainer = new SqlContainer("exampleSqlContainer", SqlContainerArgs.builder()
///             .name("example-container")
///             .resourceGroupName(exampleAccount.resourceGroupName())
///             .accountName(exampleAccount.name())
///             .databaseName(exampleSqlDatabase.name())
///             .partitionKeyPath("/definition/id")
///             .build());
///
///         var exampleEndpointCosmosdbAccount = new EndpointCosmosdbAccount("exampleEndpointCosmosdbAccount", EndpointCosmosdbAccountArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .iothubId(exampleIoTHub.id())
///             .containerName(exampleSqlContainer.name())
///             .databaseName(exampleSqlDatabase.name())
///             .endpointUri(exampleAccount.endpoint())
///             .primaryKey(exampleAccount.primaryKey())
///             .secondaryKey(exampleAccount.secondaryKey())
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
///       name: example-resources
///       location: West Europe
///   exampleIoTHub:
///     type: azure:iot:IoTHub
///     name: example
///     properties:
///       name: exampleIothub
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku:
///         name: B1
///         capacity: '1'
///       tags:
///         purpose: example
///   exampleAccount:
///     type: azure:cosmosdb:Account
///     name: example
///     properties:
///       name: cosmosdb-account
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       offerType: Standard
///       kind: GlobalDocumentDB
///       consistencyPolicy:
///         consistencyLevel: Strong
///       geoLocations:
///         - location: ${example.location}
///           failoverPriority: 0
///   exampleSqlDatabase:
///     type: azure:cosmosdb:SqlDatabase
///     name: example
///     properties:
///       name: cosmos-sql-db
///       resourceGroupName: ${exampleAccount.resourceGroupName}
///       accountName: ${exampleAccount.name}
///   exampleSqlContainer:
///     type: azure:cosmosdb:SqlContainer
///     name: example
///     properties:
///       name: example-container
///       resourceGroupName: ${exampleAccount.resourceGroupName}
///       accountName: ${exampleAccount.name}
///       databaseName: ${exampleSqlDatabase.name}
///       partitionKeyPath: /definition/id
///   exampleEndpointCosmosdbAccount:
///     type: azure:iot:EndpointCosmosdbAccount
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       iothubId: ${exampleIoTHub.id}
///       containerName: ${exampleSqlContainer.name}
///       databaseName: ${exampleSqlDatabase.name}
///       endpointUri: ${exampleAccount.endpoint}
///       primaryKey: ${exampleAccount.primaryKey}
///       secondaryKey: ${exampleAccount.secondaryKey}
/// ```
///
///
/// ## Import
///
/// IoTHub Cosmos DB Account Endpoint can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:iot/endpointCosmosdbAccount:EndpointCosmosdbAccount endpoint1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Devices/iotHubs/hub1/endpoints/cosmosDBAccountEndpoint1
/// ```
class EndpointCosmosdbAccount extends pulumi.CustomResource {
  /// The type used to authenticate against the Cosmos DB Account endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`.
  late final pulumi.Output<String?> authenticationType;
  /// The name of the Cosmos DB Container in the Cosmos DB Database. Changing this forces a new resource to be created.
  late final pulumi.Output<String> containerName;
  /// The name of the Cosmos DB Database in the Cosmos DB Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> databaseName;
  /// The URI of the Cosmos DB Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> endpointUri;
  /// The ID of the User Managed Identity used to authenticate against the Cosmos DB Account endpoint.
  ///
  /// &gt; **Note:** `identityId` can only be specified when `authenticationType` is `identityBased`. It must be one of the `identityIds` of the Iot Hub. If not specified when `authenticationType` is `identityBased`, System Assigned Managed Identity of the Iot Hub will be used.
  late final pulumi.Output<String?> identityId;
  /// The ID of the IoT Hub to create the endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> iothubId;
  /// The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the partition key associated with the Cosmos DB Container.
  late final pulumi.Output<String?> partitionKeyName;
  /// The template for generating a synthetic partition key value for use within the Cosmos DB Container.
  late final pulumi.Output<String?> partitionKeyTemplate;
  /// The primary key of the Cosmos DB Account.
  ///
  /// &gt; **Note:** `primaryKey` must and can only be specified when `authenticationType` is `keyBased`.
  late final pulumi.Output<String?> primaryKey;
  /// The name of the resource group under which the Cosmos DB Account has been created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The secondary key of the Cosmos DB Account.
  ///
  /// &gt; **Note:** `secondaryKey` must and can only be specified when `authenticationType` is `keyBased`.
  late final pulumi.Output<String?> secondaryKey;
  /// The subscription ID for the endpoint.
  ///
  /// &gt; **Note:** When `subscriptionId` isn't specified it will be set to the subscription ID of the IoT Hub resource.
  late final pulumi.Output<String> subscriptionId;

  /// Creates a new [EndpointCosmosdbAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointCosmosdbAccount]. {@macro pulumi_iot_endpoint_cosmosdb_account_endpoint_cosmosdb_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointCosmosdbAccount(
    String name, {
    EndpointCosmosdbAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/endpointCosmosdbAccount:EndpointCosmosdbAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authenticationType = registerOutput<String?>('authenticationType');
    containerName = registerOutput<String>('containerName');
    databaseName = registerOutput<String>('databaseName');
    endpointUri = registerOutput<String>('endpointUri');
    identityId = registerOutput<String?>('identityId');
    iothubId = registerOutput<String>('iothubId');
    this.name = registerOutput<String>('name');
    partitionKeyName = registerOutput<String?>('partitionKeyName');
    partitionKeyTemplate = registerOutput<String?>('partitionKeyTemplate');
    primaryKey = registerOutput<String?>('primaryKey');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryKey = registerOutput<String?>('secondaryKey');
    subscriptionId = registerOutput<String>('subscriptionId');
  }

  /// Gets an existing [EndpointCosmosdbAccount] resource's state with the given [name] and [id].
  static EndpointCosmosdbAccount get(
    String name,
    pulumi.Input<String> id, {
    EndpointCosmosdbAccountState? state,
  }) {
    return EndpointCosmosdbAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EndpointCosmosdbAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/endpointCosmosdbAccount:EndpointCosmosdbAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authenticationType = registerOutput<String?>('authenticationType');
    containerName = registerOutput<String>('containerName');
    databaseName = registerOutput<String>('databaseName');
    endpointUri = registerOutput<String>('endpointUri');
    identityId = registerOutput<String?>('identityId');
    iothubId = registerOutput<String>('iothubId');
    this.name = registerOutput<String>('name');
    partitionKeyName = registerOutput<String?>('partitionKeyName');
    partitionKeyTemplate = registerOutput<String?>('partitionKeyTemplate');
    primaryKey = registerOutput<String?>('primaryKey');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryKey = registerOutput<String?>('secondaryKey');
    subscriptionId = registerOutput<String>('subscriptionId');
  }
}
