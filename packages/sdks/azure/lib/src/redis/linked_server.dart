import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_server_args.dart';
import 'linked_server_state.dart';

/// Manages a Redis Linked Server (ie Geo Location)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example_primary = new azure.core.ResourceGroup("example-primary", {
///     name: "example-resources-primary",
///     location: "East US",
/// });
/// const example_primaryCache = new azure.redis.Cache("example-primary", {
///     name: "example-cache1",
///     location: example_primary.location,
///     resourceGroupName: example_primary.name,
///     capacity: 1,
///     family: "P",
///     skuName: "Premium",
///     enableNonSslPort: false,
///     redisConfiguration: {
///         maxmemoryReserved: 2,
///         maxmemoryDelta: 2,
///         maxmemoryPolicy: "allkeys-lru",
///     },
/// });
/// const example_secondary = new azure.core.ResourceGroup("example-secondary", {
///     name: "example-resources-secondary",
///     location: "West US",
/// });
/// const example_secondaryCache = new azure.redis.Cache("example-secondary", {
///     name: "example-cache2",
///     location: example_secondary.location,
///     resourceGroupName: example_secondary.name,
///     capacity: 1,
///     family: "P",
///     skuName: "Premium",
///     enableNonSslPort: false,
///     redisConfiguration: {
///         maxmemoryReserved: 2,
///         maxmemoryDelta: 2,
///         maxmemoryPolicy: "allkeys-lru",
///     },
/// });
/// const example_link = new azure.redis.LinkedServer("example-link", {
///     targetRedisCacheName: example_primaryCache.name,
///     resourceGroupName: example_primaryCache.resourceGroupName,
///     linkedRedisCacheId: example_secondaryCache.id,
///     linkedRedisCacheLocation: example_secondaryCache.location,
///     serverRole: "Secondary",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_primary = azure.core.ResourceGroup("example-primary",
///     name="example-resources-primary",
///     location="East US")
/// example_primary_cache = azure.redis.Cache("example-primary",
///     name="example-cache1",
///     location=example_primary.location,
///     resource_group_name=example_primary.name,
///     capacity=1,
///     family="P",
///     sku_name="Premium",
///     enable_non_ssl_port=False,
///     redis_configuration={
///         "maxmemory_reserved": 2,
///         "maxmemory_delta": 2,
///         "maxmemory_policy": "allkeys-lru",
///     })
/// example_secondary = azure.core.ResourceGroup("example-secondary",
///     name="example-resources-secondary",
///     location="West US")
/// example_secondary_cache = azure.redis.Cache("example-secondary",
///     name="example-cache2",
///     location=example_secondary.location,
///     resource_group_name=example_secondary.name,
///     capacity=1,
///     family="P",
///     sku_name="Premium",
///     enable_non_ssl_port=False,
///     redis_configuration={
///         "maxmemory_reserved": 2,
///         "maxmemory_delta": 2,
///         "maxmemory_policy": "allkeys-lru",
///     })
/// example_link = azure.redis.LinkedServer("example-link",
///     target_redis_cache_name=example_primary_cache.name,
///     resource_group_name=example_primary_cache.resource_group_name,
///     linked_redis_cache_id=example_secondary_cache.id,
///     linked_redis_cache_location=example_secondary_cache.location,
///     server_role="Secondary")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example_primary = new Azure.Core.ResourceGroup("example-primary", new()
///     {
///         Name = "example-resources-primary",
///         Location = "East US",
///     });
///
///     var example_primaryCache = new Azure.Redis.Cache("example-primary", new()
///     {
///         Name = "example-cache1",
///         Location = example_primary.Location,
///         ResourceGroupName = example_primary.Name,
///         Capacity = 1,
///         Family = "P",
///         SkuName = "Premium",
///         EnableNonSslPort = false,
///         RedisConfiguration = new Azure.Redis.Inputs.CacheRedisConfigurationArgs
///         {
///             MaxmemoryReserved = 2,
///             MaxmemoryDelta = 2,
///             MaxmemoryPolicy = "allkeys-lru",
///         },
///     });
///
///     var example_secondary = new Azure.Core.ResourceGroup("example-secondary", new()
///     {
///         Name = "example-resources-secondary",
///         Location = "West US",
///     });
///
///     var example_secondaryCache = new Azure.Redis.Cache("example-secondary", new()
///     {
///         Name = "example-cache2",
///         Location = example_secondary.Location,
///         ResourceGroupName = example_secondary.Name,
///         Capacity = 1,
///         Family = "P",
///         SkuName = "Premium",
///         EnableNonSslPort = false,
///         RedisConfiguration = new Azure.Redis.Inputs.CacheRedisConfigurationArgs
///         {
///             MaxmemoryReserved = 2,
///             MaxmemoryDelta = 2,
///             MaxmemoryPolicy = "allkeys-lru",
///         },
///     });
///
///     var example_link = new Azure.Redis.LinkedServer("example-link", new()
///     {
///         TargetRedisCacheName = example_primaryCache.Name,
///         ResourceGroupName = example_primaryCache.ResourceGroupName,
///         LinkedRedisCacheId = example_secondaryCache.Id,
///         LinkedRedisCacheLocation = example_secondaryCache.Location,
///         ServerRole = "Secondary",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/redis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example_primary, err := core.NewResourceGroup(ctx, "example-primary", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources-primary"),
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_primaryCache, err := redis.NewCache(ctx, "example-primary", &redis.CacheArgs{
/// 			Name:              pulumi.String("example-cache1"),
/// 			Location:          example_primary.Location,
/// 			ResourceGroupName: example_primary.Name,
/// 			Capacity:          pulumi.Int(1),
/// 			Family:            pulumi.String("P"),
/// 			SkuName:           pulumi.String("Premium"),
/// 			EnableNonSslPort:  false,
/// 			RedisConfiguration: &redis.CacheRedisConfigurationArgs{
/// 				MaxmemoryReserved: pulumi.Int(2),
/// 				MaxmemoryDelta:    pulumi.Int(2),
/// 				MaxmemoryPolicy:   pulumi.String("allkeys-lru"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_secondary, err := core.NewResourceGroup(ctx, "example-secondary", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources-secondary"),
/// 			Location: pulumi.String("West US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_secondaryCache, err := redis.NewCache(ctx, "example-secondary", &redis.CacheArgs{
/// 			Name:              pulumi.String("example-cache2"),
/// 			Location:          example_secondary.Location,
/// 			ResourceGroupName: example_secondary.Name,
/// 			Capacity:          pulumi.Int(1),
/// 			Family:            pulumi.String("P"),
/// 			SkuName:           pulumi.String("Premium"),
/// 			EnableNonSslPort:  false,
/// 			RedisConfiguration: &redis.CacheRedisConfigurationArgs{
/// 				MaxmemoryReserved: pulumi.Int(2),
/// 				MaxmemoryDelta:    pulumi.Int(2),
/// 				MaxmemoryPolicy:   pulumi.String("allkeys-lru"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redis.NewLinkedServer(ctx, "example-link", &redis.LinkedServerArgs{
/// 			TargetRedisCacheName:     example_primaryCache.Name,
/// 			ResourceGroupName:        example_primaryCache.ResourceGroupName,
/// 			LinkedRedisCacheId:       example_secondaryCache.ID(),
/// 			LinkedRedisCacheLocation: example_secondaryCache.Location,
/// 			ServerRole:               pulumi.String("Secondary"),
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
/// resource "azure_core_resourcegroup" "example-primary" {
///   name     = "example-resources-primary"
///   location = "East US"
/// }
/// resource "azure_redis_cache" "example-primary" {
///   name                = "example-cache1"
///   location            = azure_core_resourcegroup.example-primary.location
///   resource_group_name = azure_core_resourcegroup.example-primary.name
///   capacity            = 1
///   family              = "P"
///   sku_name            = "Premium"
///   enable_non_ssl_port = false
///   redis_configuration = {
///     maxmemory_reserved = 2
///     maxmemory_delta    = 2
///     maxmemory_policy   = "allkeys-lru"
///   }
/// }
/// resource "azure_core_resourcegroup" "example-secondary" {
///   name     = "example-resources-secondary"
///   location = "West US"
/// }
/// resource "azure_redis_cache" "example-secondary" {
///   name                = "example-cache2"
///   location            = azure_core_resourcegroup.example-secondary.location
///   resource_group_name = azure_core_resourcegroup.example-secondary.name
///   capacity            = 1
///   family              = "P"
///   sku_name            = "Premium"
///   enable_non_ssl_port = false
///   redis_configuration = {
///     maxmemory_reserved = 2
///     maxmemory_delta    = 2
///     maxmemory_policy   = "allkeys-lru"
///   }
/// }
/// resource "azure_redis_linkedserver" "example-link" {
///   target_redis_cache_name     = azure_redis_cache.example-primary.name
///   resource_group_name         = azure_redis_cache.example-primary.resource_group_name
///   linked_redis_cache_id       = azure_redis_cache.example-secondary.id
///   linked_redis_cache_location = azure_redis_cache.example-secondary.location
///   server_role                 = "Secondary"
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
/// import com.pulumi.azure.redis.Cache;
/// import com.pulumi.azure.redis.CacheArgs;
/// import com.pulumi.azure.redis.inputs.CacheRedisConfigurationArgs;
/// import com.pulumi.azure.redis.LinkedServer;
/// import com.pulumi.azure.redis.LinkedServerArgs;
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
///         var example_primary = new ResourceGroup("example-primary", ResourceGroupArgs.builder()
///             .name("example-resources-primary")
///             .location("East US")
///             .build());
///
///         var example_primaryCache = new Cache("example-primaryCache", CacheArgs.builder()
///             .name("example-cache1")
///             .location(example_primary.location())
///             .resourceGroupName(example_primary.name())
///             .capacity(1)
///             .family("P")
///             .skuName("Premium")
///             .enableNonSslPort(false)
///             .redisConfiguration(CacheRedisConfigurationArgs.builder()
///                 .maxmemoryReserved(2)
///                 .maxmemoryDelta(2)
///                 .maxmemoryPolicy("allkeys-lru")
///                 .build())
///             .build());
///
///         var example_secondary = new ResourceGroup("example-secondary", ResourceGroupArgs.builder()
///             .name("example-resources-secondary")
///             .location("West US")
///             .build());
///
///         var example_secondaryCache = new Cache("example-secondaryCache", CacheArgs.builder()
///             .name("example-cache2")
///             .location(example_secondary.location())
///             .resourceGroupName(example_secondary.name())
///             .capacity(1)
///             .family("P")
///             .skuName("Premium")
///             .enableNonSslPort(false)
///             .redisConfiguration(CacheRedisConfigurationArgs.builder()
///                 .maxmemoryReserved(2)
///                 .maxmemoryDelta(2)
///                 .maxmemoryPolicy("allkeys-lru")
///                 .build())
///             .build());
///
///         var example_link = new LinkedServer("example-link", LinkedServerArgs.builder()
///             .targetRedisCacheName(example_primaryCache.name())
///             .resourceGroupName(example_primaryCache.resourceGroupName())
///             .linkedRedisCacheId(example_secondaryCache.id())
///             .linkedRedisCacheLocation(example_secondaryCache.location())
///             .serverRole("Secondary")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-primary:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources-primary
///       location: East US
///   example-primaryCache:
///     type: azure:redis:Cache
///     name: example-primary
///     properties:
///       name: example-cache1
///       location: ${["example-primary"].location}
///       resourceGroupName: ${["example-primary"].name}
///       capacity: 1
///       family: P
///       skuName: Premium
///       enableNonSslPort: false
///       redisConfiguration:
///         maxmemoryReserved: 2
///         maxmemoryDelta: 2
///         maxmemoryPolicy: allkeys-lru
///   example-secondary:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources-secondary
///       location: West US
///   example-secondaryCache:
///     type: azure:redis:Cache
///     name: example-secondary
///     properties:
///       name: example-cache2
///       location: ${["example-secondary"].location}
///       resourceGroupName: ${["example-secondary"].name}
///       capacity: 1
///       family: P
///       skuName: Premium
///       enableNonSslPort: false
///       redisConfiguration:
///         maxmemoryReserved: 2
///         maxmemoryDelta: 2
///         maxmemoryPolicy: allkeys-lru
///   example-link:
///     type: azure:redis:LinkedServer
///     properties:
///       targetRedisCacheName: ${["example-primaryCache"].name}
///       resourceGroupName: ${["example-primaryCache"].resourceGroupName}
///       linkedRedisCacheId: ${["example-secondaryCache"].id}
///       linkedRedisCacheLocation: ${["example-secondaryCache"].location}
///       serverRole: Secondary
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Cache` - 2024-11-01
///
/// ## Import
///
/// Redis can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:redis/linkedServer:LinkedServer example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Cache/redis/cache1/linkedServers/cache2
/// ```
class LinkedServer extends pulumi.CustomResource {
  /// The geo-replicated primary hostname for this linked server.
  late final pulumi.Output<String> geoReplicatedPrimaryHostName;
  /// The ID of the linked Redis cache. Changing this forces a new Redis to be created.
  late final pulumi.Output<String> linkedRedisCacheId;
  /// The location of the linked Redis cache. Changing this forces a new Redis to be created.
  late final pulumi.Output<String> linkedRedisCacheLocation;
  /// The name of the linked server.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Redis caches exists. Changing this forces a new Redis to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The role of the linked Redis cache (eg "Secondary"). Changing this forces a new Redis to be created. Possible values are `Primary` and `Secondary`.
  late final pulumi.Output<String> serverRole;
  /// The name of Redis cache to link with. Changing this forces a new Redis to be created. (eg The primary role)
  late final pulumi.Output<String> targetRedisCacheName;

  /// Creates a new [LinkedServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedServer]. {@macro pulumi_redis_linked_server_linked_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedServer(
    String name, {
    LinkedServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:redis/linkedServer:LinkedServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    geoReplicatedPrimaryHostName = registerOutput<String>('geoReplicatedPrimaryHostName');
    linkedRedisCacheId = registerOutput<String>('linkedRedisCacheId');
    linkedRedisCacheLocation = registerOutput<String>('linkedRedisCacheLocation');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serverRole = registerOutput<String>('serverRole');
    targetRedisCacheName = registerOutput<String>('targetRedisCacheName');
  }

  /// Gets an existing [LinkedServer] resource's state with the given [name] and [id].
  static LinkedServer get(
    String name,
    pulumi.Input<String> id, {
    LinkedServerState? state,
  }) {
    return LinkedServer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LinkedServer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:redis/linkedServer:LinkedServer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    geoReplicatedPrimaryHostName = registerOutput<String>('geoReplicatedPrimaryHostName');
    linkedRedisCacheId = registerOutput<String>('linkedRedisCacheId');
    linkedRedisCacheLocation = registerOutput<String>('linkedRedisCacheLocation');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serverRole = registerOutput<String>('serverRole');
    targetRedisCacheName = registerOutput<String>('targetRedisCacheName');
  }
}
