import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'connection_authentication.dart';
import 'connection_secret_store.dart';
import 'connection_state.dart';

/// Manages a service connector for app service.
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
/// const exampleServicePlan = new azure.appservice.ServicePlan("example", {
///     location: example.location,
///     name: "example-serviceplan",
///     resourceGroupName: example.name,
///     skuName: "P1v2",
///     osType: "Linux",
/// });
/// const exampleLinuxWebApp = new azure.appservice.LinuxWebApp("example", {
///     location: example.location,
///     name: "example-linuxwebapp",
///     resourceGroupName: example.name,
///     servicePlanId: exampleServicePlan.id,
///     siteConfig: {},
/// });
/// const exampleConnection = new azure.appservice.Connection("example", {
///     name: "example-serviceconnector",
///     appServiceId: exampleLinuxWebApp.id,
///     targetResourceId: exampleSqlDatabase.id,
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
/// example_service_plan = azure.appservice.ServicePlan("example",
///     location=example.location,
///     name="example-serviceplan",
///     resource_group_name=example.name,
///     sku_name="P1v2",
///     os_type="Linux")
/// example_linux_web_app = azure.appservice.LinuxWebApp("example",
///     location=example.location,
///     name="example-linuxwebapp",
///     resource_group_name=example.name,
///     service_plan_id=example_service_plan.id,
///     site_config={})
/// example_connection = azure.appservice.Connection("example",
///     name="example-serviceconnector",
///     app_service_id=example_linux_web_app.id,
///     target_resource_id=example_sql_database.id,
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
///     var exampleServicePlan = new Azure.AppService.ServicePlan("example", new()
///     {
///         Location = example.Location,
///         Name = "example-serviceplan",
///         ResourceGroupName = example.Name,
///         SkuName = "P1v2",
///         OsType = "Linux",
///     });
///
///     var exampleLinuxWebApp = new Azure.AppService.LinuxWebApp("example", new()
///     {
///         Location = example.Location,
///         Name = "example-linuxwebapp",
///         ResourceGroupName = example.Name,
///         ServicePlanId = exampleServicePlan.Id,
///         SiteConfig = null,
///     });
///
///     var exampleConnection = new Azure.AppService.Connection("example", new()
///     {
///         Name = "example-serviceconnector",
///         AppServiceId = exampleLinuxWebApp.Id,
///         TargetResourceId = exampleSqlDatabase.Id,
///         Authentication = new Azure.AppService.Inputs.ConnectionAuthenticationArgs
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
/// 		exampleServicePlan, err := appservice.NewServicePlan(ctx, "example", &appservice.ServicePlanArgs{
/// 			Location:          example.Location,
/// 			Name:              pulumi.String("example-serviceplan"),
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("P1v2"),
/// 			OsType:            pulumi.String("Linux"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxWebApp, err := appservice.NewLinuxWebApp(ctx, "example", &appservice.LinuxWebAppArgs{
/// 			Location:          example.Location,
/// 			Name:              pulumi.String("example-linuxwebapp"),
/// 			ResourceGroupName: example.Name,
/// 			ServicePlanId:     exampleServicePlan.ID(),
/// 			SiteConfig:        &appservice.LinuxWebAppSiteConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewConnection(ctx, "example", &appservice.ConnectionArgs{
/// 			Name:             pulumi.String("example-serviceconnector"),
/// 			AppServiceId:     exampleLinuxWebApp.ID(),
/// 			TargetResourceId: exampleSqlDatabase.ID(),
/// 			Authentication: &appservice.ConnectionAuthenticationArgs{
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
/// import com.pulumi.azure.cosmosdb.inputs.AccountConsistencyPolicyArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountGeoLocationArgs;
/// import com.pulumi.azure.cosmosdb.SqlDatabase;
/// import com.pulumi.azure.cosmosdb.SqlDatabaseArgs;
/// import com.pulumi.azure.cosmosdb.SqlContainer;
/// import com.pulumi.azure.cosmosdb.SqlContainerArgs;
/// import com.pulumi.azure.appservice.ServicePlan;
/// import com.pulumi.azure.appservice.ServicePlanArgs;
/// import com.pulumi.azure.appservice.LinuxWebApp;
/// import com.pulumi.azure.appservice.LinuxWebAppArgs;
/// import com.pulumi.azure.appservice.inputs.LinuxWebAppSiteConfigArgs;
/// import com.pulumi.azure.appservice.Connection;
/// import com.pulumi.azure.appservice.ConnectionArgs;
/// import com.pulumi.azure.appservice.inputs.ConnectionAuthenticationArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
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
///         var exampleServicePlan = new ServicePlan("exampleServicePlan", ServicePlanArgs.builder()
///             .location(example.location())
///             .name("example-serviceplan")
///             .resourceGroupName(example.name())
///             .skuName("P1v2")
///             .osType("Linux")
///             .build());
///
///         var exampleLinuxWebApp = new LinuxWebApp("exampleLinuxWebApp", LinuxWebAppArgs.builder()
///             .location(example.location())
///             .name("example-linuxwebapp")
///             .resourceGroupName(example.name())
///             .servicePlanId(exampleServicePlan.id())
///             .siteConfig(LinuxWebAppSiteConfigArgs.builder()
///                 .build())
///             .build());
///
///         var exampleConnection = new Connection("exampleConnection", ConnectionArgs.builder()
///             .name("example-serviceconnector")
///             .appServiceId(exampleLinuxWebApp.id())
///             .targetResourceId(exampleSqlDatabase.id())
///             .authentication(ConnectionAuthenticationArgs.builder()
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
///   exampleServicePlan:
///     type: azure:appservice:ServicePlan
///     name: example
///     properties:
///       location: ${example.location}
///       name: example-serviceplan
///       resourceGroupName: ${example.name}
///       skuName: P1v2
///       osType: Linux
///   exampleLinuxWebApp:
///     type: azure:appservice:LinuxWebApp
///     name: example
///     properties:
///       location: ${example.location}
///       name: example-linuxwebapp
///       resourceGroupName: ${example.name}
///       servicePlanId: ${exampleServicePlan.id}
///       siteConfig: {}
///   exampleConnection:
///     type: azure:appservice:Connection
///     name: example
///     properties:
///       name: example-serviceconnector
///       appServiceId: ${exampleLinuxWebApp.id}
///       targetResourceId: ${exampleSqlDatabase.id}
///       authentication:
///         type: systemAssignedIdentity
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ServiceLinker` - 2024-04-01, 2022-05-01
///
/// ## Import
///
/// Service Connector for app service can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/connection:Connection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Web/sites/webapp/providers/Microsoft.ServiceLinker/linkers/serviceconnector1
/// ```
class Connection extends pulumi.CustomResource {
  /// The ID of the data source web app. Changing this forces a new resource to be created.
  late final pulumi.Output<String> appServiceId;
  /// The authentication info. An `authentication` block as defined below.
  ///
  /// > **Note:** If a Managed Identity is used, this will need to be configured on the App Service.
  late final pulumi.Output<ConnectionAuthentication> authentication;
  late final pulumi.Output<String?> clientType;
  /// The name of the service connection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  late final pulumi.Output<ConnectionSecretStore?> secretStore;
  /// The ID of the target resource. Changing this forces a new resource to be created. Possible target resources are `Postgres`, `PostgresFlexible`, `Mysql`, `Sql`, `Redis`, `RedisEnterprise`, `CosmosCassandra`, `CosmosGremlin`, `CosmosMongo`, `CosmosSql`, `CosmosTable`, `StorageBlob`, `StorageQueue`, `StorageFile`, `StorageTable`, `AppConfig`, `EventHub`, `ServiceBus`, `SignalR`, `WebPubSub`, `ConfluentKafka`. The integration guide can be found [here](https://learn.microsoft.com/en-us/azure/service-connector/how-to-integrate-postgres).
  late final pulumi.Output<String> targetResourceId;
  late final pulumi.Output<String?> vnetSolution;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_appservice_connection_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/connection:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appServiceId = registerOutput<String>('appServiceId');
    this.authentication = registerOutput<ConnectionAuthentication>('authentication');
    this.clientType = registerOutput<String?>('clientType');
    this.name = registerOutput<String>('name');
    this.secretStore = registerOutput<ConnectionSecretStore?>('secretStore');
    this.targetResourceId = registerOutput<String>('targetResourceId');
    this.vnetSolution = registerOutput<String?>('vnetSolution');
  }

  /// Gets an existing [Connection] resource's state with the given [name] and [id].
  static Connection get(
    String name,
    pulumi.Input<String> id, {
    ConnectionState? state,
  }) {
    return Connection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Connection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/connection:Connection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appServiceId = registerOutput<String>('appServiceId');
    this.authentication = registerOutput<ConnectionAuthentication>('authentication');
    this.clientType = registerOutput<String?>('clientType');
    this.name = registerOutput<String>('name');
    this.secretStore = registerOutput<ConnectionSecretStore?>('secretStore');
    this.targetResourceId = registerOutput<String>('targetResourceId');
    this.vnetSolution = registerOutput<String?>('vnetSolution');
  }
}
