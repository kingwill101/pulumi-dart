import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cache_args.dart';
import 'get_cache_result.dart';
import 'get_enterprise_database_args.dart';
import 'get_enterprise_database_result.dart';

/// Use this data source to access information about an existing Redis Cache
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.redis.getCache({
///     name: "myrediscache",
///     resourceGroupName: "redis-cache",
/// });
/// export const primaryAccessKey = example.then(example => example.primaryAccessKey);
/// export const hostname = example.then(example => example.hostname);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.redis.get_cache(name="myrediscache",
///     resource_group_name="redis-cache")
/// pulumi.export("primaryAccessKey", example.primary_access_key)
/// pulumi.export("hostname", example.hostname)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Redis.GetCache.Invoke(new()
///     {
///         Name = "myrediscache",
///         ResourceGroupName = "redis-cache",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["primaryAccessKey"] = example.Apply(getCacheResult => getCacheResult.PrimaryAccessKey),
///         ["hostname"] = example.Apply(getCacheResult => getCacheResult.Hostname),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/redis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := redis.LookupCache(ctx, &redis.LookupCacheArgs{
/// 			Name:              "myrediscache",
/// 			ResourceGroupName: "redis-cache",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("primaryAccessKey", example.PrimaryAccessKey)
/// 		ctx.Export("hostname", example.Hostname)
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
/// data "azure_redis_getcache" "example" {
///   name                = "myrediscache"
///   resource_group_name = "redis-cache"
/// }
///
/// output "primaryAccessKey" {
///   value = data.azure_redis_getcache.example.primary_access_key
/// }
/// output "hostname" {
///   value = data.azure_redis_getcache.example.hostname
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.redis.RedisFunctions;
/// import com.pulumi.azure.redis.inputs.GetCacheArgs;
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
///         final var example = RedisFunctions.getCache(GetCacheArgs.builder()
///             .name("myrediscache")
///             .resourceGroupName("redis-cache")
///             .build());
///
///         ctx.export("primaryAccessKey", example.primaryAccessKey());
///         ctx.export("hostname", example.hostname());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:redis:getCache
///       arguments:
///         name: myrediscache
///         resourceGroupName: redis-cache
/// outputs:
///   primaryAccessKey: ${example.primaryAccessKey}
///   hostname: ${example.hostname}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Cache` - 2024-11-01
/// [args] Arguments passed to this invoke. {@macro pulumi_redis_get_cache_get_cache_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCacheResult> getCache(
  GetCacheArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:redis/getCache:getCache',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCacheResult.fromMap(result);
}

/// Use this data source to access information about an existing Redis Enterprise Database
///
/// &gt; **Note:** This data source has been deprecated in favor of azurerm_managed_redis.
///
/// ## Example Usage
///
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_redis_getenterprisedatabase" "example" {
///   name                = "default"
///   resource_group_name = exampleAzurermResourceGroup.name
///   cluster_id          = exampleAzurermRedisEnterpriseCluster.id
/// }
///
/// output "redisEnterpriseDatabasePrimaryKey" {
///   value = data.azure_redis_getenterprisedatabase.example.primary_access_key
/// }
/// output "redisEnterpriseDatabaseSecondaryKey" {
///   value = data.azure_redis_getenterprisedatabase.example.secondary_access_key
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:redis:getEnterpriseDatabase
///       arguments:
///         name: default
///         resourceGroupName: ${exampleAzurermResourceGroup.name}
///         clusterId: ${exampleAzurermRedisEnterpriseCluster.id}
/// outputs:
///   redisEnterpriseDatabasePrimaryKey: ${example.primaryAccessKey}
///   redisEnterpriseDatabaseSecondaryKey: ${example.secondaryAccessKey}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Cache` - 2024-10-01
/// [args] Arguments passed to this invoke. {@macro pulumi_redis_get_enterprise_database_get_enterprise_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnterpriseDatabaseResult> getEnterpriseDatabase(
  GetEnterpriseDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:redis/getEnterpriseDatabase:getEnterpriseDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnterpriseDatabaseResult.fromMap(result);
}
