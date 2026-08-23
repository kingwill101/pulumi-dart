import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share_args.dart';
import 'file_share_properties_response_file_share_paid_bursting.dart';

/// Properties of the file share, including Id, resource name, resource type, Etag.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01, 2025-08-01, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create NFS Shares
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fileShare = new AzureNative.Storage.FileShare("fileShare", new()
///     {
///         AccountName = "sto666",
///         EnabledProtocols = AzureNative.Storage.EnabledProtocols.NFS,
///         ResourceGroupName = "res346",
///         ShareName = "share1235",
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
/// 		_, err := storage.NewFileShare(ctx, "fileShare", &storage.FileShareArgs{
/// 			AccountName:       pulumi.String("sto666"),
/// 			EnabledProtocols:  pulumi.String(storage.EnabledProtocolsNFS),
/// 			ResourceGroupName: pulumi.String("res346"),
/// 			ShareName:         pulumi.String("share1235"),
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
/// resource "azure-native_storage_fileshare" "fileShare" {
///   account_name        = "sto666"
///   enabled_protocols   = "NFS"
///   resource_group_name = "res346"
///   share_name          = "share1235"
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
/// import com.pulumi.azurenative.storage.FileShare;
/// import com.pulumi.azurenative.storage.FileShareArgs;
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
///         var fileShare = new FileShare("fileShare", FileShareArgs.builder()
///             .accountName("sto666")
///             .enabledProtocols("NFS")
///             .resourceGroupName("res346")
///             .shareName("share1235")
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
/// const fileShare = new azure_native.storage.FileShare("fileShare", {
///     accountName: "sto666",
///     enabledProtocols: azure_native.storage.EnabledProtocols.NFS,
///     resourceGroupName: "res346",
///     shareName: "share1235",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// file_share = azure_native.storage.FileShare("fileShare",
///     account_name="sto666",
///     enabled_protocols=azure_native.storage.EnabledProtocols.NFS,
///     resource_group_name="res346",
///     share_name="share1235")
///
/// ```
///
/// ```yaml
/// resources:
///   fileShare:
///     type: azure-native:storage:FileShare
///     properties:
///       accountName: sto666
///       enabledProtocols: NFS
///       resourceGroupName: res346
///       shareName: share1235
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PutShares
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fileShare = new AzureNative.Storage.FileShare("fileShare", new()
///     {
///         AccountName = "sto328",
///         ResourceGroupName = "res3376",
///         ShareName = "share6185",
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
/// 		_, err := storage.NewFileShare(ctx, "fileShare", &storage.FileShareArgs{
/// 			AccountName:       pulumi.String("sto328"),
/// 			ResourceGroupName: pulumi.String("res3376"),
/// 			ShareName:         pulumi.String("share6185"),
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
/// resource "azure-native_storage_fileshare" "fileShare" {
///   account_name        = "sto328"
///   resource_group_name = "res3376"
///   share_name          = "share6185"
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
/// import com.pulumi.azurenative.storage.FileShare;
/// import com.pulumi.azurenative.storage.FileShareArgs;
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
///         var fileShare = new FileShare("fileShare", FileShareArgs.builder()
///             .accountName("sto328")
///             .resourceGroupName("res3376")
///             .shareName("share6185")
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
/// const fileShare = new azure_native.storage.FileShare("fileShare", {
///     accountName: "sto328",
///     resourceGroupName: "res3376",
///     shareName: "share6185",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// file_share = azure_native.storage.FileShare("fileShare",
///     account_name="sto328",
///     resource_group_name="res3376",
///     share_name="share6185")
///
/// ```
///
/// ```yaml
/// resources:
///   fileShare:
///     type: azure-native:storage:FileShare
///     properties:
///       accountName: sto328
///       resourceGroupName: res3376
///       shareName: share6185
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PutShares with Access Tier
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fileShare = new AzureNative.Storage.FileShare("fileShare", new()
///     {
///         AccessTier = AzureNative.Storage.ShareAccessTier.Hot,
///         AccountName = "sto666",
///         ResourceGroupName = "res346",
///         ShareName = "share1235",
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
/// 		_, err := storage.NewFileShare(ctx, "fileShare", &storage.FileShareArgs{
/// 			AccessTier:        pulumi.String(storage.ShareAccessTierHot),
/// 			AccountName:       pulumi.String("sto666"),
/// 			ResourceGroupName: pulumi.String("res346"),
/// 			ShareName:         pulumi.String("share1235"),
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
/// resource "azure-native_storage_fileshare" "fileShare" {
///   access_tier         = "Hot"
///   account_name        = "sto666"
///   resource_group_name = "res346"
///   share_name          = "share1235"
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
/// import com.pulumi.azurenative.storage.FileShare;
/// import com.pulumi.azurenative.storage.FileShareArgs;
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
///         var fileShare = new FileShare("fileShare", FileShareArgs.builder()
///             .accessTier("Hot")
///             .accountName("sto666")
///             .resourceGroupName("res346")
///             .shareName("share1235")
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
/// const fileShare = new azure_native.storage.FileShare("fileShare", {
///     accessTier: azure_native.storage.ShareAccessTier.Hot,
///     accountName: "sto666",
///     resourceGroupName: "res346",
///     shareName: "share1235",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// file_share = azure_native.storage.FileShare("fileShare",
///     access_tier=azure_native.storage.ShareAccessTier.HOT,
///     account_name="sto666",
///     resource_group_name="res346",
///     share_name="share1235")
///
/// ```
///
/// ```yaml
/// resources:
///   fileShare:
///     type: azure-native:storage:FileShare
///     properties:
///       accessTier: Hot
///       accountName: sto666
///       resourceGroupName: res346
///       shareName: share1235
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PutShares with Paid Bursting
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fileShare = new AzureNative.Storage.FileShare("fileShare", new()
///     {
///         AccountName = "sto666",
///         FileSharePaidBursting = new AzureNative.Storage.Inputs.FileSharePropertiesFileSharePaidBurstingArgs
///         {
///             PaidBurstingEnabled = true,
///             PaidBurstingMaxBandwidthMibps = 10340,
///             PaidBurstingMaxIops = 102400,
///         },
///         ResourceGroupName = "res346",
///         ShareName = "share1235",
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
/// 		_, err := storage.NewFileShare(ctx, "fileShare", &storage.FileShareArgs{
/// 			AccountName: pulumi.String("sto666"),
/// 			FileSharePaidBursting: &storage.FileSharePropertiesFileSharePaidBurstingArgs{
/// 				PaidBurstingEnabled:           pulumi.Bool(true),
/// 				PaidBurstingMaxBandwidthMibps: pulumi.Int(10340),
/// 				PaidBurstingMaxIops:           pulumi.Int(102400),
/// 			},
/// 			ResourceGroupName: pulumi.String("res346"),
/// 			ShareName:         pulumi.String("share1235"),
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
/// resource "azure-native_storage_fileshare" "fileShare" {
///   account_name = "sto666"
///   file_share_paid_bursting = {
///     paid_bursting_enabled             = true
///     paid_bursting_max_bandwidth_mibps = 10340
///     paid_bursting_max_iops            = 102400
///   }
///   resource_group_name = "res346"
///   share_name          = "share1235"
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
/// import com.pulumi.azurenative.storage.FileShare;
/// import com.pulumi.azurenative.storage.FileShareArgs;
/// import com.pulumi.azurenative.storage.inputs.FileSharePropertiesFileSharePaidBurstingArgs;
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
///         var fileShare = new FileShare("fileShare", FileShareArgs.builder()
///             .accountName("sto666")
///             .fileSharePaidBursting(FileSharePropertiesFileSharePaidBurstingArgs.builder()
///                 .paidBurstingEnabled(true)
///                 .paidBurstingMaxBandwidthMibps(10340)
///                 .paidBurstingMaxIops(102400)
///                 .build())
///             .resourceGroupName("res346")
///             .shareName("share1235")
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
/// const fileShare = new azure_native.storage.FileShare("fileShare", {
///     accountName: "sto666",
///     fileSharePaidBursting: {
///         paidBurstingEnabled: true,
///         paidBurstingMaxBandwidthMibps: 10340,
///         paidBurstingMaxIops: 102400,
///     },
///     resourceGroupName: "res346",
///     shareName: "share1235",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// file_share = azure_native.storage.FileShare("fileShare",
///     account_name="sto666",
///     file_share_paid_bursting={
///         "paid_bursting_enabled": True,
///         "paid_bursting_max_bandwidth_mibps": 10340,
///         "paid_bursting_max_iops": 102400,
///     },
///     resource_group_name="res346",
///     share_name="share1235")
///
/// ```
///
/// ```yaml
/// resources:
///   fileShare:
///     type: azure-native:storage:FileShare
///     properties:
///       accountName: sto666
///       fileSharePaidBursting:
///         paidBurstingEnabled: true
///         paidBurstingMaxBandwidthMibps: 10340
///         paidBurstingMaxIops: 102400
///       resourceGroupName: res346
///       shareName: share1235
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PutSharesProvisionedV2
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fileShare = new AzureNative.Storage.FileShare("fileShare", new()
///     {
///         AccountName = "sto666",
///         ProvisionedBandwidthMibps = 200,
///         ProvisionedIops = 5000,
///         ResourceGroupName = "res346",
///         ShareName = "share1235",
///         ShareQuota = 100,
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
/// 		_, err := storage.NewFileShare(ctx, "fileShare", &storage.FileShareArgs{
/// 			AccountName:               pulumi.String("sto666"),
/// 			ProvisionedBandwidthMibps: pulumi.Int(200),
/// 			ProvisionedIops:           pulumi.Int(5000),
/// 			ResourceGroupName:         pulumi.String("res346"),
/// 			ShareName:                 pulumi.String("share1235"),
/// 			ShareQuota:                pulumi.Int(100),
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
/// resource "azure-native_storage_fileshare" "fileShare" {
///   account_name                = "sto666"
///   provisioned_bandwidth_mibps = 200
///   provisioned_iops            = 5000
///   resource_group_name         = "res346"
///   share_name                  = "share1235"
///   share_quota                 = 100
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
/// import com.pulumi.azurenative.storage.FileShare;
/// import com.pulumi.azurenative.storage.FileShareArgs;
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
///         var fileShare = new FileShare("fileShare", FileShareArgs.builder()
///             .accountName("sto666")
///             .provisionedBandwidthMibps(200)
///             .provisionedIops(5000)
///             .resourceGroupName("res346")
///             .shareName("share1235")
///             .shareQuota(100)
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
/// const fileShare = new azure_native.storage.FileShare("fileShare", {
///     accountName: "sto666",
///     provisionedBandwidthMibps: 200,
///     provisionedIops: 5000,
///     resourceGroupName: "res346",
///     shareName: "share1235",
///     shareQuota: 100,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// file_share = azure_native.storage.FileShare("fileShare",
///     account_name="sto666",
///     provisioned_bandwidth_mibps=200,
///     provisioned_iops=5000,
///     resource_group_name="res346",
///     share_name="share1235",
///     share_quota=100)
///
/// ```
///
/// ```yaml
/// resources:
///   fileShare:
///     type: azure-native:storage:FileShare
///     properties:
///       accountName: sto666
///       provisionedBandwidthMibps: 200
///       provisionedIops: 5000
///       resourceGroupName: res346
///       shareName: share1235
///       shareQuota: 100
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
/// $ pulumi import azure-native:storage:FileShare share1235 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/fileServices/default/shares/{shareName}
/// ```
class FileShare extends pulumi.CustomResource {
  /// Access tier for specific share. GpV2 account can choose between TransactionOptimized (default), Hot, and Cool. FileStorage account can choose Premium.
  late final pulumi.Output<String?> accessTier;
  /// Indicates the last modification time for share access tier.
  late final pulumi.Output<String> accessTierChangeTime;
  /// Indicates if there is a pending transition for access tier.
  late final pulumi.Output<String> accessTierStatus;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Indicates whether the share was deleted.
  late final pulumi.Output<bool> deleted;
  /// The deleted time if the share was deleted.
  late final pulumi.Output<String> deletedTime;
  /// The authentication protocol that is used for the file share. Can only be specified when creating a share.
  late final pulumi.Output<String?> enabledProtocols;
  /// Resource Etag.
  late final pulumi.Output<String> etag;
  /// File Share Paid Bursting properties.
  late final pulumi.Output<FileSharePropertiesResponseFileSharePaidBursting?> fileSharePaidBursting;
  /// The calculated burst IOPS of the share. This property is only for file shares created under Files Provisioned v2 account type.
  late final pulumi.Output<int> includedBurstIops;
  /// Returns the date and time the share was last modified.
  late final pulumi.Output<String> lastModifiedTime;
  /// Specifies whether the lease on a share is of infinite or fixed duration, only when the share is leased.
  late final pulumi.Output<String> leaseDuration;
  /// Lease state of the share.
  late final pulumi.Output<String> leaseState;
  /// The lease status of the share.
  late final pulumi.Output<String> leaseStatus;
  /// The calculated maximum burst credits for the share. This property is only for file shares created under Files Provisioned v2 account type.
  late final pulumi.Output<double> maxBurstCreditsForIops;
  /// A name-value pair to associate with the share as metadata.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Returns the next allowed provisioned bandwidth downgrade time for the share. This property is only for file shares created under Files Provisioned v2 account type.
  late final pulumi.Output<String> nextAllowedProvisionedBandwidthDowngradeTime;
  /// Returns the next allowed provisioned IOPS downgrade time for the share. This property is only for file shares created under Files Provisioned v2 account type.
  late final pulumi.Output<String> nextAllowedProvisionedIopsDowngradeTime;
  /// Returns the next allowed provisioned storage size downgrade time for the share. This property is only for file shares created under Files Provisioned v1 SSD and Files Provisioned v2 account type
  late final pulumi.Output<String> nextAllowedQuotaDowngradeTime;
  /// The provisioned bandwidth of the share, in mebibytes per second. This property is only for file shares created under Files Provisioned v2 account type. Please refer to the GetFileServiceUsage API response for the minimum and maximum allowed value for provisioned bandwidth.
  late final pulumi.Output<int?> provisionedBandwidthMibps;
  /// The provisioned IOPS of the share. This property is only for file shares created under Files Provisioned v2 account type. Please refer to the GetFileServiceUsage API response for the minimum and maximum allowed value for provisioned IOPS.
  late final pulumi.Output<int?> provisionedIops;
  /// Remaining retention days for share that was soft deleted.
  late final pulumi.Output<int> remainingRetentionDays;
  /// The property is for NFS share only. The default is NoRootSquash.
  late final pulumi.Output<String?> rootSquash;
  /// The provisioned size of the share, in gibibytes. Must be greater than 0, and less than or equal to 5TB (5120). For Large File Shares, the maximum size is 102400. For file shares created under Files Provisioned v2 account type, please refer to the GetFileServiceUsage API response for the minimum and maximum allowed provisioned storage size.
  late final pulumi.Output<int?> shareQuota;
  /// The approximate size of the data stored on the share. Note that this value may not include all recently created or recently resized files.
  late final pulumi.Output<double> shareUsageBytes;
  /// List of stored access policies specified on the share.
  late final pulumi.Output<List<Map<String, dynamic>>?> signedIdentifiers;
  /// Creation time of share snapshot returned in the response of list shares with expand param "snapshots".
  late final pulumi.Output<String> snapshotTime;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The version of the share.
  late final pulumi.Output<String> version;

  /// Creates a new [FileShare].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FileShare]. {@macro pulumi_storage_file_share_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FileShare(
    String name, {
    FileShareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storage:FileShare',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessTier = registerOutput<String?>('accessTier');
    accessTierChangeTime = registerOutput<String>('accessTierChangeTime');
    accessTierStatus = registerOutput<String>('accessTierStatus');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    deleted = registerOutput<bool>('deleted');
    deletedTime = registerOutput<String>('deletedTime');
    enabledProtocols = registerOutput<String?>('enabledProtocols');
    etag = registerOutput<String>('etag');
    fileSharePaidBursting = registerOutput<FileSharePropertiesResponseFileSharePaidBursting?>('fileSharePaidBursting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FileSharePropertiesResponseFileSharePaidBursting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    includedBurstIops = registerOutput<int>('includedBurstIops');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    leaseDuration = registerOutput<String>('leaseDuration');
    leaseState = registerOutput<String>('leaseState');
    leaseStatus = registerOutput<String>('leaseStatus');
    maxBurstCreditsForIops = registerOutput<double>('maxBurstCreditsForIops');
    metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    nextAllowedProvisionedBandwidthDowngradeTime = registerOutput<String>('nextAllowedProvisionedBandwidthDowngradeTime');
    nextAllowedProvisionedIopsDowngradeTime = registerOutput<String>('nextAllowedProvisionedIopsDowngradeTime');
    nextAllowedQuotaDowngradeTime = registerOutput<String>('nextAllowedQuotaDowngradeTime');
    provisionedBandwidthMibps = registerOutput<int?>('provisionedBandwidthMibps');
    provisionedIops = registerOutput<int?>('provisionedIops');
    remainingRetentionDays = registerOutput<int>('remainingRetentionDays');
    rootSquash = registerOutput<String?>('rootSquash');
    shareQuota = registerOutput<int?>('shareQuota');
    shareUsageBytes = registerOutput<double>('shareUsageBytes');
    signedIdentifiers = registerOutput<List<Map<String, dynamic>>?>('signedIdentifiers');
    snapshotTime = registerOutput<String>('snapshotTime');
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }
}
