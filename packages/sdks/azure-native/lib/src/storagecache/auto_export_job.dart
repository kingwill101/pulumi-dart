import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_export_job_args.dart';
import 'system_data_response.dart';

/// An auto export job instance. Follows Azure Resource Manager standards: https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/resource-api-reference.md
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagecache [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### autoExportJobs_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var autoExportJob = new AzureNative.StorageCache.AutoExportJob("autoExportJob", new()
///     {
///         AmlFilesystemName = "fs1",
///         AutoExportJobName = "job1",
///         AutoExportPrefixes = new[]
///         {
///             "/",
///         },
///         Location = "eastus",
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
/// 		_, err := storagecache.NewAutoExportJob(ctx, "autoExportJob", &storagecache.AutoExportJobArgs{
/// 			AmlFilesystemName: pulumi.String("fs1"),
/// 			AutoExportJobName: pulumi.String("job1"),
/// 			AutoExportPrefixes: pulumi.StringArray{
/// 				pulumi.String("/"),
/// 			},
/// 			Location:          pulumi.String("eastus"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storagecache.AutoExportJob;
/// import com.pulumi.azurenative.storagecache.AutoExportJobArgs;
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
///         var autoExportJob = new AutoExportJob("autoExportJob", AutoExportJobArgs.builder()
///             .amlFilesystemName("fs1")
///             .autoExportJobName("job1")
///             .autoExportPrefixes("/")
///             .location("eastus")
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
/// const autoExportJob = new azure_native.storagecache.AutoExportJob("autoExportJob", {
///     amlFilesystemName: "fs1",
///     autoExportJobName: "job1",
///     autoExportPrefixes: ["/"],
///     location: "eastus",
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
/// auto_export_job = azure_native.storagecache.AutoExportJob("autoExportJob",
///     aml_filesystem_name="fs1",
///     auto_export_job_name="job1",
///     auto_export_prefixes=["/"],
///     location="eastus",
///     resource_group_name="scgroup",
///     tags={
///         "Dept": "ContosoAds",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   autoExportJob:
///     type: azure-native:storagecache:AutoExportJob
///     properties:
///       amlFilesystemName: fs1
///       autoExportJobName: job1
///       autoExportPrefixes:
///         - /
///       location: eastus
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
/// $ pulumi import azure-native:storagecache:AutoExportJob job1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageCache/amlFilesystems/{amlFilesystemName}/autoExportJobs/{autoExportJobName}
/// ```
class AutoExportJob extends pulumi.CustomResource {
  /// The administrative status of the auto export job. Possible values: 'Enable', 'Disable'. Passing in a value of 'Disable' will disable the current active auto export job. By default it is set to 'Enable'.
  late final pulumi.Output<String?> adminStatus;
  /// An array of blob paths/prefixes that get auto exported to the cluster namespace. It has '/' as the default value. Number of maximum allowed paths for now is 1.
  late final pulumi.Output<List<String>?> autoExportPrefixes;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Files discovered for export in current iteration. It may increase while more export items are found.
  late final pulumi.Output<double> currentIterationFilesDiscovered;
  /// Files that have been exported in current iteration.
  late final pulumi.Output<double> currentIterationFilesExported;
  /// Files failed to export in current iteration.
  late final pulumi.Output<double> currentIterationFilesFailed;
  /// Data (in MiB) discovered for export in current iteration. It may increase while more export items are found.
  late final pulumi.Output<double> currentIterationMiBDiscovered;
  /// Data (in MiB) that have been exported in current iteration.
  late final pulumi.Output<double> currentIterationMiBExported;
  /// Number of iterations completed since the start of the export.
  late final pulumi.Output<int> exportIterationCount;
  /// The time (in UTC) of the last completed auto export job.
  late final pulumi.Output<String> lastCompletionTimeUTC;
  /// The time (in UTC) the latest auto export job started.
  late final pulumi.Output<String> lastStartedTimeUTC;
  /// Time (in UTC) of the last successfully completed export iteration. Look at logging container for details.
  late final pulumi.Output<String> lastSuccessfulIterationCompletionTimeUTC;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// ARM provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// The operational state of auto export. InProgress indicates the export is running.  Disabling indicates the user has requested to disable the export but the disabling is still in progress. Disabled indicates auto export has been disabled.  DisableFailed indicates the disabling has failed.  Failed means the export was unable to continue, due to a fatal error.
  late final pulumi.Output<String?> state;
  /// Server-defined status code for auto export job.
  late final pulumi.Output<String> statusCode;
  /// Server-defined status message for auto export job.
  late final pulumi.Output<String> statusMessage;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Total files exported since the start of the export. This is accumulative, some files may be counted repeatedly.
  late final pulumi.Output<double> totalFilesExported;
  /// Total files failed to be export since the last successfully completed iteration. This is accumulative, some files may be counted repeatedly.
  late final pulumi.Output<double> totalFilesFailed;
  /// Total data (in MiB) exported since the start of the export. This is accumulative, some files may be counted repeatedly.
  late final pulumi.Output<double> totalMiBExported;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AutoExportJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoExportJob]. {@macro pulumi_storagecache_auto_export_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoExportJob(
    String name, {
    AutoExportJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storagecache:AutoExportJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminStatus = registerOutput<String?>('adminStatus');
    autoExportPrefixes = registerOutput<List<String>?>('autoExportPrefixes');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    currentIterationFilesDiscovered = registerOutput<double>('currentIterationFilesDiscovered');
    currentIterationFilesExported = registerOutput<double>('currentIterationFilesExported');
    currentIterationFilesFailed = registerOutput<double>('currentIterationFilesFailed');
    currentIterationMiBDiscovered = registerOutput<double>('currentIterationMiBDiscovered');
    currentIterationMiBExported = registerOutput<double>('currentIterationMiBExported');
    exportIterationCount = registerOutput<int>('exportIterationCount');
    lastCompletionTimeUTC = registerOutput<String>('lastCompletionTimeUTC');
    lastStartedTimeUTC = registerOutput<String>('lastStartedTimeUTC');
    lastSuccessfulIterationCompletionTimeUTC = registerOutput<String>('lastSuccessfulIterationCompletionTimeUTC');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    state = registerOutput<String?>('state');
    statusCode = registerOutput<String>('statusCode');
    statusMessage = registerOutput<String>('statusMessage');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    totalFilesExported = registerOutput<double>('totalFilesExported');
    totalFilesFailed = registerOutput<double>('totalFilesFailed');
    totalMiBExported = registerOutput<double>('totalMiBExported');
    type = registerOutput<String>('type');
  }
}
