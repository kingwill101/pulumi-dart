import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_nfs_target_response.dart';
import 'clfs_target_response.dart';
import 'nfs3_target_response.dart';
import 'storage_target_args.dart';
import 'system_data_response.dart';
import 'unknown_target_response.dart';

/// Type of the Storage Target.
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-11-01-preview, 2024-07-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagecache [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### StorageTargets_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageTarget = new AzureNative.StorageCache.StorageTarget("storageTarget", new()
///     {
///         CacheName = "sc1",
///         Junctions = new[]
///         {
///             new AzureNative.StorageCache.Inputs.NamespaceJunctionArgs
///             {
///                 NamespacePath = "/path/on/cache",
///                 NfsAccessPolicy = "default",
///                 NfsExport = "exp1",
///                 TargetPath = "/path/on/exp1",
///             },
///             new AzureNative.StorageCache.Inputs.NamespaceJunctionArgs
///             {
///                 NamespacePath = "/path2/on/cache",
///                 NfsAccessPolicy = "rootSquash",
///                 NfsExport = "exp2",
///                 TargetPath = "/path2/on/exp2",
///             },
///         },
///         Nfs3 = new AzureNative.StorageCache.Inputs.Nfs3TargetArgs
///         {
///             Target = "10.0.44.44",
///             UsageModel = "READ_ONLY",
///             VerificationTimer = 30,
///         },
///         ResourceGroupName = "scgroup",
///         StorageTargetName = "st1",
///         TargetType = AzureNative.StorageCache.StorageTargetType.Nfs3,
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
/// 	storagecache "github.com/pulumi/pulumi-azure-native-sdk/storagecache/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagecache.NewStorageTarget(ctx, "storageTarget", &storagecache.StorageTargetArgs{
/// 			CacheName: pulumi.String("sc1"),
/// 			Junctions: storagecache.NamespaceJunctionArray{
/// 				&storagecache.NamespaceJunctionArgs{
/// 					NamespacePath:   pulumi.String("/path/on/cache"),
/// 					NfsAccessPolicy: pulumi.String("default"),
/// 					NfsExport:       pulumi.String("exp1"),
/// 					TargetPath:      pulumi.String("/path/on/exp1"),
/// 				},
/// 				&storagecache.NamespaceJunctionArgs{
/// 					NamespacePath:   pulumi.String("/path2/on/cache"),
/// 					NfsAccessPolicy: pulumi.String("rootSquash"),
/// 					NfsExport:       pulumi.String("exp2"),
/// 					TargetPath:      pulumi.String("/path2/on/exp2"),
/// 				},
/// 			},
/// 			Nfs3: &storagecache.Nfs3TargetArgs{
/// 				Target:            pulumi.String("10.0.44.44"),
/// 				UsageModel:        pulumi.String("READ_ONLY"),
/// 				VerificationTimer: pulumi.Int(30),
/// 			},
/// 			ResourceGroupName: pulumi.String("scgroup"),
/// 			StorageTargetName: pulumi.String("st1"),
/// 			TargetType:        pulumi.String(storagecache.StorageTargetTypeNfs3),
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
/// import com.pulumi.azurenative.storagecache.StorageTarget;
/// import com.pulumi.azurenative.storagecache.StorageTargetArgs;
/// import com.pulumi.azurenative.storagecache.inputs.NamespaceJunctionArgs;
/// import com.pulumi.azurenative.storagecache.inputs.Nfs3TargetArgs;
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
///         var storageTarget = new StorageTarget("storageTarget", StorageTargetArgs.builder()
///             .cacheName("sc1")
///             .junctions(
///                 NamespaceJunctionArgs.builder()
///                     .namespacePath("/path/on/cache")
///                     .nfsAccessPolicy("default")
///                     .nfsExport("exp1")
///                     .targetPath("/path/on/exp1")
///                     .build(),
///                 NamespaceJunctionArgs.builder()
///                     .namespacePath("/path2/on/cache")
///                     .nfsAccessPolicy("rootSquash")
///                     .nfsExport("exp2")
///                     .targetPath("/path2/on/exp2")
///                     .build())
///             .nfs3(Nfs3TargetArgs.builder()
///                 .target("10.0.44.44")
///                 .usageModel("READ_ONLY")
///                 .verificationTimer(30)
///                 .build())
///             .resourceGroupName("scgroup")
///             .storageTargetName("st1")
///             .targetType("nfs3")
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
/// const storageTarget = new azure_native.storagecache.StorageTarget("storageTarget", {
///     cacheName: "sc1",
///     junctions: [
///         {
///             namespacePath: "/path/on/cache",
///             nfsAccessPolicy: "default",
///             nfsExport: "exp1",
///             targetPath: "/path/on/exp1",
///         },
///         {
///             namespacePath: "/path2/on/cache",
///             nfsAccessPolicy: "rootSquash",
///             nfsExport: "exp2",
///             targetPath: "/path2/on/exp2",
///         },
///     ],
///     nfs3: {
///         target: "10.0.44.44",
///         usageModel: "READ_ONLY",
///         verificationTimer: 30,
///     },
///     resourceGroupName: "scgroup",
///     storageTargetName: "st1",
///     targetType: azure_native.storagecache.StorageTargetType.Nfs3,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_target = azure_native.storagecache.StorageTarget("storageTarget",
///     cache_name="sc1",
///     junctions=[
///         {
///             "namespace_path": "/path/on/cache",
///             "nfs_access_policy": "default",
///             "nfs_export": "exp1",
///             "target_path": "/path/on/exp1",
///         },
///         {
///             "namespace_path": "/path2/on/cache",
///             "nfs_access_policy": "rootSquash",
///             "nfs_export": "exp2",
///             "target_path": "/path2/on/exp2",
///         },
///     ],
///     nfs3={
///         "target": "10.0.44.44",
///         "usage_model": "READ_ONLY",
///         "verification_timer": 30,
///     },
///     resource_group_name="scgroup",
///     storage_target_name="st1",
///     target_type=azure_native.storagecache.StorageTargetType.NFS3)
///
/// ```
///
/// ```yaml
/// resources:
///   storageTarget:
///     type: azure-native:storagecache:StorageTarget
///     properties:
///       cacheName: sc1
///       junctions:
///         - namespacePath: /path/on/cache
///           nfsAccessPolicy: default
///           nfsExport: exp1
///           targetPath: /path/on/exp1
///         - namespacePath: /path2/on/cache
///           nfsAccessPolicy: rootSquash
///           nfsExport: exp2
///           targetPath: /path2/on/exp2
///       nfs3:
///         target: 10.0.44.44
///         usageModel: READ_ONLY
///         verificationTimer: 30
///       resourceGroupName: scgroup
///       storageTargetName: st1
///       targetType: nfs3
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageTargets_CreateOrUpdate_BlobNfs
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageTarget = new AzureNative.StorageCache.StorageTarget("storageTarget", new()
///     {
///         BlobNfs = new AzureNative.StorageCache.Inputs.BlobNfsTargetArgs
///         {
///             Target = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/scgroup/providers/Microsoft.Storage/storageAccounts/blofnfs/blobServices/default/containers/blobnfs",
///             UsageModel = "READ_WRITE",
///             VerificationTimer = 28800,
///             WriteBackTimer = 3600,
///         },
///         CacheName = "sc1",
///         Junctions = new[]
///         {
///             new AzureNative.StorageCache.Inputs.NamespaceJunctionArgs
///             {
///                 NamespacePath = "/blobnfs",
///             },
///         },
///         ResourceGroupName = "scgroup",
///         StorageTargetName = "st1",
///         TargetType = AzureNative.StorageCache.StorageTargetType.BlobNfs,
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
/// 	storagecache "github.com/pulumi/pulumi-azure-native-sdk/storagecache/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagecache.NewStorageTarget(ctx, "storageTarget", &storagecache.StorageTargetArgs{
/// 			BlobNfs: &storagecache.BlobNfsTargetArgs{
/// 				Target:            pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/scgroup/providers/Microsoft.Storage/storageAccounts/blofnfs/blobServices/default/containers/blobnfs"),
/// 				UsageModel:        pulumi.String("READ_WRITE"),
/// 				VerificationTimer: pulumi.Int(28800),
/// 				WriteBackTimer:    pulumi.Int(3600),
/// 			},
/// 			CacheName: pulumi.String("sc1"),
/// 			Junctions: storagecache.NamespaceJunctionArray{
/// 				&storagecache.NamespaceJunctionArgs{
/// 					NamespacePath: pulumi.String("/blobnfs"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("scgroup"),
/// 			StorageTargetName: pulumi.String("st1"),
/// 			TargetType:        pulumi.String(storagecache.StorageTargetTypeBlobNfs),
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
/// import com.pulumi.azurenative.storagecache.StorageTarget;
/// import com.pulumi.azurenative.storagecache.StorageTargetArgs;
/// import com.pulumi.azurenative.storagecache.inputs.BlobNfsTargetArgs;
/// import com.pulumi.azurenative.storagecache.inputs.NamespaceJunctionArgs;
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
///         var storageTarget = new StorageTarget("storageTarget", StorageTargetArgs.builder()
///             .blobNfs(BlobNfsTargetArgs.builder()
///                 .target("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/scgroup/providers/Microsoft.Storage/storageAccounts/blofnfs/blobServices/default/containers/blobnfs")
///                 .usageModel("READ_WRITE")
///                 .verificationTimer(28800)
///                 .writeBackTimer(3600)
///                 .build())
///             .cacheName("sc1")
///             .junctions(NamespaceJunctionArgs.builder()
///                 .namespacePath("/blobnfs")
///                 .build())
///             .resourceGroupName("scgroup")
///             .storageTargetName("st1")
///             .targetType("blobNfs")
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
/// const storageTarget = new azure_native.storagecache.StorageTarget("storageTarget", {
///     blobNfs: {
///         target: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/scgroup/providers/Microsoft.Storage/storageAccounts/blofnfs/blobServices/default/containers/blobnfs",
///         usageModel: "READ_WRITE",
///         verificationTimer: 28800,
///         writeBackTimer: 3600,
///     },
///     cacheName: "sc1",
///     junctions: [{
///         namespacePath: "/blobnfs",
///     }],
///     resourceGroupName: "scgroup",
///     storageTargetName: "st1",
///     targetType: azure_native.storagecache.StorageTargetType.BlobNfs,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_target = azure_native.storagecache.StorageTarget("storageTarget",
///     blob_nfs={
///         "target": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/scgroup/providers/Microsoft.Storage/storageAccounts/blofnfs/blobServices/default/containers/blobnfs",
///         "usage_model": "READ_WRITE",
///         "verification_timer": 28800,
///         "write_back_timer": 3600,
///     },
///     cache_name="sc1",
///     junctions=[{
///         "namespace_path": "/blobnfs",
///     }],
///     resource_group_name="scgroup",
///     storage_target_name="st1",
///     target_type=azure_native.storagecache.StorageTargetType.BLOB_NFS)
///
/// ```
///
/// ```yaml
/// resources:
///   storageTarget:
///     type: azure-native:storagecache:StorageTarget
///     properties:
///       blobNfs:
///         target: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/scgroup/providers/Microsoft.Storage/storageAccounts/blofnfs/blobServices/default/containers/blobnfs
///         usageModel: READ_WRITE
///         verificationTimer: 28800
///         writeBackTimer: 3600
///       cacheName: sc1
///       junctions:
///         - namespacePath: /blobnfs
///       resourceGroupName: scgroup
///       storageTargetName: st1
///       targetType: blobNfs
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageTargets_CreateOrUpdate_NoJunctions
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageTarget = new AzureNative.StorageCache.StorageTarget("storageTarget", new()
///     {
///         CacheName = "sc1",
///         Nfs3 = new AzureNative.StorageCache.Inputs.Nfs3TargetArgs
///         {
///             Target = "10.0.44.44",
///             UsageModel = "READ_ONLY",
///             VerificationTimer = 30,
///         },
///         ResourceGroupName = "scgroup",
///         StorageTargetName = "st1",
///         TargetType = AzureNative.StorageCache.StorageTargetType.Nfs3,
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
/// 	storagecache "github.com/pulumi/pulumi-azure-native-sdk/storagecache/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagecache.NewStorageTarget(ctx, "storageTarget", &storagecache.StorageTargetArgs{
/// 			CacheName: pulumi.String("sc1"),
/// 			Nfs3: &storagecache.Nfs3TargetArgs{
/// 				Target:            pulumi.String("10.0.44.44"),
/// 				UsageModel:        pulumi.String("READ_ONLY"),
/// 				VerificationTimer: pulumi.Int(30),
/// 			},
/// 			ResourceGroupName: pulumi.String("scgroup"),
/// 			StorageTargetName: pulumi.String("st1"),
/// 			TargetType:        pulumi.String(storagecache.StorageTargetTypeNfs3),
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
/// import com.pulumi.azurenative.storagecache.StorageTarget;
/// import com.pulumi.azurenative.storagecache.StorageTargetArgs;
/// import com.pulumi.azurenative.storagecache.inputs.Nfs3TargetArgs;
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
///         var storageTarget = new StorageTarget("storageTarget", StorageTargetArgs.builder()
///             .cacheName("sc1")
///             .nfs3(Nfs3TargetArgs.builder()
///                 .target("10.0.44.44")
///                 .usageModel("READ_ONLY")
///                 .verificationTimer(30)
///                 .build())
///             .resourceGroupName("scgroup")
///             .storageTargetName("st1")
///             .targetType("nfs3")
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
/// const storageTarget = new azure_native.storagecache.StorageTarget("storageTarget", {
///     cacheName: "sc1",
///     nfs3: {
///         target: "10.0.44.44",
///         usageModel: "READ_ONLY",
///         verificationTimer: 30,
///     },
///     resourceGroupName: "scgroup",
///     storageTargetName: "st1",
///     targetType: azure_native.storagecache.StorageTargetType.Nfs3,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_target = azure_native.storagecache.StorageTarget("storageTarget",
///     cache_name="sc1",
///     nfs3={
///         "target": "10.0.44.44",
///         "usage_model": "READ_ONLY",
///         "verification_timer": 30,
///     },
///     resource_group_name="scgroup",
///     storage_target_name="st1",
///     target_type=azure_native.storagecache.StorageTargetType.NFS3)
///
/// ```
///
/// ```yaml
/// resources:
///   storageTarget:
///     type: azure-native:storagecache:StorageTarget
///     properties:
///       cacheName: sc1
///       nfs3:
///         target: 10.0.44.44
///         usageModel: READ_ONLY
///         verificationTimer: 30
///       resourceGroupName: scgroup
///       storageTargetName: st1
///       targetType: nfs3
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
/// $ pulumi import azure-native:storagecache:StorageTarget st1 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.StorageCache/caches/{cacheName}/storageTargets/{storageTargetName}
/// ```
class StorageTarget extends pulumi.CustomResource {
  /// The percentage of cache space allocated for this storage target
  late final pulumi.Output<int> allocationPercentage;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Properties when targetType is blobNfs.
  late final pulumi.Output<BlobNfsTargetResponse?> blobNfs;
  /// Properties when targetType is clfs.
  late final pulumi.Output<ClfsTargetResponse?> clfs;
  /// List of cache namespace junctions to target for namespace associations.
  late final pulumi.Output<List<Map<String, dynamic>>?> junctions;
  /// Region name string.
  late final pulumi.Output<String> location;
  /// Name of the Storage Target.
  late final pulumi.Output<String> name;
  /// Properties when targetType is nfs3.
  late final pulumi.Output<Nfs3TargetResponse?> nfs3;
  /// ARM provisioning state, see https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/Addendum.md#provisioningstate-property
  late final pulumi.Output<String> provisioningState;
  /// Storage target operational state.
  late final pulumi.Output<String?> state;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Type of the Storage Target.
  late final pulumi.Output<String> targetType;
  /// Type of the Storage Target; Microsoft.StorageCache/Cache/StorageTarget
  late final pulumi.Output<String> type;
  /// Properties when targetType is unknown.
  late final pulumi.Output<UnknownTargetResponse?> unknown;

  /// Creates a new [StorageTarget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageTarget]. {@macro pulumi_storagecache_storage_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageTarget(
    String name, {
    StorageTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storagecache:StorageTarget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allocationPercentage = registerOutput<int>('allocationPercentage');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    blobNfs = registerOutput<BlobNfsTargetResponse?>('blobNfs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BlobNfsTargetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clfs = registerOutput<ClfsTargetResponse?>('clfs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClfsTargetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    junctions = registerOutput<List<Map<String, dynamic>>?>('junctions');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nfs3 = registerOutput<Nfs3TargetResponse?>('nfs3', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Nfs3TargetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    state = registerOutput<String?>('state');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetType = registerOutput<String>('targetType');
    type = registerOutput<String>('type');
    unknown = registerOutput<UnknownTargetResponse?>('unknown', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UnknownTargetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
