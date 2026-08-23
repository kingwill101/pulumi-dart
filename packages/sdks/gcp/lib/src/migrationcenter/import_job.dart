import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_job_args.dart';
import 'import_job_state.dart';

/// ImportJob represents a batch data import task that processes uploaded data files and populates Migration Center assets.
///
///
///
/// ## Example Usage
///
/// ### Migration Center Import Job Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.migrationcenter.Source("default", {
///     location: "us-central1",
///     sourceId: "source-test",
///     type: "SOURCE_TYPE_CUSTOM",
/// });
/// const defaultImportJob = new gcp.migrationcenter.ImportJob("default", {
///     location: "us-central1",
///     importJobId: "import-job-test",
///     assetSource: _default.id,
///     displayName: "Terraform integration test display",
///     labels: {
///         my_key: "value",
///         second_key: "second_value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.migrationcenter.Source("default",
///     location="us-central1",
///     source_id="source-test",
///     type="SOURCE_TYPE_CUSTOM")
/// default_import_job = gcp.migrationcenter.ImportJob("default",
///     location="us-central1",
///     import_job_id="import-job-test",
///     asset_source=default.id,
///     display_name="Terraform integration test display",
///     labels={
///         "my_key": "value",
///         "second_key": "second_value",
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
///     var @default = new Gcp.MigrationCenter.Source("default", new()
///     {
///         Location = "us-central1",
///         SourceId = "source-test",
///         Type = "SOURCE_TYPE_CUSTOM",
///     });
///
///     var defaultImportJob = new Gcp.MigrationCenter.ImportJob("default", new()
///     {
///         Location = "us-central1",
///         ImportJobId = "import-job-test",
///         AssetSource = @default.Id,
///         DisplayName = "Terraform integration test display",
///         Labels =
///         {
///             { "my_key", "value" },
///             { "second_key", "second_value" },
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
/// 		_default, err := migrationcenter.NewSource(ctx, "default", &migrationcenter.SourceArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			SourceId: pulumi.String("source-test"),
/// 			Type:     pulumi.String("SOURCE_TYPE_CUSTOM"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = migrationcenter.NewImportJob(ctx, "default", &migrationcenter.ImportJobArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			ImportJobId: pulumi.String("import-job-test"),
/// 			AssetSource: _default.ID().ToIDOutput().ToStringOutput(),
/// 			DisplayName: pulumi.String("Terraform integration test display"),
/// 			Labels: pulumi.StringMap{
/// 				"my_key":     pulumi.String("value"),
/// 				"second_key": pulumi.String("second_value"),
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
/// resource "gcp_migrationcenter_source" "default" {
///   location  = "us-central1"
///   source_id = "source-test"
///   type      = "SOURCE_TYPE_CUSTOM"
/// }
/// resource "gcp_migrationcenter_importjob" "default" {
///   location      = "us-central1"
///   import_job_id = "import-job-test"
///   asset_source  = gcp_migrationcenter_source.default.id
///   display_name  = "Terraform integration test display"
///   labels = {
///     "my_key"     = "value"
///     "second_key" = "second_value"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.migrationcenter.Source;
/// import com.pulumi.gcp.migrationcenter.SourceArgs;
/// import com.pulumi.gcp.migrationcenter.ImportJob;
/// import com.pulumi.gcp.migrationcenter.ImportJobArgs;
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
///         var default_ = new Source("default", SourceArgs.builder()
///             .location("us-central1")
///             .sourceId("source-test")
///             .type("SOURCE_TYPE_CUSTOM")
///             .build());
///
///         var defaultImportJob = new ImportJob("defaultImportJob", ImportJobArgs.builder()
///             .location("us-central1")
///             .importJobId("import-job-test")
///             .assetSource(default_.id())
///             .displayName("Terraform integration test display")
///             .labels(Map.ofEntries(
///                 Map.entry("my_key", "value"),
///                 Map.entry("second_key", "second_value")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:migrationcenter:Source
///     properties:
///       location: us-central1
///       sourceId: source-test
///       type: SOURCE_TYPE_CUSTOM
///   defaultImportJob:
///     type: gcp:migrationcenter:ImportJob
///     name: default
///     properties:
///       location: us-central1
///       importJobId: import-job-test
///       assetSource: ${default.id}
///       displayName: Terraform integration test display
///       labels:
///         my_key: value
///         second_key: second_value
/// ```
///
///
/// ## Import
///
/// ImportJob can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/importJobs/{{import_job_id}}`
/// * `{{project}}/{{location}}/{{import_job_id}}`
/// * `{{location}}/{{import_job_id}}`
///
///
/// When using the `pulumi import` command, ImportJob can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:migrationcenter/importJob:ImportJob default projects/{{project}}/locations/{{location}}/importJobs/{{import_job_id}}
/// $ pulumi import gcp:migrationcenter/importJob:ImportJob default {{project}}/{{location}}/{{import_job_id}}
/// $ pulumi import gcp:migrationcenter/importJob:ImportJob default {{location}}/{{import_job_id}}
/// ```
class ImportJob extends pulumi.CustomResource {
  /// Reference to a source.
  late final pulumi.Output<String> assetSource;
  /// The timestamp when the import job was completed.
  late final pulumi.Output<String> completeTime;
  /// The timestamp when the import job was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// User-friendly display name. Maximum length is 256 characters.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// A resource that reports result of the import job execution.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> executionReports;
  /// ID of the import job.
  late final pulumi.Output<String> importJobId;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// The full name of the import job.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The state of the import job.
  /// Possible values:
  /// IMPORT_JOB_STATE_PENDING
  /// IMPORT_JOB_STATE_RUNNING
  /// IMPORT_JOB_STATE_COMPLETED
  /// IMPORT_JOB_STATE_FAILED
  /// IMPORT_JOB_STATE_VALIDATING
  /// IMPORT_JOB_STATE_FAILED_VALIDATION
  /// IMPORT_JOB_STATE_READY
  late final pulumi.Output<String> state;
  /// The timestamp when the import job was last updated.
  late final pulumi.Output<String> updateTime;
  /// A resource that aggregates errors across import job files.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> validationReports;

  /// Creates a new [ImportJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImportJob]. {@macro pulumi_migrationcenter_import_job_import_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImportJob(
    String name, {
    ImportJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/importJob:ImportJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assetSource = registerOutput<String>('assetSource');
    completeTime = registerOutput<String>('completeTime');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    executionReports = registerOutput<List<Map<String, dynamic>>>('executionReports');
    importJobId = registerOutput<String>('importJobId');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    validationReports = registerOutput<List<Map<String, dynamic>>>('validationReports');
  }

  /// Gets an existing [ImportJob] resource's state with the given [name] and [id].
  static ImportJob get(
    String name,
    pulumi.Input<String> id, {
    ImportJobState? state,
  }) {
    return ImportJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ImportJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/importJob:ImportJob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assetSource = registerOutput<String>('assetSource');
    completeTime = registerOutput<String>('completeTime');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    executionReports = registerOutput<List<Map<String, dynamic>>>('executionReports');
    importJobId = registerOutput<String>('importJobId');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    validationReports = registerOutput<List<Map<String, dynamic>>>('validationReports');
  }
}
