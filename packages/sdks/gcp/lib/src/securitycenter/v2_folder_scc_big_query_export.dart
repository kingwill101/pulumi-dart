import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_folder_scc_big_query_export_args.dart';
import 'v2_folder_scc_big_query_export_state.dart';

/// A Cloud Security Command Center (Cloud SCC) Big Query Export Config.
/// It represents exporting Security Command Center data, including assets, findings, and security marks
/// using gcloud scc bqexports
/// &gt; **Note:** In order to use Cloud SCC resources, your organization must be enrolled
/// in [SCC Standard/Premium](https://cloud.google.com/security-command-center/docs/quickstart-security-command-center).
/// Without doing so, you may run into errors during resource creation.
///
///
/// To get more information about FolderSccBigQueryExport, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v2/folders.locations.bigQueryExports)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/security-command-center/docs/how-to-analyze-findings-in-big-query)
///
/// ## Example Usage
///
/// ### Scc V2 Folder Big Query Export Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.organizations.Folder("folder", {
///     parent: "organizations/123456789",
///     displayName: "folder-name",
///     deletionProtection: false,
/// });
/// const _default = new gcp.bigquery.Dataset("default", {
///     datasetId: "my_dataset_id",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "US",
///     defaultTableExpirationMs: 3600000,
///     defaultPartitionExpirationMs: null,
///     labels: {
///         env: "default",
///     },
/// });
/// const customBigQueryExportConfig = new gcp.securitycenter.V2FolderSccBigQueryExport("custom_big_query_export_config", {
///     bigQueryExportId: "my-export",
///     folder: folder.folderId,
///     dataset: _default.id,
///     location: "global",
///     description: "Cloud Security Command Center Findings Big Query Export Config",
///     filter: "state=\"ACTIVE\" AND NOT mute=\"MUTED\"",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.organizations.Folder("folder",
///     parent="organizations/123456789",
///     display_name="folder-name",
///     deletion_protection=False)
/// default = gcp.bigquery.Dataset("default",
///     dataset_id="my_dataset_id",
///     friendly_name="test",
///     description="This is a test description",
///     location="US",
///     default_table_expiration_ms=3600000,
///     default_partition_expiration_ms=None,
///     labels={
///         "env": "default",
///     })
/// custom_big_query_export_config = gcp.securitycenter.V2FolderSccBigQueryExport("custom_big_query_export_config",
///     big_query_export_id="my-export",
///     folder=folder.folder_id,
///     dataset=default.id,
///     location="global",
///     description="Cloud Security Command Center Findings Big Query Export Config",
///     filter="state=\"ACTIVE\" AND NOT mute=\"MUTED\"")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var folder = new Gcp.Organizations.Folder("folder", new()
///     {
///         Parent = "organizations/123456789",
///         DisplayName = "folder-name",
///         DeletionProtection = false,
///     });
///
///     var @default = new Gcp.BigQuery.Dataset("default", new()
///     {
///         DatasetId = "my_dataset_id",
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "US",
///         DefaultTableExpirationMs = 3600000,
///         DefaultPartitionExpirationMs = null,
///         Labels =
///         {
///             { "env", "default" },
///         },
///     });
///
///     var customBigQueryExportConfig = new Gcp.SecurityCenter.V2FolderSccBigQueryExport("custom_big_query_export_config", new()
///     {
///         BigQueryExportId = "my-export",
///         Folder = folder.FolderId,
///         Dataset = @default.Id,
///         Location = "global",
///         Description = "Cloud Security Command Center Findings Big Query Export Config",
///         Filter = "state=\"ACTIVE\" AND NOT mute=\"MUTED\"",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		folder, err := organizations.NewFolder(ctx, "folder", &organizations.FolderArgs{
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DisplayName:        pulumi.String("folder-name"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := bigquery.NewDataset(ctx, "default", &bigquery.DatasetArgs{
/// 			DatasetId:                    pulumi.String("my_dataset_id"),
/// 			FriendlyName:                 pulumi.String("test"),
/// 			Description:                  pulumi.String("This is a test description"),
/// 			Location:                     pulumi.String("US"),
/// 			DefaultTableExpirationMs:     pulumi.Int(3600000),
/// 			DefaultPartitionExpirationMs: nil,
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("default"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securitycenter.NewV2FolderSccBigQueryExport(ctx, "custom_big_query_export_config", &securitycenter.V2FolderSccBigQueryExportArgs{
/// 			BigQueryExportId: pulumi.String("my-export"),
/// 			Folder:           folder.FolderId,
/// 			Dataset:          _default.ID().ToIDOutput().ToStringOutput(),
/// 			Location:         pulumi.String("global"),
/// 			Description:      pulumi.String("Cloud Security Command Center Findings Big Query Export Config"),
/// 			Filter:           pulumi.String("state=\"ACTIVE\" AND NOT mute=\"MUTED\""),
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
/// resource "gcp_organizations_folder" "folder" {
///   parent              = "organizations/123456789"
///   display_name        = "folder-name"
///   deletion_protection = false
/// }
/// resource "gcp_bigquery_dataset" "default" {
///   dataset_id                      = "my_dataset_id"
///   friendly_name                   = "test"
///   description                     = "This is a test description"
///   location                        = "US"
///   default_table_expiration_ms     = 3600000
///   default_partition_expiration_ms = null
///   labels = {
///     "env" = "default"
///   }
/// }
/// resource "gcp_securitycenter_v2foldersccbigqueryexport" "custom_big_query_export_config" {
///   big_query_export_id = "my-export"
///   folder              = gcp_organizations_folder.folder.folder_id
///   dataset             = gcp_bigquery_dataset.default.id
///   location            = "global"
///   description         = "Cloud Security Command Center Findings Big Query Export Config"
///   filter              = "state=\"ACTIVE\" AND NOT mute=\"MUTED\""
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.securitycenter.V2FolderSccBigQueryExport;
/// import com.pulumi.gcp.securitycenter.V2FolderSccBigQueryExportArgs;
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
///         var folder = new Folder("folder", FolderArgs.builder()
///             .parent("organizations/123456789")
///             .displayName("folder-name")
///             .deletionProtection(false)
///             .build());
///
///         var default_ = new Dataset("default", DatasetArgs.builder()
///             .datasetId("my_dataset_id")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("US")
///             .defaultTableExpirationMs(3600000)
///             .defaultPartitionExpirationMs(null)
///             .labels(Map.of("env", "default"))
///             .build());
///
///         var customBigQueryExportConfig = new V2FolderSccBigQueryExport("customBigQueryExportConfig", V2FolderSccBigQueryExportArgs.builder()
///             .bigQueryExportId("my-export")
///             .folder(folder.folderId())
///             .dataset(default_.id())
///             .location("global")
///             .description("Cloud Security Command Center Findings Big Query Export Config")
///             .filter("state=\"ACTIVE\" AND NOT mute=\"MUTED\"")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:organizations:Folder
///     properties:
///       parent: organizations/123456789
///       displayName: folder-name
///       deletionProtection: false
///   default:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: my_dataset_id
///       friendlyName: test
///       description: This is a test description
///       location: US
///       defaultTableExpirationMs: 3.6e+06
///       defaultPartitionExpirationMs: null
///       labels:
///         env: default
///   customBigQueryExportConfig:
///     type: gcp:securitycenter:V2FolderSccBigQueryExport
///     name: custom_big_query_export_config
///     properties:
///       bigQueryExportId: my-export
///       folder: ${folder.folderId}
///       dataset: ${default.id}
///       location: global
///       description: Cloud Security Command Center Findings Big Query Export Config
///       filter: state="ACTIVE" AND NOT mute="MUTED"
/// ```
///
///
/// ## Import
///
/// FolderSccBigQueryExport can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/locations/{{location}}/bigQueryExports/{{big_query_export_id}}`
/// * `{{folder}}/{{location}}/{{big_query_export_id}}`
///
///
/// When using the `pulumi import` command, FolderSccBigQueryExport can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2FolderSccBigQueryExport:V2FolderSccBigQueryExport default folders/{{folder}}/locations/{{location}}/bigQueryExports/{{big_query_export_id}}
/// $ pulumi import gcp:securitycenter/v2FolderSccBigQueryExport:V2FolderSccBigQueryExport default {{folder}}/{{location}}/{{big_query_export_id}}
/// ```
class V2FolderSccBigQueryExport extends pulumi.CustomResource {
  /// This must be unique within the organization.  It must consist of only lowercase letters,
  /// numbers, and hyphens, must start with a letter, must end with either a letter or a number,
  /// and must be 63 characters or less.
  late final pulumi.Output<String> bigQueryExportId;
  /// The time at which the BigQuery export was created. This field is set by the server and will be ignored if provided on export on creation.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
  /// The dataset to write findings' updates to.
  /// Its format is "projects/[projectId]/datasets/[bigqueryDatasetId]".
  /// BigQuery Dataset unique ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_).
  late final pulumi.Output<String?> dataset;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The description of the notification config (max of 1024 characters).
  late final pulumi.Output<String?> description;
  /// Expression that defines the filter to apply across create/update
  /// events of findings. The
  /// expression is a list of zero or more restrictions combined via
  /// logical operators AND and OR. Parentheses are supported, and OR
  /// has higher precedence than AND.
  /// Restrictions have the form &lt;field&gt; &lt;operator&gt; &lt;value&gt; and may have
  /// a - character in front of them to indicate negation. The fields
  /// map to those defined in the corresponding resource.
  /// The supported operators are:
  /// * = for all value types.
  /// * &gt;, &lt;, &gt;=, &lt;= for integer values.
  /// * :, meaning substring matching, for strings.
  /// The supported value types are:
  /// * string literals in quotes.
  /// * integer literals without quotes.
  /// * boolean literals true and false without quotes.
  /// See
  /// [Filtering notifications](https://cloud.google.com/security-command-center/docs/how-to-api-filter-notifications)
  /// for information on how to write a filter.
  late final pulumi.Output<String?> filter;
  /// The folder where Cloud Security Command Center Big Query Export
  /// Config lives in.
  late final pulumi.Output<String> folder;
  /// The BigQuery export configuration is stored in this location. If not provided, Use global as default.
  late final pulumi.Output<String?> location;
  /// Email address of the user who last edited the BigQuery export.
  /// This field is set by the server and will be ignored if provided on export creation or update.
  late final pulumi.Output<String> mostRecentEditor;
  /// The resource name of this export, in the format
  /// `folders/{{folder}}/locations/{{location}}/bigQueryExports/{{big_query_export_id}}`.
  /// This field is provided in responses, and is ignored when provided in create requests.
  late final pulumi.Output<String> name;
  /// The service account that needs permission to create table and upload data to the BigQuery dataset.
  late final pulumi.Output<String> principal;
  /// The most recent time at which the BigQuery export was updated. This field is set by the server and will be ignored if provided on export creation or update.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [V2FolderSccBigQueryExport].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2FolderSccBigQueryExport]. {@macro pulumi_securitycenter_v2_folder_scc_big_query_export_v2_folder_scc_big_query_export_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2FolderSccBigQueryExport(
    String name, {
    V2FolderSccBigQueryExportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2FolderSccBigQueryExport:V2FolderSccBigQueryExport',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    bigQueryExportId = registerOutput<String>('bigQueryExportId');
    createTime = registerOutput<String>('createTime');
    dataset = registerOutput<String?>('dataset');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    filter = registerOutput<String?>('filter');
    folder = registerOutput<String>('folder');
    location = registerOutput<String?>('location');
    mostRecentEditor = registerOutput<String>('mostRecentEditor');
    this.name = registerOutput<String>('name');
    principal = registerOutput<String>('principal');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [V2FolderSccBigQueryExport] resource's state with the given [name] and [id].
  static V2FolderSccBigQueryExport get(
    String name,
    pulumi.Input<String> id, {
    V2FolderSccBigQueryExportState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return V2FolderSccBigQueryExport._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  V2FolderSccBigQueryExport._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2FolderSccBigQueryExport:V2FolderSccBigQueryExport',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bigQueryExportId = registerOutput<String>('bigQueryExportId');
    createTime = registerOutput<String>('createTime');
    dataset = registerOutput<String?>('dataset');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    filter = registerOutput<String?>('filter');
    folder = registerOutput<String>('folder');
    location = registerOutput<String?>('location');
    mostRecentEditor = registerOutput<String>('mostRecentEditor');
    this.name = registerOutput<String>('name');
    principal = registerOutput<String>('principal');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [V2FolderSccBigQueryExport] resource.
  V2FolderSccBigQueryExport.reference(String urn)
    : super(
        'gcp:securitycenter/v2FolderSccBigQueryExport:V2FolderSccBigQueryExport',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bigQueryExportId = registerOutput<String>('bigQueryExportId');
    createTime = registerOutput<String>('createTime');
    dataset = registerOutput<String?>('dataset');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    filter = registerOutput<String?>('filter');
    folder = registerOutput<String>('folder');
    location = registerOutput<String?>('location');
    mostRecentEditor = registerOutput<String>('mostRecentEditor');
    this.name = registerOutput<String>('name');
    principal = registerOutput<String>('principal');
    updateTime = registerOutput<String>('updateTime');
  }
}
