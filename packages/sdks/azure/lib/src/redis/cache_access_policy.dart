import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_access_policy_args.dart';
import 'cache_access_policy_state.dart';

/// Manages a Redis Cache Access Policy
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
///     location: "East US",
/// });
/// const exampleCache = new azure.redis.Cache("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
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
/// const exampleCacheAccessPolicy = new azure.redis.CacheAccessPolicy("example", {
///     name: "example",
///     redisCacheId: exampleCache.id,
///     permissions: "+@read +@connection +cluster|info",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="East US")
/// example_cache = azure.redis.Cache("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     capacity=1,
///     family="P",
///     sku_name="Premium",
///     enable_non_ssl_port=False,
///     redis_configuration={
///         "maxmemory_reserved": 2,
///         "maxmemory_delta": 2,
///         "maxmemory_policy": "allkeys-lru",
///     })
/// example_cache_access_policy = azure.redis.CacheAccessPolicy("example",
///     name="example",
///     redis_cache_id=example_cache.id,
///     permissions="+@read +@connection +cluster|info")
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
///         Location = "East US",
///     });
///
///     var exampleCache = new Azure.Redis.Cache("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
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
///     var exampleCacheAccessPolicy = new Azure.Redis.CacheAccessPolicy("example", new()
///     {
///         Name = "example",
///         RedisCacheId = exampleCache.Id,
///         Permissions = "+@read +@connection +cluster|info",
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
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCache, err := redis.NewCache(ctx, "example", &redis.CacheArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
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
/// 		_, err = redis.NewCacheAccessPolicy(ctx, "example", &redis.CacheAccessPolicyArgs{
/// 			Name:         pulumi.String("example"),
/// 			RedisCacheId: exampleCache.ID(),
/// 			Permissions:  pulumi.String("+@read +@connection +cluster|info"),
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
/// import com.pulumi.azure.redis.Cache;
/// import com.pulumi.azure.redis.CacheArgs;
/// import com.pulumi.azure.redis.inputs.CacheRedisConfigurationArgs;
/// import com.pulumi.azure.redis.CacheAccessPolicy;
/// import com.pulumi.azure.redis.CacheAccessPolicyArgs;
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
///             .location("East US")
///             .build());
///
///         var exampleCache = new Cache("exampleCache", CacheArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
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
///         var exampleCacheAccessPolicy = new CacheAccessPolicy("exampleCacheAccessPolicy", CacheAccessPolicyArgs.builder()
///             .name("example")
///             .redisCacheId(exampleCache.id())
///             .permissions("+@read +@connection +cluster|info")
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
///       location: East US
///   exampleCache:
///     type: azure:redis:Cache
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       capacity: 1
///       family: P
///       skuName: Premium
///       enableNonSslPort: false
///       redisConfiguration:
///         maxmemoryReserved: 2
///         maxmemoryDelta: 2
///         maxmemoryPolicy: allkeys-lru
///   exampleCacheAccessPolicy:
///     type: azure:redis:CacheAccessPolicy
///     name: example
///     properties:
///       name: example
///       redisCacheId: ${exampleCache.id}
///       permissions: +@read +@connection +cluster|info
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
/// Redis Cache Access Policy can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:redis/cacheAccessPolicy:CacheAccessPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Cache/redis/cache1/accessPolicies/policy1
/// ```
class CacheAccessPolicy extends pulumi.CustomResource {
  /// The name of the Redis Cache Access Policy. Changing this forces a new Redis Cache Access Policy to be created.
  late final pulumi.Output<String> name;
  /// Permissions that are going to be assigned to this Redis Cache Access Policy.
  late final pulumi.Output<String> permissions;
  /// The ID of the Redis Cache. Changing this forces a new Redis Cache Access Policy to be created.
  late final pulumi.Output<String> redisCacheId;

  /// Creates a new [CacheAccessPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CacheAccessPolicy]. {@macro pulumi_redis_cache_access_policy_cache_access_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CacheAccessPolicy(
    String name, {
    CacheAccessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:redis/cacheAccessPolicy:CacheAccessPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    permissions = registerOutput<String>('permissions');
    redisCacheId = registerOutput<String>('redisCacheId');
  }

  /// Gets an existing [CacheAccessPolicy] resource's state with the given [name] and [id].
  static CacheAccessPolicy get(
    String name,
    pulumi.Input<String> id, {
    CacheAccessPolicyState? state,
  }) {
    return CacheAccessPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CacheAccessPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:redis/cacheAccessPolicy:CacheAccessPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    permissions = registerOutput<String>('permissions');
    redisCacheId = registerOutput<String>('redisCacheId');
  }
}
