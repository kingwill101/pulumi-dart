import 'package:pulumi/pulumi.dart' as pulumi;
import 'geo_replication_args.dart';
import 'geo_replication_state.dart';

/// Manages Managed Redis Geo-Replication by linking and unlinking databases in a geo-replication group.
///
/// > **Note:** This resource manages the geo-replication group membership for Managed Redis databases. All databases to be linked must have `geo_replication_group_name` provided with the same value. Linking will [discard cache data and cause temporary outage](https://learn.microsoft.com/azure/redis/how-to-active-geo-replication#add-an-existing-instance-to-an-active-geo-replication-group).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-managedredis",
///     location: "West Europe",
/// });
/// const amr1 = new azure.managedredis.ManagedRedis("amr1", {
///     name: "example-managedredis-amr1",
///     resourceGroupName: example.name,
///     location: "West Europe",
///     skuName: "Balanced_B3",
///     defaultDatabase: {
///         geoReplicationGroupName: "example-geo-group",
///     },
/// });
/// const amr2 = new azure.managedredis.ManagedRedis("amr2", {
///     name: "example-managedredis-amr2",
///     resourceGroupName: example.name,
///     location: "Central US",
///     skuName: "Balanced_B3",
///     defaultDatabase: {
///         geoReplicationGroupName: "example-geo-group",
///     },
/// });
/// const exampleGeoReplication = new azure.managedredis.GeoReplication("example", {
///     managedRedisId: amr1.id,
///     linkedManagedRedisIds: [amr2.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-managedredis",
///     location="West Europe")
/// amr1 = azure.managedredis.ManagedRedis("amr1",
///     name="example-managedredis-amr1",
///     resource_group_name=example.name,
///     location="West Europe",
///     sku_name="Balanced_B3",
///     default_database={
///         "geo_replication_group_name": "example-geo-group",
///     })
/// amr2 = azure.managedredis.ManagedRedis("amr2",
///     name="example-managedredis-amr2",
///     resource_group_name=example.name,
///     location="Central US",
///     sku_name="Balanced_B3",
///     default_database={
///         "geo_replication_group_name": "example-geo-group",
///     })
/// example_geo_replication = azure.managedredis.GeoReplication("example",
///     managed_redis_id=amr1.id,
///     linked_managed_redis_ids=[amr2.id])
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
///         Name = "example-managedredis",
///         Location = "West Europe",
///     });
///
///     var amr1 = new Azure.ManagedRedis.ManagedRedis("amr1", new()
///     {
///         Name = "example-managedredis-amr1",
///         ResourceGroupName = example.Name,
///         Location = "West Europe",
///         SkuName = "Balanced_B3",
///         DefaultDatabase = new Azure.ManagedRedis.Inputs.ManagedRedisDefaultDatabaseArgs
///         {
///             GeoReplicationGroupName = "example-geo-group",
///         },
///     });
///
///     var amr2 = new Azure.ManagedRedis.ManagedRedis("amr2", new()
///     {
///         Name = "example-managedredis-amr2",
///         ResourceGroupName = example.Name,
///         Location = "Central US",
///         SkuName = "Balanced_B3",
///         DefaultDatabase = new Azure.ManagedRedis.Inputs.ManagedRedisDefaultDatabaseArgs
///         {
///             GeoReplicationGroupName = "example-geo-group",
///         },
///     });
///
///     var exampleGeoReplication = new Azure.ManagedRedis.GeoReplication("example", new()
///     {
///         ManagedRedisId = amr1.Id,
///         LinkedManagedRedisIds = new[]
///         {
///             amr2.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/managedredis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-managedredis"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		amr1, err := managedredis.NewManagedRedis(ctx, "amr1", &managedredis.ManagedRedisArgs{
/// 			Name:              pulumi.String("example-managedredis-amr1"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          pulumi.String("West Europe"),
/// 			SkuName:           pulumi.String("Balanced_B3"),
/// 			DefaultDatabase: &managedredis.ManagedRedisDefaultDatabaseArgs{
/// 				GeoReplicationGroupName: pulumi.String("example-geo-group"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		amr2, err := managedredis.NewManagedRedis(ctx, "amr2", &managedredis.ManagedRedisArgs{
/// 			Name:              pulumi.String("example-managedredis-amr2"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          pulumi.String("Central US"),
/// 			SkuName:           pulumi.String("Balanced_B3"),
/// 			DefaultDatabase: &managedredis.ManagedRedisDefaultDatabaseArgs{
/// 				GeoReplicationGroupName: pulumi.String("example-geo-group"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = managedredis.NewGeoReplication(ctx, "example", &managedredis.GeoReplicationArgs{
/// 			ManagedRedisId: amr1.ID(),
/// 			LinkedManagedRedisIds: pulumi.StringArray{
/// 				amr2.ID(),
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
/// import com.pulumi.azure.managedredis.ManagedRedis;
/// import com.pulumi.azure.managedredis.ManagedRedisArgs;
/// import com.pulumi.azure.managedredis.inputs.ManagedRedisDefaultDatabaseArgs;
/// import com.pulumi.azure.managedredis.GeoReplication;
/// import com.pulumi.azure.managedredis.GeoReplicationArgs;
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
///             .name("example-managedredis")
///             .location("West Europe")
///             .build());
///
///         var amr1 = new ManagedRedis("amr1", ManagedRedisArgs.builder()
///             .name("example-managedredis-amr1")
///             .resourceGroupName(example.name())
///             .location("West Europe")
///             .skuName("Balanced_B3")
///             .defaultDatabase(ManagedRedisDefaultDatabaseArgs.builder()
///                 .geoReplicationGroupName("example-geo-group")
///                 .build())
///             .build());
///
///         var amr2 = new ManagedRedis("amr2", ManagedRedisArgs.builder()
///             .name("example-managedredis-amr2")
///             .resourceGroupName(example.name())
///             .location("Central US")
///             .skuName("Balanced_B3")
///             .defaultDatabase(ManagedRedisDefaultDatabaseArgs.builder()
///                 .geoReplicationGroupName("example-geo-group")
///                 .build())
///             .build());
///
///         var exampleGeoReplication = new GeoReplication("exampleGeoReplication", GeoReplicationArgs.builder()
///             .managedRedisId(amr1.id())
///             .linkedManagedRedisIds(amr2.id())
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
///       name: example-managedredis
///       location: West Europe
///   amr1:
///     type: azure:managedredis:ManagedRedis
///     properties:
///       name: example-managedredis-amr1
///       resourceGroupName: ${example.name}
///       location: West Europe
///       skuName: Balanced_B3
///       defaultDatabase:
///         geoReplicationGroupName: example-geo-group
///   amr2:
///     type: azure:managedredis:ManagedRedis
///     properties:
///       name: example-managedredis-amr2
///       resourceGroupName: ${example.name}
///       location: Central US
///       skuName: Balanced_B3
///       defaultDatabase:
///         geoReplicationGroupName: example-geo-group
///   exampleGeoReplication:
///     type: azure:managedredis:GeoReplication
///     name: example
///     properties:
///       managedRedisId: ${amr1.id}
///       linkedManagedRedisIds:
///         - ${amr2.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Cache` - 2025-07-01
///
/// ## Import
///
/// Managed Redis Database Geo-Replication can be imported using the Managed Redis `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:managedredis/geoReplication:GeoReplication example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Cache/redisEnterprise/cluster1
/// ```
class GeoReplication extends pulumi.CustomResource {
  /// A set of other Managed Redis IDs to link together in the geo-replication group. The ID of this Managed Redis is always included by default and does not need to be provided here. Can contain up to 4 Managed Redis IDs, making up a group of 5 in total. All Managed Redis must have the same `geo_replication_group_name` configured. Once linked, the geo-replication state of all Managed Redis will be updated.
  late final pulumi.Output<List<String>> linkedManagedRedisIds;
  /// The ID of the Managed Redis through which geo-replication group will be managed. Linking is reciprocal, if A is linked to B, both A and B will have the same linking state. There is no need to have duplicate `azure.managedredis.GeoReplication` resources for each. Changing this forces a new resource to be created.
  late final pulumi.Output<String> managedRedisId;

  /// Creates a new [GeoReplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GeoReplication]. {@macro pulumi_managedredis_geo_replication_geo_replication_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GeoReplication(
    String name, {
    GeoReplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:managedredis/geoReplication:GeoReplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.linkedManagedRedisIds = registerOutput<List<String>>('linkedManagedRedisIds');
    this.managedRedisId = registerOutput<String>('managedRedisId');
  }

  /// Gets an existing [GeoReplication] resource's state with the given [name] and [id].
  static GeoReplication get(
    String name,
    pulumi.Input<String> id, {
    GeoReplicationState? state,
  }) {
    return GeoReplication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GeoReplication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:managedredis/geoReplication:GeoReplication',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.linkedManagedRedisIds = registerOutput<List<String>>('linkedManagedRedisIds');
    this.managedRedisId = registerOutput<String>('managedRedisId');
  }
}
