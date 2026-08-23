import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_connection_args.dart';
import 'app_connection_authentication.dart';
import 'app_connection_secret_store.dart';
import 'app_connection_state.dart';

/// Manages a service connector for function app.
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
/// const exampleAccount = new azure.cosmosdb.Account("example", {
///     name: "example-cosmosdb-account",
///     location: example.location,
///     resourceGroupName: example.name,
///     offerType: "Standard",
///     kind: "GlobalDocumentDB",
///     consistencyPolicy: {
///         consistencyLevel: "BoundedStaleness",
///         maxIntervalInSeconds: 10,
///         maxStalenessPrefix: 200,
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
///     throughput: 400,
/// });
/// const exampleSqlContainer = new azure.cosmosdb.SqlContainer("example", {
///     name: "example-container",
///     resourceGroupName: exampleAccount.resourceGroupName,
///     accountName: exampleAccount.name,
///     databaseName: exampleSqlDatabase.name,
///     partitionKeyPath: "/definition",
/// });
/// const exampleAccount2 = new azure.storage.Account("example", {
///     name: "examplestorageaccount",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleServicePlan = new azure.appservice.ServicePlan("example", {
///     location: example.location,
///     name: "example-serviceplan",
///     resourceGroupName: example.name,
///     skuName: "P1v2",
///     osType: "Linux",
/// });
/// const test = new azure.appservice.FunctionApp("test", {
///     name: "example-function-app",
///     location: testAzurermResourceGroup.location,
///     resourceGroupName: testAzurermResourceGroup.name,
///     appServicePlanId: testAzurermAppServicePlan.id,
///     storageAccountName: testAzurermStorageAccount.name,
///     storageAccountAccessKey: testAzurermStorageAccount.primaryAccessKey,
/// });
/// const exampleAppConnection = new azure.appservice.AppConnection("example", {
///     name: "example-serviceconnector",
///     functionAppId: exampleAzurermFunctionApp.id,
///     targetResourceId: testAzurermCosmosdbAccount.id,
///     authentication: {
///         type: "systemAssignedIdentity",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.cosmosdb.Account("example",
///     name="example-cosmosdb-account",
///     location=example.location,
///     resource_group_name=example.name,
///     offer_type="Standard",
///     kind="GlobalDocumentDB",
///     consistency_policy={
///         "consistency_level": "BoundedStaleness",
///         "max_interval_in_seconds": 10,
///         "max_staleness_prefix": 200,
///     },
///     geo_locations=[{
///         "location": example.location,
///         "failover_priority": 0,
///     }])
/// example_sql_database = azure.cosmosdb.SqlDatabase("example",
///     name="cosmos-sql-db",
///     resource_group_name=example_account.resource_group_name,
///     account_name=example_account.name,
///     throughput=400)
/// example_sql_container = azure.cosmosdb.SqlContainer("example",
///     name="example-container",
///     resource_group_name=example_account.resource_group_name,
///     account_name=example_account.name,
///     database_name=example_sql_database.name,
///     partition_key_path="/definition")
/// example_account2 = azure.storage.Account("example",
///     name="examplestorageaccount",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_service_plan = azure.appservice.ServicePlan("example",
///     location=example.location,
///     name="example-serviceplan",
///     resource_group_name=example.name,
///     sku_name="P1v2",
///     os_type="Linux")
/// test = azure.appservice.FunctionApp("test",
///     name="example-function-app",
///     location=test_azurerm_resource_group["location"],
///     resource_group_name=test_azurerm_resource_group["name"],
///     app_service_plan_id=test_azurerm_app_service_plan["id"],
///     storage_account_name=test_azurerm_storage_account["name"],
///     storage_account_access_key=test_azurerm_storage_account["primaryAccessKey"])
/// example_app_connection = azure.appservice.AppConnection("example",
///     name="example-serviceconnector",
///     function_app_id=example_azurerm_function_app["id"],
///     target_resource_id=test_azurerm_cosmosdb_account["id"],
///     authentication={
///         "type": "systemAssignedIdentity",
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.CosmosDB.Account("example", new()
///     {
///         Name = "example-cosmosdb-account",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         OfferType = "Standard",
///         Kind = "GlobalDocumentDB",
///         ConsistencyPolicy = new Azure.CosmosDB.Inputs.AccountConsistencyPolicyArgs
///         {
///             ConsistencyLevel = "BoundedStaleness",
///             MaxIntervalInSeconds = 10,
///             MaxStalenessPrefix = 200,
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
///         Throughput = 400,
///     });
///
///     var exampleSqlContainer = new Azure.CosmosDB.SqlContainer("example", new()
///     {
///         Name = "example-container",
///         ResourceGroupName = exampleAccount.ResourceGroupName,
///         AccountName = exampleAccount.Name,
///         DatabaseName = exampleSqlDatabase.Name,
///         PartitionKeyPath = "/definition",
///     });
///
///     var exampleAccount2 = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestorageaccount",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleServicePlan = new Azure.AppService.ServicePlan("example", new()
///     {
///         Location = example.Location,
///         Name = "example-serviceplan",
///         ResourceGroupName = example.Name,
///         SkuName = "P1v2",
///         OsType = "Linux",
///     });
///
///     var test = new Azure.AppService.FunctionApp("test", new()
///     {
///         Name = "example-function-app",
///         Location = testAzurermResourceGroup.Location,
///         ResourceGroupName = testAzurermResourceGroup.Name,
///         AppServicePlanId = testAzurermAppServicePlan.Id,
///         StorageAccountName = testAzurermStorageAccount.Name,
///         StorageAccountAccessKey = testAzurermStorageAccount.PrimaryAccessKey,
///     });
///
///     var exampleAppConnection = new Azure.AppService.AppConnection("example", new()
///     {
///         Name = "example-serviceconnector",
///         FunctionAppId = exampleAzurermFunctionApp.Id,
///         TargetResourceId = testAzurermCosmosdbAccount.Id,
///         Authentication = new Azure.AppService.Inputs.AppConnectionAuthenticationArgs
///         {
///             Type = "systemAssignedIdentity",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cosmosdb"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 		exampleAccount, err := cosmosdb.NewAccount(ctx, "example", &cosmosdb.AccountArgs{
/// 			Name:              pulumi.String("example-cosmosdb-account"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			OfferType:         pulumi.String("Standard"),
/// 			Kind:              pulumi.String("GlobalDocumentDB"),
/// 			ConsistencyPolicy: &cosmosdb.AccountConsistencyPolicyArgs{
/// 				ConsistencyLevel:     pulumi.String("BoundedStaleness"),
/// 				MaxIntervalInSeconds: pulumi.Int(10),
/// 				MaxStalenessPrefix:   pulumi.Int(200),
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
/// 			Throughput:        pulumi.Int(400),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cosmosdb.NewSqlContainer(ctx, "example", &cosmosdb.SqlContainerArgs{
/// 			Name:              pulumi.String("example-container"),
/// 			ResourceGroupName: exampleAccount.ResourceGroupName,
/// 			AccountName:       exampleAccount.Name,
/// 			DatabaseName:      exampleSqlDatabase.Name,
/// 			PartitionKeyPath:  "/definition",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorageaccount"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewServicePlan(ctx, "example", &appservice.ServicePlanArgs{
/// 			Location:          example.Location,
/// 			Name:              pulumi.String("example-serviceplan"),
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("P1v2"),
/// 			OsType:            pulumi.String("Linux"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewFunctionApp(ctx, "test", &appservice.FunctionAppArgs{
/// 			Name:                    pulumi.String("example-function-app"),
/// 			Location:                pulumi.Any(testAzurermResourceGroup.Location),
/// 			ResourceGroupName:       pulumi.Any(testAzurermResourceGroup.Name),
/// 			AppServicePlanId:        pulumi.Any(testAzurermAppServicePlan.Id),
/// 			StorageAccountName:      pulumi.Any(testAzurermStorageAccount.Name),
/// 			StorageAccountAccessKey: pulumi.Any(testAzurermStorageAccount.PrimaryAccessKey),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewAppConnection(ctx, "example", &appservice.AppConnectionArgs{
/// 			Name:             pulumi.String("example-serviceconnector"),
/// 			FunctionAppId:    pulumi.Any(exampleAzurermFunctionApp.Id),
/// 			TargetResourceId: pulumi.Any(testAzurermCosmosdbAccount.Id),
/// 			Authentication: &appservice.AppConnectionAuthenticationArgs{
/// 				Type: pulumi.String("systemAssignedIdentity"),
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_cosmosdb_account" "example" {
///   name                = "example-cosmosdb-account"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   offer_type          = "Standard"
///   kind                = "GlobalDocumentDB"
///   consistency_policy = {
///     consistency_level       = "BoundedStaleness"
///     max_interval_in_seconds = 10
///     max_staleness_prefix    = 200
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
///   throughput          = 400
/// }
/// resource "azure_cosmosdb_sqlcontainer" "example" {
///   name                = "example-container"
///   resource_group_name = azure_cosmosdb_account.example.resource_group_name
///   account_name        = azure_cosmosdb_account.example.name
///   database_name       = azure_cosmosdb_sqldatabase.example.name
///   partition_key_path  = "/definition"
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "examplestorageaccount"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_appservice_serviceplan" "example" {
///   location            = azure_core_resourcegroup.example.location
///   name                = "example-serviceplan"
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "P1v2"
///   os_type             = "Linux"
/// }
/// resource "azure_appservice_functionapp" "test" {
///   name                       = "example-function-app"
///   location                   = testAzurermResourceGroup.location
///   resource_group_name        = testAzurermResourceGroup.name
///   app_service_plan_id        = testAzurermAppServicePlan.id
///   storage_account_name       = testAzurermStorageAccount.name
///   storage_account_access_key = testAzurermStorageAccount.primaryAccessKey
/// }
/// resource "azure_appservice_appconnection" "example" {
///   name               = "example-serviceconnector"
///   function_app_id    = exampleAzurermFunctionApp.id
///   target_resource_id = testAzurermCosmosdbAccount.id
///   authentication = {
///     type = "systemAssignedIdentity"
///   }
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
/// import com.pulumi.azure.cosmosdb.inputs.AccountConsistencyPolicyArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountGeoLocationArgs;
/// import com.pulumi.azure.cosmosdb.SqlDatabase;
/// import com.pulumi.azure.cosmosdb.SqlDatabaseArgs;
/// import com.pulumi.azure.cosmosdb.SqlContainer;
/// import com.pulumi.azure.cosmosdb.SqlContainerArgs;
/// import com.pulumi.azure.appservice.ServicePlan;
/// import com.pulumi.azure.appservice.ServicePlanArgs;
/// import com.pulumi.azure.appservice.FunctionApp;
/// import com.pulumi.azure.appservice.FunctionAppArgs;
/// import com.pulumi.azure.appservice.AppConnection;
/// import com.pulumi.azure.appservice.AppConnectionArgs;
/// import com.pulumi.azure.appservice.inputs.AppConnectionAuthenticationArgs;
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
///         var exampleAccount = new com.pulumi.azure.cosmosdb.Account("exampleAccount", com.pulumi.azure.cosmosdb.AccountArgs.builder()
///             .name("example-cosmosdb-account")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .offerType("Standard")
///             .kind("GlobalDocumentDB")
///             .consistencyPolicy(AccountConsistencyPolicyArgs.builder()
///                 .consistencyLevel("BoundedStaleness")
///                 .maxIntervalInSeconds(10)
///                 .maxStalenessPrefix(200)
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
///             .throughput(400)
///             .build());
///
///         var exampleSqlContainer = new SqlContainer("exampleSqlContainer", SqlContainerArgs.builder()
///             .name("example-container")
///             .resourceGroupName(exampleAccount.resourceGroupName())
///             .accountName(exampleAccount.name())
///             .databaseName(exampleSqlDatabase.name())
///             .partitionKeyPath("/definition")
///             .build());
///
///         var exampleAccount2 = new com.pulumi.azure.storage.Account("exampleAccount2", com.pulumi.azure.storage.AccountArgs.builder()
///             .name("examplestorageaccount")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleServicePlan = new ServicePlan("exampleServicePlan", ServicePlanArgs.builder()
///             .location(example.location())
///             .name("example-serviceplan")
///             .resourceGroupName(example.name())
///             .skuName("P1v2")
///             .osType("Linux")
///             .build());
///
///         var test = new FunctionApp("test", FunctionAppArgs.builder()
///             .name("example-function-app")
///             .location(testAzurermResourceGroup.location())
///             .resourceGroupName(testAzurermResourceGroup.name())
///             .appServicePlanId(testAzurermAppServicePlan.id())
///             .storageAccountName(testAzurermStorageAccount.name())
///             .storageAccountAccessKey(testAzurermStorageAccount.primaryAccessKey())
///             .build());
///
///         var exampleAppConnection = new AppConnection("exampleAppConnection", AppConnectionArgs.builder()
///             .name("example-serviceconnector")
///             .functionAppId(exampleAzurermFunctionApp.id())
///             .targetResourceId(testAzurermCosmosdbAccount.id())
///             .authentication(AppConnectionAuthenticationArgs.builder()
///                 .type("systemAssignedIdentity")
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
///       name: example-resources
///       location: West Europe
///   exampleAccount:
///     type: azure:cosmosdb:Account
///     name: example
///     properties:
///       name: example-cosmosdb-account
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       offerType: Standard
///       kind: GlobalDocumentDB
///       consistencyPolicy:
///         consistencyLevel: BoundedStaleness
///         maxIntervalInSeconds: 10
///         maxStalenessPrefix: 200
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
///       throughput: 400
///   exampleSqlContainer:
///     type: azure:cosmosdb:SqlContainer
///     name: example
///     properties:
///       name: example-container
///       resourceGroupName: ${exampleAccount.resourceGroupName}
///       accountName: ${exampleAccount.name}
///       databaseName: ${exampleSqlDatabase.name}
///       partitionKeyPath: /definition
///   exampleAccount2:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestorageaccount
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleServicePlan:
///     type: azure:appservice:ServicePlan
///     name: example
///     properties:
///       location: ${example.location}
///       name: example-serviceplan
///       resourceGroupName: ${example.name}
///       skuName: P1v2
///       osType: Linux
///   test:
///     type: azure:appservice:FunctionApp
///     properties:
///       name: example-function-app
///       location: ${testAzurermResourceGroup.location}
///       resourceGroupName: ${testAzurermResourceGroup.name}
///       appServicePlanId: ${testAzurermAppServicePlan.id}
///       storageAccountName: ${testAzurermStorageAccount.name}
///       storageAccountAccessKey: ${testAzurermStorageAccount.primaryAccessKey}
///   exampleAppConnection:
///     type: azure:appservice:AppConnection
///     name: example
///     properties:
///       name: example-serviceconnector
///       functionAppId: ${exampleAzurermFunctionApp.id}
///       targetResourceId: ${testAzurermCosmosdbAccount.id}
///       authentication:
///         type: systemAssignedIdentity
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ServiceLinker` - 2024-04-01, 2022-05-01
///
/// ## Import
///
/// Service Connector for app service can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/appConnection:AppConnection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Web/sites/webapp/providers/Microsoft.ServiceLinker/linkers/serviceconnector1
/// ```
class AppConnection extends pulumi.CustomResource {
  /// The authentication info. An `authentication` block as defined below.
  ///
  /// &gt; **Note:** If a Managed Identity is used, this will need to be configured on the App Service.
  late final pulumi.Output<AppConnectionAuthentication> authentication;
  late final pulumi.Output<String?> clientType;
  /// The ID of the data source function app. Changing this forces a new resource to be created.
  late final pulumi.Output<String> functionAppId;
  /// The name of the service connection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  late final pulumi.Output<AppConnectionSecretStore?> secretStore;
  /// The ID of the target resource. Changing this forces a new resource to be created. Possible target resources are `Postgres`, `PostgresFlexible`, `Mysql`, `Sql`, `Redis`, `RedisEnterprise`, `CosmosCassandra`, `CosmosGremlin`, `CosmosMongo`, `CosmosSql`, `CosmosTable`, `StorageBlob`, `StorageQueue`, `StorageFile`, `StorageTable`, `AppConfig`, `EventHub`, `ServiceBus`, `SignalR`, `WebPubSub`, `ConfluentKafka`. The integration guide can be found [here](https://learn.microsoft.com/en-us/azure/service-connector/how-to-integrate-postgres).
  late final pulumi.Output<String> targetResourceId;
  late final pulumi.Output<String?> vnetSolution;

  /// Creates a new [AppConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppConnection]. {@macro pulumi_appservice_app_connection_app_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppConnection(
    String name, {
    AppConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/appConnection:AppConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authentication = registerOutput<AppConnectionAuthentication>('authentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppConnectionAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientType = registerOutput<String?>('clientType');
    functionAppId = registerOutput<String>('functionAppId');
    this.name = registerOutput<String>('name');
    secretStore = registerOutput<AppConnectionSecretStore?>('secretStore', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppConnectionSecretStore.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetResourceId = registerOutput<String>('targetResourceId');
    vnetSolution = registerOutput<String?>('vnetSolution');
  }

  /// Gets an existing [AppConnection] resource's state with the given [name] and [id].
  static AppConnection get(
    String name,
    pulumi.Input<String> id, {
    AppConnectionState? state,
  }) {
    return AppConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AppConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/appConnection:AppConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authentication = registerOutput<AppConnectionAuthentication>('authentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppConnectionAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientType = registerOutput<String?>('clientType');
    functionAppId = registerOutput<String>('functionAppId');
    this.name = registerOutput<String>('name');
    secretStore = registerOutput<AppConnectionSecretStore?>('secretStore', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppConnectionSecretStore.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetResourceId = registerOutput<String>('targetResourceId');
    vnetSolution = registerOutput<String?>('vnetSolution');
  }
}
