import 'package:pulumi/pulumi.dart' as pulumi;
import 'assets_export_job_args.dart';
import 'assets_export_job_condition.dart';
import 'assets_export_job_performance_data.dart';
import 'assets_export_job_signed_uri_destination.dart';
import 'assets_export_job_state.dart';

/// AssetsExportJob represents a batch job that exports Migration Center assets to external destinations such as Cloud Storage.
///
///
///
/// ## Example Usage
///
/// ### Migration Center Assets Export Job Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.migrationcenter.AssetsExportJob("default", {
///     location: "us-central1",
///     assetsExportJobId: "assets-export-job-test",
///     performanceData: {
///         maxDays: 30,
///     },
///     showHidden: true,
///     signedUriDestination: {
///         fileFormat: "CSV",
///     },
///     labels: {
///         key: "value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.migrationcenter.AssetsExportJob("default",
///     location="us-central1",
///     assets_export_job_id="assets-export-job-test",
///     performance_data={
///         "max_days": 30,
///     },
///     show_hidden=True,
///     signed_uri_destination={
///         "file_format": "CSV",
///     },
///     labels={
///         "key": "value",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.MigrationCenter.AssetsExportJob("default", new()
///     {
///         Location = "us-central1",
///         AssetsExportJobId = "assets-export-job-test",
///         PerformanceData = new Gcp.MigrationCenter.Inputs.AssetsExportJobPerformanceDataArgs
///         {
///             MaxDays = 30,
///         },
///         ShowHidden = true,
///         SignedUriDestination = new Gcp.MigrationCenter.Inputs.AssetsExportJobSignedUriDestinationArgs
///         {
///             FileFormat = "CSV",
///         },
///         Labels =
///         {
///             { "key", "value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/migrationcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := migrationcenter.NewAssetsExportJob(ctx, "default", &migrationcenter.AssetsExportJobArgs{
/// 			Location:          pulumi.String("us-central1"),
/// 			AssetsExportJobId: pulumi.String("assets-export-job-test"),
/// 			PerformanceData: &migrationcenter.AssetsExportJobPerformanceDataArgs{
/// 				MaxDays: pulumi.Int(30),
/// 			},
/// 			ShowHidden: pulumi.Bool(true),
/// 			SignedUriDestination: &migrationcenter.AssetsExportJobSignedUriDestinationArgs{
/// 				FileFormat: pulumi.String("CSV"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_migrationcenter_assetsexportjob" "default" {
///   location             = "us-central1"
///   assets_export_job_id = "assets-export-job-test"
///   performance_data = {
///     max_days = 30
///   }
///   show_hidden = true
///   signed_uri_destination = {
///     file_format = "CSV"
///   }
///   labels = {
///     "key" = "value"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.migrationcenter.AssetsExportJob;
/// import com.pulumi.gcp.migrationcenter.AssetsExportJobArgs;
/// import com.pulumi.gcp.migrationcenter.inputs.AssetsExportJobPerformanceDataArgs;
/// import com.pulumi.gcp.migrationcenter.inputs.AssetsExportJobSignedUriDestinationArgs;
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
///         var default_ = new AssetsExportJob("default", AssetsExportJobArgs.builder()
///             .location("us-central1")
///             .assetsExportJobId("assets-export-job-test")
///             .performanceData(AssetsExportJobPerformanceDataArgs.builder()
///                 .maxDays(30)
///                 .build())
///             .showHidden(true)
///             .signedUriDestination(AssetsExportJobSignedUriDestinationArgs.builder()
///                 .fileFormat("CSV")
///                 .build())
///             .labels(Map.of("key", "value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:migrationcenter:AssetsExportJob
///     properties:
///       location: us-central1
///       assetsExportJobId: assets-export-job-test
///       performanceData:
///         maxDays: 30
///       showHidden: true
///       signedUriDestination:
///         fileFormat: CSV
///       labels:
///         key: value
/// ```
///
///
/// ## Import
///
/// AssetsExportJob can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/assetsExportJobs/{{assets_export_job_id}}`
/// * `{{project}}/{{location}}/{{assets_export_job_id}}`
/// * `{{location}}/{{assets_export_job_id}}`
///
///
/// When using the `pulumi import` command, AssetsExportJob can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:migrationcenter/assetsExportJob:AssetsExportJob default projects/{{project}}/locations/{{location}}/assetsExportJobs/{{assets_export_job_id}}
/// $ pulumi import gcp:migrationcenter/assetsExportJob:AssetsExportJob default {{project}}/{{location}}/{{assets_export_job_id}}
/// $ pulumi import gcp:migrationcenter/assetsExportJob:AssetsExportJob default {{location}}/{{assets_export_job_id}}
/// ```
class AssetsExportJob extends pulumi.CustomResource {
  /// The ID to use for the asset export job.
  late final pulumi.Output<String> assetsExportJobId;
  /// Conditions for selecting assets to export.
  /// Structure is documented below.
  late final pulumi.Output<AssetsExportJobCondition?> condition;
  /// Resource creation time.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Configuration for asset inventory details exports.
  late final pulumi.Output<List<Map<String, dynamic>>> inventories;
  /// Labels as key value pairs.
  /// Labels must meet the following constraints:
  /// * Keys and values can contain only lowercase letters, numeric characters,
  /// underscores, and dashes.
  /// * All characters must use UTF-8 encoding, and international characters are
  /// allowed.
  /// * Keys must start with a lowercase letter or international character.
  /// * Each resource is limited to a maximum of 64 labels.
  /// Both keys and values are additionally constrained to be &lt;= 128 bytes.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. Resource name.
  late final pulumi.Output<String> name;
  /// Configuration for network dependencies exports.
  late final pulumi.Output<List<Map<String, dynamic>>> networkDependencies;
  /// Configuration for performance data exports.
  /// Structure is documented below.
  late final pulumi.Output<AssetsExportJobPerformanceData?> performanceData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Recent non expired executions of the job.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> recentExecutions;
  /// When this value is set to 'true' the response will include all assets,
  /// including those that are hidden.
  late final pulumi.Output<bool?> showHidden;
  /// Signed URI destination configuration.
  /// Structure is documented below.
  late final pulumi.Output<AssetsExportJobSignedUriDestination?> signedUriDestination;
  /// Resource update time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AssetsExportJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssetsExportJob]. {@macro pulumi_migrationcenter_assets_export_job_assets_export_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssetsExportJob(
    String name, {
    AssetsExportJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/assetsExportJob:AssetsExportJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assetsExportJobId = registerOutput<String>('assetsExportJobId');
    condition = registerOutput<AssetsExportJobCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssetsExportJobCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    inventories = registerOutput<List<Map<String, dynamic>>>('inventories');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkDependencies = registerOutput<List<Map<String, dynamic>>>('networkDependencies');
    performanceData = registerOutput<AssetsExportJobPerformanceData?>('performanceData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssetsExportJobPerformanceData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    recentExecutions = registerOutput<List<Map<String, dynamic>>>('recentExecutions');
    showHidden = registerOutput<bool?>('showHidden');
    signedUriDestination = registerOutput<AssetsExportJobSignedUriDestination?>('signedUriDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssetsExportJobSignedUriDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AssetsExportJob] resource's state with the given [name] and [id].
  static AssetsExportJob get(
    String name,
    pulumi.Input<String> id, {
    AssetsExportJobState? state,
  }) {
    return AssetsExportJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AssetsExportJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/assetsExportJob:AssetsExportJob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assetsExportJobId = registerOutput<String>('assetsExportJobId');
    condition = registerOutput<AssetsExportJobCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssetsExportJobCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    inventories = registerOutput<List<Map<String, dynamic>>>('inventories');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkDependencies = registerOutput<List<Map<String, dynamic>>>('networkDependencies');
    performanceData = registerOutput<AssetsExportJobPerformanceData?>('performanceData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssetsExportJobPerformanceData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    recentExecutions = registerOutput<List<Map<String, dynamic>>>('recentExecutions');
    showHidden = registerOutput<bool?>('showHidden');
    signedUriDestination = registerOutput<AssetsExportJobSignedUriDestination?>('signedUriDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssetsExportJobSignedUriDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }
}
