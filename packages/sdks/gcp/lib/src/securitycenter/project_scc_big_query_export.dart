import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_scc_big_query_export_args.dart';
import 'project_scc_big_query_export_state.dart';

/// A Cloud Security Command Center (Cloud SCC) Big Query Export Config.
/// It represents exporting Security Command Center data, including assets, findings, and security marks
/// using gcloud scc bqexports
/// &gt; **Note:** In order to use Cloud SCC resources, your organization must be enrolled
/// in [SCC Standard/Premium](https://cloud.google.com/security-command-center/docs/quickstart-security-command-center).
/// Without doing so, you may run into errors during resource creation.
///
///
/// To get more information about ProjectSccBigQueryExport, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v1/projects.bigQueryExports)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/security-command-center/docs/how-to-analyze-findings-in-big-query)
///
/// ## Example Usage
///
/// ### Scc Project Big Query Export Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
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
/// const customBigQueryExportConfig = new gcp.securitycenter.ProjectSccBigQueryExport("custom_big_query_export_config", {
///     name: "my-export",
///     bigQueryExportId: "my-export",
///     project: "my-project-name",
///     dataset: _default.id,
///     description: "Cloud Security Command Center Findings Big Query Export Config",
///     filter: "state=\"ACTIVE\" AND NOT mute=\"MUTED\"",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
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
/// custom_big_query_export_config = gcp.securitycenter.ProjectSccBigQueryExport("custom_big_query_export_config",
///     name="my-export",
///     big_query_export_id="my-export",
///     project="my-project-name",
///     dataset=default.id,
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
///     var customBigQueryExportConfig = new Gcp.SecurityCenter.ProjectSccBigQueryExport("custom_big_query_export_config", new()
///     {
///         Name = "my-export",
///         BigQueryExportId = "my-export",
///         Project = "my-project-name",
///         Dataset = @default.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
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
/// 		_, err = securitycenter.NewProjectSccBigQueryExport(ctx, "custom_big_query_export_config", &securitycenter.ProjectSccBigQueryExportArgs{
/// 			Name:             "my-export",
/// 			BigQueryExportId: pulumi.String("my-export"),
/// 			Project:          pulumi.String("my-project-name"),
/// 			Dataset:          _default.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_securitycenter_projectsccbigqueryexport" "custom_big_query_export_config" {
///   name                = "my-export"
///   big_query_export_id = "my-export"
///   project             = "my-project-name"
///   dataset             = gcp_bigquery_dataset.default.id
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
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.securitycenter.ProjectSccBigQueryExport;
/// import com.pulumi.gcp.securitycenter.ProjectSccBigQueryExportArgs;
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
///         var customBigQueryExportConfig = new ProjectSccBigQueryExport("customBigQueryExportConfig", ProjectSccBigQueryExportArgs.builder()
///             .name("my-export")
///             .bigQueryExportId("my-export")
///             .project("my-project-name")
///             .dataset(default_.id())
///             .description("Cloud Security Command Center Findings Big Query Export Config")
///             .filter("state=\"ACTIVE\" AND NOT mute=\"MUTED\"")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
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
///     type: gcp:securitycenter:ProjectSccBigQueryExport
///     name: custom_big_query_export_config
///     properties:
///       name: my-export
///       bigQueryExportId: my-export
///       project: my-project-name
///       dataset: ${default.id}
///       description: Cloud Security Command Center Findings Big Query Export Config
///       filter: state="ACTIVE" AND NOT mute="MUTED"
/// ```
///
///
/// ## Import
///
/// ProjectSccBigQueryExport can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/bigQueryExports/{{big_query_export_id}}`
/// * `{{project}}/{{big_query_export_id}}`
/// * `{{big_query_export_id}}`
///
///
/// When using the `pulumi import` command, ProjectSccBigQueryExport can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/projectSccBigQueryExport:ProjectSccBigQueryExport default projects/{{project}}/bigQueryExports/{{big_query_export_id}}
/// $ pulumi import gcp:securitycenter/projectSccBigQueryExport:ProjectSccBigQueryExport default {{project}}/{{big_query_export_id}}
/// $ pulumi import gcp:securitycenter/projectSccBigQueryExport:ProjectSccBigQueryExport default {{big_query_export_id}}
/// ```
class ProjectSccBigQueryExport extends pulumi.CustomResource {
  /// This must be unique within the organization.
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
  /// * \&gt;, &lt;, &gt;=, &lt;= for integer values.
  /// * :, meaning substring matching, for strings.
  /// The supported value types are:
  /// * string literals in quotes.
  /// * integer literals without quotes.
  /// * boolean literals true and false without quotes.
  /// See
  /// [Filtering notifications](https://cloud.google.com/security-command-center/docs/how-to-api-filter-notifications)
  /// for information on how to write a filter.
  late final pulumi.Output<String?> filter;
  /// Email address of the user who last edited the BigQuery export.
  /// This field is set by the server and will be ignored if provided on export creation or update.
  late final pulumi.Output<String> mostRecentEditor;
  /// The resource name of this export, in the format
  /// `projects/{{project}}/bigQueryExports/{{big_query_export_id}}`.
  /// This field is provided in responses, and is ignored when provided in create requests.
  late final pulumi.Output<String> name;
  /// The service account that needs permission to create table and upload data to the BigQuery dataset.
  late final pulumi.Output<String> principal;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The most recent time at which the BigQuery export was updated. This field is set by the server and will be ignored if provided on export creation or update.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ProjectSccBigQueryExport].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectSccBigQueryExport]. {@macro pulumi_securitycenter_project_scc_big_query_export_project_scc_big_query_export_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectSccBigQueryExport(
    String name, {
    ProjectSccBigQueryExportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/projectSccBigQueryExport:ProjectSccBigQueryExport',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bigQueryExportId = registerOutput<String>('bigQueryExportId');
    createTime = registerOutput<String>('createTime');
    dataset = registerOutput<String?>('dataset');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    filter = registerOutput<String?>('filter');
    mostRecentEditor = registerOutput<String>('mostRecentEditor');
    this.name = registerOutput<String>('name');
    principal = registerOutput<String>('principal');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [ProjectSccBigQueryExport] resource's state with the given [name] and [id].
  static ProjectSccBigQueryExport get(
    String name,
    pulumi.Input<String> id, {
    ProjectSccBigQueryExportState? state,
  }) {
    return ProjectSccBigQueryExport._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProjectSccBigQueryExport._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/projectSccBigQueryExport:ProjectSccBigQueryExport',
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
    mostRecentEditor = registerOutput<String>('mostRecentEditor');
    this.name = registerOutput<String>('name');
    principal = registerOutput<String>('principal');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }
}
