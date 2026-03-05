import 'package:pulumi/pulumi.dart' as pulumi;
import 'redis_linked_server_args.dart';

/// Response to put/get linked server (with properties) for Redis cache.
///
/// Uses Azure REST API version 2017-02-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RedisLinkedServer_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var redisLinkedServer = new AzureNative.Redis.RedisLinkedServer("redisLinkedServer", new()
///     {
///         LinkedRedisCacheId = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Cache/Redis/cache2",
///         LinkedRedisCacheLocation = "West US",
///         LinkedServerName = "cache2",
///         Name = "cache1",
///         ResourceGroupName = "rg1",
///         ServerRole = AzureNative.Redis.ReplicationRole.Secondary,
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	redis "github.com/pulumi/pulumi-azure-native-sdk/redis/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redis.NewRedisLinkedServer(ctx, "redisLinkedServer", &redis.RedisLinkedServerArgs{
/// 			LinkedRedisCacheId:       pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Cache/Redis/cache2"),
/// 			LinkedRedisCacheLocation: pulumi.String("West US"),
/// 			LinkedServerName:         pulumi.String("cache2"),
/// 			Name:                     pulumi.String("cache1"),
/// 			ResourceGroupName:        pulumi.String("rg1"),
/// 			ServerRole:               redis.ReplicationRoleSecondary,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.redis.RedisLinkedServer;
/// import com.pulumi.azurenative.redis.RedisLinkedServerArgs;
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
///         var redisLinkedServer = new RedisLinkedServer("redisLinkedServer", RedisLinkedServerArgs.builder()
///             .linkedRedisCacheId("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Cache/Redis/cache2")
///             .linkedRedisCacheLocation("West US")
///             .linkedServerName("cache2")
///             .name("cache1")
///             .resourceGroupName("rg1")
///             .serverRole("Secondary")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const redisLinkedServer = new azure_native.redis.RedisLinkedServer("redisLinkedServer", {
///     linkedRedisCacheId: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Cache/Redis/cache2",
///     linkedRedisCacheLocation: "West US",
///     linkedServerName: "cache2",
///     name: "cache1",
///     resourceGroupName: "rg1",
///     serverRole: azure_native.redis.ReplicationRole.Secondary,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// redis_linked_server = azure_native.redis.RedisLinkedServer("redisLinkedServer",
///     linked_redis_cache_id="/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Cache/Redis/cache2",
///     linked_redis_cache_location="West US",
///     linked_server_name="cache2",
///     name="cache1",
///     resource_group_name="rg1",
///     server_role=azure_native.redis.ReplicationRole.SECONDARY)
///
/// ```
///
/// ```yaml
/// resources:
///   redisLinkedServer:
///     type: azure-native:redis:RedisLinkedServer
///     properties:
///       linkedRedisCacheId: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Cache/Redis/cache2
///       linkedRedisCacheLocation: West US
///       linkedServerName: cache2
///       name: cache1
///       resourceGroupName: rg1
///       serverRole: Secondary
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:redis:RedisLinkedServer cache2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cache/Redis/{name}/linkedServers/{linkedServerName}
/// ```
class RedisLinkedServer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Fully qualified resourceId of the linked redis cache.
  late final pulumi.Output<String> linkedRedisCacheId;
  /// Location of the linked redis cache.
  late final pulumi.Output<String> linkedRedisCacheLocation;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Terminal state of the link between primary and secondary redis cache.
  late final pulumi.Output<String> provisioningState;
  /// Role of the linked server.
  late final pulumi.Output<String> serverRole;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [RedisLinkedServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RedisLinkedServer]. {@macro pulumi_redis_redis_linked_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RedisLinkedServer(
    String name, {
    RedisLinkedServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:redis:RedisLinkedServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    linkedRedisCacheId = registerOutput<String>('linkedRedisCacheId');
    linkedRedisCacheLocation = registerOutput<String>('linkedRedisCacheLocation');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    serverRole = registerOutput<String>('serverRole');
    type = registerOutput<String>('type');
  }
}
