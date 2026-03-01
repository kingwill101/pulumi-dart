import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_database_args.dart';
import 'enterprise_database_module.dart';
import 'enterprise_database_state.dart';

/// Manages a Redis Enterprise Database.
///
/// > **Note:** This resource has been deprecated in favor of azurerm_managed_redis.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-redisenterprise",
///     location: "West Europe",
/// });
/// const exampleEnterpriseCluster = new azure.redis.EnterpriseCluster("example", {
///     name: "example-redisenterprise",
///     resourceGroupName: example.name,
///     location: example.location,
///     skuName: "Enterprise_E20-4",
/// });
/// const example1 = new azure.redis.EnterpriseCluster("example1", {
///     name: "example-redisenterprise1",
///     resourceGroupName: example.name,
///     location: example.location,
///     skuName: "Enterprise_E20-4",
/// });
/// const exampleEnterpriseDatabase = new azure.redis.EnterpriseDatabase("example", {
///     name: "default",
///     clusterId: exampleEnterpriseCluster.id,
///     clientProtocol: "Encrypted",
///     clusteringPolicy: "EnterpriseCluster",
///     evictionPolicy: "NoEviction",
///     port: 10000,
///     linkedDatabaseIds: [
///         pulumi.interpolate`${exampleEnterpriseCluster.id}/databases/default`,
///         pulumi.interpolate`${example1.id}/databases/default`,
///     ],
///     linkedDatabaseGroupNickname: "tftestGeoGroup",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-redisenterprise",
///     location="West Europe")
/// example_enterprise_cluster = azure.redis.EnterpriseCluster("example",
///     name="example-redisenterprise",
///     resource_group_name=example.name,
///     location=example.location,
///     sku_name="Enterprise_E20-4")
/// example1 = azure.redis.EnterpriseCluster("example1",
///     name="example-redisenterprise1",
///     resource_group_name=example.name,
///     location=example.location,
///     sku_name="Enterprise_E20-4")
/// example_enterprise_database = azure.redis.EnterpriseDatabase("example",
///     name="default",
///     cluster_id=example_enterprise_cluster.id,
///     client_protocol="Encrypted",
///     clustering_policy="EnterpriseCluster",
///     eviction_policy="NoEviction",
///     port=10000,
///     linked_database_ids=[
///         example_enterprise_cluster.id.apply(lambda id: f"{id}/databases/default"),
///         example1.id.apply(lambda id: f"{id}/databases/default"),
///     ],
///     linked_database_group_nickname="tftestGeoGroup")
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
///         Name = "example-redisenterprise",
///         Location = "West Europe",
///     });
///
///     var exampleEnterpriseCluster = new Azure.Redis.EnterpriseCluster("example", new()
///     {
///         Name = "example-redisenterprise",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SkuName = "Enterprise_E20-4",
///     });
///
///     var example1 = new Azure.Redis.EnterpriseCluster("example1", new()
///     {
///         Name = "example-redisenterprise1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SkuName = "Enterprise_E20-4",
///     });
///
///     var exampleEnterpriseDatabase = new Azure.Redis.EnterpriseDatabase("example", new()
///     {
///         Name = "default",
///         ClusterId = exampleEnterpriseCluster.Id,
///         ClientProtocol = "Encrypted",
///         ClusteringPolicy = "EnterpriseCluster",
///         EvictionPolicy = "NoEviction",
///         Port = 10000,
///         LinkedDatabaseIds = new[]
///         {
///             exampleEnterpriseCluster.Id.Apply(id => $"{id}/databases/default"),
///             example1.Id.Apply(id => $"{id}/databases/default"),
///         },
///         LinkedDatabaseGroupNickname = "tftestGeoGroup",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/redis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-redisenterprise"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEnterpriseCluster, err := redis.NewEnterpriseCluster(ctx, "example", &redis.EnterpriseClusterArgs{
/// 			Name:              pulumi.String("example-redisenterprise"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SkuName:           pulumi.String("Enterprise_E20-4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example1, err := redis.NewEnterpriseCluster(ctx, "example1", &redis.EnterpriseClusterArgs{
/// 			Name:              pulumi.String("example-redisenterprise1"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SkuName:           pulumi.String("Enterprise_E20-4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redis.NewEnterpriseDatabase(ctx, "example", &redis.EnterpriseDatabaseArgs{
/// 			Name:             pulumi.String("default"),
/// 			ClusterId:        exampleEnterpriseCluster.ID(),
/// 			ClientProtocol:   pulumi.String("Encrypted"),
/// 			ClusteringPolicy: pulumi.String("EnterpriseCluster"),
/// 			EvictionPolicy:   pulumi.String("NoEviction"),
/// 			Port:             pulumi.Int(10000),
/// 			LinkedDatabaseIds: pulumi.StringArray{
/// 				exampleEnterpriseCluster.ID().ApplyT(func(id string) (string, error) {
/// 					return fmt.Sprintf("%v/databases/default", id), nil
/// 				}).(pulumi.StringOutput),
/// 				example1.ID().ApplyT(func(id string) (string, error) {
/// 					return fmt.Sprintf("%v/databases/default", id), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			LinkedDatabaseGroupNickname: pulumi.String("tftestGeoGroup"),
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
/// import com.pulumi.azure.redis.EnterpriseCluster;
/// import com.pulumi.azure.redis.EnterpriseClusterArgs;
/// import com.pulumi.azure.redis.EnterpriseDatabase;
/// import com.pulumi.azure.redis.EnterpriseDatabaseArgs;
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
///             .name("example-redisenterprise")
///             .location("West Europe")
///             .build());
///
///         var exampleEnterpriseCluster = new EnterpriseCluster("exampleEnterpriseCluster", EnterpriseClusterArgs.builder()
///             .name("example-redisenterprise")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .skuName("Enterprise_E20-4")
///             .build());
///
///         var example1 = new EnterpriseCluster("example1", EnterpriseClusterArgs.builder()
///             .name("example-redisenterprise1")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .skuName("Enterprise_E20-4")
///             .build());
///
///         var exampleEnterpriseDatabase = new EnterpriseDatabase("exampleEnterpriseDatabase", EnterpriseDatabaseArgs.builder()
///             .name("default")
///             .clusterId(exampleEnterpriseCluster.id())
///             .clientProtocol("Encrypted")
///             .clusteringPolicy("EnterpriseCluster")
///             .evictionPolicy("NoEviction")
///             .port(10000)
///             .linkedDatabaseIds(
///                 exampleEnterpriseCluster.id().applyValue(_id -> String.format("%s/databases/default", _id)),
///                 example1.id().applyValue(_id -> String.format("%s/databases/default", _id)))
///             .linkedDatabaseGroupNickname("tftestGeoGroup")
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
///       name: example-redisenterprise
///       location: West Europe
///   exampleEnterpriseCluster:
///     type: azure:redis:EnterpriseCluster
///     name: example
///     properties:
///       name: example-redisenterprise
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       skuName: Enterprise_E20-4
///   example1:
///     type: azure:redis:EnterpriseCluster
///     properties:
///       name: example-redisenterprise1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       skuName: Enterprise_E20-4
///   exampleEnterpriseDatabase:
///     type: azure:redis:EnterpriseDatabase
///     name: example
///     properties:
///       name: default
///       clusterId: ${exampleEnterpriseCluster.id}
///       clientProtocol: Encrypted
///       clusteringPolicy: EnterpriseCluster
///       evictionPolicy: NoEviction
///       port: 10000
///       linkedDatabaseIds:
///         - ${exampleEnterpriseCluster.id}/databases/default
///         - ${example1.id}/databases/default
///       linkedDatabaseGroupNickname: tftestGeoGroup
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Cache` - 2024-10-01
///
/// ## Import
///
/// Redis Enterprise Databases can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:redis/enterpriseDatabase:EnterpriseDatabase example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Cache/redisEnterprise/cluster1/databases/database1
/// ```
class EnterpriseDatabase extends pulumi.CustomResource {
  /// Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Possible values are `Encrypted` and `Plaintext`. Defaults to `Encrypted`. Changing this forces a new Redis Enterprise Database to be created.
  late final pulumi.Output<String?> clientProtocol;
  /// The resource id of the Redis Enterprise Cluster to deploy this Redis Enterprise Database. Changing this forces a new Redis Enterprise Database to be created.
  late final pulumi.Output<String> clusterId;
  /// Clustering policy Specified at create time. Possible values are `EnterpriseCluster` and `OSSCluster`. Defaults to `OSSCluster`. Changing this forces a new Redis Enterprise Database to be created.
  late final pulumi.Output<String?> clusteringPolicy;
  /// Redis eviction policy possible values are `AllKeysLFU`, `AllKeysLRU`, `AllKeysRandom`, `VolatileLRU`, `VolatileLFU`, `VolatileTTL`, `VolatileRandom` and `NoEviction`. Changing this forces a new Redis Enterprise Database to be created. Defaults to `VolatileLRU`.
  late final pulumi.Output<String?> evictionPolicy;
  /// Nickname of the group of linked databases. Changing this force a new Redis Enterprise Geo Database to be created.
  late final pulumi.Output<String?> linkedDatabaseGroupNickname;
  /// A list of database resources to link with this database with a maximum of 5.
  ///
  /// > **Note:** Only the newly created databases can be added to an existing geo-replication group. Existing regular databases or recreated databases cannot be added to the existing geo-replication group. Any linked database removed from the list will be forcefully unlinked. The only recommended operation is to delete after force-unlink and the recommended scenario of force-unlink is region outage. The database cannot be linked again after force-unlink.
  late final pulumi.Output<List<String>?> linkedDatabaseIds;
  /// A `module` block as defined below. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Only `RediSearch` and `RedisJSON` modules are allowed with geo-replication
  late final pulumi.Output<List<EnterpriseDatabaseModule>?> modules;
  /// The name which should be used for this Redis Enterprise Database. Currently the acceptable value for this argument is `default`. Defaults to `default`. Changing this forces a new Redis Enterprise Database to be created.
  late final pulumi.Output<String> name;
  /// TCP port of the database endpoint. Specified at create time. Defaults to an available port. Changing this forces a new Redis Enterprise Database to be created. Defaults to `10000`.
  late final pulumi.Output<int?> port;
  /// The Primary Access Key for the Redis Enterprise Database Instance.
  late final pulumi.Output<String> primaryAccessKey;
  /// The Secondary Access Key for the Redis Enterprise Database Instance.
  late final pulumi.Output<String> secondaryAccessKey;

  /// Creates a new [EnterpriseDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnterpriseDatabase]. {@macro pulumi_redis_enterprise_database_enterprise_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnterpriseDatabase(
    String name, {
    EnterpriseDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:redis/enterpriseDatabase:EnterpriseDatabase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clientProtocol = registerOutput<String?>('clientProtocol');
    this.clusterId = registerOutput<String>('clusterId');
    this.clusteringPolicy = registerOutput<String?>('clusteringPolicy');
    this.evictionPolicy = registerOutput<String?>('evictionPolicy');
    this.linkedDatabaseGroupNickname = registerOutput<String?>('linkedDatabaseGroupNickname');
    this.linkedDatabaseIds = registerOutput<List<String>?>('linkedDatabaseIds');
    this.modules = registerOutput<List<EnterpriseDatabaseModule>?>('modules');
    this.name = registerOutput<String>('name');
    this.port = registerOutput<int?>('port');
    this.primaryAccessKey = registerOutput<String>('primaryAccessKey');
    this.secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
  }

  /// Gets an existing [EnterpriseDatabase] resource's state with the given [name] and [id].
  static EnterpriseDatabase get(
    String name,
    pulumi.Input<String> id, {
    EnterpriseDatabaseState? state,
  }) {
    return EnterpriseDatabase._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EnterpriseDatabase._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:redis/enterpriseDatabase:EnterpriseDatabase',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clientProtocol = registerOutput<String?>('clientProtocol');
    this.clusterId = registerOutput<String>('clusterId');
    this.clusteringPolicy = registerOutput<String?>('clusteringPolicy');
    this.evictionPolicy = registerOutput<String?>('evictionPolicy');
    this.linkedDatabaseGroupNickname = registerOutput<String?>('linkedDatabaseGroupNickname');
    this.linkedDatabaseIds = registerOutput<List<String>?>('linkedDatabaseIds');
    this.modules = registerOutput<List<EnterpriseDatabaseModule>?>('modules');
    this.name = registerOutput<String>('name');
    this.port = registerOutput<int?>('port');
    this.primaryAccessKey = registerOutput<String>('primaryAccessKey');
    this.secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
  }
}
