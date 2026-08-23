import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// The private endpoint connection resource.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2020-06-01, 2020-12-01, 2021-06-01, 2022-05-01, 2022-06-01, 2023-04-01, 2023-05-01-preview, 2023-08-01, 2024-03-01, 2024-04-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RedisCachePutPrivateEndpointConnection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.Redis.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         CacheName = "cachetest01",
///         PrivateEndpointConnectionName = "pectest01",
///         PrivateLinkServiceConnectionState = new AzureNative.Redis.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             Description = "Auto-Approved",
///             Status = AzureNative.Redis.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///         ResourceGroupName = "rgtest01",
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
/// 		_, err := redis.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &redis.PrivateEndpointConnectionArgs{
/// 			CacheName:                     pulumi.String("cachetest01"),
/// 			PrivateEndpointConnectionName: pulumi.String("pectest01"),
/// 			PrivateLinkServiceConnectionState: &redis.PrivateLinkServiceConnectionStateArgs{
/// 				Description: pulumi.String("Auto-Approved"),
/// 				Status:      pulumi.String(redis.PrivateEndpointServiceConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgtest01"),
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
/// resource "azure-native_redis_privateendpointconnection" "privateEndpointConnection" {
///   cache_name                       = "cachetest01"
///   private_endpoint_connection_name = "pectest01"
///   private_link_service_connection_state = {
///     description = "Auto-Approved"
///     status      = "Approved"
///   }
///   resource_group_name = "rgtest01"
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
/// import com.pulumi.azurenative.redis.PrivateEndpointConnection;
/// import com.pulumi.azurenative.redis.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.redis.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var privateEndpointConnection = new PrivateEndpointConnection("privateEndpointConnection", PrivateEndpointConnectionArgs.builder()
///             .cacheName("cachetest01")
///             .privateEndpointConnectionName("pectest01")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .description("Auto-Approved")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("rgtest01")
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
/// const privateEndpointConnection = new azure_native.redis.PrivateEndpointConnection("privateEndpointConnection", {
///     cacheName: "cachetest01",
///     privateEndpointConnectionName: "pectest01",
///     privateLinkServiceConnectionState: {
///         description: "Auto-Approved",
///         status: azure_native.redis.PrivateEndpointServiceConnectionStatus.Approved,
///     },
///     resourceGroupName: "rgtest01",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.redis.PrivateEndpointConnection("privateEndpointConnection",
///     cache_name="cachetest01",
///     private_endpoint_connection_name="pectest01",
///     private_link_service_connection_state={
///         "description": "Auto-Approved",
///         "status": azure_native.redis.PrivateEndpointServiceConnectionStatus.APPROVED,
///     },
///     resource_group_name="rgtest01")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:redis:PrivateEndpointConnection
///     properties:
///       cacheName: cachetest01
///       privateEndpointConnectionName: pectest01
///       privateLinkServiceConnectionState:
///         description: Auto-Approved
///         status: Approved
///       resourceGroupName: rgtest01
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
/// $ pulumi import azure-native:redis:PrivateEndpointConnection pectest01 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cache/redis/{cacheName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The group ids for the private endpoint resource.
  late final pulumi.Output<List<String>> groupIds;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The private endpoint resource.
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;
  /// A collection of information about the state of the connection between service consumer and provider.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse> privateLinkServiceConnectionState;
  /// The provisioning state of the private endpoint connection resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_redis_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:redis:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupIds = registerOutput<List<String>>('groupIds');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
