import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_cluster_args.dart';
import 'mongo_cluster_connection_string.dart';
import 'mongo_cluster_customer_managed_key.dart';
import 'mongo_cluster_identity.dart';
import 'mongo_cluster_restore.dart';
import 'mongo_cluster_state.dart';

/// Manages a MongoDB Cluster using vCore Architecture.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "East US",
/// });
/// const exampleMongoCluster = new azure.mongocluster.MongoCluster("example", {
///     name: "example-mc",
///     resourceGroupName: example.name,
///     location: example.location,
///     administratorUsername: "adminTerraform",
///     administratorPassword: "QAZwsx123",
///     computeTier: "Free",
///     highAvailabilityMode: "Disabled",
///     shardCount: 1,
///     storageSizeInGb: 32,
///     version: "8.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="East US")
/// example_mongo_cluster = azure.mongocluster.MongoCluster("example",
///     name="example-mc",
///     resource_group_name=example.name,
///     location=example.location,
///     administrator_username="adminTerraform",
///     administrator_password="QAZwsx123",
///     compute_tier="Free",
///     high_availability_mode="Disabled",
///     shard_count=1,
///     storage_size_in_gb=32,
///     version="8.0")
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
///         Name = "example-rg",
///         Location = "East US",
///     });
///
///     var exampleMongoCluster = new Azure.MongoCluster.MongoCluster("example", new()
///     {
///         Name = "example-mc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AdministratorUsername = "adminTerraform",
///         AdministratorPassword = "QAZwsx123",
///         ComputeTier = "Free",
///         HighAvailabilityMode = "Disabled",
///         ShardCount = 1,
///         StorageSizeInGb = 32,
///         Version = "8.0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mongocluster"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mongocluster.NewMongoCluster(ctx, "example", &mongocluster.MongoClusterArgs{
/// 			Name:                  pulumi.String("example-mc"),
/// 			ResourceGroupName:     example.Name,
/// 			Location:              example.Location,
/// 			AdministratorUsername: pulumi.String("adminTerraform"),
/// 			AdministratorPassword: pulumi.String("QAZwsx123"),
/// 			ComputeTier:           pulumi.String("Free"),
/// 			HighAvailabilityMode:  pulumi.String("Disabled"),
/// 			ShardCount:            pulumi.Int(1),
/// 			StorageSizeInGb:       pulumi.Int(32),
/// 			Version:               pulumi.String("8.0"),
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
///   name     = "example-rg"
///   location = "East US"
/// }
/// resource "azure_mongocluster_mongocluster" "example" {
///   name                   = "example-mc"
///   resource_group_name    = azure_core_resourcegroup.example.name
///   location               = azure_core_resourcegroup.example.location
///   administrator_username = "adminTerraform"
///   administrator_password = "QAZwsx123"
///   compute_tier           = "Free"
///   high_availability_mode = "Disabled"
///   shard_count            = "1"
///   storage_size_in_gb     = "32"
///   version                = "8.0"
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
/// import com.pulumi.azure.mongocluster.MongoCluster;
/// import com.pulumi.azure.mongocluster.MongoClusterArgs;
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
///             .name("example-rg")
///             .location("East US")
///             .build());
///
///         var exampleMongoCluster = new MongoCluster("exampleMongoCluster", MongoClusterArgs.builder()
///             .name("example-mc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .administratorUsername("adminTerraform")
///             .administratorPassword("QAZwsx123")
///             .computeTier("Free")
///             .highAvailabilityMode("Disabled")
///             .shardCount(1)
///             .storageSizeInGb(32)
///             .version("8.0")
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
///       name: example-rg
///       location: East US
///   exampleMongoCluster:
///     type: azure:mongocluster:MongoCluster
///     name: example
///     properties:
///       name: example-mc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       administratorUsername: adminTerraform
///       administratorPassword: QAZwsx123
///       computeTier: Free
///       highAvailabilityMode: Disabled
///       shardCount: '1'
///       storageSizeInGb: '32'
///       version: '8.0'
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DocumentDB` - 2025-09-01
///
/// ## Import
///
/// MongoDB Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mongocluster/mongoCluster:MongoCluster example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DocumentDB/mongoClusters/myMongoCluster
/// ```
class MongoCluster extends pulumi.CustomResource {
  /// The Password associated with the `administratorUsername` for the MongoDB Cluster.
  late final pulumi.Output<String?> administratorPassword;
  /// The administrator username of the MongoDB Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> administratorUsername;
  /// A list of allowed authentication modes for the MongoDB Cluster. Possible values are `NativeAuth` and `MicrosoftEntraID`.
  late final pulumi.Output<List<String>> authenticationMethods;
  /// The compute tier to assign to the MongoDB Cluster. Possible values are `Free`, `M10`, `M20`, `M25`, `M30`, `M40`, `M50`, `M60`, `M80`, and `M200`.
  late final pulumi.Output<String?> computeTier;
  /// One or more `connectionStrings` blocks as defined below.
  late final pulumi.Output<List<MongoClusterConnectionString>> connectionStrings;
  /// The creation mode for the MongoDB Cluster. Possible values are `Default`, `GeoReplica` and `PointInTimeRestore`. Defaults to `Default`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> createMode;
  /// A `customerManagedKey` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<MongoClusterCustomerManagedKey?> customerManagedKey;
  /// Is the Data API for the MongoDB Cluster enabled? Defaults to `false`.
  ///
  /// &gt; **Note:** `dataApiModeEnabled` can only be set when `createMode` is `Default`. Once enabled, it can only be disabled by recreating the resource.
  late final pulumi.Output<bool?> dataApiModeEnabled;
  /// The high availability mode for the MongoDB Cluster. Possibles values are `Disabled` and `ZoneRedundantPreferred`.
  late final pulumi.Output<String?> highAvailabilityMode;
  /// An `identity` block as detailed below.
  ///
  /// &gt; **Note:** When adding or removing `identity`, a resource recreation will be triggered.
  late final pulumi.Output<MongoClusterIdentity?> identity;
  /// The supported Azure location where the MongoDB Cluster exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for the MongoDB Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The preview features that can be enabled on the MongoDB Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>?> previewFeatures;
  /// The Public Network Access setting for the MongoDB Cluster. Possibles values are `Disabled` and `Enabled`. Defaults to `Enabled`.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// The name of the resource group in which to create the MongoDB Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `restore` block as defined below. Required when `createMode` is set to `PointInTimeRestore`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When `PointInTimeRestore` is enabled, service API will also assign a value to `sourceServerId`. The user has to explicitly set this property in the Terraform configuration or handle it using `ignoreChanges`.
  late final pulumi.Output<MongoClusterRestore?> restore;
  /// The Number of shards to provision on the MongoDB Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<int?> shardCount;
  /// The location of the source MongoDB Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> sourceLocation;
  /// The ID of the replication source MongoDB Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> sourceServerId;
  /// The size of the data disk space for the MongoDB Cluster.
  late final pulumi.Output<int?> storageSizeInGb;
  /// The storage type for the MongoDB Cluster. Possible values are `PremiumSSD` and `PremiumSSDv2`. Defaults to `PremiumSSD`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> storageType;
  /// A mapping of tags to assign to the MongoDB Cluster.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The version for the MongoDB Cluster. Possibles values are `5.0`, `6.0`, `7.0` and `8.0`.
  ///
  /// &gt; **Note:** `version` is required when `createMode` is `Default`.
  late final pulumi.Output<String?> version;

  /// Creates a new [MongoCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MongoCluster]. {@macro pulumi_mongocluster_mongo_cluster_mongo_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MongoCluster(
    String name, {
    MongoClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mongocluster/mongoCluster:MongoCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['administratorPassword', 'connectionStrings'],
        ) {
    administratorPassword = registerOutput<String?>('administratorPassword', isSecret: true);
    administratorUsername = registerOutput<String?>('administratorUsername');
    authenticationMethods = registerOutput<List<String>>('authenticationMethods', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    computeTier = registerOutput<String?>('computeTier');
    connectionStrings = registerOutput<List<MongoClusterConnectionString>>('connectionStrings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MongoClusterConnectionString>(guardedValue, (value) => MongoClusterConnectionString.fromMap((value as Map).cast<String, dynamic>())); }, isSecret: true);
    createMode = registerOutput<String?>('createMode');
    customerManagedKey = registerOutput<MongoClusterCustomerManagedKey?>('customerManagedKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MongoClusterCustomerManagedKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataApiModeEnabled = registerOutput<bool?>('dataApiModeEnabled');
    highAvailabilityMode = registerOutput<String?>('highAvailabilityMode');
    identity = registerOutput<MongoClusterIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MongoClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    previewFeatures = registerOutput<List<String>?>('previewFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    restore = registerOutput<MongoClusterRestore?>('restore', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MongoClusterRestore.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shardCount = registerOutput<int?>('shardCount');
    sourceLocation = registerOutput<String?>('sourceLocation');
    sourceServerId = registerOutput<String?>('sourceServerId');
    storageSizeInGb = registerOutput<int?>('storageSizeInGb');
    storageType = registerOutput<String?>('storageType');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    version = registerOutput<String?>('version');
  }

  /// Gets an existing [MongoCluster] resource's state with the given [name] and [id].
  static MongoCluster get(
    String name,
    pulumi.Input<String> id, {
    MongoClusterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MongoCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MongoCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mongocluster/mongoCluster:MongoCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administratorPassword = registerOutput<String?>('administratorPassword', isSecret: true);
    administratorUsername = registerOutput<String?>('administratorUsername');
    authenticationMethods = registerOutput<List<String>>('authenticationMethods', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    computeTier = registerOutput<String?>('computeTier');
    connectionStrings = registerOutput<List<MongoClusterConnectionString>>('connectionStrings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MongoClusterConnectionString>(guardedValue, (value) => MongoClusterConnectionString.fromMap((value as Map).cast<String, dynamic>())); }, isSecret: true);
    createMode = registerOutput<String?>('createMode');
    customerManagedKey = registerOutput<MongoClusterCustomerManagedKey?>('customerManagedKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MongoClusterCustomerManagedKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataApiModeEnabled = registerOutput<bool?>('dataApiModeEnabled');
    highAvailabilityMode = registerOutput<String?>('highAvailabilityMode');
    identity = registerOutput<MongoClusterIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MongoClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    previewFeatures = registerOutput<List<String>?>('previewFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    restore = registerOutput<MongoClusterRestore?>('restore', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MongoClusterRestore.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shardCount = registerOutput<int?>('shardCount');
    sourceLocation = registerOutput<String?>('sourceLocation');
    sourceServerId = registerOutput<String?>('sourceServerId');
    storageSizeInGb = registerOutput<int?>('storageSizeInGb');
    storageType = registerOutput<String?>('storageType');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    version = registerOutput<String?>('version');
  }

  /// Creates a typed reference to an existing [MongoCluster] resource.
  MongoCluster.reference(String urn)
    : super(
        'azure:mongocluster/mongoCluster:MongoCluster',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['administratorPassword', 'connectionStrings'],
        isResourceReference: true,
      ) {
    administratorPassword = registerOutput<String?>('administratorPassword', isSecret: true);
    administratorUsername = registerOutput<String?>('administratorUsername');
    authenticationMethods = registerOutput<List<String>>('authenticationMethods', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    computeTier = registerOutput<String?>('computeTier');
    connectionStrings = registerOutput<List<MongoClusterConnectionString>>('connectionStrings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MongoClusterConnectionString>(guardedValue, (value) => MongoClusterConnectionString.fromMap((value as Map).cast<String, dynamic>())); }, isSecret: true);
    createMode = registerOutput<String?>('createMode');
    customerManagedKey = registerOutput<MongoClusterCustomerManagedKey?>('customerManagedKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MongoClusterCustomerManagedKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataApiModeEnabled = registerOutput<bool?>('dataApiModeEnabled');
    highAvailabilityMode = registerOutput<String?>('highAvailabilityMode');
    identity = registerOutput<MongoClusterIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MongoClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    previewFeatures = registerOutput<List<String>?>('previewFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    restore = registerOutput<MongoClusterRestore?>('restore', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MongoClusterRestore.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shardCount = registerOutput<int?>('shardCount');
    sourceLocation = registerOutput<String?>('sourceLocation');
    sourceServerId = registerOutput<String?>('sourceServerId');
    storageSizeInGb = registerOutput<int?>('storageSizeInGb');
    storageType = registerOutput<String?>('storageType');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    version = registerOutput<String?>('version');
  }
}
