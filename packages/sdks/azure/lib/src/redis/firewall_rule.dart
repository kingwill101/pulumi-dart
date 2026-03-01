import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_rule_args.dart';
import 'firewall_rule_state.dart';

/// Manages a Firewall Rule associated with a Redis Cache.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as random from "@pulumi/random";
///
/// const server = new random.index.Id("server", {
///     keepers: {
///         aziId: 1,
///     },
///     byteLength: 8,
/// });
/// const example = new azure.core.ResourceGroup("example", {
///     name: "redis-resourcegroup",
///     location: "West Europe",
/// });
/// const exampleCache = new azure.redis.Cache("example", {
///     name: `redis${server.hex}`,
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
/// const exampleFirewallRule = new azure.redis.FirewallRule("example", {
///     name: "someIPrange",
///     redisCacheName: exampleCache.name,
///     resourceGroupName: example.name,
///     startIp: "1.2.3.4",
///     endIp: "2.3.4.5",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_random as random
///
/// server = random.index.Id("server",
///     keepers={
///         aziId: 1,
///     },
///     byte_length=8)
/// example = azure.core.ResourceGroup("example",
///     name="redis-resourcegroup",
///     location="West Europe")
/// example_cache = azure.redis.Cache("example",
///     name=f"redis{server['hex']}",
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
/// example_firewall_rule = azure.redis.FirewallRule("example",
///     name="someIPrange",
///     redis_cache_name=example_cache.name,
///     resource_group_name=example.name,
///     start_ip="1.2.3.4",
///     end_ip="2.3.4.5")
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
///     var server = new Random.Index.Id("server", new()
///     {
///         Keepers =
///         {
///             { "aziId", 1 },
///         },
///         ByteLength = 8,
///     });
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "redis-resourcegroup",
///         Location = "West Europe",
///     });
///
///     var exampleCache = new Azure.Redis.Cache("example", new()
///     {
///         Name = $"redis{server.Hex}",
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
///     var exampleFirewallRule = new Azure.Redis.FirewallRule("example", new()
///     {
///         Name = "someIPrange",
///         RedisCacheName = exampleCache.Name,
///         ResourceGroupName = example.Name,
///         StartIp = "1.2.3.4",
///         EndIp = "2.3.4.5",
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
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		server, err := random.NewId(ctx, "server", &random.IdArgs{
/// 			Keepers: map[string]interface{}{
/// 				"aziId": 1,
/// 			},
/// 			ByteLength: 8,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("redis-resourcegroup"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCache, err := redis.NewCache(ctx, "example", &redis.CacheArgs{
/// 			Name:              pulumi.Sprintf("redis%v", server.Hex),
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
/// 		_, err = redis.NewFirewallRule(ctx, "example", &redis.FirewallRuleArgs{
/// 			Name:              pulumi.String("someIPrange"),
/// 			RedisCacheName:    exampleCache.Name,
/// 			ResourceGroupName: example.Name,
/// 			StartIp:           pulumi.String("1.2.3.4"),
/// 			EndIp:             pulumi.String("2.3.4.5"),
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
/// import com.pulumi.random.Id;
/// import com.pulumi.random.IdArgs;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.redis.Cache;
/// import com.pulumi.azure.redis.CacheArgs;
/// import com.pulumi.azure.redis.inputs.CacheRedisConfigurationArgs;
/// import com.pulumi.azure.redis.FirewallRule;
/// import com.pulumi.azure.redis.FirewallRuleArgs;
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
///         var server = new Id("server", IdArgs.builder()
///             .keepers(Map.of("aziId", 1))
///             .byteLength(8)
///             .build());
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("redis-resourcegroup")
///             .location("West Europe")
///             .build());
///
///         var exampleCache = new Cache("exampleCache", CacheArgs.builder()
///             .name(String.format("redis%s", server.hex()))
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
///         var exampleFirewallRule = new FirewallRule("exampleFirewallRule", FirewallRuleArgs.builder()
///             .name("someIPrange")
///             .redisCacheName(exampleCache.name())
///             .resourceGroupName(example.name())
///             .startIp("1.2.3.4")
///             .endIp("2.3.4.5")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   server:
///     type: random:Id
///     properties:
///       keepers:
///         aziId: 1
///       byteLength: 8
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: redis-resourcegroup
///       location: West Europe
///   exampleCache:
///     type: azure:redis:Cache
///     name: example
///     properties:
///       name: redis${server.hex}
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
///   exampleFirewallRule:
///     type: azure:redis:FirewallRule
///     name: example
///     properties:
///       name: someIPrange
///       redisCacheName: ${exampleCache.name}
///       resourceGroupName: ${example.name}
///       startIp: 1.2.3.4
///       endIp: 2.3.4.5
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Cache` - 2024-11-01
///
/// ## Import
///
/// Redis Firewall Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:redis/firewallRule:FirewallRule rule1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Cache/redis/cache1/firewallRules/rule1
/// ```
class FirewallRule extends pulumi.CustomResource {
  /// The highest IP address included in the range.
  late final pulumi.Output<String> endIp;
  /// The name of the Firewall Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Redis Cache. Changing this forces a new resource to be created.
  late final pulumi.Output<String> redisCacheName;
  /// The name of the resource group in which this Redis Cache exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The lowest IP address included in the range
  late final pulumi.Output<String> startIp;

  /// Creates a new [FirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallRule]. {@macro pulumi_redis_firewall_rule_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallRule(
    String name, {
    FirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:redis/firewallRule:FirewallRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.endIp = registerOutput<String>('endIp');
    this.name = registerOutput<String>('name');
    this.redisCacheName = registerOutput<String>('redisCacheName');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.startIp = registerOutput<String>('startIp');
  }

  /// Gets an existing [FirewallRule] resource's state with the given [name] and [id].
  static FirewallRule get(
    String name,
    pulumi.Input<String> id, {
    FirewallRuleState? state,
  }) {
    return FirewallRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FirewallRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:redis/firewallRule:FirewallRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.endIp = registerOutput<String>('endIp');
    this.name = registerOutput<String>('name');
    this.redisCacheName = registerOutput<String>('redisCacheName');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.startIp = registerOutput<String>('startIp');
  }
}
