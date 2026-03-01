import 'package:pulumi/pulumi.dart' as pulumi;
import 'redis_cache_args.dart';
import 'redis_cache_state.dart';

/// Manages a API Management Redis Cache.
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
/// const exampleService = new azure.apimanagement.Service("example", {
///     name: "example-apim",
///     location: example.location,
///     resourceGroupName: example.name,
///     publisherName: "pub1",
///     publisherEmail: "pub1@email.com",
///     skuName: "Consumption_0",
/// });
/// const exampleCache = new azure.redis.Cache("example", {
///     name: "example-cache",
///     location: example.location,
///     resourceGroupName: example.name,
///     capacity: 1,
///     family: "C",
///     skuName: "Basic",
///     enableNonSslPort: false,
///     minimumTlsVersion: "1.2",
///     redisConfiguration: {},
/// });
/// const exampleRedisCache = new azure.apimanagement.RedisCache("example", {
///     name: "example-Redis-Cache",
///     apiManagementId: exampleService.id,
///     connectionString: exampleCache.primaryConnectionString,
///     description: "Redis cache instances",
///     redisCacheId: exampleCache.id,
///     cacheLocation: "East Us",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.apimanagement.Service("example",
///     name="example-apim",
///     location=example.location,
///     resource_group_name=example.name,
///     publisher_name="pub1",
///     publisher_email="pub1@email.com",
///     sku_name="Consumption_0")
/// example_cache = azure.redis.Cache("example",
///     name="example-cache",
///     location=example.location,
///     resource_group_name=example.name,
///     capacity=1,
///     family="C",
///     sku_name="Basic",
///     enable_non_ssl_port=False,
///     minimum_tls_version="1.2",
///     redis_configuration={})
/// example_redis_cache = azure.apimanagement.RedisCache("example",
///     name="example-Redis-Cache",
///     api_management_id=example_service.id,
///     connection_string=example_cache.primary_connection_string,
///     description="Redis cache instances",
///     redis_cache_id=example_cache.id,
///     cache_location="East Us")
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
///     var exampleService = new Azure.ApiManagement.Service("example", new()
///     {
///         Name = "example-apim",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         PublisherName = "pub1",
///         PublisherEmail = "pub1@email.com",
///         SkuName = "Consumption_0",
///     });
///
///     var exampleCache = new Azure.Redis.Cache("example", new()
///     {
///         Name = "example-cache",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Capacity = 1,
///         Family = "C",
///         SkuName = "Basic",
///         EnableNonSslPort = false,
///         MinimumTlsVersion = "1.2",
///         RedisConfiguration = null,
///     });
///
///     var exampleRedisCache = new Azure.ApiManagement.RedisCache("example", new()
///     {
///         Name = "example-Redis-Cache",
///         ApiManagementId = exampleService.Id,
///         ConnectionString = exampleCache.PrimaryConnectionString,
///         Description = "Redis cache instances",
///         RedisCacheId = exampleCache.Id,
///         CacheLocation = "East Us",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/redis"
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
/// 		exampleService, err := apimanagement.NewService(ctx, "example", &apimanagement.ServiceArgs{
/// 			Name:              pulumi.String("example-apim"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			PublisherName:     pulumi.String("pub1"),
/// 			PublisherEmail:    pulumi.String("pub1@email.com"),
/// 			SkuName:           pulumi.String("Consumption_0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCache, err := redis.NewCache(ctx, "example", &redis.CacheArgs{
/// 			Name:               pulumi.String("example-cache"),
/// 			Location:           example.Location,
/// 			ResourceGroupName:  example.Name,
/// 			Capacity:           pulumi.Int(1),
/// 			Family:             pulumi.String("C"),
/// 			SkuName:            pulumi.String("Basic"),
/// 			EnableNonSslPort:   false,
/// 			MinimumTlsVersion:  pulumi.String("1.2"),
/// 			RedisConfiguration: &redis.CacheRedisConfigurationArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewRedisCache(ctx, "example", &apimanagement.RedisCacheArgs{
/// 			Name:             pulumi.String("example-Redis-Cache"),
/// 			ApiManagementId:  exampleService.ID(),
/// 			ConnectionString: exampleCache.PrimaryConnectionString,
/// 			Description:      pulumi.String("Redis cache instances"),
/// 			RedisCacheId:     exampleCache.ID(),
/// 			CacheLocation:    pulumi.String("East Us"),
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
/// import com.pulumi.azure.apimanagement.Service;
/// import com.pulumi.azure.apimanagement.ServiceArgs;
/// import com.pulumi.azure.redis.Cache;
/// import com.pulumi.azure.redis.CacheArgs;
/// import com.pulumi.azure.redis.inputs.CacheRedisConfigurationArgs;
/// import com.pulumi.azure.apimanagement.RedisCache;
/// import com.pulumi.azure.apimanagement.RedisCacheArgs;
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
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-apim")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .publisherName("pub1")
///             .publisherEmail("pub1@email.com")
///             .skuName("Consumption_0")
///             .build());
///
///         var exampleCache = new Cache("exampleCache", CacheArgs.builder()
///             .name("example-cache")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .capacity(1)
///             .family("C")
///             .skuName("Basic")
///             .enableNonSslPort(false)
///             .minimumTlsVersion("1.2")
///             .redisConfiguration(CacheRedisConfigurationArgs.builder()
///                 .build())
///             .build());
///
///         var exampleRedisCache = new RedisCache("exampleRedisCache", RedisCacheArgs.builder()
///             .name("example-Redis-Cache")
///             .apiManagementId(exampleService.id())
///             .connectionString(exampleCache.primaryConnectionString())
///             .description("Redis cache instances")
///             .redisCacheId(exampleCache.id())
///             .cacheLocation("East Us")
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
///   exampleService:
///     type: azure:apimanagement:Service
///     name: example
///     properties:
///       name: example-apim
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       publisherName: pub1
///       publisherEmail: pub1@email.com
///       skuName: Consumption_0
///   exampleCache:
///     type: azure:redis:Cache
///     name: example
///     properties:
///       name: example-cache
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       capacity: 1
///       family: C
///       skuName: Basic
///       enableNonSslPort: false
///       minimumTlsVersion: '1.2'
///       redisConfiguration: {}
///   exampleRedisCache:
///     type: azure:apimanagement:RedisCache
///     name: example
///     properties:
///       name: example-Redis-Cache
///       apiManagementId: ${exampleService.id}
///       connectionString: ${exampleCache.primaryConnectionString}
///       description: Redis cache instances
///       redisCacheId: ${exampleCache.id}
///       cacheLocation: East Us
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
///
/// ## Import
///
/// API Management Redis Caches can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/redisCache:RedisCache example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/service1/caches/cache1
/// ```
class RedisCache extends pulumi.CustomResource {
  /// The resource ID of the API Management Service from which to create this external cache. Changing this forces a new API Management Redis Cache to be created.
  late final pulumi.Output<String> apiManagementId;
  /// The location where to use cache from. Possible values are `default` and valid Azure regions. Defaults to `default`.
  late final pulumi.Output<String?> cacheLocation;
  /// The connection string to the Cache for Redis.
  late final pulumi.Output<String> connectionString;
  /// The description of the API Management Redis Cache.
  late final pulumi.Output<String?> description;
  /// The name which should be used for this API Management Redis Cache. Changing this forces a new API Management Redis Cache to be created.
  late final pulumi.Output<String> name;
  /// The resource ID of the Cache for Redis.
  late final pulumi.Output<String?> redisCacheId;

  /// Creates a new [RedisCache].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RedisCache]. {@macro pulumi_apimanagement_redis_cache_redis_cache_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RedisCache(
    String name, {
    RedisCacheArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/redisCache:RedisCache',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementId = registerOutput<String>('apiManagementId');
    this.cacheLocation = registerOutput<String?>('cacheLocation');
    this.connectionString = registerOutput<String>('connectionString');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.redisCacheId = registerOutput<String?>('redisCacheId');
  }

  /// Gets an existing [RedisCache] resource's state with the given [name] and [id].
  static RedisCache get(
    String name,
    pulumi.Input<String> id, {
    RedisCacheState? state,
  }) {
    return RedisCache._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RedisCache._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/redisCache:RedisCache',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementId = registerOutput<String>('apiManagementId');
    this.cacheLocation = registerOutput<String?>('cacheLocation');
    this.connectionString = registerOutput<String>('connectionString');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.redisCacheId = registerOutput<String?>('redisCacheId');
  }
}
