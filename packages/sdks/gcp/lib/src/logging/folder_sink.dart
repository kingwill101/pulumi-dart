import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_sink_args.dart';
import 'folder_sink_bigquery_options.dart';
import 'folder_sink_exclusion.dart';
import 'folder_sink_state.dart';

/// Manages a folder-level logging sink. For more information see:
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/folders.sinks)
/// * How-to Guides
/// * [Exporting Logs](https://cloud.google.com/logging/docs/export)
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const log_bucket = new gcp.storage.Bucket("log-bucket", {
///     name: "folder-logging-bucket",
///     location: "US",
/// });
/// const my_folder = new gcp.organizations.Folder("my-folder", {
///     displayName: "My folder",
///     parent: "organizations/123456",
/// });
/// const my_sink = new gcp.logging.FolderSink("my-sink", {
///     name: "my-sink",
///     description: "some explanation on what this is",
///     folder: my_folder.name,
///     destination: pulumi.interpolate`storage.googleapis.com/${log_bucket.name}`,
///     filter: "resource.type = gce_instance AND severity >= WARNING",
/// });
/// const log_writer = new gcp.projects.IAMBinding("log-writer", {
///     project: "your-project-id",
///     role: "roles/storage.objectCreator",
///     members: [my_sink.writerIdentity],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// log_bucket = gcp.storage.Bucket("log-bucket",
///     name="folder-logging-bucket",
///     location="US")
/// my_folder = gcp.organizations.Folder("my-folder",
///     display_name="My folder",
///     parent="organizations/123456")
/// my_sink = gcp.logging.FolderSink("my-sink",
///     name="my-sink",
///     description="some explanation on what this is",
///     folder=my_folder.name,
///     destination=log_bucket.name.apply(lambda name: f"storage.googleapis.com/{name}"),
///     filter="resource.type = gce_instance AND severity >= WARNING")
/// log_writer = gcp.projects.IAMBinding("log-writer",
///     project="your-project-id",
///     role="roles/storage.objectCreator",
///     members=[my_sink.writer_identity])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var log_bucket = new Gcp.Storage.Bucket("log-bucket", new()
///     {
///         Name = "folder-logging-bucket",
///         Location = "US",
///     });
///
///     var my_folder = new Gcp.Organizations.Folder("my-folder", new()
///     {
///         DisplayName = "My folder",
///         Parent = "organizations/123456",
///     });
///
///     var my_sink = new Gcp.Logging.FolderSink("my-sink", new()
///     {
///         Name = "my-sink",
///         Description = "some explanation on what this is",
///         Folder = my_folder.Name,
///         Destination = log_bucket.Name.Apply(name => $"storage.googleapis.com/{name}"),
///         Filter = "resource.type = gce_instance AND severity >= WARNING",
///     });
///
///     var log_writer = new Gcp.Projects.IAMBinding("log-writer", new()
///     {
///         Project = "your-project-id",
///         Role = "roles/storage.objectCreator",
///         Members = new[]
///         {
///             my_sink.WriterIdentity,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		log_bucket, err := storage.NewBucket(ctx, "log-bucket", &storage.BucketArgs{
/// 			Name:     pulumi.String("folder-logging-bucket"),
/// 			Location: pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		my_folder, err := organizations.NewFolder(ctx, "my-folder", &organizations.FolderArgs{
/// 			DisplayName: pulumi.String("My folder"),
/// 			Parent:      pulumi.String("organizations/123456"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		my_sink, err := logging.NewFolderSink(ctx, "my-sink", &logging.FolderSinkArgs{
/// 			Name:        pulumi.String("my-sink"),
/// 			Description: pulumi.String("some explanation on what this is"),
/// 			Folder:      my_folder.Name,
/// 			Destination: log_bucket.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("storage.googleapis.com/%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 			Filter: pulumi.String("resource.type = gce_instance AND severity >= WARNING"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMBinding(ctx, "log-writer", &projects.IAMBindingArgs{
/// 			Project: pulumi.String("your-project-id"),
/// 			Role:    pulumi.String("roles/storage.objectCreator"),
/// 			Members: pulumi.StringArray{
/// 				my_sink.WriterIdentity,
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
/// resource "gcp_logging_foldersink" "my-sink" {
///   name        = "my-sink"
///   description = "some explanation on what this is"
///   folder      = gcp_organizations_folder.my-folder.name
///   destination ="storage.googleapis.com/${gcp_storage_bucket.log-bucket.name}"
///   filter      = "resource.type = gce_instance AND severity >= WARNING"
/// }
/// resource "gcp_storage_bucket" "log-bucket" {
///   name     = "folder-logging-bucket"
///   location = "US"
/// }
/// resource "gcp_projects_iambinding" "log-writer" {
///   project = "your-project-id"
///   role    = "roles/storage.objectCreator"
///   members = [gcp_logging_foldersink.my-sink.writer_identity]
/// }
/// resource "gcp_organizations_folder" "my-folder" {
///   display_name = "My folder"
///   parent       = "organizations/123456"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.logging.FolderSink;
/// import com.pulumi.gcp.logging.FolderSinkArgs;
/// import com.pulumi.gcp.projects.IAMBinding;
/// import com.pulumi.gcp.projects.IAMBindingArgs;
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
///         var log_bucket = new Bucket("log-bucket", BucketArgs.builder()
///             .name("folder-logging-bucket")
///             .location("US")
///             .build());
///
///         var my_folder = new Folder("my-folder", FolderArgs.builder()
///             .displayName("My folder")
///             .parent("organizations/123456")
///             .build());
///
///         var my_sink = new FolderSink("my-sink", FolderSinkArgs.builder()
///             .name("my-sink")
///             .description("some explanation on what this is")
///             .folder(my_folder.name())
///             .destination(log_bucket.name().applyValue(_name -> String.format("storage.googleapis.com/%s", _name)))
///             .filter("resource.type = gce_instance AND severity >= WARNING")
///             .build());
///
///         var log_writer = new IAMBinding("log-writer", IAMBindingArgs.builder()
///             .project("your-project-id")
///             .role("roles/storage.objectCreator")
///             .members(my_sink.writerIdentity())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-sink:
///     type: gcp:logging:FolderSink
///     properties:
///       name: my-sink
///       description: some explanation on what this is
///       folder: ${["my-folder"].name}
///       destination: storage.googleapis.com/${["log-bucket"].name}
///       filter: resource.type = gce_instance AND severity >= WARNING
///   log-bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: folder-logging-bucket
///       location: US
///   log-writer:
///     type: gcp:projects:IAMBinding
///     properties:
///       project: your-project-id
///       role: roles/storage.objectCreator
///       members:
///         - ${["my-sink"].writerIdentity}
///   my-folder:
///     type: gcp:organizations:Folder
///     properties:
///       displayName: My folder
///       parent: organizations/123456
/// ```
///
///
/// ## Import
///
/// Folder-level logging sinks can be imported using this format:
///
/// * `folders/{{folder_id}}/sinks/{{name}}`
///
///
/// When using the `pulumi import` command, folder-level logging sinks can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/folderSink:FolderSink default folders/{{folder_id}}/sinks/{{name}}
/// ```
class FolderSink extends pulumi.CustomResource {
  /// Options that affect sinks exporting data to BigQuery. Structure documented below.
  late final pulumi.Output<FolderSinkBigqueryOptions> bigqueryOptions;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A description of this sink. The maximum length of the description is 8000 characters.
  late final pulumi.Output<String?> description;
  /// The destination of the sink (or, in other words, where logs are written to). Can be a Cloud Storage bucket, a PubSub topic, a BigQuery dataset, a Cloud Logging bucket, or a Google Cloud project. Examples:
  ///
  /// - `storage.googleapis.com/[GCS_BUCKET]`
  /// - `bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]`
  /// - `pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]/locations/global/buckets/[BUCKET_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]`
  ///
  /// The writer associated with the sink must have access to write to the above resource.
  late final pulumi.Output<String> destination;
  /// If set to True, then this sink is disabled and it does not export any log entries.
  late final pulumi.Output<bool?> disabled;
  /// Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both `filter` and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  late final pulumi.Output<List<FolderSinkExclusion>?> exclusions;
  /// The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced_filters) for information on how to
  /// write a filter.
  late final pulumi.Output<String?> filter;
  /// The folder to be exported to the sink. Note that either `[FOLDER_ID]` or `folders/[FOLDER_ID]` is
  /// accepted.
  late final pulumi.Output<String> folder;
  /// Whether or not to include children folders in the sink export. If true, logs
  /// associated with child projects are also exported; otherwise only logs relating to the provided folder are included.
  late final pulumi.Output<bool?> includeChildren;
  /// Whether or not to intercept logs from child projects. If true, matching logs will not
  /// match with sinks in child resources, except _Required sinks. This sink will be visible to child resources when listing sinks.
  late final pulumi.Output<bool?> interceptChildren;
  /// The name of the logging sink.
  late final pulumi.Output<String> name;
  /// The identity associated with this sink. This identity must be granted write access to the
  /// configured `destination`.
  late final pulumi.Output<String> writerIdentity;

  /// Creates a new [FolderSink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FolderSink]. {@macro pulumi_logging_folder_sink_folder_sink_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FolderSink(
    String name, {
    FolderSinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/folderSink:FolderSink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    bigqueryOptions = registerOutput<FolderSinkBigqueryOptions>('bigqueryOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FolderSinkBigqueryOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    destination = registerOutput<String>('destination');
    disabled = registerOutput<bool?>('disabled');
    exclusions = registerOutput<List<FolderSinkExclusion>?>('exclusions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FolderSinkExclusion>(guardedValue, (value) => FolderSinkExclusion.fromMap((value as Map).cast<String, dynamic>())); });
    filter = registerOutput<String?>('filter');
    folder = registerOutput<String>('folder');
    includeChildren = registerOutput<bool?>('includeChildren');
    interceptChildren = registerOutput<bool?>('interceptChildren');
    this.name = registerOutput<String>('name');
    writerIdentity = registerOutput<String>('writerIdentity');
  }

  /// Gets an existing [FolderSink] resource's state with the given [name] and [id].
  static FolderSink get(
    String name,
    pulumi.Input<String> id, {
    FolderSinkState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FolderSink._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FolderSink._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/folderSink:FolderSink',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bigqueryOptions = registerOutput<FolderSinkBigqueryOptions>('bigqueryOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FolderSinkBigqueryOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    destination = registerOutput<String>('destination');
    disabled = registerOutput<bool?>('disabled');
    exclusions = registerOutput<List<FolderSinkExclusion>?>('exclusions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FolderSinkExclusion>(guardedValue, (value) => FolderSinkExclusion.fromMap((value as Map).cast<String, dynamic>())); });
    filter = registerOutput<String?>('filter');
    folder = registerOutput<String>('folder');
    includeChildren = registerOutput<bool?>('includeChildren');
    interceptChildren = registerOutput<bool?>('interceptChildren');
    this.name = registerOutput<String>('name');
    writerIdentity = registerOutput<String>('writerIdentity');
  }

  /// Creates a typed reference to an existing [FolderSink] resource.
  FolderSink.reference(String urn)
    : super(
        'gcp:logging/folderSink:FolderSink',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bigqueryOptions = registerOutput<FolderSinkBigqueryOptions>('bigqueryOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FolderSinkBigqueryOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    destination = registerOutput<String>('destination');
    disabled = registerOutput<bool?>('disabled');
    exclusions = registerOutput<List<FolderSinkExclusion>?>('exclusions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FolderSinkExclusion>(guardedValue, (value) => FolderSinkExclusion.fromMap((value as Map).cast<String, dynamic>())); });
    filter = registerOutput<String?>('filter');
    folder = registerOutput<String>('folder');
    includeChildren = registerOutput<bool?>('includeChildren');
    interceptChildren = registerOutput<bool?>('interceptChildren');
    this.name = registerOutput<String>('name');
    writerIdentity = registerOutput<String>('writerIdentity');
  }
}
