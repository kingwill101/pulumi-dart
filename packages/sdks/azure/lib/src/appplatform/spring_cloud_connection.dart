import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_connection_args.dart';
import 'spring_cloud_connection_authentication.dart';
import 'spring_cloud_connection_secret_store.dart';
import 'spring_cloud_connection_state.dart';

/// Manages a service connector for spring cloud app.
///
/// !> **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudConnection` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
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
/// const exampleSpringCloudService = new azure.appplatform.SpringCloudService("example", {
///     name: "examplespringcloud",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleSpringCloudApp = new azure.appplatform.SpringCloudApp("example", {
///     name: "examplespringcloudapp",
///     resourceGroupName: example.name,
///     serviceName: exampleSpringCloudService.name,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleSpringCloudJavaDeployment = new azure.appplatform.SpringCloudJavaDeployment("example", {
///     name: "exampledeployment",
///     springCloudAppId: exampleSpringCloudApp.id,
/// });
/// const exampleSpringCloudConnection = new azure.appplatform.SpringCloudConnection("example", {
///     name: "example-serviceconnector",
///     springCloudId: exampleSpringCloudJavaDeployment.id,
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
/// example_spring_cloud_service = azure.appplatform.SpringCloudService("example",
///     name="examplespringcloud",
///     resource_group_name=example.name,
///     location=example.location)
/// example_spring_cloud_app = azure.appplatform.SpringCloudApp("example",
///     name="examplespringcloudapp",
///     resource_group_name=example.name,
///     service_name=example_spring_cloud_service.name,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_spring_cloud_java_deployment = azure.appplatform.SpringCloudJavaDeployment("example",
///     name="exampledeployment",
///     spring_cloud_app_id=example_spring_cloud_app.id)
/// example_spring_cloud_connection = azure.appplatform.SpringCloudConnection("example",
///     name="example-serviceconnector",
///     spring_cloud_id=example_spring_cloud_java_deployment.id,
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
///     var exampleSpringCloudService = new Azure.AppPlatform.SpringCloudService("example", new()
///     {
///         Name = "examplespringcloud",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleSpringCloudApp = new Azure.AppPlatform.SpringCloudApp("example", new()
///     {
///         Name = "examplespringcloudapp",
///         ResourceGroupName = example.Name,
///         ServiceName = exampleSpringCloudService.Name,
///         Identity = new Azure.AppPlatform.Inputs.SpringCloudAppIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleSpringCloudJavaDeployment = new Azure.AppPlatform.SpringCloudJavaDeployment("example", new()
///     {
///         Name = "exampledeployment",
///         SpringCloudAppId = exampleSpringCloudApp.Id,
///     });
///
///     var exampleSpringCloudConnection = new Azure.AppPlatform.SpringCloudConnection("example", new()
///     {
///         Name = "example-serviceconnector",
///         SpringCloudId = exampleSpringCloudJavaDeployment.Id,
///         TargetResourceId = exampleSqlDatabase.Id,
///         Authentication = new Azure.AppPlatform.Inputs.SpringCloudConnectionAuthenticationArgs
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appplatform"
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
/// 		exampleSpringCloudService, err := appplatform.NewSpringCloudService(ctx, "example", &appplatform.SpringCloudServiceArgs{
/// 			Name:              pulumi.String("examplespringcloud"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudApp, err := appplatform.NewSpringCloudApp(ctx, "example", &appplatform.SpringCloudAppArgs{
/// 			Name:              pulumi.String("examplespringcloudapp"),
/// 			ResourceGroupName: example.Name,
/// 			ServiceName:       exampleSpringCloudService.Name,
/// 			Identity: &appplatform.SpringCloudAppIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudJavaDeployment, err := appplatform.NewSpringCloudJavaDeployment(ctx, "example", &appplatform.SpringCloudJavaDeploymentArgs{
/// 			Name:             pulumi.String("exampledeployment"),
/// 			SpringCloudAppId: exampleSpringCloudApp.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appplatform.NewSpringCloudConnection(ctx, "example", &appplatform.SpringCloudConnectionArgs{
/// 			Name:             pulumi.String("example-serviceconnector"),
/// 			SpringCloudId:    exampleSpringCloudJavaDeployment.ID(),
/// 			TargetResourceId: exampleSqlDatabase.ID(),
/// 			Authentication: &appplatform.SpringCloudConnectionAuthenticationArgs{
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
/// import com.pulumi.azure.appplatform.SpringCloudService;
/// import com.pulumi.azure.appplatform.SpringCloudServiceArgs;
/// import com.pulumi.azure.appplatform.SpringCloudApp;
/// import com.pulumi.azure.appplatform.SpringCloudAppArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudAppIdentityArgs;
/// import com.pulumi.azure.appplatform.SpringCloudJavaDeployment;
/// import com.pulumi.azure.appplatform.SpringCloudJavaDeploymentArgs;
/// import com.pulumi.azure.appplatform.SpringCloudConnection;
/// import com.pulumi.azure.appplatform.SpringCloudConnectionArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudConnectionAuthenticationArgs;
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
///         var exampleSpringCloudService = new SpringCloudService("exampleSpringCloudService", SpringCloudServiceArgs.builder()
///             .name("examplespringcloud")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleSpringCloudApp = new SpringCloudApp("exampleSpringCloudApp", SpringCloudAppArgs.builder()
///             .name("examplespringcloudapp")
///             .resourceGroupName(example.name())
///             .serviceName(exampleSpringCloudService.name())
///             .identity(SpringCloudAppIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleSpringCloudJavaDeployment = new SpringCloudJavaDeployment("exampleSpringCloudJavaDeployment", SpringCloudJavaDeploymentArgs.builder()
///             .name("exampledeployment")
///             .springCloudAppId(exampleSpringCloudApp.id())
///             .build());
///
///         var exampleSpringCloudConnection = new SpringCloudConnection("exampleSpringCloudConnection", SpringCloudConnectionArgs.builder()
///             .name("example-serviceconnector")
///             .springCloudId(exampleSpringCloudJavaDeployment.id())
///             .targetResourceId(exampleSqlDatabase.id())
///             .authentication(SpringCloudConnectionAuthenticationArgs.builder()
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
///   exampleSpringCloudService:
///     type: azure:appplatform:SpringCloudService
///     name: example
///     properties:
///       name: examplespringcloud
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleSpringCloudApp:
///     type: azure:appplatform:SpringCloudApp
///     name: example
///     properties:
///       name: examplespringcloudapp
///       resourceGroupName: ${example.name}
///       serviceName: ${exampleSpringCloudService.name}
///       identity:
///         type: SystemAssigned
///   exampleSpringCloudJavaDeployment:
///     type: azure:appplatform:SpringCloudJavaDeployment
///     name: example
///     properties:
///       name: exampledeployment
///       springCloudAppId: ${exampleSpringCloudApp.id}
///   exampleSpringCloudConnection:
///     type: azure:appplatform:SpringCloudConnection
///     name: example
///     properties:
///       name: example-serviceconnector
///       springCloudId: ${exampleSpringCloudJavaDeployment.id}
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
/// Service Connector for spring cloud can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudConnection:SpringCloudConnection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AppPlatform/Spring/springcloud/apps/springcloudapp/deployments/deployment/providers/Microsoft.ServiceLinker/linkers/serviceconnector1
/// ```
class SpringCloudConnection extends pulumi.CustomResource {
  /// The authentication info. An `authentication` block as defined below.
  late final pulumi.Output<SpringCloudConnectionAuthentication> authentication;
  late final pulumi.Output<String?> clientType;
  /// The name of the service connection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  late final pulumi.Output<SpringCloudConnectionSecretStore?> secretStore;
  /// The ID of the data source spring cloud. Changing this forces a new resource to be created.
  late final pulumi.Output<String> springCloudId;
  /// The ID of the target resource. Changing this forces a new resource to be created. Possible target resources are `Postgres`, `PostgresFlexible`, `Mysql`, `Sql`, `Redis`, `RedisEnterprise`, `CosmosCassandra`, `CosmosGremlin`, `CosmosMongo`, `CosmosSql`, `CosmosTable`, `StorageBlob`, `StorageQueue`, `StorageFile`, `StorageTable`, `AppConfig`, `EventHub`, `ServiceBus`, `SignalR`, `WebPubSub`, `ConfluentKafka`. The integration guide can be found [here](https://learn.microsoft.com/en-us/azure/service-connector/how-to-integrate-postgres).
  late final pulumi.Output<String> targetResourceId;
  late final pulumi.Output<String?> vnetSolution;

  /// Creates a new [SpringCloudConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudConnection]. {@macro pulumi_appplatform_spring_cloud_connection_spring_cloud_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudConnection(
    String name, {
    SpringCloudConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudConnection:SpringCloudConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authentication = registerOutput<SpringCloudConnectionAuthentication>('authentication');
    this.clientType = registerOutput<String?>('clientType');
    this.name = registerOutput<String>('name');
    this.secretStore = registerOutput<SpringCloudConnectionSecretStore?>('secretStore');
    this.springCloudId = registerOutput<String>('springCloudId');
    this.targetResourceId = registerOutput<String>('targetResourceId');
    this.vnetSolution = registerOutput<String?>('vnetSolution');
  }

  /// Gets an existing [SpringCloudConnection] resource's state with the given [name] and [id].
  static SpringCloudConnection get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudConnectionState? state,
  }) {
    return SpringCloudConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SpringCloudConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudConnection:SpringCloudConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authentication = registerOutput<SpringCloudConnectionAuthentication>('authentication');
    this.clientType = registerOutput<String?>('clientType');
    this.name = registerOutput<String>('name');
    this.secretStore = registerOutput<SpringCloudConnectionSecretStore?>('secretStore');
    this.springCloudId = registerOutput<String>('springCloudId');
    this.targetResourceId = registerOutput<String>('targetResourceId');
    this.vnetSolution = registerOutput<String?>('vnetSolution');
  }
}
