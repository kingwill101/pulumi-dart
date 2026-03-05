import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_app_cosmos_dbassociation_args.dart';
import 'spring_cloud_app_cosmos_dbassociation_state.dart';

/// Associates a Spring Cloud Application with a CosmosDB Account.
///
/// !&gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudAppCosmosDBAssociation` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
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
/// const exampleSpringCloudService = new azure.appplatform.SpringCloudService("example", {
///     name: "example-springcloud",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleSpringCloudApp = new azure.appplatform.SpringCloudApp("example", {
///     name: "example-springcloudapp",
///     resourceGroupName: example.name,
///     serviceName: exampleSpringCloudService.name,
/// });
/// const exampleAccount = new azure.cosmosdb.Account("example", {
///     name: "example-cosmosdb-account",
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
/// const exampleSpringCloudAppCosmosDBAssociation = new azure.appplatform.SpringCloudAppCosmosDBAssociation("example", {
///     name: "example-bind",
///     springCloudAppId: exampleSpringCloudApp.id,
///     cosmosdbAccountId: exampleAccount.id,
///     apiType: "table",
///     cosmosdbAccessKey: exampleAccount.primaryKey,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_spring_cloud_service = azure.appplatform.SpringCloudService("example",
///     name="example-springcloud",
///     resource_group_name=example.name,
///     location=example.location)
/// example_spring_cloud_app = azure.appplatform.SpringCloudApp("example",
///     name="example-springcloudapp",
///     resource_group_name=example.name,
///     service_name=example_spring_cloud_service.name)
/// example_account = azure.cosmosdb.Account("example",
///     name="example-cosmosdb-account",
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
/// example_spring_cloud_app_cosmos_dbassociation = azure.appplatform.SpringCloudAppCosmosDBAssociation("example",
///     name="example-bind",
///     spring_cloud_app_id=example_spring_cloud_app.id,
///     cosmosdb_account_id=example_account.id,
///     api_type="table",
///     cosmosdb_access_key=example_account.primary_key)
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
///     var exampleSpringCloudService = new Azure.AppPlatform.SpringCloudService("example", new()
///     {
///         Name = "example-springcloud",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleSpringCloudApp = new Azure.AppPlatform.SpringCloudApp("example", new()
///     {
///         Name = "example-springcloudapp",
///         ResourceGroupName = example.Name,
///         ServiceName = exampleSpringCloudService.Name,
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
///     var exampleSpringCloudAppCosmosDBAssociation = new Azure.AppPlatform.SpringCloudAppCosmosDBAssociation("example", new()
///     {
///         Name = "example-bind",
///         SpringCloudAppId = exampleSpringCloudApp.Id,
///         CosmosdbAccountId = exampleAccount.Id,
///         ApiType = "table",
///         CosmosdbAccessKey = exampleAccount.PrimaryKey,
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
/// 		exampleSpringCloudService, err := appplatform.NewSpringCloudService(ctx, "example", &appplatform.SpringCloudServiceArgs{
/// 			Name:              pulumi.String("example-springcloud"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudApp, err := appplatform.NewSpringCloudApp(ctx, "example", &appplatform.SpringCloudAppArgs{
/// 			Name:              pulumi.String("example-springcloudapp"),
/// 			ResourceGroupName: example.Name,
/// 			ServiceName:       exampleSpringCloudService.Name,
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
/// 		_, err = appplatform.NewSpringCloudAppCosmosDBAssociation(ctx, "example", &appplatform.SpringCloudAppCosmosDBAssociationArgs{
/// 			Name:              pulumi.String("example-bind"),
/// 			SpringCloudAppId:  exampleSpringCloudApp.ID(),
/// 			CosmosdbAccountId: exampleAccount.ID(),
/// 			ApiType:           pulumi.String("table"),
/// 			CosmosdbAccessKey: exampleAccount.PrimaryKey,
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
/// import com.pulumi.azure.appplatform.SpringCloudService;
/// import com.pulumi.azure.appplatform.SpringCloudServiceArgs;
/// import com.pulumi.azure.appplatform.SpringCloudApp;
/// import com.pulumi.azure.appplatform.SpringCloudAppArgs;
/// import com.pulumi.azure.cosmosdb.Account;
/// import com.pulumi.azure.cosmosdb.AccountArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountConsistencyPolicyArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountGeoLocationArgs;
/// import com.pulumi.azure.appplatform.SpringCloudAppCosmosDBAssociation;
/// import com.pulumi.azure.appplatform.SpringCloudAppCosmosDBAssociationArgs;
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
///         var exampleSpringCloudService = new SpringCloudService("exampleSpringCloudService", SpringCloudServiceArgs.builder()
///             .name("example-springcloud")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleSpringCloudApp = new SpringCloudApp("exampleSpringCloudApp", SpringCloudAppArgs.builder()
///             .name("example-springcloudapp")
///             .resourceGroupName(example.name())
///             .serviceName(exampleSpringCloudService.name())
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-cosmosdb-account")
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
///         var exampleSpringCloudAppCosmosDBAssociation = new SpringCloudAppCosmosDBAssociation("exampleSpringCloudAppCosmosDBAssociation", SpringCloudAppCosmosDBAssociationArgs.builder()
///             .name("example-bind")
///             .springCloudAppId(exampleSpringCloudApp.id())
///             .cosmosdbAccountId(exampleAccount.id())
///             .apiType("table")
///             .cosmosdbAccessKey(exampleAccount.primaryKey())
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
///   exampleSpringCloudService:
///     type: azure:appplatform:SpringCloudService
///     name: example
///     properties:
///       name: example-springcloud
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleSpringCloudApp:
///     type: azure:appplatform:SpringCloudApp
///     name: example
///     properties:
///       name: example-springcloudapp
///       resourceGroupName: ${example.name}
///       serviceName: ${exampleSpringCloudService.name}
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
///         consistencyLevel: Strong
///       geoLocations:
///         - location: ${example.location}
///           failoverPriority: 0
///   exampleSpringCloudAppCosmosDBAssociation:
///     type: azure:appplatform:SpringCloudAppCosmosDBAssociation
///     name: example
///     properties:
///       name: example-bind
///       springCloudAppId: ${exampleSpringCloudApp.id}
///       cosmosdbAccountId: ${exampleAccount.id}
///       apiType: table
///       cosmosdbAccessKey: ${exampleAccount.primaryKey}
/// ```
///
///
/// ## Import
///
/// Spring Cloud Application CosmosDB Association can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudAppCosmosDBAssociation:SpringCloudAppCosmosDBAssociation example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourcegroup1/providers/Microsoft.AppPlatform/spring/service1/apps/app1/bindings/bind1
/// ```
class SpringCloudAppCosmosDBAssociation extends pulumi.CustomResource {
  /// Specifies the API type which should be used when connecting to the CosmosDB Account. Possible values are `cassandra`, `gremlin`, `mongo`, `sql` or `table`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiType;
  /// Specifies the CosmosDB Account access key.
  late final pulumi.Output<String> cosmosdbAccessKey;
  /// Specifies the ID of the CosmosDB Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> cosmosdbAccountId;
  /// Specifies the name of the Cassandra Keyspace which the Spring Cloud App should be associated with. Should only be set when `api_type` is `cassandra`.
  late final pulumi.Output<String?> cosmosdbCassandraKeyspaceName;
  /// Specifies the name of the Gremlin Database which the Spring Cloud App should be associated with. Should only be set when `api_type` is `gremlin`.
  late final pulumi.Output<String?> cosmosdbGremlinDatabaseName;
  /// Specifies the name of the Gremlin Graph which the Spring Cloud App should be associated with. Should only be set when `api_type` is `gremlin`.
  late final pulumi.Output<String?> cosmosdbGremlinGraphName;
  /// Specifies the name of the Mongo Database which the Spring Cloud App should be associated with. Should only be set when `api_type` is `mongo`.
  late final pulumi.Output<String?> cosmosdbMongoDatabaseName;
  /// Specifies the name of the SQL Database which the Spring Cloud App should be associated with. Should only be set when `api_type` is `sql`.
  late final pulumi.Output<String?> cosmosdbSqlDatabaseName;
  /// Specifies the name of the Spring Cloud Application Association. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the ID of the Spring Cloud Application where this Association is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> springCloudAppId;

  /// Creates a new [SpringCloudAppCosmosDBAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudAppCosmosDBAssociation]. {@macro pulumi_appplatform_spring_cloud_app_cosmos_dbassociation_spring_cloud_app_cosmos_dbassociation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudAppCosmosDBAssociation(
    String name, {
    SpringCloudAppCosmosDBAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudAppCosmosDBAssociation:SpringCloudAppCosmosDBAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiType = registerOutput<String>('apiType');
    cosmosdbAccessKey = registerOutput<String>('cosmosdbAccessKey');
    cosmosdbAccountId = registerOutput<String>('cosmosdbAccountId');
    cosmosdbCassandraKeyspaceName = registerOutput<String?>('cosmosdbCassandraKeyspaceName');
    cosmosdbGremlinDatabaseName = registerOutput<String?>('cosmosdbGremlinDatabaseName');
    cosmosdbGremlinGraphName = registerOutput<String?>('cosmosdbGremlinGraphName');
    cosmosdbMongoDatabaseName = registerOutput<String?>('cosmosdbMongoDatabaseName');
    cosmosdbSqlDatabaseName = registerOutput<String?>('cosmosdbSqlDatabaseName');
    this.name = registerOutput<String>('name');
    springCloudAppId = registerOutput<String>('springCloudAppId');
  }

  /// Gets an existing [SpringCloudAppCosmosDBAssociation] resource's state with the given [name] and [id].
  static SpringCloudAppCosmosDBAssociation get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudAppCosmosDBAssociationState? state,
  }) {
    return SpringCloudAppCosmosDBAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SpringCloudAppCosmosDBAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudAppCosmosDBAssociation:SpringCloudAppCosmosDBAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiType = registerOutput<String>('apiType');
    cosmosdbAccessKey = registerOutput<String>('cosmosdbAccessKey');
    cosmosdbAccountId = registerOutput<String>('cosmosdbAccountId');
    cosmosdbCassandraKeyspaceName = registerOutput<String?>('cosmosdbCassandraKeyspaceName');
    cosmosdbGremlinDatabaseName = registerOutput<String?>('cosmosdbGremlinDatabaseName');
    cosmosdbGremlinGraphName = registerOutput<String?>('cosmosdbGremlinGraphName');
    cosmosdbMongoDatabaseName = registerOutput<String?>('cosmosdbMongoDatabaseName');
    cosmosdbSqlDatabaseName = registerOutput<String?>('cosmosdbSqlDatabaseName');
    this.name = registerOutput<String>('name');
    springCloudAppId = registerOutput<String>('springCloudAppId');
  }
}
