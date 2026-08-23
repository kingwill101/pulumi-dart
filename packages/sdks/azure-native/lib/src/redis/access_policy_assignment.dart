import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_assignment_args.dart';
import 'system_data_response.dart';

/// Response to an operation on access policy assignment
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2023-05-01-preview, 2023-08-01, 2024-03-01, 2024-04-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RedisCacheAccessPolicyAssignmentCreateUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var accessPolicyAssignment = new AzureNative.Redis.AccessPolicyAssignment("accessPolicyAssignment", new()
///     {
///         AccessPolicyAssignmentName = "accessPolicyAssignmentName1",
///         AccessPolicyName = "accessPolicy1",
///         CacheName = "cache1",
///         ObjectId = "6497c918-11ad-41e7-1b0f-7c518a87d0b0",
///         ObjectIdAlias = "TestAADAppRedis",
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
/// 		_, err := redis.NewAccessPolicyAssignment(ctx, "accessPolicyAssignment", &redis.AccessPolicyAssignmentArgs{
/// 			AccessPolicyAssignmentName: pulumi.String("accessPolicyAssignmentName1"),
/// 			AccessPolicyName:           pulumi.String("accessPolicy1"),
/// 			CacheName:                  pulumi.String("cache1"),
/// 			ObjectId:                   pulumi.String("6497c918-11ad-41e7-1b0f-7c518a87d0b0"),
/// 			ObjectIdAlias:              pulumi.String("TestAADAppRedis"),
/// 			ResourceGroupName:          pulumi.String("rg1"),
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
/// resource "azure-native_redis_accesspolicyassignment" "accessPolicyAssignment" {
///   access_policy_assignment_name = "accessPolicyAssignmentName1"
///   access_policy_name            = "accessPolicy1"
///   cache_name                    = "cache1"
///   object_id                     = "6497c918-11ad-41e7-1b0f-7c518a87d0b0"
///   object_id_alias               = "TestAADAppRedis"
///   resource_group_name           = "rg1"
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
/// import com.pulumi.azurenative.redis.AccessPolicyAssignment;
/// import com.pulumi.azurenative.redis.AccessPolicyAssignmentArgs;
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
///         var accessPolicyAssignment = new AccessPolicyAssignment("accessPolicyAssignment", AccessPolicyAssignmentArgs.builder()
///             .accessPolicyAssignmentName("accessPolicyAssignmentName1")
///             .accessPolicyName("accessPolicy1")
///             .cacheName("cache1")
///             .objectId("6497c918-11ad-41e7-1b0f-7c518a87d0b0")
///             .objectIdAlias("TestAADAppRedis")
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
/// const accessPolicyAssignment = new azure_native.redis.AccessPolicyAssignment("accessPolicyAssignment", {
///     accessPolicyAssignmentName: "accessPolicyAssignmentName1",
///     accessPolicyName: "accessPolicy1",
///     cacheName: "cache1",
///     objectId: "6497c918-11ad-41e7-1b0f-7c518a87d0b0",
///     objectIdAlias: "TestAADAppRedis",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// access_policy_assignment = azure_native.redis.AccessPolicyAssignment("accessPolicyAssignment",
///     access_policy_assignment_name="accessPolicyAssignmentName1",
///     access_policy_name="accessPolicy1",
///     cache_name="cache1",
///     object_id="6497c918-11ad-41e7-1b0f-7c518a87d0b0",
///     object_id_alias="TestAADAppRedis",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   accessPolicyAssignment:
///     type: azure-native:redis:AccessPolicyAssignment
///     properties:
///       accessPolicyAssignmentName: accessPolicyAssignmentName1
///       accessPolicyName: accessPolicy1
///       cacheName: cache1
///       objectId: 6497c918-11ad-41e7-1b0f-7c518a87d0b0
///       objectIdAlias: TestAADAppRedis
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
/// $ pulumi import azure-native:redis:AccessPolicyAssignment accessPolicyAssignmentName1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cache/redis/{cacheName}/accessPolicyAssignments/{accessPolicyAssignmentName}
/// ```
class AccessPolicyAssignment extends pulumi.CustomResource {
  /// The name of the access policy that is being assigned
  late final pulumi.Output<String> accessPolicyName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Object Id to assign access policy to
  late final pulumi.Output<String> objectId;
  /// User friendly name for object id. Also represents username for token based authentication
  late final pulumi.Output<String> objectIdAlias;
  /// Provisioning state of an access policy assignment set
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AccessPolicyAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPolicyAssignment]. {@macro pulumi_redis_access_policy_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPolicyAssignment(
    String name, {
    AccessPolicyAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:redis:AccessPolicyAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicyName = registerOutput<String>('accessPolicyName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    objectId = registerOutput<String>('objectId');
    objectIdAlias = registerOutput<String>('objectIdAlias');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
