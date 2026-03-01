import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_analytical_storage.dart';
import 'account_args.dart';
import 'account_backup.dart';
import 'account_capability.dart';
import 'account_capacity.dart';
import 'account_consistency_policy.dart';
import 'account_cors_rule.dart';
import 'account_geo_location.dart';
import 'account_identity.dart';
import 'account_restore.dart';
import 'account_state.dart';
import 'account_virtual_network_rule.dart';

/// Manages a CosmosDB (formally DocumentDB) Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as random from "@pulumi/random";
///
/// const rg = new azure.core.ResourceGroup("rg", {
///     name: "sample-rg",
///     location: "westus",
/// });
/// const ri = new random.index.Integer("ri", {
///     min: 10000,
///     max: 99999,
/// });
/// const db = new azure.cosmosdb.Account("db", {
///     name: `tfex-cosmos-db-${ri.result}`,
///     location: example.location,
///     resourceGroupName: example.name,
///     offerType: "Standard",
///     kind: "MongoDB",
///     automaticFailoverEnabled: true,
///     capabilities: [
///         {
///             name: "EnableAggregationPipeline",
///         },
///         {
///             name: "mongoEnableDocLevelTTL",
///         },
///         {
///             name: "MongoDBv3.4",
///         },
///         {
///             name: "EnableMongo",
///         },
///     ],
///     consistencyPolicy: {
///         consistencyLevel: "BoundedStaleness",
///         maxIntervalInSeconds: 300,
///         maxStalenessPrefix: 100000,
///     },
///     geoLocations: [
///         {
///             location: "eastus",
///             failoverPriority: 1,
///         },
///         {
///             location: "westus",
///             failoverPriority: 0,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_random as random
///
/// rg = azure.core.ResourceGroup("rg",
///     name="sample-rg",
///     location="westus")
/// ri = random.index.Integer("ri",
///     min=10000,
///     max=99999)
/// db = azure.cosmosdb.Account("db",
///     name=f"tfex-cosmos-db-{ri['result']}",
///     location=example["location"],
///     resource_group_name=example["name"],
///     offer_type="Standard",
///     kind="MongoDB",
///     automatic_failover_enabled=True,
///     capabilities=[
///         {
///             "name": "EnableAggregationPipeline",
///         },
///         {
///             "name": "mongoEnableDocLevelTTL",
///         },
///         {
///             "name": "MongoDBv3.4",
///         },
///         {
///             "name": "EnableMongo",
///         },
///     ],
///     consistency_policy={
///         "consistency_level": "BoundedStaleness",
///         "max_interval_in_seconds": 300,
///         "max_staleness_prefix": 100000,
///     },
///     geo_locations=[
///         {
///             "location": "eastus",
///             "failover_priority": 1,
///         },
///         {
///             "location": "westus",
///             "failover_priority": 0,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rg = new Azure.Core.ResourceGroup("rg", new()
///     {
///         Name = "sample-rg",
///         Location = "westus",
///     });
///
///     var ri = new Random.Index.Integer("ri", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var db = new Azure.CosmosDB.Account("db", new()
///     {
///         Name = $"tfex-cosmos-db-{ri.Result}",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         OfferType = "Standard",
///         Kind = "MongoDB",
///         AutomaticFailoverEnabled = true,
///         Capabilities = new[]
///         {
///             new Azure.CosmosDB.Inputs.AccountCapabilityArgs
///             {
///                 Name = "EnableAggregationPipeline",
///             },
///             new Azure.CosmosDB.Inputs.AccountCapabilityArgs
///             {
///                 Name = "mongoEnableDocLevelTTL",
///             },
///             new Azure.CosmosDB.Inputs.AccountCapabilityArgs
///             {
///                 Name = "MongoDBv3.4",
///             },
///             new Azure.CosmosDB.Inputs.AccountCapabilityArgs
///             {
///                 Name = "EnableMongo",
///             },
///         },
///         ConsistencyPolicy = new Azure.CosmosDB.Inputs.AccountConsistencyPolicyArgs
///         {
///             ConsistencyLevel = "BoundedStaleness",
///             MaxIntervalInSeconds = 300,
///             MaxStalenessPrefix = 100000,
///         },
///         GeoLocations = new[]
///         {
///             new Azure.CosmosDB.Inputs.AccountGeoLocationArgs
///             {
///                 Location = "eastus",
///                 FailoverPriority = 1,
///             },
///             new Azure.CosmosDB.Inputs.AccountGeoLocationArgs
///             {
///                 Location = "westus",
///                 FailoverPriority = 0,
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
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := core.NewResourceGroup(ctx, "rg", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("sample-rg"),
/// 			Location: pulumi.String("westus"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ri, err := random.NewInteger(ctx, "ri", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cosmosdb.NewAccount(ctx, "db", &cosmosdb.AccountArgs{
/// 			Name:                     pulumi.Sprintf("tfex-cosmos-db-%v", ri.Result),
/// 			Location:                 pulumi.Any(example.Location),
/// 			ResourceGroupName:        pulumi.Any(example.Name),
/// 			OfferType:                pulumi.String("Standard"),
/// 			Kind:                     pulumi.String("MongoDB"),
/// 			AutomaticFailoverEnabled: pulumi.Bool(true),
/// 			Capabilities: cosmosdb.AccountCapabilityArray{
/// 				&cosmosdb.AccountCapabilityArgs{
/// 					Name: pulumi.String("EnableAggregationPipeline"),
/// 				},
/// 				&cosmosdb.AccountCapabilityArgs{
/// 					Name: pulumi.String("mongoEnableDocLevelTTL"),
/// 				},
/// 				&cosmosdb.AccountCapabilityArgs{
/// 					Name: pulumi.String("MongoDBv3.4"),
/// 				},
/// 				&cosmosdb.AccountCapabilityArgs{
/// 					Name: pulumi.String("EnableMongo"),
/// 				},
/// 			},
/// 			ConsistencyPolicy: &cosmosdb.AccountConsistencyPolicyArgs{
/// 				ConsistencyLevel:     pulumi.String("BoundedStaleness"),
/// 				MaxIntervalInSeconds: pulumi.Int(300),
/// 				MaxStalenessPrefix:   pulumi.Int(100000),
/// 			},
/// 			GeoLocations: cosmosdb.AccountGeoLocationArray{
/// 				&cosmosdb.AccountGeoLocationArgs{
/// 					Location:         pulumi.String("eastus"),
/// 					FailoverPriority: pulumi.Int(1),
/// 				},
/// 				&cosmosdb.AccountGeoLocationArgs{
/// 					Location:         pulumi.String("westus"),
/// 					FailoverPriority: pulumi.Int(0),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.azure.cosmosdb.Account;
/// import com.pulumi.azure.cosmosdb.AccountArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountCapabilityArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountConsistencyPolicyArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountGeoLocationArgs;
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
///         var rg = new ResourceGroup("rg", ResourceGroupArgs.builder()
///             .name("sample-rg")
///             .location("westus")
///             .build());
///
///         var ri = new Integer("ri", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var db = new Account("db", AccountArgs.builder()
///             .name(String.format("tfex-cosmos-db-%s", ri.result()))
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .offerType("Standard")
///             .kind("MongoDB")
///             .automaticFailoverEnabled(true)
///             .capabilities(
///                 AccountCapabilityArgs.builder()
///                     .name("EnableAggregationPipeline")
///                     .build(),
///                 AccountCapabilityArgs.builder()
///                     .name("mongoEnableDocLevelTTL")
///                     .build(),
///                 AccountCapabilityArgs.builder()
///                     .name("MongoDBv3.4")
///                     .build(),
///                 AccountCapabilityArgs.builder()
///                     .name("EnableMongo")
///                     .build())
///             .consistencyPolicy(AccountConsistencyPolicyArgs.builder()
///                 .consistencyLevel("BoundedStaleness")
///                 .maxIntervalInSeconds(300)
///                 .maxStalenessPrefix(100000)
///                 .build())
///             .geoLocations(
///                 AccountGeoLocationArgs.builder()
///                     .location("eastus")
///                     .failoverPriority(1)
///                     .build(),
///                 AccountGeoLocationArgs.builder()
///                     .location("westus")
///                     .failoverPriority(0)
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   rg:
///     type: azure:core:ResourceGroup
///     properties:
///       name: sample-rg
///       location: westus
///   ri:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   db:
///     type: azure:cosmosdb:Account
///     properties:
///       name: tfex-cosmos-db-${ri.result}
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       offerType: Standard
///       kind: MongoDB
///       automaticFailoverEnabled: true
///       capabilities:
///         - name: EnableAggregationPipeline
///         - name: mongoEnableDocLevelTTL
///         - name: MongoDBv3.4
///         - name: EnableMongo
///       consistencyPolicy:
///         consistencyLevel: BoundedStaleness
///         maxIntervalInSeconds: 300
///         maxStalenessPrefix: 100000
///       geoLocations:
///         - location: eastus
///           failoverPriority: 1
///         - location: westus
///           failoverPriority: 0
/// ```
///
///
/// ## User Assigned Identity Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.authorization.UserAssignedIdentity("example", {
///     resourceGroupName: exampleAzurermResourceGroup.name,
///     location: exampleAzurermResourceGroup.location,
///     name: "example-resource",
/// });
/// const exampleAccount = new azure.cosmosdb.Account("example", {
///     name: "example-resource",
///     location: exampleAzurermResourceGroup.location,
///     resourceGroupName: exampleAzurermResourceGroup.name,
///     defaultIdentityType: std.joinOutput({
///         separator: "=",
///         input: [
///             "UserAssignedIdentity",
///             example.id,
///         ],
///     }).apply(invoke => invoke.result),
///     offerType: "Standard",
///     kind: "MongoDB",
///     capabilities: [{
///         name: "EnableMongo",
///     }],
///     consistencyPolicy: {
///         consistencyLevel: "Strong",
///     },
///     geoLocations: [{
///         location: "westus",
///         failoverPriority: 0,
///     }],
///     identity: {
///         type: "UserAssigned",
///         identityIds: [example.id],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.authorization.UserAssignedIdentity("example",
///     resource_group_name=example_azurerm_resource_group["name"],
///     location=example_azurerm_resource_group["location"],
///     name="example-resource")
/// example_account = azure.cosmosdb.Account("example",
///     name="example-resource",
///     location=example_azurerm_resource_group["location"],
///     resource_group_name=example_azurerm_resource_group["name"],
///     default_identity_type=std.join_output(separator="=",
///         input=[
///             "UserAssignedIdentity",
///             example.id,
///         ]).apply(lambda invoke: invoke.result),
///     offer_type="Standard",
///     kind="MongoDB",
///     capabilities=[{
///         "name": "EnableMongo",
///     }],
///     consistency_policy={
///         "consistency_level": "Strong",
///     },
///     geo_locations=[{
///         "location": "westus",
///         "failover_priority": 0,
///     }],
///     identity={
///         "type": "UserAssigned",
///         "identity_ids": [example.id],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///         Location = exampleAzurermResourceGroup.Location,
///         Name = "example-resource",
///     });
///
///     var exampleAccount = new Azure.CosmosDB.Account("example", new()
///     {
///         Name = "example-resource",
///         Location = exampleAzurermResourceGroup.Location,
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///         DefaultIdentityType = Std.Join.Invoke(new()
///         {
///             Separator = "=",
///             Input = new[]
///             {
///                 "UserAssignedIdentity",
///                 example.Id,
///             },
///         }).Apply(invoke => invoke.Result),
///         OfferType = "Standard",
///         Kind = "MongoDB",
///         Capabilities = new[]
///         {
///             new Azure.CosmosDB.Inputs.AccountCapabilityArgs
///             {
///                 Name = "EnableMongo",
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
///                 Location = "westus",
///                 FailoverPriority = 0,
///             },
///         },
///         Identity = new Azure.CosmosDB.Inputs.AccountIdentityArgs
///         {
///             Type = "UserAssigned",
///             IdentityIds = new[]
///             {
///                 example.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cosmosdb"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			ResourceGroupName: pulumi.Any(exampleAzurermResourceGroup.Name),
/// 			Location:          pulumi.Any(exampleAzurermResourceGroup.Location),
/// 			Name:              pulumi.String("example-resource"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cosmosdb.NewAccount(ctx, "example", &cosmosdb.AccountArgs{
/// 			Name:              pulumi.String("example-resource"),
/// 			Location:          pulumi.Any(exampleAzurermResourceGroup.Location),
/// 			ResourceGroupName: pulumi.Any(exampleAzurermResourceGroup.Name),
/// 			DefaultIdentityType: pulumi.String(std.JoinOutput(ctx, std.JoinOutputArgs{
/// 				Separator: pulumi.String("="),
/// 				Input: pulumi.StringArray{
/// 					pulumi.String("UserAssignedIdentity"),
/// 					example.ID(),
/// 				},
/// 			}, nil).ApplyT(func(invoke std.JoinResult) (*string, error) {
/// 				return invoke.Result, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			OfferType: pulumi.String("Standard"),
/// 			Kind:      pulumi.String("MongoDB"),
/// 			Capabilities: cosmosdb.AccountCapabilityArray{
/// 				&cosmosdb.AccountCapabilityArgs{
/// 					Name: pulumi.String("EnableMongo"),
/// 				},
/// 			},
/// 			ConsistencyPolicy: &cosmosdb.AccountConsistencyPolicyArgs{
/// 				ConsistencyLevel: pulumi.String("Strong"),
/// 			},
/// 			GeoLocations: cosmosdb.AccountGeoLocationArray{
/// 				&cosmosdb.AccountGeoLocationArgs{
/// 					Location:         pulumi.String("westus"),
/// 					FailoverPriority: pulumi.Int(0),
/// 				},
/// 			},
/// 			Identity: &cosmosdb.AccountIdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					example.ID(),
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
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.cosmosdb.Account;
/// import com.pulumi.azure.cosmosdb.AccountArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountCapabilityArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountConsistencyPolicyArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountGeoLocationArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountIdentityArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
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
///         var example = new UserAssignedIdentity("example", UserAssignedIdentityArgs.builder()
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .location(exampleAzurermResourceGroup.location())
///             .name("example-resource")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-resource")
///             .location(exampleAzurermResourceGroup.location())
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .defaultIdentityType(StdFunctions.join(JoinArgs.builder()
///                 .separator("=")
///                 .input(
///                     "UserAssignedIdentity",
///                     example.id())
///                 .build()).applyValue(_invoke -> _invoke.result()))
///             .offerType("Standard")
///             .kind("MongoDB")
///             .capabilities(AccountCapabilityArgs.builder()
///                 .name("EnableMongo")
///                 .build())
///             .consistencyPolicy(AccountConsistencyPolicyArgs.builder()
///                 .consistencyLevel("Strong")
///                 .build())
///             .geoLocations(AccountGeoLocationArgs.builder()
///                 .location("westus")
///                 .failoverPriority(0)
///                 .build())
///             .identity(AccountIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .identityIds(example.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:authorization:UserAssignedIdentity
///     properties:
///       resourceGroupName: ${exampleAzurermResourceGroup.name}
///       location: ${exampleAzurermResourceGroup.location}
///       name: example-resource
///   exampleAccount:
///     type: azure:cosmosdb:Account
///     name: example
///     properties:
///       name: example-resource
///       location: ${exampleAzurermResourceGroup.location}
///       resourceGroupName: ${exampleAzurermResourceGroup.name}
///       defaultIdentityType:
///         fn::invoke:
///           function: std:join
///           arguments:
///             separator: =
///             input:
///               - UserAssignedIdentity
///               - ${example.id}
///           return: result
///       offerType: Standard
///       kind: MongoDB
///       capabilities:
///         - name: EnableMongo
///       consistencyPolicy:
///         consistencyLevel: Strong
///       geoLocations:
///         - location: westus
///           failoverPriority: 0
///       identity:
///         type: UserAssigned
///         identityIds:
///           - ${example.id}
/// ```
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DocumentDB` - 2024-08-15
///
/// ## Import
///
/// CosmosDB Accounts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/account:Account account1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DocumentDB/databaseAccounts/account1
/// ```
class Account extends pulumi.CustomResource {
  late final pulumi.Output<bool?> accessKeyMetadataWritesEnabled;
  /// An `analytical_storage` block as defined below.
  late final pulumi.Output<AccountAnalyticalStorage> analyticalStorage;
  late final pulumi.Output<bool?> analyticalStorageEnabled;
  late final pulumi.Output<bool?> automaticFailoverEnabled;
  late final pulumi.Output<AccountBackup> backup;
  late final pulumi.Output<bool?> burstCapacityEnabled;
  late final pulumi.Output<List<AccountCapability>> capabilities;
  /// A `capacity` block as defined below.
  late final pulumi.Output<AccountCapacity> capacity;
  late final pulumi.Output<AccountConsistencyPolicy> consistencyPolicy;
  late final pulumi.Output<AccountCorsRule?> corsRule;
  /// The creation mode for the CosmosDB Account. Possible values are `Default` and `Restore`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `create_mode` can only be defined when the `backup.type` is set to `Continuous`.
  late final pulumi.Output<String> createMode;
  /// The default identity for accessing Key Vault. Possible values are `FirstPartyIdentity`, `SystemAssignedIdentity` or `UserAssignedIdentity`. Defaults to `FirstPartyIdentity`.
  late final pulumi.Output<String?> defaultIdentityType;
  /// The endpoint used to connect to the CosmosDB account.
  late final pulumi.Output<String> endpoint;
  late final pulumi.Output<bool?> freeTierEnabled;
  late final pulumi.Output<List<AccountGeoLocation>> geoLocations;
  late final pulumi.Output<AccountIdentity?> identity;
  late final pulumi.Output<List<String>?> ipRangeFilters;
  late final pulumi.Output<bool?> isVirtualNetworkFilterEnabled;
  late final pulumi.Output<String?> keyVaultKeyId;
  late final pulumi.Output<String?> kind;
  late final pulumi.Output<bool?> localAuthenticationDisabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  late final pulumi.Output<String?> managedHsmKeyId;
  /// Specifies the minimal TLS version for the CosmosDB account. Possible values are: `Tls`, `Tls11`, and `Tls12`. Defaults to `Tls12`.
  ///
  /// > **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more details.
  late final pulumi.Output<String?> minimalTlsVersion;
  late final pulumi.Output<String> mongoServerVersion;
  late final pulumi.Output<bool?> multipleWriteLocationsEnabled;
  /// Specifies the name of the CosmosDB Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  late final pulumi.Output<bool?> networkAclBypassForAzureServices;
  late final pulumi.Output<List<String>?> networkAclBypassIds;
  /// Specifies the Offer Type to use for this CosmosDB Account; currently, this can only be set to `Standard`.
  late final pulumi.Output<String> offerType;
  late final pulumi.Output<bool?> partitionMergeEnabled;
  /// The Primary key for the CosmosDB Account.
  late final pulumi.Output<String> primaryKey;
  /// Primary Mongodb connection string for the CosmosDB Account.
  late final pulumi.Output<String> primaryMongodbConnectionString;
  /// The Primary read-only Key for the CosmosDB Account.
  late final pulumi.Output<String> primaryReadonlyKey;
  /// Primary readonly Mongodb connection string for the CosmosDB Account.
  late final pulumi.Output<String> primaryReadonlyMongodbConnectionString;
  /// Primary readonly SQL connection string for the CosmosDB Account.
  late final pulumi.Output<String> primaryReadonlySqlConnectionString;
  /// Primary SQL connection string for the CosmosDB Account.
  late final pulumi.Output<String> primarySqlConnectionString;
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// A list of read endpoints available for this CosmosDB account.
  late final pulumi.Output<List<String>> readEndpoints;
  /// The name of the resource group in which the CosmosDB Account is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  late final pulumi.Output<AccountRestore?> restore;
  /// The Secondary key for the CosmosDB Account.
  late final pulumi.Output<String> secondaryKey;
  /// Secondary Mongodb connection string for the CosmosDB Account.
  late final pulumi.Output<String> secondaryMongodbConnectionString;
  /// The Secondary read-only key for the CosmosDB Account.
  late final pulumi.Output<String> secondaryReadonlyKey;
  /// Secondary readonly Mongodb connection string for the CosmosDB Account.
  late final pulumi.Output<String> secondaryReadonlyMongodbConnectionString;
  /// Secondary readonly SQL connection string for the CosmosDB Account.
  late final pulumi.Output<String> secondaryReadonlySqlConnectionString;
  /// Secondary SQL connection string for the CosmosDB Account.
  late final pulumi.Output<String> secondarySqlConnectionString;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<List<AccountVirtualNetworkRule>?> virtualNetworkRules;
  /// A list of write endpoints available for this CosmosDB account.
  late final pulumi.Output<List<String>> writeEndpoints;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_cosmosdb_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/account:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessKeyMetadataWritesEnabled = registerOutput<bool?>('accessKeyMetadataWritesEnabled');
    this.analyticalStorage = registerOutput<AccountAnalyticalStorage>('analyticalStorage');
    this.analyticalStorageEnabled = registerOutput<bool?>('analyticalStorageEnabled');
    this.automaticFailoverEnabled = registerOutput<bool?>('automaticFailoverEnabled');
    this.backup = registerOutput<AccountBackup>('backup');
    this.burstCapacityEnabled = registerOutput<bool?>('burstCapacityEnabled');
    this.capabilities = registerOutput<List<AccountCapability>>('capabilities');
    this.capacity = registerOutput<AccountCapacity>('capacity');
    this.consistencyPolicy = registerOutput<AccountConsistencyPolicy>('consistencyPolicy');
    this.corsRule = registerOutput<AccountCorsRule?>('corsRule');
    this.createMode = registerOutput<String>('createMode');
    this.defaultIdentityType = registerOutput<String?>('defaultIdentityType');
    this.endpoint = registerOutput<String>('endpoint');
    this.freeTierEnabled = registerOutput<bool?>('freeTierEnabled');
    this.geoLocations = registerOutput<List<AccountGeoLocation>>('geoLocations');
    this.identity = registerOutput<AccountIdentity?>('identity');
    this.ipRangeFilters = registerOutput<List<String>?>('ipRangeFilters');
    this.isVirtualNetworkFilterEnabled = registerOutput<bool?>('isVirtualNetworkFilterEnabled');
    this.keyVaultKeyId = registerOutput<String?>('keyVaultKeyId');
    this.kind = registerOutput<String?>('kind');
    this.localAuthenticationDisabled = registerOutput<bool?>('localAuthenticationDisabled');
    this.location = registerOutput<String>('location');
    this.managedHsmKeyId = registerOutput<String?>('managedHsmKeyId');
    this.minimalTlsVersion = registerOutput<String?>('minimalTlsVersion');
    this.mongoServerVersion = registerOutput<String>('mongoServerVersion');
    this.multipleWriteLocationsEnabled = registerOutput<bool?>('multipleWriteLocationsEnabled');
    this.name = registerOutput<String>('name');
    this.networkAclBypassForAzureServices = registerOutput<bool?>('networkAclBypassForAzureServices');
    this.networkAclBypassIds = registerOutput<List<String>?>('networkAclBypassIds');
    this.offerType = registerOutput<String>('offerType');
    this.partitionMergeEnabled = registerOutput<bool?>('partitionMergeEnabled');
    this.primaryKey = registerOutput<String>('primaryKey');
    this.primaryMongodbConnectionString = registerOutput<String>('primaryMongodbConnectionString');
    this.primaryReadonlyKey = registerOutput<String>('primaryReadonlyKey');
    this.primaryReadonlyMongodbConnectionString = registerOutput<String>('primaryReadonlyMongodbConnectionString');
    this.primaryReadonlySqlConnectionString = registerOutput<String>('primaryReadonlySqlConnectionString');
    this.primarySqlConnectionString = registerOutput<String>('primarySqlConnectionString');
    this.publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    this.readEndpoints = registerOutput<List<String>>('readEndpoints');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.restore = registerOutput<AccountRestore?>('restore');
    this.secondaryKey = registerOutput<String>('secondaryKey');
    this.secondaryMongodbConnectionString = registerOutput<String>('secondaryMongodbConnectionString');
    this.secondaryReadonlyKey = registerOutput<String>('secondaryReadonlyKey');
    this.secondaryReadonlyMongodbConnectionString = registerOutput<String>('secondaryReadonlyMongodbConnectionString');
    this.secondaryReadonlySqlConnectionString = registerOutput<String>('secondaryReadonlySqlConnectionString');
    this.secondarySqlConnectionString = registerOutput<String>('secondarySqlConnectionString');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.virtualNetworkRules = registerOutput<List<AccountVirtualNetworkRule>?>('virtualNetworkRules');
    this.writeEndpoints = registerOutput<List<String>>('writeEndpoints');
  }

  /// Gets an existing [Account] resource's state with the given [name] and [id].
  static Account get(
    String name,
    pulumi.Input<String> id, {
    AccountState? state,
  }) {
    return Account._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Account._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/account:Account',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessKeyMetadataWritesEnabled = registerOutput<bool?>('accessKeyMetadataWritesEnabled');
    this.analyticalStorage = registerOutput<AccountAnalyticalStorage>('analyticalStorage');
    this.analyticalStorageEnabled = registerOutput<bool?>('analyticalStorageEnabled');
    this.automaticFailoverEnabled = registerOutput<bool?>('automaticFailoverEnabled');
    this.backup = registerOutput<AccountBackup>('backup');
    this.burstCapacityEnabled = registerOutput<bool?>('burstCapacityEnabled');
    this.capabilities = registerOutput<List<AccountCapability>>('capabilities');
    this.capacity = registerOutput<AccountCapacity>('capacity');
    this.consistencyPolicy = registerOutput<AccountConsistencyPolicy>('consistencyPolicy');
    this.corsRule = registerOutput<AccountCorsRule?>('corsRule');
    this.createMode = registerOutput<String>('createMode');
    this.defaultIdentityType = registerOutput<String?>('defaultIdentityType');
    this.endpoint = registerOutput<String>('endpoint');
    this.freeTierEnabled = registerOutput<bool?>('freeTierEnabled');
    this.geoLocations = registerOutput<List<AccountGeoLocation>>('geoLocations');
    this.identity = registerOutput<AccountIdentity?>('identity');
    this.ipRangeFilters = registerOutput<List<String>?>('ipRangeFilters');
    this.isVirtualNetworkFilterEnabled = registerOutput<bool?>('isVirtualNetworkFilterEnabled');
    this.keyVaultKeyId = registerOutput<String?>('keyVaultKeyId');
    this.kind = registerOutput<String?>('kind');
    this.localAuthenticationDisabled = registerOutput<bool?>('localAuthenticationDisabled');
    this.location = registerOutput<String>('location');
    this.managedHsmKeyId = registerOutput<String?>('managedHsmKeyId');
    this.minimalTlsVersion = registerOutput<String?>('minimalTlsVersion');
    this.mongoServerVersion = registerOutput<String>('mongoServerVersion');
    this.multipleWriteLocationsEnabled = registerOutput<bool?>('multipleWriteLocationsEnabled');
    this.name = registerOutput<String>('name');
    this.networkAclBypassForAzureServices = registerOutput<bool?>('networkAclBypassForAzureServices');
    this.networkAclBypassIds = registerOutput<List<String>?>('networkAclBypassIds');
    this.offerType = registerOutput<String>('offerType');
    this.partitionMergeEnabled = registerOutput<bool?>('partitionMergeEnabled');
    this.primaryKey = registerOutput<String>('primaryKey');
    this.primaryMongodbConnectionString = registerOutput<String>('primaryMongodbConnectionString');
    this.primaryReadonlyKey = registerOutput<String>('primaryReadonlyKey');
    this.primaryReadonlyMongodbConnectionString = registerOutput<String>('primaryReadonlyMongodbConnectionString');
    this.primaryReadonlySqlConnectionString = registerOutput<String>('primaryReadonlySqlConnectionString');
    this.primarySqlConnectionString = registerOutput<String>('primarySqlConnectionString');
    this.publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    this.readEndpoints = registerOutput<List<String>>('readEndpoints');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.restore = registerOutput<AccountRestore?>('restore');
    this.secondaryKey = registerOutput<String>('secondaryKey');
    this.secondaryMongodbConnectionString = registerOutput<String>('secondaryMongodbConnectionString');
    this.secondaryReadonlyKey = registerOutput<String>('secondaryReadonlyKey');
    this.secondaryReadonlyMongodbConnectionString = registerOutput<String>('secondaryReadonlyMongodbConnectionString');
    this.secondaryReadonlySqlConnectionString = registerOutput<String>('secondaryReadonlySqlConnectionString');
    this.secondarySqlConnectionString = registerOutput<String>('secondarySqlConnectionString');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.virtualNetworkRules = registerOutput<List<AccountVirtualNetworkRule>?>('virtualNetworkRules');
    this.writeEndpoints = registerOutput<List<String>>('writeEndpoints');
  }
}
