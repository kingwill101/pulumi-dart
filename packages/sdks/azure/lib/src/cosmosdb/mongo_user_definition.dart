import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_user_definition_args.dart';
import 'mongo_user_definition_state.dart';

/// Manages a Cosmos DB Mongo User Definition.
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
///     name: "example-ca",
///     location: example.location,
///     resourceGroupName: example.name,
///     offerType: "Standard",
///     kind: "MongoDB",
///     capabilities: [
///         {
///             name: "EnableMongo",
///         },
///         {
///             name: "EnableMongoRoleBasedAccessControl",
///         },
///     ],
///     consistencyPolicy: {
///         consistencyLevel: "Strong",
///     },
///     geoLocations: [{
///         location: example.location,
///         failoverPriority: 0,
///     }],
/// });
/// const exampleMongoDatabase = new azure.cosmosdb.MongoDatabase("example", {
///     name: "example-mongodb",
///     resourceGroupName: exampleAccount.resourceGroupName,
///     accountName: exampleAccount.name,
/// });
/// const exampleMongoUserDefinition = new azure.cosmosdb.MongoUserDefinition("example", {
///     cosmosMongoDatabaseId: exampleMongoDatabase.id,
///     username: "myUserName",
///     password: "myPassword",
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
///     name="example-ca",
///     location=example.location,
///     resource_group_name=example.name,
///     offer_type="Standard",
///     kind="MongoDB",
///     capabilities=[
///         {
///             "name": "EnableMongo",
///         },
///         {
///             "name": "EnableMongoRoleBasedAccessControl",
///         },
///     ],
///     consistency_policy={
///         "consistency_level": "Strong",
///     },
///     geo_locations=[{
///         "location": example.location,
///         "failover_priority": 0,
///     }])
/// example_mongo_database = azure.cosmosdb.MongoDatabase("example",
///     name="example-mongodb",
///     resource_group_name=example_account.resource_group_name,
///     account_name=example_account.name)
/// example_mongo_user_definition = azure.cosmosdb.MongoUserDefinition("example",
///     cosmos_mongo_database_id=example_mongo_database.id,
///     username="myUserName",
///     password="myPassword")
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
///         Name = "example-ca",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         OfferType = "Standard",
///         Kind = "MongoDB",
///         Capabilities = new[]
///         {
///             new Azure.CosmosDB.Inputs.AccountCapabilityArgs
///             {
///                 Name = "EnableMongo",
///             },
///             new Azure.CosmosDB.Inputs.AccountCapabilityArgs
///             {
///                 Name = "EnableMongoRoleBasedAccessControl",
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
///     var exampleMongoDatabase = new Azure.CosmosDB.MongoDatabase("example", new()
///     {
///         Name = "example-mongodb",
///         ResourceGroupName = exampleAccount.ResourceGroupName,
///         AccountName = exampleAccount.Name,
///     });
///
///     var exampleMongoUserDefinition = new Azure.CosmosDB.MongoUserDefinition("example", new()
///     {
///         CosmosMongoDatabaseId = exampleMongoDatabase.Id,
///         Username = "myUserName",
///         Password = "myPassword",
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
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := cosmosdb.NewAccount(ctx, "example", &cosmosdb.AccountArgs{
/// 			Name:              pulumi.String("example-ca"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			OfferType:         pulumi.String("Standard"),
/// 			Kind:              pulumi.String("MongoDB"),
/// 			Capabilities: cosmosdb.AccountCapabilityArray{
/// 				&cosmosdb.AccountCapabilityArgs{
/// 					Name: pulumi.String("EnableMongo"),
/// 				},
/// 				&cosmosdb.AccountCapabilityArgs{
/// 					Name: pulumi.String("EnableMongoRoleBasedAccessControl"),
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
/// 		exampleMongoDatabase, err := cosmosdb.NewMongoDatabase(ctx, "example", &cosmosdb.MongoDatabaseArgs{
/// 			Name:              pulumi.String("example-mongodb"),
/// 			ResourceGroupName: exampleAccount.ResourceGroupName,
/// 			AccountName:       exampleAccount.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cosmosdb.NewMongoUserDefinition(ctx, "example", &cosmosdb.MongoUserDefinitionArgs{
/// 			CosmosMongoDatabaseId: exampleMongoDatabase.ID(),
/// 			Username:              pulumi.String("myUserName"),
/// 			Password:              pulumi.String("myPassword"),
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
/// import com.pulumi.azure.cosmosdb.MongoDatabase;
/// import com.pulumi.azure.cosmosdb.MongoDatabaseArgs;
/// import com.pulumi.azure.cosmosdb.MongoUserDefinition;
/// import com.pulumi.azure.cosmosdb.MongoUserDefinitionArgs;
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
///             .name("example-ca")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .offerType("Standard")
///             .kind("MongoDB")
///             .capabilities(
///                 AccountCapabilityArgs.builder()
///                     .name("EnableMongo")
///                     .build(),
///                 AccountCapabilityArgs.builder()
///                     .name("EnableMongoRoleBasedAccessControl")
///                     .build())
///             .consistencyPolicy(AccountConsistencyPolicyArgs.builder()
///                 .consistencyLevel("Strong")
///                 .build())
///             .geoLocations(AccountGeoLocationArgs.builder()
///                 .location(example.location())
///                 .failoverPriority(0)
///                 .build())
///             .build());
///
///         var exampleMongoDatabase = new MongoDatabase("exampleMongoDatabase", MongoDatabaseArgs.builder()
///             .name("example-mongodb")
///             .resourceGroupName(exampleAccount.resourceGroupName())
///             .accountName(exampleAccount.name())
///             .build());
///
///         var exampleMongoUserDefinition = new MongoUserDefinition("exampleMongoUserDefinition", MongoUserDefinitionArgs.builder()
///             .cosmosMongoDatabaseId(exampleMongoDatabase.id())
///             .username("myUserName")
///             .password("myPassword")
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
///       name: example-ca
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       offerType: Standard
///       kind: MongoDB
///       capabilities:
///         - name: EnableMongo
///         - name: EnableMongoRoleBasedAccessControl
///       consistencyPolicy:
///         consistencyLevel: Strong
///       geoLocations:
///         - location: ${example.location}
///           failoverPriority: 0
///   exampleMongoDatabase:
///     type: azure:cosmosdb:MongoDatabase
///     name: example
///     properties:
///       name: example-mongodb
///       resourceGroupName: ${exampleAccount.resourceGroupName}
///       accountName: ${exampleAccount.name}
///   exampleMongoUserDefinition:
///     type: azure:cosmosdb:MongoUserDefinition
///     name: example
///     properties:
///       cosmosMongoDatabaseId: ${exampleMongoDatabase.id}
///       username: myUserName
///       password: myPassword
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DocumentDB` - 2022-11-15
///
/// ## Import
///
/// Cosmos DB Mongo User Definitions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/mongoUserDefinition:MongoUserDefinition example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DocumentDB/databaseAccounts/account1/mongodbUserDefinitions/dbname1.username1
/// ```
class MongoUserDefinition extends pulumi.CustomResource {
  /// The resource ID of the Mongo DB. Changing this forces a new resource to be created.
  late final pulumi.Output<String> cosmosMongoDatabaseId;
  /// A list of Mongo Roles that are inherited to the Mongo User Definition.
  ///
  /// &gt; **Note:** The role that needs to be inherited should exist in the Mongo DB of `cosmos_mongo_database_id`.
  late final pulumi.Output<List<String>?> inheritedRoleNames;
  /// The password for the Mongo User Definition.
  late final pulumi.Output<String> password;
  /// The username for the Mongo User Definition. Changing this forces a new resource to be created.
  late final pulumi.Output<String> username;

  /// Creates a new [MongoUserDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MongoUserDefinition]. {@macro pulumi_cosmosdb_mongo_user_definition_mongo_user_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MongoUserDefinition(
    String name, {
    MongoUserDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/mongoUserDefinition:MongoUserDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cosmosMongoDatabaseId = registerOutput<String>('cosmosMongoDatabaseId');
    inheritedRoleNames = registerOutput<List<String>?>('inheritedRoleNames');
    password = registerOutput<String>('password');
    username = registerOutput<String>('username');
  }

  /// Gets an existing [MongoUserDefinition] resource's state with the given [name] and [id].
  static MongoUserDefinition get(
    String name,
    pulumi.Input<String> id, {
    MongoUserDefinitionState? state,
  }) {
    return MongoUserDefinition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MongoUserDefinition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/mongoUserDefinition:MongoUserDefinition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cosmosMongoDatabaseId = registerOutput<String>('cosmosMongoDatabaseId');
    inheritedRoleNames = registerOutput<List<String>?>('inheritedRoleNames');
    password = registerOutput<String>('password');
    username = registerOutput<String>('username');
  }
}
