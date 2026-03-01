import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_assignment_args.dart';
import 'access_policy_assignment_properties_response_user.dart';

/// Describes the access policy assignment of Redis Enterprise database
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2024-09-01-preview, 2025-04-01, 2025-07-01, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redisenterprise [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RedisEnterpriseAccessPolicyAssignmentCreateUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var accessPolicyAssignment = new AzureNative.RedisEnterprise.AccessPolicyAssignment("accessPolicyAssignment", new()
///     {
///         AccessPolicyAssignmentName = "defaultTestEntraApp1",
///         AccessPolicyName = "default",
///         ClusterName = "cache1",
///         DatabaseName = "default",
///         ResourceGroupName = "rg1",
///         User = new AzureNative.RedisEnterprise.Inputs.AccessPolicyAssignmentPropertiesUserArgs
///         {
///             ObjectId = "6497c918-11ad-41e7-1b0f-7c518a87d0b0",
///         },
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
/// 	redisenterprise "github.com/pulumi/pulumi-azure-native-sdk/redisenterprise/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redisenterprise.NewAccessPolicyAssignment(ctx, "accessPolicyAssignment", &redisenterprise.AccessPolicyAssignmentArgs{
/// 			AccessPolicyAssignmentName: pulumi.String("defaultTestEntraApp1"),
/// 			AccessPolicyName:           pulumi.String("default"),
/// 			ClusterName:                pulumi.String("cache1"),
/// 			DatabaseName:               pulumi.String("default"),
/// 			ResourceGroupName:          pulumi.String("rg1"),
/// 			User: &redisenterprise.AccessPolicyAssignmentPropertiesUserArgs{
/// 				ObjectId: pulumi.String("6497c918-11ad-41e7-1b0f-7c518a87d0b0"),
/// 			},
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
/// import com.pulumi.azurenative.redisenterprise.AccessPolicyAssignment;
/// import com.pulumi.azurenative.redisenterprise.AccessPolicyAssignmentArgs;
/// import com.pulumi.azurenative.redisenterprise.inputs.AccessPolicyAssignmentPropertiesUserArgs;
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
///         var accessPolicyAssignment = new AccessPolicyAssignment("accessPolicyAssignment", AccessPolicyAssignmentArgs.builder()
///             .accessPolicyAssignmentName("defaultTestEntraApp1")
///             .accessPolicyName("default")
///             .clusterName("cache1")
///             .databaseName("default")
///             .resourceGroupName("rg1")
///             .user(AccessPolicyAssignmentPropertiesUserArgs.builder()
///                 .objectId("6497c918-11ad-41e7-1b0f-7c518a87d0b0")
///                 .build())
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
/// const accessPolicyAssignment = new azure_native.redisenterprise.AccessPolicyAssignment("accessPolicyAssignment", {
///     accessPolicyAssignmentName: "defaultTestEntraApp1",
///     accessPolicyName: "default",
///     clusterName: "cache1",
///     databaseName: "default",
///     resourceGroupName: "rg1",
///     user: {
///         objectId: "6497c918-11ad-41e7-1b0f-7c518a87d0b0",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// access_policy_assignment = azure_native.redisenterprise.AccessPolicyAssignment("accessPolicyAssignment",
///     access_policy_assignment_name="defaultTestEntraApp1",
///     access_policy_name="default",
///     cluster_name="cache1",
///     database_name="default",
///     resource_group_name="rg1",
///     user={
///         "object_id": "6497c918-11ad-41e7-1b0f-7c518a87d0b0",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   accessPolicyAssignment:
///     type: azure-native:redisenterprise:AccessPolicyAssignment
///     properties:
///       accessPolicyAssignmentName: defaultTestEntraApp1
///       accessPolicyName: default
///       clusterName: cache1
///       databaseName: default
///       resourceGroupName: rg1
///       user:
///         objectId: 6497c918-11ad-41e7-1b0f-7c518a87d0b0
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
/// $ pulumi import azure-native:redisenterprise:AccessPolicyAssignment defaultTestEntraApp1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cache/redisEnterprise/{clusterName}/databases/{databaseName}/accessPolicyAssignments/{accessPolicyAssignmentName}
/// ```
class AccessPolicyAssignment extends pulumi.CustomResource {
  /// Name of access policy under specific access policy assignment. Only "default" policy is supported for now.
  late final pulumi.Output<String> accessPolicyName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Current provisioning status of the access policy assignment.
  late final pulumi.Output<String> provisioningState;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The user associated with the access policy.
  late final pulumi.Output<AccessPolicyAssignmentPropertiesResponseUser> user;

  /// Creates a new [AccessPolicyAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPolicyAssignment]. {@macro pulumi_redisenterprise_access_policy_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPolicyAssignment(
    String name, {
    AccessPolicyAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:redisenterprise:AccessPolicyAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessPolicyName = registerOutput<String>('accessPolicyName');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.type = registerOutput<String>('type');
    this.user = registerOutput<AccessPolicyAssignmentPropertiesResponseUser>('user');
  }
}
