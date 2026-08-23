import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_args.dart';
import 'system_data_response.dart';

/// Response to get/put access policy.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2023-05-01-preview, 2023-08-01, 2024-03-01, 2024-04-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RedisCacheAccessPolicyCreateUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var accessPolicy = new AzureNative.Redis.AccessPolicy("accessPolicy", new()
///     {
///         AccessPolicyName = "accessPolicy1",
///         CacheName = "cache1",
///         Permissions = "+get +hget",
///         ResourceGroupName = "rg1",
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
/// 		_, err := redis.NewAccessPolicy(ctx, "accessPolicy", &redis.AccessPolicyArgs{
/// 			AccessPolicyName:  pulumi.String("accessPolicy1"),
/// 			CacheName:         pulumi.String("cache1"),
/// 			Permissions:       pulumi.String("+get +hget"),
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// resource "azure-native_redis_accesspolicy" "accessPolicy" {
///   access_policy_name  = "accessPolicy1"
///   cache_name          = "cache1"
///   permissions         = "+get +hget"
///   resource_group_name = "rg1"
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
/// import com.pulumi.azurenative.redis.AccessPolicy;
/// import com.pulumi.azurenative.redis.AccessPolicyArgs;
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
///         var accessPolicy = new AccessPolicy("accessPolicy", AccessPolicyArgs.builder()
///             .accessPolicyName("accessPolicy1")
///             .cacheName("cache1")
///             .permissions("+get +hget")
///             .resourceGroupName("rg1")
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
/// const accessPolicy = new azure_native.redis.AccessPolicy("accessPolicy", {
///     accessPolicyName: "accessPolicy1",
///     cacheName: "cache1",
///     permissions: "+get +hget",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// access_policy = azure_native.redis.AccessPolicy("accessPolicy",
///     access_policy_name="accessPolicy1",
///     cache_name="cache1",
///     permissions="+get +hget",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   accessPolicy:
///     type: azure-native:redis:AccessPolicy
///     properties:
///       accessPolicyName: accessPolicy1
///       cacheName: cache1
///       permissions: +get +hget
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:redis:AccessPolicy accessPolicy1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cache/redis/{cacheName}/accessPolicies/{accessPolicyName}
/// ```
class AccessPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Permissions for the access policy. Learn how to configure permissions at https://aka.ms/redis/AADPreRequisites
  late final pulumi.Output<String> permissions;
  /// Provisioning state of access policy
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AccessPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPolicy]. {@macro pulumi_redis_access_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPolicy(
    String name, {
    AccessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:redis:AccessPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    permissions = registerOutput<String>('permissions');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
