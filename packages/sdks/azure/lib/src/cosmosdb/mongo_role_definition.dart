import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_role_definition_args.dart';
import 'mongo_role_definition_state.dart';

/// Manages a Cosmos DB Mongo Role Definition.
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
/// const exampleMongoRoleDefinition = new azure.cosmosdb.MongoRoleDefinition("example", {
///     cosmosMongoDatabaseId: exampleMongoDatabase.id,
///     roleName: "example-roledefinition",
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
/// example_mongo_role_definition = azure.cosmosdb.MongoRoleDefinition("example",
///     cosmos_mongo_database_id=example_mongo_database.id,
///     role_name="example-roledefinition")
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
///     var exampleMongoRoleDefinition = new Azure.CosmosDB.MongoRoleDefinition("example", new()
///     {
///         CosmosMongoDatabaseId = exampleMongoDatabase.Id,
///         RoleName = "example-roledefinition",
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
/// 		_, err = cosmosdb.NewMongoRoleDefinition(ctx, "example", &cosmosdb.MongoRoleDefinitionArgs{
/// 			CosmosMongoDatabaseId: exampleMongoDatabase.ID(),
/// 			RoleName:              pulumi.String("example-roledefinition"),
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
///   name                = "example-ca"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   offer_type          = "Standard"
///   kind                = "MongoDB"
///   capabilities {
///     name = "EnableMongo"
///   }
///   capabilities {
///     name = "EnableMongoRoleBasedAccessControl"
///   }
///   consistency_policy = {
///     consistency_level = "Strong"
///   }
///   geo_locations {
///     location          = azure_core_resourcegroup.example.location
///     failover_priority = 0
///   }
/// }
/// resource "azure_cosmosdb_mongodatabase" "example" {
///   name                = "example-mongodb"
///   resource_group_name = azure_cosmosdb_account.example.resource_group_name
///   account_name        = azure_cosmosdb_account.example.name
/// }
/// resource "azure_cosmosdb_mongoroledefinition" "example" {
///   cosmos_mongo_database_id = azure_cosmosdb_mongodatabase.example.id
///   role_name                = "example-roledefinition"
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
/// import com.pulumi.azure.cosmosdb.MongoRoleDefinition;
/// import com.pulumi.azure.cosmosdb.MongoRoleDefinitionArgs;
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
///         var exampleMongoRoleDefinition = new MongoRoleDefinition("exampleMongoRoleDefinition", MongoRoleDefinitionArgs.builder()
///             .cosmosMongoDatabaseId(exampleMongoDatabase.id())
///             .roleName("example-roledefinition")
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
///   exampleMongoRoleDefinition:
///     type: azure:cosmosdb:MongoRoleDefinition
///     name: example
///     properties:
///       cosmosMongoDatabaseId: ${exampleMongoDatabase.id}
///       roleName: example-roledefinition
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DocumentDB` - 2025-10-15
///
/// ## Import
///
/// Cosmos DB Mongo Role Definitions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/mongoRoleDefinition:MongoRoleDefinition example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DocumentDB/databaseAccounts/account1/mongodbRoleDefinitions/dbname1.rolename1
/// ```
class MongoRoleDefinition extends pulumi.CustomResource {
  /// The resource ID of the Mongo DB. Changing this forces a new resource to be created.
  late final pulumi.Output<String> cosmosMongoDatabaseId;
  /// A list of Mongo Roles which are inherited to the Mongo Role Definition.
  ///
  /// &gt; **Note:** The role that needs to be inherited should exist in the Mongo DB of `cosmosMongoDatabaseId`.
  late final pulumi.Output<List<String>?> inheritedRoleNames;
  /// A `privilege` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> privileges;
  /// The user-friendly name for the Mongo Role Definition. It must be unique for the database account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> roleName;

  /// Creates a new [MongoRoleDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MongoRoleDefinition]. {@macro pulumi_cosmosdb_mongo_role_definition_mongo_role_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MongoRoleDefinition(
    String name, {
    MongoRoleDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/mongoRoleDefinition:MongoRoleDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cosmosMongoDatabaseId = registerOutput<String>('cosmosMongoDatabaseId');
    inheritedRoleNames = registerOutput<List<String>?>('inheritedRoleNames');
    privileges = registerOutput<List<Map<String, dynamic>>?>('privileges');
    roleName = registerOutput<String>('roleName');
  }

  /// Gets an existing [MongoRoleDefinition] resource's state with the given [name] and [id].
  static MongoRoleDefinition get(
    String name,
    pulumi.Input<String> id, {
    MongoRoleDefinitionState? state,
  }) {
    return MongoRoleDefinition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MongoRoleDefinition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/mongoRoleDefinition:MongoRoleDefinition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cosmosMongoDatabaseId = registerOutput<String>('cosmosMongoDatabaseId');
    inheritedRoleNames = registerOutput<List<String>?>('inheritedRoleNames');
    privileges = registerOutput<List<Map<String, dynamic>>?>('privileges');
    roleName = registerOutput<String>('roleName');
  }
}
