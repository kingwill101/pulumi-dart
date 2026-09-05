import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_data_file_args.dart';
import 'import_data_file_state.dart';
import 'import_data_file_upload_file_info.dart';

/// ImportDataFile represents a user-uploaded data payload file containing infrastructure discovery data.
///
///
///
/// ## Example Usage
///
/// ### Migration Center Import Data File Basic
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
/// });
/// const defaultImportDataFile = new gcp.migrationcenter.ImportDataFile("default", {
///     location: "us-central1",
///     importJob: defaultImportJob.importJobId,
///     importDataFileId: "import-data-file-test",
///     displayName: "Terraform integration test display",
///     format: "IMPORT_JOB_FORMAT_RVTOOLS_XLSX",
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
///     asset_source=default.id)
/// default_import_data_file = gcp.migrationcenter.ImportDataFile("default",
///     location="us-central1",
///     import_job=default_import_job.import_job_id,
///     import_data_file_id="import-data-file-test",
///     display_name="Terraform integration test display",
///     format="IMPORT_JOB_FORMAT_RVTOOLS_XLSX")
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
///     });
///
///     var defaultImportDataFile = new Gcp.MigrationCenter.ImportDataFile("default", new()
///     {
///         Location = "us-central1",
///         ImportJob = defaultImportJob.ImportJobId,
///         ImportDataFileId = "import-data-file-test",
///         DisplayName = "Terraform integration test display",
///         Format = "IMPORT_JOB_FORMAT_RVTOOLS_XLSX",
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
/// 		defaultImportJob, err := migrationcenter.NewImportJob(ctx, "default", &migrationcenter.ImportJobArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			ImportJobId: pulumi.String("import-job-test"),
/// 			AssetSource: _default.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = migrationcenter.NewImportDataFile(ctx, "default", &migrationcenter.ImportDataFileArgs{
/// 			Location:         pulumi.String("us-central1"),
/// 			ImportJob:        defaultImportJob.ImportJobId,
/// 			ImportDataFileId: pulumi.String("import-data-file-test"),
/// 			DisplayName:      pulumi.String("Terraform integration test display"),
/// 			Format:           pulumi.String("IMPORT_JOB_FORMAT_RVTOOLS_XLSX"),
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
/// }
/// resource "gcp_migrationcenter_importdatafile" "default" {
///   location            = "us-central1"
///   import_job          = gcp_migrationcenter_importjob.default.import_job_id
///   import_data_file_id = "import-data-file-test"
///   display_name        = "Terraform integration test display"
///   format              = "IMPORT_JOB_FORMAT_RVTOOLS_XLSX"
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
/// import com.pulumi.gcp.migrationcenter.ImportDataFile;
/// import com.pulumi.gcp.migrationcenter.ImportDataFileArgs;
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
///             .build());
///
///         var defaultImportDataFile = new ImportDataFile("defaultImportDataFile", ImportDataFileArgs.builder()
///             .location("us-central1")
///             .importJob(defaultImportJob.importJobId())
///             .importDataFileId("import-data-file-test")
///             .displayName("Terraform integration test display")
///             .format("IMPORT_JOB_FORMAT_RVTOOLS_XLSX")
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
///   defaultImportDataFile:
///     type: gcp:migrationcenter:ImportDataFile
///     name: default
///     properties:
///       location: us-central1
///       importJob: ${defaultImportJob.importJobId}
///       importDataFileId: import-data-file-test
///       displayName: Terraform integration test display
///       format: IMPORT_JOB_FORMAT_RVTOOLS_XLSX
/// ```
///
///
/// ## Import
///
/// ImportDataFile can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/importJobs/{{import_job}}/importDataFiles/{{import_data_file_id}}`
/// * `{{project}}/{{location}}/{{import_job}}/{{import_data_file_id}}`
/// * `{{location}}/{{import_job}}/{{import_data_file_id}}`
///
///
/// When using the `pulumi import` command, ImportDataFile can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:migrationcenter/importDataFile:ImportDataFile default projects/{{project}}/locations/{{location}}/importJobs/{{import_job}}/importDataFiles/{{import_data_file_id}}
/// $ pulumi import gcp:migrationcenter/importDataFile:ImportDataFile default {{project}}/{{location}}/{{import_job}}/{{import_data_file_id}}
/// $ pulumi import gcp:migrationcenter/importDataFile:ImportDataFile default {{location}}/{{import_job}}/{{import_data_file_id}}
/// ```
class ImportDataFile extends pulumi.CustomResource {
  /// The timestamp when the file was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// User-friendly display name. Maximum length is 63 characters.
  late final pulumi.Output<String?> displayName;
  /// Possible values:
  /// IMPORT_JOB_FORMAT_RVTOOLS_XLSX
  /// IMPORT_JOB_FORMAT_RVTOOLS_CSV
  /// IMPORT_JOB_FORMAT_EXPORTED_AWS_CSV
  /// IMPORT_JOB_FORMAT_EXPORTED_AZURE_CSV
  /// IMPORT_JOB_FORMAT_STRATOZONE_CSV
  /// IMPORT_JOB_FORMAT_DATABASE_ZIP
  late final pulumi.Output<String> format;
  /// The ID of the new data file.
  late final pulumi.Output<String> importDataFileId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> importJob;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// The name of the file.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The state of the import data file.
  /// Possible values:
  /// CREATING
  /// ACTIVE
  late final pulumi.Output<String> state;
  /// A resource that contains a URI to which a data file can be uploaded.
  /// Structure is documented below.
  late final pulumi.Output<List<ImportDataFileUploadFileInfo>> uploadFileInfos;

  /// Creates a new [ImportDataFile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImportDataFile]. {@macro pulumi_migrationcenter_import_data_file_import_data_file_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImportDataFile(
    String name, {
    ImportDataFileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/importDataFile:ImportDataFile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    format = registerOutput<String>('format');
    importDataFileId = registerOutput<String>('importDataFileId');
    importJob = registerOutput<String>('importJob');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    uploadFileInfos = registerOutput<List<ImportDataFileUploadFileInfo>>('uploadFileInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ImportDataFileUploadFileInfo>(guardedValue, (value) => ImportDataFileUploadFileInfo.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [ImportDataFile] resource's state with the given [name] and [id].
  static ImportDataFile get(
    String name,
    pulumi.Input<String> id, {
    ImportDataFileState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ImportDataFile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ImportDataFile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/importDataFile:ImportDataFile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    format = registerOutput<String>('format');
    importDataFileId = registerOutput<String>('importDataFileId');
    importJob = registerOutput<String>('importJob');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    uploadFileInfos = registerOutput<List<ImportDataFileUploadFileInfo>>('uploadFileInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ImportDataFileUploadFileInfo>(guardedValue, (value) => ImportDataFileUploadFileInfo.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [ImportDataFile] resource.
  ImportDataFile.reference(String urn)
    : super(
        'gcp:migrationcenter/importDataFile:ImportDataFile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    format = registerOutput<String>('format');
    importDataFileId = registerOutput<String>('importDataFileId');
    importJob = registerOutput<String>('importJob');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    uploadFileInfos = registerOutput<List<ImportDataFileUploadFileInfo>>('uploadFileInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ImportDataFileUploadFileInfo>(guardedValue, (value) => ImportDataFileUploadFileInfo.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
