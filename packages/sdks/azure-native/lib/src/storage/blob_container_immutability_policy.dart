import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_container_immutability_policy_args.dart';

/// The ImmutabilityPolicy property of a blob container, including Id, resource name, resource type, Etag.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdateImmutabilityPolicy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blobContainerImmutabilityPolicy = new AzureNative.Storage.BlobContainerImmutabilityPolicy("blobContainerImmutabilityPolicy", new()
///     {
///         AccountName = "sto7069",
///         AllowProtectedAppendWrites = true,
///         ContainerName = "container6397",
///         ImmutabilityPeriodSinceCreationInDays = 3,
///         ImmutabilityPolicyName = "default",
///         ResourceGroupName = "res1782",
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewBlobContainerImmutabilityPolicy(ctx, "blobContainerImmutabilityPolicy", &storage.BlobContainerImmutabilityPolicyArgs{
/// 			AccountName:                           pulumi.String("sto7069"),
/// 			AllowProtectedAppendWrites:            pulumi.Bool(true),
/// 			ContainerName:                         pulumi.String("container6397"),
/// 			ImmutabilityPeriodSinceCreationInDays: pulumi.Int(3),
/// 			ImmutabilityPolicyName:                pulumi.String("default"),
/// 			ResourceGroupName:                     pulumi.String("res1782"),
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
/// import com.pulumi.azurenative.storage.BlobContainerImmutabilityPolicy;
/// import com.pulumi.azurenative.storage.BlobContainerImmutabilityPolicyArgs;
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
///         var blobContainerImmutabilityPolicy = new BlobContainerImmutabilityPolicy("blobContainerImmutabilityPolicy", BlobContainerImmutabilityPolicyArgs.builder()
///             .accountName("sto7069")
///             .allowProtectedAppendWrites(true)
///             .containerName("container6397")
///             .immutabilityPeriodSinceCreationInDays(3)
///             .immutabilityPolicyName("default")
///             .resourceGroupName("res1782")
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
/// const blobContainerImmutabilityPolicy = new azure_native.storage.BlobContainerImmutabilityPolicy("blobContainerImmutabilityPolicy", {
///     accountName: "sto7069",
///     allowProtectedAppendWrites: true,
///     containerName: "container6397",
///     immutabilityPeriodSinceCreationInDays: 3,
///     immutabilityPolicyName: "default",
///     resourceGroupName: "res1782",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// blob_container_immutability_policy = azure_native.storage.BlobContainerImmutabilityPolicy("blobContainerImmutabilityPolicy",
///     account_name="sto7069",
///     allow_protected_append_writes=True,
///     container_name="container6397",
///     immutability_period_since_creation_in_days=3,
///     immutability_policy_name="default",
///     resource_group_name="res1782")
///
/// ```
///
/// ```yaml
/// resources:
///   blobContainerImmutabilityPolicy:
///     type: azure-native:storage:BlobContainerImmutabilityPolicy
///     properties:
///       accountName: sto7069
///       allowProtectedAppendWrites: true
///       containerName: container6397
///       immutabilityPeriodSinceCreationInDays: 3
///       immutabilityPolicyName: default
///       resourceGroupName: res1782
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateOrUpdateImmutabilityPolicyWithAllowProtectedAppendWritesAll
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blobContainerImmutabilityPolicy = new AzureNative.Storage.BlobContainerImmutabilityPolicy("blobContainerImmutabilityPolicy", new()
///     {
///         AccountName = "sto7069",
///         AllowProtectedAppendWritesAll = true,
///         ContainerName = "container6397",
///         ImmutabilityPeriodSinceCreationInDays = 3,
///         ImmutabilityPolicyName = "default",
///         ResourceGroupName = "res1782",
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewBlobContainerImmutabilityPolicy(ctx, "blobContainerImmutabilityPolicy", &storage.BlobContainerImmutabilityPolicyArgs{
/// 			AccountName:                           pulumi.String("sto7069"),
/// 			AllowProtectedAppendWritesAll:         pulumi.Bool(true),
/// 			ContainerName:                         pulumi.String("container6397"),
/// 			ImmutabilityPeriodSinceCreationInDays: pulumi.Int(3),
/// 			ImmutabilityPolicyName:                pulumi.String("default"),
/// 			ResourceGroupName:                     pulumi.String("res1782"),
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
/// import com.pulumi.azurenative.storage.BlobContainerImmutabilityPolicy;
/// import com.pulumi.azurenative.storage.BlobContainerImmutabilityPolicyArgs;
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
///         var blobContainerImmutabilityPolicy = new BlobContainerImmutabilityPolicy("blobContainerImmutabilityPolicy", BlobContainerImmutabilityPolicyArgs.builder()
///             .accountName("sto7069")
///             .allowProtectedAppendWritesAll(true)
///             .containerName("container6397")
///             .immutabilityPeriodSinceCreationInDays(3)
///             .immutabilityPolicyName("default")
///             .resourceGroupName("res1782")
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
/// const blobContainerImmutabilityPolicy = new azure_native.storage.BlobContainerImmutabilityPolicy("blobContainerImmutabilityPolicy", {
///     accountName: "sto7069",
///     allowProtectedAppendWritesAll: true,
///     containerName: "container6397",
///     immutabilityPeriodSinceCreationInDays: 3,
///     immutabilityPolicyName: "default",
///     resourceGroupName: "res1782",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// blob_container_immutability_policy = azure_native.storage.BlobContainerImmutabilityPolicy("blobContainerImmutabilityPolicy",
///     account_name="sto7069",
///     allow_protected_append_writes_all=True,
///     container_name="container6397",
///     immutability_period_since_creation_in_days=3,
///     immutability_policy_name="default",
///     resource_group_name="res1782")
///
/// ```
///
/// ```yaml
/// resources:
///   blobContainerImmutabilityPolicy:
///     type: azure-native:storage:BlobContainerImmutabilityPolicy
///     properties:
///       accountName: sto7069
///       allowProtectedAppendWritesAll: true
///       containerName: container6397
///       immutabilityPeriodSinceCreationInDays: 3
///       immutabilityPolicyName: default
///       resourceGroupName: res1782
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
/// $ pulumi import azure-native:storage:BlobContainerImmutabilityPolicy default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices/default/containers/{containerName}/immutabilityPolicies/{immutabilityPolicyName}
/// ```
class BlobContainerImmutabilityPolicy extends pulumi.CustomResource {
  /// This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API.
  late final pulumi.Output<bool?> allowProtectedAppendWrites;
  /// This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to both 'Append and Bock Blobs' while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API. The 'allowProtectedAppendWrites' and 'allowProtectedAppendWritesAll' properties are mutually exclusive.
  late final pulumi.Output<bool?> allowProtectedAppendWritesAll;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource Etag.
  late final pulumi.Output<String> etag;
  /// The immutability period for the blobs in the container since the policy creation, in days.
  late final pulumi.Output<int?> immutabilityPeriodSinceCreationInDays;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The ImmutabilityPolicy state of a blob container, possible values include: Locked and Unlocked.
  late final pulumi.Output<String> state;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [BlobContainerImmutabilityPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BlobContainerImmutabilityPolicy]. {@macro pulumi_storage_blob_container_immutability_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BlobContainerImmutabilityPolicy(
    String name, {
    BlobContainerImmutabilityPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storage:BlobContainerImmutabilityPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowProtectedAppendWrites = registerOutput<bool?>('allowProtectedAppendWrites');
    this.allowProtectedAppendWritesAll = registerOutput<bool?>('allowProtectedAppendWritesAll');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.etag = registerOutput<String>('etag');
    this.immutabilityPeriodSinceCreationInDays = registerOutput<int?>('immutabilityPeriodSinceCreationInDays');
    this.name = registerOutput<String>('name');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String>('type');
  }
}
