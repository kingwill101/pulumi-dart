import 'package:pulumi/pulumi.dart' as pulumi;
import 'usage_export_bucket_args.dart';
import 'usage_export_bucket_state.dart';

/// Sets up a usage export bucket for a particular project.  A usage export bucket
/// is a pre-configured GCS bucket which is set up to receive daily and monthly
/// reports of the GCE resources used.
///
/// For more information see the [Docs](https://cloud.google.com/compute/docs/usage-export)
/// and for further details, the
/// [API Documentation](https://cloud.google.com/compute/docs/reference/rest/beta/projects/setUsageExportBucket).
///
/// &gt; **Note:** You should specify only one of these per project.  If there are two or more
/// they will fight over which bucket the reports should be stored in.  It is
/// safe to have multiple resources with the same backing bucket.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const usageExport = new gcp.projects.UsageExportBucket("usage_export", {
///     project: "development-project",
///     bucketName: "usage-tracking-bucket",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// usage_export = gcp.projects.UsageExportBucket("usage_export",
///     project="development-project",
///     bucket_name="usage-tracking-bucket")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var usageExport = new Gcp.Projects.UsageExportBucket("usage_export", new()
///     {
///         Project = "development-project",
///         BucketName = "usage-tracking-bucket",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := projects.NewUsageExportBucket(ctx, "usage_export", &projects.UsageExportBucketArgs{
/// 			Project:    pulumi.String("development-project"),
/// 			BucketName: pulumi.String("usage-tracking-bucket"),
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
/// resource "gcp_projects_usageexportbucket" "usage_export" {
///   project     = "development-project"
///   bucket_name = "usage-tracking-bucket"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.projects.UsageExportBucket;
/// import com.pulumi.gcp.projects.UsageExportBucketArgs;
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
///         var usageExport = new UsageExportBucket("usageExport", UsageExportBucketArgs.builder()
///             .project("development-project")
///             .bucketName("usage-tracking-bucket")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   usageExport:
///     type: gcp:projects:UsageExportBucket
///     name: usage_export
///     properties:
///       project: development-project
///       bucketName: usage-tracking-bucket
/// ```
///
///
/// ## Import
///
/// A project's Usage Export Bucket can be imported using this format:
///
/// * `{{project_id}}`
///
///
/// When using the `pulumi import` command, NAME_HERE can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:projects/usageExportBucket:UsageExportBucket default {{project_id}}
/// ```
class UsageExportBucket extends pulumi.CustomResource {
  /// The bucket to store reports in.
  ///
  /// - - -
  late final pulumi.Output<String> bucketName;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A prefix for the reports, for instance, the project name.
  late final pulumi.Output<String?> prefix;
  /// The project to set the export bucket on. If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [UsageExportBucket].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UsageExportBucket]. {@macro pulumi_projects_usage_export_bucket_usage_export_bucket_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UsageExportBucket(
    String name, {
    UsageExportBucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:projects/usageExportBucket:UsageExportBucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    bucketName = registerOutput<String>('bucketName');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    prefix = registerOutput<String?>('prefix');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [UsageExportBucket] resource's state with the given [name] and [id].
  static UsageExportBucket get(
    String name,
    pulumi.Input<String> id, {
    UsageExportBucketState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return UsageExportBucket._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  UsageExportBucket._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:projects/usageExportBucket:UsageExportBucket',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucketName = registerOutput<String>('bucketName');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    prefix = registerOutput<String?>('prefix');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [UsageExportBucket] resource.
  UsageExportBucket.reference(String urn)
    : super(
        'gcp:projects/usageExportBucket:UsageExportBucket',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucketName = registerOutput<String>('bucketName');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    prefix = registerOutput<String?>('prefix');
    project = registerOutput<String>('project');
  }
}
