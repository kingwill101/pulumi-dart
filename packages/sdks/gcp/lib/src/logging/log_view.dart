import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_view_args.dart';
import 'log_view_state.dart';

/// Describes a view over log entries in a bucket.
///
///
/// To get more information about LogView, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/projects.locations.buckets.views)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/logging/docs/apis)
///
/// ## Example Usage
///
/// ### Logging Log View Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const loggingLogView = new gcp.logging.ProjectBucketConfig("logging_log_view", {
///     project: "my-project-name",
///     location: "global",
///     retentionDays: 30,
///     bucketId: "_Default",
/// });
/// const loggingLogViewLogView = new gcp.logging.LogView("logging_log_view", {
///     name: "my-view",
///     bucket: loggingLogView.id,
///     description: "A logging view configured with Terraform",
///     filter: "SOURCE(\"projects/myproject\") AND resource.type = \"gce_instance\" AND LOG_ID(\"stdout\")",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// logging_log_view = gcp.logging.ProjectBucketConfig("logging_log_view",
///     project="my-project-name",
///     location="global",
///     retention_days=30,
///     bucket_id="_Default")
/// logging_log_view_log_view = gcp.logging.LogView("logging_log_view",
///     name="my-view",
///     bucket=logging_log_view.id,
///     description="A logging view configured with Terraform",
///     filter="SOURCE(\"projects/myproject\") AND resource.type = \"gce_instance\" AND LOG_ID(\"stdout\")")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loggingLogView = new Gcp.Logging.ProjectBucketConfig("logging_log_view", new()
///     {
///         Project = "my-project-name",
///         Location = "global",
///         RetentionDays = 30,
///         BucketId = "_Default",
///     });
///
///     var loggingLogViewLogView = new Gcp.Logging.LogView("logging_log_view", new()
///     {
///         Name = "my-view",
///         Bucket = loggingLogView.Id,
///         Description = "A logging view configured with Terraform",
///         Filter = "SOURCE(\"projects/myproject\") AND resource.type = \"gce_instance\" AND LOG_ID(\"stdout\")",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		loggingLogView, err := logging.NewProjectBucketConfig(ctx, "logging_log_view", &logging.ProjectBucketConfigArgs{
/// 			Project:       pulumi.String("my-project-name"),
/// 			Location:      pulumi.String("global"),
/// 			RetentionDays: pulumi.Int(30),
/// 			BucketId:      pulumi.String("_Default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logging.NewLogView(ctx, "logging_log_view", &logging.LogViewArgs{
/// 			Name:        pulumi.String("my-view"),
/// 			Bucket:      loggingLogView.ID().ToIDOutput().ToStringOutput(),
/// 			Description: pulumi.String("A logging view configured with Terraform"),
/// 			Filter:      pulumi.String("SOURCE(\"projects/myproject\") AND resource.type = \"gce_instance\" AND LOG_ID(\"stdout\")"),
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
/// resource "gcp_logging_projectbucketconfig" "logging_log_view" {
///   project        = "my-project-name"
///   location       = "global"
///   retention_days = 30
///   bucket_id      = "_Default"
/// }
/// resource "gcp_logging_logview" "logging_log_view" {
///   name        = "my-view"
///   bucket      = gcp_logging_projectbucketconfig.logging_log_view.id
///   description = "A logging view configured with Terraform"
///   filter      = "SOURCE(\"projects/myproject\") AND resource.type = \"gce_instance\" AND LOG_ID(\"stdout\")"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.ProjectBucketConfig;
/// import com.pulumi.gcp.logging.ProjectBucketConfigArgs;
/// import com.pulumi.gcp.logging.LogView;
/// import com.pulumi.gcp.logging.LogViewArgs;
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
///         var loggingLogView = new ProjectBucketConfig("loggingLogView", ProjectBucketConfigArgs.builder()
///             .project("my-project-name")
///             .location("global")
///             .retentionDays(30)
///             .bucketId("_Default")
///             .build());
///
///         var loggingLogViewLogView = new LogView("loggingLogViewLogView", LogViewArgs.builder()
///             .name("my-view")
///             .bucket(loggingLogView.id())
///             .description("A logging view configured with Terraform")
///             .filter("SOURCE(\"projects/myproject\") AND resource.type = \"gce_instance\" AND LOG_ID(\"stdout\")")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   loggingLogView:
///     type: gcp:logging:ProjectBucketConfig
///     name: logging_log_view
///     properties:
///       project: my-project-name
///       location: global
///       retentionDays: 30
///       bucketId: _Default
///   loggingLogViewLogView:
///     type: gcp:logging:LogView
///     name: logging_log_view
///     properties:
///       name: my-view
///       bucket: ${loggingLogView.id}
///       description: A logging view configured with Terraform
///       filter: SOURCE("projects/myproject") AND resource.type = "gce_instance" AND LOG_ID("stdout")
/// ```
///
///
/// ## Import
///
/// LogView can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/buckets/{{bucket}}/views/{{name}}`
///
///
/// When using the `pulumi import` command, LogView can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/logView:LogView default {{parent}}/locations/{{location}}/buckets/{{bucket}}/views/{{name}}
/// ```
class LogView extends pulumi.CustomResource {
  /// The bucket of the resource
  late final pulumi.Output<String> bucket;
  /// Output only. The creation timestamp of the view.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Describes this view.
  late final pulumi.Output<String?> description;
  /// Filter that restricts which log entries in a bucket are visible in this view. Filters are restricted to be a logical AND of ==/!= of any of the following: - originating project/folder/organization/billing account. - resource type - log id For example: SOURCE("projects/myproject") AND resource.type = "gceInstance" AND LOG_ID("stdout")
  late final pulumi.Output<String?> filter;
  /// The location of the resource. The supported locations are: global, us-central1, us-east1, us-west1, asia-east1, europe-west1.
  late final pulumi.Output<String> location;
  /// The resource name of the view. For example: \`projects/my-project/locations/global/buckets/my-bucket/views/my-view\`
  late final pulumi.Output<String> name;
  /// The parent of the resource.
  late final pulumi.Output<String> parent;
  /// Output only. The last update timestamp of the view.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [LogView].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogView]. {@macro pulumi_logging_log_view_log_view_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogView(
    String name, {
    LogViewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/logView:LogView',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    bucket = registerOutput<String>('bucket');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    filter = registerOutput<String?>('filter');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [LogView] resource's state with the given [name] and [id].
  static LogView get(
    String name,
    pulumi.Input<String> id, {
    LogViewState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LogView._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LogView._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/logView:LogView',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    filter = registerOutput<String?>('filter');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [LogView] resource.
  LogView.reference(String urn)
    : super(
        'gcp:logging/logView:LogView',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucket = registerOutput<String>('bucket');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    filter = registerOutput<String?>('filter');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    updateTime = registerOutput<String>('updateTime');
  }
}
