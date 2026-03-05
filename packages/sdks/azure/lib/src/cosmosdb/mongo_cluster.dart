import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_cluster_args.dart';
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
///     shardCount: 1,
///     computeTier: "Free",
///     highAvailabilityMode: "Disabled",
///     storageSizeInGb: 32,
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
///     shard_count=1,
///     compute_tier="Free",
///     high_availability_mode="Disabled",
///     storage_size_in_gb=32)
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
///         ShardCount = 1,
///         ComputeTier = "Free",
///         HighAvailabilityMode = "Disabled",
///         StorageSizeInGb = 32,
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
/// 			ShardCount:            pulumi.Int(1),
/// 			ComputeTier:           pulumi.String("Free"),
/// 			HighAvailabilityMode:  pulumi.String("Disabled"),
/// 			StorageSizeInGb:       pulumi.Int(32),
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
/// import com.pulumi.azure.mongocluster.MongoCluster;
/// import com.pulumi.azure.mongocluster.MongoClusterArgs;
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
///             .shardCount(1)
///             .computeTier("Free")
///             .highAvailabilityMode("Disabled")
///             .storageSizeInGb(32)
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
///       shardCount: '1'
///       computeTier: Free
///       highAvailabilityMode: Disabled
///       storageSizeInGb: '32'
/// ```
///
///
///
/// ### Preview Feature GeoReplicas)
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
///     shardCount: 1,
///     computeTier: "M30",
///     highAvailabilityMode: "ZoneRedundantPreferred",
///     storageSizeInGb: 64,
///     previewFeatures: ["GeoReplicas"],
/// });
/// const exampleGeoReplica = new azure.mongocluster.MongoCluster("example_geo_replica", {
///     name: "example-mc-geo",
///     resourceGroupName: example.name,
///     location: "Central US",
///     sourceServerId: exampleMongoCluster.id,
///     sourceLocation: exampleMongoCluster.location,
///     createMode: "GeoReplica",
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
///     shard_count=1,
///     compute_tier="M30",
///     high_availability_mode="ZoneRedundantPreferred",
///     storage_size_in_gb=64,
///     preview_features=["GeoReplicas"])
/// example_geo_replica = azure.mongocluster.MongoCluster("example_geo_replica",
///     name="example-mc-geo",
///     resource_group_name=example.name,
///     location="Central US",
///     source_server_id=example_mongo_cluster.id,
///     source_location=example_mongo_cluster.location,
///     create_mode="GeoReplica")
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
///         ShardCount = 1,
///         ComputeTier = "M30",
///         HighAvailabilityMode = "ZoneRedundantPreferred",
///         StorageSizeInGb = 64,
///         PreviewFeatures = new[]
///         {
///             "GeoReplicas",
///         },
///     });
///
///     var exampleGeoReplica = new Azure.MongoCluster.MongoCluster("example_geo_replica", new()
///     {
///         Name = "example-mc-geo",
///         ResourceGroupName = example.Name,
///         Location = "Central US",
///         SourceServerId = exampleMongoCluster.Id,
///         SourceLocation = exampleMongoCluster.Location,
///         CreateMode = "GeoReplica",
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
/// 		exampleMongoCluster, err := mongocluster.NewMongoCluster(ctx, "example", &mongocluster.MongoClusterArgs{
/// 			Name:                  pulumi.String("example-mc"),
/// 			ResourceGroupName:     example.Name,
/// 			Location:              example.Location,
/// 			AdministratorUsername: pulumi.String("adminTerraform"),
/// 			AdministratorPassword: pulumi.String("QAZwsx123"),
/// 			ShardCount:            pulumi.Int(1),
/// 			ComputeTier:           pulumi.String("M30"),
/// 			HighAvailabilityMode:  pulumi.String("ZoneRedundantPreferred"),
/// 			StorageSizeInGb:       pulumi.Int(64),
/// 			PreviewFeatures: pulumi.StringArray{
/// 				pulumi.String("GeoReplicas"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mongocluster.NewMongoCluster(ctx, "example_geo_replica", &mongocluster.MongoClusterArgs{
/// 			Name:              pulumi.String("example-mc-geo"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          pulumi.String("Central US"),
/// 			SourceServerId:    exampleMongoCluster.ID(),
/// 			SourceLocation:    exampleMongoCluster.Location,
/// 			CreateMode:        pulumi.String("GeoReplica"),
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
/// import com.pulumi.azure.mongocluster.MongoCluster;
/// import com.pulumi.azure.mongocluster.MongoClusterArgs;
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
///             .shardCount(1)
///             .computeTier("M30")
///             .highAvailabilityMode("ZoneRedundantPreferred")
///             .storageSizeInGb(64)
///             .previewFeatures("GeoReplicas")
///             .build());
///
///         var exampleGeoReplica = new MongoCluster("exampleGeoReplica", MongoClusterArgs.builder()
///             .name("example-mc-geo")
///             .resourceGroupName(example.name())
///             .location("Central US")
///             .sourceServerId(exampleMongoCluster.id())
///             .sourceLocation(exampleMongoCluster.location())
///             .createMode("GeoReplica")
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
///       shardCount: '1'
///       computeTier: M30
///       highAvailabilityMode: ZoneRedundantPreferred
///       storageSizeInGb: '64'
///       previewFeatures:
///         - GeoReplicas
///   exampleGeoReplica:
///     type: azure:mongocluster:MongoCluster
///     name: example_geo_replica
///     properties:
///       name: example-mc-geo
///       resourceGroupName: ${example.name}
///       location: Central US
///       sourceServerId: ${exampleMongoCluster.id}
///       sourceLocation: ${exampleMongoCluster.location}
///       createMode: GeoReplica
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
/// $ pulumi import azure:cosmosdb/mongoCluster:MongoCluster example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DocumentDB/mongoClusters/myMongoCluster
/// ```
class MongoCluster extends pulumi.CustomResource {
  /// The Password associated with the `administrator_username` for the MongoDB Cluster.
  late final pulumi.Output<String?> administratorPassword;

  /// The administrator username of the MongoDB Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> administratorUsername;

  /// A list of allowed authentication modes for the MongoDB Cluster. Possible values are `NativeAuth` and `MicrosoftEntraID`.
  late final pulumi.Output<List<String>> authenticationMethods;

  /// The compute tier to assign to the MongoDB Cluster. Possible values are `Free`, `M10`, `M20`, `M25`, `M30`, `M40`, `M50`, `M60`, `M80`, and `M200`.
  late final pulumi.Output<String?> computeTier;

  /// One or more `connection_strings` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> connectionStrings;

  /// The creation mode for the MongoDB Cluster. Possible values are `Default`, `GeoReplica` and `PointInTimeRestore`. Defaults to `Default`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> createMode;

  /// A `customer_managed_key` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<MongoClusterCustomerManagedKey?> customerManagedKey;

  /// Is the Data API for the MongoDB Cluster enabled? Defaults to `false`.
  ///
  /// &gt; **Note:** `data_api_mode_enabled` can only be set when `create_mode` is `Default`. Once enabled, it can only be disabled by recreating the resource.
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

  /// A `restore` block as defined below. Required when `create_mode` is set to `PointInTimeRestore`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When `PointInTimeRestore` is enabled, service API will also assign a value to `source_server_id`. The user has to explicitly set this property in the Terraform configuration or handle it using `ignore_changes`.
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
  late final pulumi.Output<String?> version;

  /// Creates a new [MongoCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MongoCluster]. {@macro pulumi_cosmosdb_mongo_cluster_mongo_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MongoCluster(
    String name, {
    MongoClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:cosmosdb/mongoCluster:MongoCluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    administratorPassword = registerOutput<String?>('administratorPassword');
    administratorUsername = registerOutput<String?>('administratorUsername');
    authenticationMethods = registerOutput<List<String>>(
      'authenticationMethods',
    );
    computeTier = registerOutput<String?>('computeTier');
    connectionStrings = registerOutput<List<Map<String, dynamic>>>(
      'connectionStrings',
    );
    createMode = registerOutput<String?>('createMode');
    customerManagedKey = registerOutput<MongoClusterCustomerManagedKey?>(
      'customerManagedKey',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MongoClusterCustomerManagedKey.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    dataApiModeEnabled = registerOutput<bool?>('dataApiModeEnabled');
    highAvailabilityMode = registerOutput<String?>('highAvailabilityMode');
    identity = registerOutput<MongoClusterIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MongoClusterIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    previewFeatures = registerOutput<List<String>?>('previewFeatures');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    restore = registerOutput<MongoClusterRestore?>(
      'restore',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MongoClusterRestore.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    shardCount = registerOutput<int?>('shardCount');
    sourceLocation = registerOutput<String?>('sourceLocation');
    sourceServerId = registerOutput<String?>('sourceServerId');
    storageSizeInGb = registerOutput<int?>('storageSizeInGb');
    storageType = registerOutput<String?>('storageType');
    tags = registerOutput<Map<String, String>?>('tags');
    version = registerOutput<String?>('version');
  }

  /// Gets an existing [MongoCluster] resource's state with the given [name] and [id].
  static MongoCluster get(
    String name,
    pulumi.Input<String> id, {
    MongoClusterState? state,
  }) {
    return MongoCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MongoCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:cosmosdb/mongoCluster:MongoCluster',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    administratorPassword = registerOutput<String?>('administratorPassword');
    administratorUsername = registerOutput<String?>('administratorUsername');
    authenticationMethods = registerOutput<List<String>>(
      'authenticationMethods',
    );
    computeTier = registerOutput<String?>('computeTier');
    connectionStrings = registerOutput<List<Map<String, dynamic>>>(
      'connectionStrings',
    );
    createMode = registerOutput<String?>('createMode');
    customerManagedKey = registerOutput<MongoClusterCustomerManagedKey?>(
      'customerManagedKey',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MongoClusterCustomerManagedKey.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    dataApiModeEnabled = registerOutput<bool?>('dataApiModeEnabled');
    highAvailabilityMode = registerOutput<String?>('highAvailabilityMode');
    identity = registerOutput<MongoClusterIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MongoClusterIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    previewFeatures = registerOutput<List<String>?>('previewFeatures');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    restore = registerOutput<MongoClusterRestore?>(
      'restore',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MongoClusterRestore.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    shardCount = registerOutput<int?>('shardCount');
    sourceLocation = registerOutput<String?>('sourceLocation');
    sourceServerId = registerOutput<String?>('sourceServerId');
    storageSizeInGb = registerOutput<int?>('storageSizeInGb');
    storageType = registerOutput<String?>('storageType');
    tags = registerOutput<Map<String, String>?>('tags');
    version = registerOutput<String?>('version');
  }
}
