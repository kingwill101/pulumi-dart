import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_job_args.dart';
import 'system_data_response.dart';

/// An import job instance. Follows Azure Resource Manager standards: https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/resource-api-reference.md
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2024-07-01, 2025-07-01, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagecache [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### importJobs_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var importJob = new AzureNative.StorageCache.ImportJob("importJob", new()
///     {
///         AmlFilesystemName = "fs1",
///         ConflictResolutionMode = AzureNative.StorageCache.ConflictResolutionMode.OverwriteAlways,
///         ImportJobName = "job1",
///         ImportPrefixes = new[]
///         {
///             "/",
///         },
///         Location = "eastus",
///         MaximumErrors = 0,
///         ResourceGroupName = "scgroup",
///         Tags =
///         {
///             { "Dept", "ContosoAds" },
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
/// 	storagecache "github.com/pulumi/pulumi-azure-native-sdk/storagecache/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagecache.NewImportJob(ctx, "importJob", &storagecache.ImportJobArgs{
/// 			AmlFilesystemName:      pulumi.String("fs1"),
/// 			ConflictResolutionMode: pulumi.String(storagecache.ConflictResolutionModeOverwriteAlways),
/// 			ImportJobName:          pulumi.String("job1"),
/// 			ImportPrefixes: pulumi.StringArray{
/// 				pulumi.String("/"),
/// 			},
/// 			Location:          pulumi.String("eastus"),
/// 			MaximumErrors:     pulumi.Int(0),
/// 			ResourceGroupName: pulumi.String("scgroup"),
/// 			Tags: pulumi.StringMap{
/// 				"Dept": pulumi.String("ContosoAds"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storagecache_importjob" "importJob" {
///   aml_filesystem_name      = "fs1"
///   conflict_resolution_mode = "OverwriteAlways"
///   import_job_name          = "job1"
///   import_prefixes          = ["/"]
///   location                 = "eastus"
///   maximum_errors           = 0
///   resource_group_name      = "scgroup"
///   tags = {
///     "Dept" = "ContosoAds"
///   }
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
/// import com.pulumi.azurenative.storagecache.ImportJob;
/// import com.pulumi.azurenative.storagecache.ImportJobArgs;
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
///         var importJob = new ImportJob("importJob", ImportJobArgs.builder()
///             .amlFilesystemName("fs1")
///             .conflictResolutionMode("OverwriteAlways")
///             .importJobName("job1")
///             .importPrefixes("/")
///             .location("eastus")
///             .maximumErrors(0)
///             .resourceGroupName("scgroup")
///             .tags(Map.of("Dept", "ContosoAds"))
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
/// const importJob = new azure_native.storagecache.ImportJob("importJob", {
///     amlFilesystemName: "fs1",
///     conflictResolutionMode: azure_native.storagecache.ConflictResolutionMode.OverwriteAlways,
///     importJobName: "job1",
///     importPrefixes: ["/"],
///     location: "eastus",
///     maximumErrors: 0,
///     resourceGroupName: "scgroup",
///     tags: {
///         Dept: "ContosoAds",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// import_job = azure_native.storagecache.ImportJob("importJob",
///     aml_filesystem_name="fs1",
///     conflict_resolution_mode=azure_native.storagecache.ConflictResolutionMode.OVERWRITE_ALWAYS,
///     import_job_name="job1",
///     import_prefixes=["/"],
///     location="eastus",
///     maximum_errors=0,
///     resource_group_name="scgroup",
///     tags={
///         "Dept": "ContosoAds",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   importJob:
///     type: azure-native:storagecache:ImportJob
///     properties:
///       amlFilesystemName: fs1
///       conflictResolutionMode: OverwriteAlways
///       importJobName: job1
///       importPrefixes:
///         - /
///       location: eastus
///       maximumErrors: 0
///       resourceGroupName: scgroup
///       tags:
///         Dept: ContosoAds
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
/// $ pulumi import azure-native:storagecache:ImportJob job1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageCache/amlFilesystems/{amlFilesystemName}/importJobs/{importJobName}
/// ```
class ImportJob extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A recent and frequently updated rate of total files, directories, and symlinks imported per second.
  late final pulumi.Output<double> blobsImportedPerSecond;
  /// A recent and frequently updated rate of blobs walked per second.
  late final pulumi.Output<double> blobsWalkedPerSecond;
  /// How the import job will handle conflicts. For example, if the import job is trying to bring in a directory, but a file is at that path, how it handles it. Fail indicates that the import job should stop immediately and not do anything with the conflict. Skip indicates that it should pass over the conflict. OverwriteIfDirty causes the import job to delete and re-import the file or directory if it is a conflicting type, is dirty, or was not previously imported. OverwriteAlways extends OverwriteIfDirty to include releasing files that had been restored but were not dirty. Please reference https://learn.microsoft.com/en-us/azure/azure-managed-lustre/ for a thorough explanation of these resolution modes.
  late final pulumi.Output<String?> conflictResolutionMode;
  /// An array of blob paths/prefixes that get imported into the cluster namespace. It has '/' as the default value.
  late final pulumi.Output<List<String>?> importPrefixes;
  /// The time of the last completed archive operation
  late final pulumi.Output<String> lastCompletionTime;
  /// The time the latest archive operation started
  late final pulumi.Output<String> lastStartedTime;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Total non-conflict oriented errors the import job will tolerate before exiting with failure. -1 means infinite. 0 means exit immediately and is the default.
  late final pulumi.Output<int?> maximumErrors;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// ARM provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// The state of the import job. InProgress indicates the import is still running. Canceled indicates it has been canceled by the user. Completed indicates import finished, successfully importing all discovered blobs into the Lustre namespace. CompletedPartial indicates the import finished but some blobs either were found to be conflicting and could not be imported or other errors were encountered. Failed means the import was unable to complete due to a fatal error.
  late final pulumi.Output<String> state;
  /// The status message of the import job.
  late final pulumi.Output<String> statusMessage;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The total blobs that have been imported since import began.
  late final pulumi.Output<double> totalBlobsImported;
  /// The total blob objects walked.
  late final pulumi.Output<double> totalBlobsWalked;
  /// Number of conflicts in the import job.
  late final pulumi.Output<int> totalConflicts;
  /// Number of errors in the import job.
  late final pulumi.Output<int> totalErrors;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ImportJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImportJob]. {@macro pulumi_storagecache_import_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImportJob(
    String name, {
    ImportJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storagecache:ImportJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    blobsImportedPerSecond = registerOutput<double>('blobsImportedPerSecond');
    blobsWalkedPerSecond = registerOutput<double>('blobsWalkedPerSecond');
    conflictResolutionMode = registerOutput<String?>('conflictResolutionMode');
    importPrefixes = registerOutput<List<String>?>('importPrefixes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastCompletionTime = registerOutput<String>('lastCompletionTime');
    lastStartedTime = registerOutput<String>('lastStartedTime');
    location = registerOutput<String>('location');
    maximumErrors = registerOutput<int?>('maximumErrors');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    state = registerOutput<String>('state');
    statusMessage = registerOutput<String>('statusMessage');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    totalBlobsImported = registerOutput<double>('totalBlobsImported');
    totalBlobsWalked = registerOutput<double>('totalBlobsWalked');
    totalConflicts = registerOutput<int>('totalConflicts');
    totalErrors = registerOutput<int>('totalErrors');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ImportJob] resource.
  ImportJob.reference(String urn)
    : super(
        'azure-native:storagecache:ImportJob',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    blobsImportedPerSecond = registerOutput<double>('blobsImportedPerSecond');
    blobsWalkedPerSecond = registerOutput<double>('blobsWalkedPerSecond');
    conflictResolutionMode = registerOutput<String?>('conflictResolutionMode');
    importPrefixes = registerOutput<List<String>?>('importPrefixes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastCompletionTime = registerOutput<String>('lastCompletionTime');
    lastStartedTime = registerOutput<String>('lastStartedTime');
    location = registerOutput<String>('location');
    maximumErrors = registerOutput<int?>('maximumErrors');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    state = registerOutput<String>('state');
    statusMessage = registerOutput<String>('statusMessage');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    totalBlobsImported = registerOutput<double>('totalBlobsImported');
    totalBlobsWalked = registerOutput<double>('totalBlobsWalked');
    totalConflicts = registerOutput<int>('totalConflicts');
    totalErrors = registerOutput<int>('totalErrors');
    type = registerOutput<String>('type');
  }
}
