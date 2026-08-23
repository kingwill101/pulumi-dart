import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_server_args.dart';
import 'system_data_response.dart';

/// Response to put/get linked server (with properties) for Redis cache.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2017-10-01, 2018-03-01, 2019-07-01, 2020-06-01, 2020-12-01, 2021-06-01, 2022-05-01, 2022-06-01, 2023-04-01, 2023-05-01-preview, 2023-08-01, 2024-03-01, 2024-04-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### LinkedServer_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var linkedServer = new AzureNative.Redis.LinkedServer("linkedServer", new()
///     {
///         LinkedRedisCacheId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Cache/Redis/cache2",
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
/// 		_, err := redis.NewLinkedServer(ctx, "linkedServer", &redis.LinkedServerArgs{
/// 			LinkedRedisCacheId:       pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Cache/Redis/cache2"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_redis_linkedserver" "linkedServer" {
///   linked_redis_cache_id       = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Cache/Redis/cache2"
///   linked_redis_cache_location = "West US"
///   linked_server_name          = "cache2"
///   name                        = "cache1"
///   resource_group_name         = "rg1"
///   server_role                 = "Secondary"
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
/// import com.pulumi.azurenative.redis.LinkedServer;
/// import com.pulumi.azurenative.redis.LinkedServerArgs;
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
///         var linkedServer = new LinkedServer("linkedServer", LinkedServerArgs.builder()
///             .linkedRedisCacheId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Cache/Redis/cache2")
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
/// const linkedServer = new azure_native.redis.LinkedServer("linkedServer", {
///     linkedRedisCacheId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Cache/Redis/cache2",
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
/// linked_server = azure_native.redis.LinkedServer("linkedServer",
///     linked_redis_cache_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Cache/Redis/cache2",
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
///   linkedServer:
///     type: azure-native:redis:LinkedServer
///     properties:
///       linkedRedisCacheId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Cache/Redis/cache2
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
/// $ pulumi import azure-native:redis:LinkedServer cache2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cache/redis/{name}/linkedServers/{linkedServerName}
/// ```
class LinkedServer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The unchanging DNS name which will always point to current geo-primary cache among the linked redis caches for seamless Geo Failover experience.
  late final pulumi.Output<String> geoReplicatedPrimaryHostName;
  /// Fully qualified resourceId of the linked redis cache.
  late final pulumi.Output<String> linkedRedisCacheId;
  /// Location of the linked redis cache.
  late final pulumi.Output<String> linkedRedisCacheLocation;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The changing DNS name that resolves to the current geo-primary cache among the linked redis caches before or after the Geo Failover.
  late final pulumi.Output<String> primaryHostName;
  /// Terminal state of the link between primary and secondary redis cache.
  late final pulumi.Output<String> provisioningState;
  /// Role of the linked server.
  late final pulumi.Output<String> serverRole;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LinkedServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedServer]. {@macro pulumi_redis_linked_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedServer(
    String name, {
    LinkedServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:redis:LinkedServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    geoReplicatedPrimaryHostName = registerOutput<String>('geoReplicatedPrimaryHostName');
    linkedRedisCacheId = registerOutput<String>('linkedRedisCacheId');
    linkedRedisCacheLocation = registerOutput<String>('linkedRedisCacheLocation');
    this.name = registerOutput<String>('name');
    primaryHostName = registerOutput<String>('primaryHostName');
    provisioningState = registerOutput<String>('provisioningState');
    serverRole = registerOutput<String>('serverRole');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
