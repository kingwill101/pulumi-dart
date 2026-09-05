import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_app_redis_association_args.dart';
import 'spring_cloud_app_redis_association_state.dart';

/// Associates a Spring Cloud Application with a Redis Cache.
///
/// &gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudAppRedisAssociation` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
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
/// const exampleSpringCloudService = new azure.appplatform.SpringCloudService("example", {
///     name: "example-springcloud",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleSpringCloudApp = new azure.appplatform.SpringCloudApp("example", {
///     name: "example-springcloudapp",
///     resourceGroupName: example.name,
///     serviceName: exampleSpringCloudService.name,
/// });
/// const exampleCache = new azure.redis.Cache("example", {
///     name: "example-cache",
///     location: example.location,
///     resourceGroupName: example.name,
///     capacity: 0,
///     family: "C",
///     skuName: "Basic",
///     enableNonSslPort: true,
/// });
/// const exampleSpringCloudAppRedisAssociation = new azure.appplatform.SpringCloudAppRedisAssociation("example", {
///     name: "example-bind",
///     springCloudAppId: exampleSpringCloudApp.id,
///     redisCacheId: exampleCache.id,
///     redisAccessKey: exampleCache.primaryAccessKey,
///     sslEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_spring_cloud_service = azure.appplatform.SpringCloudService("example",
///     name="example-springcloud",
///     resource_group_name=example.name,
///     location=example.location)
/// example_spring_cloud_app = azure.appplatform.SpringCloudApp("example",
///     name="example-springcloudapp",
///     resource_group_name=example.name,
///     service_name=example_spring_cloud_service.name)
/// example_cache = azure.redis.Cache("example",
///     name="example-cache",
///     location=example.location,
///     resource_group_name=example.name,
///     capacity=0,
///     family="C",
///     sku_name="Basic",
///     enable_non_ssl_port=True)
/// example_spring_cloud_app_redis_association = azure.appplatform.SpringCloudAppRedisAssociation("example",
///     name="example-bind",
///     spring_cloud_app_id=example_spring_cloud_app.id,
///     redis_cache_id=example_cache.id,
///     redis_access_key=example_cache.primary_access_key,
///     ssl_enabled=True)
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
///     var exampleSpringCloudService = new Azure.AppPlatform.SpringCloudService("example", new()
///     {
///         Name = "example-springcloud",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleSpringCloudApp = new Azure.AppPlatform.SpringCloudApp("example", new()
///     {
///         Name = "example-springcloudapp",
///         ResourceGroupName = example.Name,
///         ServiceName = exampleSpringCloudService.Name,
///     });
///
///     var exampleCache = new Azure.Redis.Cache("example", new()
///     {
///         Name = "example-cache",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Capacity = 0,
///         Family = "C",
///         SkuName = "Basic",
///         EnableNonSslPort = true,
///     });
///
///     var exampleSpringCloudAppRedisAssociation = new Azure.AppPlatform.SpringCloudAppRedisAssociation("example", new()
///     {
///         Name = "example-bind",
///         SpringCloudAppId = exampleSpringCloudApp.Id,
///         RedisCacheId = exampleCache.Id,
///         RedisAccessKey = exampleCache.PrimaryAccessKey,
///         SslEnabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appplatform"
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
/// 		exampleSpringCloudService, err := appplatform.NewSpringCloudService(ctx, "example", &appplatform.SpringCloudServiceArgs{
/// 			Name:              pulumi.String("example-springcloud"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudApp, err := appplatform.NewSpringCloudApp(ctx, "example", &appplatform.SpringCloudAppArgs{
/// 			Name:              pulumi.String("example-springcloudapp"),
/// 			ResourceGroupName: example.Name,
/// 			ServiceName:       exampleSpringCloudService.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCache, err := redis.NewCache(ctx, "example", &redis.CacheArgs{
/// 			Name:              pulumi.String("example-cache"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Capacity:          pulumi.Int(0),
/// 			Family:            pulumi.String("C"),
/// 			SkuName:           pulumi.String("Basic"),
/// 			EnableNonSslPort:  true,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appplatform.NewSpringCloudAppRedisAssociation(ctx, "example", &appplatform.SpringCloudAppRedisAssociationArgs{
/// 			Name:             pulumi.String("example-bind"),
/// 			SpringCloudAppId: exampleSpringCloudApp.ID().ToIDOutput().ToStringOutput(),
/// 			RedisCacheId:     exampleCache.ID().ToIDOutput().ToStringOutput(),
/// 			RedisAccessKey:   exampleCache.PrimaryAccessKey,
/// 			SslEnabled:       pulumi.Bool(true),
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
/// resource "azure_appplatform_springcloudservice" "example" {
///   name                = "example-springcloud"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_appplatform_springcloudapp" "example" {
///   name                = "example-springcloudapp"
///   resource_group_name = azure_core_resourcegroup.example.name
///   service_name        = azure_appplatform_springcloudservice.example.name
/// }
/// resource "azure_redis_cache" "example" {
///   name                = "example-cache"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   capacity            = 0
///   family              = "C"
///   sku_name            = "Basic"
///   enable_non_ssl_port = true
/// }
/// resource "azure_appplatform_springcloudappredisassociation" "example" {
///   name                = "example-bind"
///   spring_cloud_app_id = azure_appplatform_springcloudapp.example.id
///   redis_cache_id      = azure_redis_cache.example.id
///   redis_access_key    = azure_redis_cache.example.primary_access_key
///   ssl_enabled         = true
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
/// import com.pulumi.azure.appplatform.SpringCloudService;
/// import com.pulumi.azure.appplatform.SpringCloudServiceArgs;
/// import com.pulumi.azure.appplatform.SpringCloudApp;
/// import com.pulumi.azure.appplatform.SpringCloudAppArgs;
/// import com.pulumi.azure.redis.Cache;
/// import com.pulumi.azure.redis.CacheArgs;
/// import com.pulumi.azure.appplatform.SpringCloudAppRedisAssociation;
/// import com.pulumi.azure.appplatform.SpringCloudAppRedisAssociationArgs;
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
///         var exampleSpringCloudService = new SpringCloudService("exampleSpringCloudService", SpringCloudServiceArgs.builder()
///             .name("example-springcloud")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleSpringCloudApp = new SpringCloudApp("exampleSpringCloudApp", SpringCloudAppArgs.builder()
///             .name("example-springcloudapp")
///             .resourceGroupName(example.name())
///             .serviceName(exampleSpringCloudService.name())
///             .build());
///
///         var exampleCache = new Cache("exampleCache", CacheArgs.builder()
///             .name("example-cache")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .capacity(0)
///             .family("C")
///             .skuName("Basic")
///             .enableNonSslPort(true)
///             .build());
///
///         var exampleSpringCloudAppRedisAssociation = new SpringCloudAppRedisAssociation("exampleSpringCloudAppRedisAssociation", SpringCloudAppRedisAssociationArgs.builder()
///             .name("example-bind")
///             .springCloudAppId(exampleSpringCloudApp.id())
///             .redisCacheId(exampleCache.id())
///             .redisAccessKey(exampleCache.primaryAccessKey())
///             .sslEnabled(true)
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
///   exampleSpringCloudService:
///     type: azure:appplatform:SpringCloudService
///     name: example
///     properties:
///       name: example-springcloud
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleSpringCloudApp:
///     type: azure:appplatform:SpringCloudApp
///     name: example
///     properties:
///       name: example-springcloudapp
///       resourceGroupName: ${example.name}
///       serviceName: ${exampleSpringCloudService.name}
///   exampleCache:
///     type: azure:redis:Cache
///     name: example
///     properties:
///       name: example-cache
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       capacity: 0
///       family: C
///       skuName: Basic
///       enableNonSslPort: true
///   exampleSpringCloudAppRedisAssociation:
///     type: azure:appplatform:SpringCloudAppRedisAssociation
///     name: example
///     properties:
///       name: example-bind
///       springCloudAppId: ${exampleSpringCloudApp.id}
///       redisCacheId: ${exampleCache.id}
///       redisAccessKey: ${exampleCache.primaryAccessKey}
///       sslEnabled: true
/// ```
///
///
/// ## Import
///
/// Spring Cloud Application Redis Association can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudAppRedisAssociation:SpringCloudAppRedisAssociation example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.AppPlatform/spring/myservice/apps/myapp/bindings/bind1
/// ```
class SpringCloudAppRedisAssociation extends pulumi.CustomResource {
  /// Specifies the name of the Spring Cloud Application Association. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the Redis Cache access key.
  late final pulumi.Output<String> redisAccessKey;
  /// Specifies the Redis Cache resource ID. Changing this forces a new resource to be created.
  late final pulumi.Output<String> redisCacheId;
  /// Specifies the Spring Cloud Application resource ID in which the Association is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> springCloudAppId;
  /// Should SSL be used when connecting to Redis? Defaults to `true`.
  late final pulumi.Output<bool?> sslEnabled;

  /// Creates a new [SpringCloudAppRedisAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudAppRedisAssociation]. {@macro pulumi_appplatform_spring_cloud_app_redis_association_spring_cloud_app_redis_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudAppRedisAssociation(
    String name, {
    SpringCloudAppRedisAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudAppRedisAssociation:SpringCloudAppRedisAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    this.name = registerOutput<String>('name');
    redisAccessKey = registerOutput<String>('redisAccessKey');
    redisCacheId = registerOutput<String>('redisCacheId');
    springCloudAppId = registerOutput<String>('springCloudAppId');
    sslEnabled = registerOutput<bool?>('sslEnabled');
  }

  /// Gets an existing [SpringCloudAppRedisAssociation] resource's state with the given [name] and [id].
  static SpringCloudAppRedisAssociation get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudAppRedisAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SpringCloudAppRedisAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SpringCloudAppRedisAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudAppRedisAssociation:SpringCloudAppRedisAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    redisAccessKey = registerOutput<String>('redisAccessKey');
    redisCacheId = registerOutput<String>('redisCacheId');
    springCloudAppId = registerOutput<String>('springCloudAppId');
    sslEnabled = registerOutput<bool?>('sslEnabled');
  }

  /// Creates a typed reference to an existing [SpringCloudAppRedisAssociation] resource.
  SpringCloudAppRedisAssociation.reference(String urn)
    : super(
        'azure:appplatform/springCloudAppRedisAssociation:SpringCloudAppRedisAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    this.name = registerOutput<String>('name');
    redisAccessKey = registerOutput<String>('redisAccessKey');
    redisCacheId = registerOutput<String>('redisCacheId');
    springCloudAppId = registerOutput<String>('springCloudAppId');
    sslEnabled = registerOutput<bool?>('sslEnabled');
  }
}
