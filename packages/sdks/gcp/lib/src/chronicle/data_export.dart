import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_export_args.dart';
import 'data_export_data_export_status.dart';
import 'data_export_ingestion_label.dart';
import 'data_export_state.dart';

/// DataExport resource represents a request to export data from Chronicle to a GCS bucket.
///
///
/// To get more information about DataExport, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1beta/projects.locations.instances.dataExports)
/// * How-to Guides
/// * [Data Export Overview](https://cloud.google.com/chronicle/docs/secops/data-export-overview)
///
/// ## Example Usage
///
/// ### Chronicle Data Export Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({
///     projectId: "my-project-name",
/// });
/// const testBucket = new gcp.storage.Bucket("test_bucket", {
///     name: "chronicle-test-bucket-my-project-name-_56730",
///     project: "my-project-name",
///     location: "us",
///     forceDestroy: true,
/// });
/// const example = new gcp.chronicle.DataExport("example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     gcsBucket: pulumi.all([project, testBucket.name]).apply(([project, name]) => `projects/${project.number}/buckets/${name}`),
///     startTime: "2025-01-01T00:00:00Z",
///     endTime: "2025-01-01T12:00:00Z",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project(project_id="my-project-name")
/// test_bucket = gcp.storage.Bucket("test_bucket",
///     name="chronicle-test-bucket-my-project-name-_56730",
///     project="my-project-name",
///     location="us",
///     force_destroy=True)
/// example = gcp.chronicle.DataExport("example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     gcs_bucket=test_bucket.name.apply(lambda name: f"projects/{project.number}/buckets/{name}"),
///     start_time="2025-01-01T00:00:00Z",
///     end_time="2025-01-01T12:00:00Z")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke(new()
///     {
///         ProjectId = "my-project-name",
///     });
///
///     var testBucket = new Gcp.Storage.Bucket("test_bucket", new()
///     {
///         Name = "chronicle-test-bucket-my-project-name-_56730",
///         Project = "my-project-name",
///         Location = "us",
///         ForceDestroy = true,
///     });
///
///     var example = new Gcp.Chronicle.DataExport("example", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         GcsBucket = Output.Tuple(project, testBucket.Name).Apply(values =>
///         {
///             var project = values.Item1;
///             var name = values.Item2;
///             return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/buckets/{name}";
///         }),
///         StartTime = "2025-01-01T00:00:00Z",
///         EndTime = "2025-01-01T12:00:00Z",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{
/// 			ProjectId: pulumi.StringRef("my-project-name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testBucket, err := storage.NewBucket(ctx, "test_bucket", &storage.BucketArgs{
/// 			Name:         pulumi.String("chronicle-test-bucket-my-project-name-_56730"),
/// 			Project:      pulumi.String("my-project-name"),
/// 			Location:     pulumi.String("us"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = chronicle.NewDataExport(ctx, "example", &chronicle.DataExportArgs{
/// 			Location: pulumi.String("us"),
/// 			Instance: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			GcsBucket: testBucket.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/buckets/%v", project.Number, name), nil
/// 			}).(pulumi.StringOutput),
/// 			StartTime: pulumi.String("2025-01-01T00:00:00Z"),
/// 			EndTime:   pulumi.String("2025-01-01T12:00:00Z"),
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
/// data "gcp_organizations_getproject" "project" {
///   project_id = "my-project-name"
/// }
///
/// resource "gcp_storage_bucket" "test_bucket" {
///   name          = "chronicle-test-bucket-my-project-name-_56730"
///   project       = "my-project-name"
///   location      = "us"
///   force_destroy = true
/// }
/// resource "gcp_chronicle_dataexport" "example" {
///   location   = "us"
///   instance   = "00000000-0000-0000-0000-000000000000"
///   gcs_bucket ="projects/${data.gcp_organizations_getproject.project.number}/buckets/${gcp_storage_bucket.test_bucket.name}"
///   start_time = "2025-01-01T00:00:00Z"
///   end_time   = "2025-01-01T12:00:00Z"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.chronicle.DataExport;
/// import com.pulumi.gcp.chronicle.DataExportArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .projectId("my-project-name")
///             .build());
///
///         var testBucket = new Bucket("testBucket", BucketArgs.builder()
///             .name("chronicle-test-bucket-my-project-name-_56730")
///             .project("my-project-name")
///             .location("us")
///             .forceDestroy(true)
///             .build());
///
///         var example = new DataExport("example", DataExportArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .gcsBucket(testBucket.name().applyValue(_name -> String.format("projects/%s/buckets/%s", project.number(),_name)))
///             .startTime("2025-01-01T00:00:00Z")
///             .endTime("2025-01-01T12:00:00Z")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testBucket:
///     type: gcp:storage:Bucket
///     name: test_bucket
///     properties:
///       name: chronicle-test-bucket-my-project-name-_56730
///       project: my-project-name
///       location: us
///       forceDestroy: true
///   example:
///     type: gcp:chronicle:DataExport
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       gcsBucket: projects/${project.number}/buckets/${testBucket.name}
///       startTime: 2025-01-01T00:00:00Z
///       endTime: 2025-01-01T12:00:00Z
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments:
///         projectId: my-project-name
/// ```
///
/// ### Chronicle Data Export Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({
///     projectId: "my-project-name",
/// });
/// const testBucket = new gcp.storage.Bucket("test_bucket", {
///     name: "chronicle-test-bucket-my-project-name-_95154",
///     project: "my-project-name",
///     location: "us",
///     forceDestroy: true,
/// });
/// const example = new gcp.chronicle.DataExport("example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     gcsBucket: pulumi.all([project, testBucket.name]).apply(([project, name]) => `projects/${project.number}/buckets/${name}`),
///     startTime: "2025-01-01T00:00:00Z",
///     endTime: "2025-01-01T12:00:00Z",
///     includeLogTypes: ["projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT"],
///     ingestionLabels: [{
///         key: "key1",
///         value: "val1",
///     }],
///     namespaces: ["my-namespace"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project(project_id="my-project-name")
/// test_bucket = gcp.storage.Bucket("test_bucket",
///     name="chronicle-test-bucket-my-project-name-_95154",
///     project="my-project-name",
///     location="us",
///     force_destroy=True)
/// example = gcp.chronicle.DataExport("example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     gcs_bucket=test_bucket.name.apply(lambda name: f"projects/{project.number}/buckets/{name}"),
///     start_time="2025-01-01T00:00:00Z",
///     end_time="2025-01-01T12:00:00Z",
///     include_log_types=["projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT"],
///     ingestion_labels=[{
///         "key": "key1",
///         "value": "val1",
///     }],
///     namespaces=["my-namespace"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke(new()
///     {
///         ProjectId = "my-project-name",
///     });
///
///     var testBucket = new Gcp.Storage.Bucket("test_bucket", new()
///     {
///         Name = "chronicle-test-bucket-my-project-name-_95154",
///         Project = "my-project-name",
///         Location = "us",
///         ForceDestroy = true,
///     });
///
///     var example = new Gcp.Chronicle.DataExport("example", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         GcsBucket = Output.Tuple(project, testBucket.Name).Apply(values =>
///         {
///             var project = values.Item1;
///             var name = values.Item2;
///             return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/buckets/{name}";
///         }),
///         StartTime = "2025-01-01T00:00:00Z",
///         EndTime = "2025-01-01T12:00:00Z",
///         IncludeLogTypes = new[]
///         {
///             "projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT",
///         },
///         IngestionLabels = new[]
///         {
///             new Gcp.Chronicle.Inputs.DataExportIngestionLabelArgs
///             {
///                 Key = "key1",
///                 Value = "val1",
///             },
///         },
///         Namespaces = new[]
///         {
///             "my-namespace",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{
/// 			ProjectId: pulumi.StringRef("my-project-name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testBucket, err := storage.NewBucket(ctx, "test_bucket", &storage.BucketArgs{
/// 			Name:         pulumi.String("chronicle-test-bucket-my-project-name-_95154"),
/// 			Project:      pulumi.String("my-project-name"),
/// 			Location:     pulumi.String("us"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = chronicle.NewDataExport(ctx, "example", &chronicle.DataExportArgs{
/// 			Location: pulumi.String("us"),
/// 			Instance: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			GcsBucket: testBucket.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/buckets/%v", project.Number, name), nil
/// 			}).(pulumi.StringOutput),
/// 			StartTime: pulumi.String("2025-01-01T00:00:00Z"),
/// 			EndTime:   pulumi.String("2025-01-01T12:00:00Z"),
/// 			IncludeLogTypes: pulumi.StringArray{
/// 				pulumi.String("projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT"),
/// 			},
/// 			IngestionLabels: chronicle.DataExportIngestionLabelArray{
/// 				&chronicle.DataExportIngestionLabelArgs{
/// 					Key:   pulumi.String("key1"),
/// 					Value: pulumi.String("val1"),
/// 				},
/// 			},
/// 			Namespaces: pulumi.StringArray{
/// 				pulumi.String("my-namespace"),
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
/// data "gcp_organizations_getproject" "project" {
///   project_id = "my-project-name"
/// }
///
/// resource "gcp_storage_bucket" "test_bucket" {
///   name          = "chronicle-test-bucket-my-project-name-_95154"
///   project       = "my-project-name"
///   location      = "us"
///   force_destroy = true
/// }
/// resource "gcp_chronicle_dataexport" "example" {
///   location          = "us"
///   instance          = "00000000-0000-0000-0000-000000000000"
///   gcs_bucket        ="projects/${data.gcp_organizations_getproject.project.number}/buckets/${gcp_storage_bucket.test_bucket.name}"
///   start_time        = "2025-01-01T00:00:00Z"
///   end_time          = "2025-01-01T12:00:00Z"
///   include_log_types = ["projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT"]
///   ingestion_labels {
///     key   = "key1"
///     value = "val1"
///   }
///   namespaces = ["my-namespace"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.chronicle.DataExport;
/// import com.pulumi.gcp.chronicle.DataExportArgs;
/// import com.pulumi.gcp.chronicle.inputs.DataExportIngestionLabelArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .projectId("my-project-name")
///             .build());
///
///         var testBucket = new Bucket("testBucket", BucketArgs.builder()
///             .name("chronicle-test-bucket-my-project-name-_95154")
///             .project("my-project-name")
///             .location("us")
///             .forceDestroy(true)
///             .build());
///
///         var example = new DataExport("example", DataExportArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .gcsBucket(testBucket.name().applyValue(_name -> String.format("projects/%s/buckets/%s", project.number(),_name)))
///             .startTime("2025-01-01T00:00:00Z")
///             .endTime("2025-01-01T12:00:00Z")
///             .includeLogTypes("projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT")
///             .ingestionLabels(DataExportIngestionLabelArgs.builder()
///                 .key("key1")
///                 .value("val1")
///                 .build())
///             .namespaces("my-namespace")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testBucket:
///     type: gcp:storage:Bucket
///     name: test_bucket
///     properties:
///       name: chronicle-test-bucket-my-project-name-_95154
///       project: my-project-name
///       location: us
///       forceDestroy: true
///   example:
///     type: gcp:chronicle:DataExport
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       gcsBucket: projects/${project.number}/buckets/${testBucket.name}
///       startTime: 2025-01-01T00:00:00Z
///       endTime: 2025-01-01T12:00:00Z
///       includeLogTypes:
///         - projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT
///       ingestionLabels:
///         - key: key1
///           value: val1
///       namespaces:
///         - my-namespace
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments:
///         projectId: my-project-name
/// ```
///
///
/// ## Import
///
/// DataExport can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/dataExports/{{data_export_id}}`
/// * `{{project}}/{{location}}/{{instance}}/{{data_export_id}}`
/// * `{{location}}/{{instance}}/{{data_export_id}}`
///
///
/// When using the `pulumi import` command, DataExport can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/dataExport:DataExport default projects/{{project}}/locations/{{location}}/instances/{{instance}}/dataExports/{{data_export_id}}
/// $ pulumi import gcp:chronicle/dataExport:DataExport default {{project}}/{{location}}/{{instance}}/{{data_export_id}}
/// $ pulumi import gcp:chronicle/dataExport:DataExport default {{location}}/{{instance}}/{{data_export_id}}
/// ```
class DataExport extends pulumi.CustomResource {
  /// Timestamp indicating when the DataExport resource was created.
  late final pulumi.Output<String> createTime;
  /// The unique identifier for the data export.
  late final pulumi.Output<String> dataExportId;
  /// Status of the current export.
  /// Structure is documented below.
  late final pulumi.Output<List<DataExportDataExportStatus>> dataExportStatuses;
  /// Last, exclusive time from the range.
  late final pulumi.Output<String> endTime;
  /// The estimated export volume in bytes.
  late final pulumi.Output<int> estimatedVolume;
  /// Actual volume of data exported.
  late final pulumi.Output<int> exportedVolume;
  /// Link to the destination Cloud Storage bucket.
  late final pulumi.Output<String> gcsBucket;
  /// The specific log types to include in the Data Export request.
  late final pulumi.Output<List<String>> includeLogTypes;
  /// The ingestion labels used to filter the export.
  /// Structure is documented below.
  late final pulumi.Output<List<DataExportIngestionLabel>?> ingestionLabels;
  /// The unique identifier for the Chronicle instance.
  late final pulumi.Output<String> instance;
  /// The location of the resource.
  late final pulumi.Output<String> location;
  /// The resource name of the data export.
  late final pulumi.Output<String> name;
  /// The namespaces used to filter the export.
  late final pulumi.Output<List<String>?> namespaces;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Start, inclusive time from the range.
  late final pulumi.Output<String> startTime;
  /// Timestamp indicating the last time the DataExport resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DataExport].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataExport]. {@macro pulumi_chronicle_data_export_data_export_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataExport(
    String name, {
    DataExportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/dataExport:DataExport',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    dataExportId = registerOutput<String>('dataExportId');
    dataExportStatuses = registerOutput<List<DataExportDataExportStatus>>('dataExportStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataExportDataExportStatus>(guardedValue, (value) => DataExportDataExportStatus.fromMap((value as Map).cast<String, dynamic>())); });
    endTime = registerOutput<String>('endTime');
    estimatedVolume = registerOutput<int>('estimatedVolume');
    exportedVolume = registerOutput<int>('exportedVolume');
    gcsBucket = registerOutput<String>('gcsBucket');
    includeLogTypes = registerOutput<List<String>>('includeLogTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ingestionLabels = registerOutput<List<DataExportIngestionLabel>?>('ingestionLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataExportIngestionLabel>(guardedValue, (value) => DataExportIngestionLabel.fromMap((value as Map).cast<String, dynamic>())); });
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    namespaces = registerOutput<List<String>?>('namespaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    startTime = registerOutput<String>('startTime');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [DataExport] resource's state with the given [name] and [id].
  static DataExport get(
    String name,
    pulumi.Input<String> id, {
    DataExportState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DataExport._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DataExport._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/dataExport:DataExport',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dataExportId = registerOutput<String>('dataExportId');
    dataExportStatuses = registerOutput<List<DataExportDataExportStatus>>('dataExportStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataExportDataExportStatus>(guardedValue, (value) => DataExportDataExportStatus.fromMap((value as Map).cast<String, dynamic>())); });
    endTime = registerOutput<String>('endTime');
    estimatedVolume = registerOutput<int>('estimatedVolume');
    exportedVolume = registerOutput<int>('exportedVolume');
    gcsBucket = registerOutput<String>('gcsBucket');
    includeLogTypes = registerOutput<List<String>>('includeLogTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ingestionLabels = registerOutput<List<DataExportIngestionLabel>?>('ingestionLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataExportIngestionLabel>(guardedValue, (value) => DataExportIngestionLabel.fromMap((value as Map).cast<String, dynamic>())); });
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    namespaces = registerOutput<List<String>?>('namespaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    startTime = registerOutput<String>('startTime');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [DataExport] resource.
  DataExport.reference(String urn)
    : super(
        'gcp:chronicle/dataExport:DataExport',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    dataExportId = registerOutput<String>('dataExportId');
    dataExportStatuses = registerOutput<List<DataExportDataExportStatus>>('dataExportStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataExportDataExportStatus>(guardedValue, (value) => DataExportDataExportStatus.fromMap((value as Map).cast<String, dynamic>())); });
    endTime = registerOutput<String>('endTime');
    estimatedVolume = registerOutput<int>('estimatedVolume');
    exportedVolume = registerOutput<int>('exportedVolume');
    gcsBucket = registerOutput<String>('gcsBucket');
    includeLogTypes = registerOutput<List<String>>('includeLogTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ingestionLabels = registerOutput<List<DataExportIngestionLabel>?>('ingestionLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataExportIngestionLabel>(guardedValue, (value) => DataExportIngestionLabel.fromMap((value as Map).cast<String, dynamic>())); });
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    namespaces = registerOutput<List<String>?>('namespaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    startTime = registerOutput<String>('startTime');
    updateTime = registerOutput<String>('updateTime');
  }
}
