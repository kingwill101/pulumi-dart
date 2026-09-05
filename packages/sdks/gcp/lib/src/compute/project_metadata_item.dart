import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_metadata_item_args.dart';
import 'project_metadata_item_state.dart';

/// Manages a single key/value pair on metadata common to all instances for
/// a project in GCE. Using `gcp.compute.ProjectMetadataItem` lets you
/// manage a single key/value setting in the provider rather than the entire
/// project metadata map.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.ProjectMetadataItem("default", {
///     key: "my_metadata",
///     value: "my_value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.ProjectMetadataItem("default",
///     key="my_metadata",
///     value="my_value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.ProjectMetadataItem("default", new()
///     {
///         Key = "my_metadata",
///         Value = "my_value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewProjectMetadataItem(ctx, "default", &compute.ProjectMetadataItemArgs{
/// 			Key:   pulumi.String("my_metadata"),
/// 			Value: pulumi.String("my_value"),
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
/// resource "gcp_compute_projectmetadataitem" "default" {
///   key   = "my_metadata"
///   value = "my_value"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ProjectMetadataItem;
/// import com.pulumi.gcp.compute.ProjectMetadataItemArgs;
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
///         var default_ = new ProjectMetadataItem("default", ProjectMetadataItemArgs.builder()
///             .key("my_metadata")
///             .value("my_value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:ProjectMetadataItem
///     properties:
///       key: my_metadata
///       value: my_value
/// ```
///
///
/// ## Import
///
/// Project metadata items can be imported using the `key`, e.g.
///
/// * `{{key}}`
/// * `projects/{{project}}/meta-data/{{key}}`
///
///
/// When using the `pulumi import` command, project metadata items can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/projectMetadataItem:ProjectMetadataItem default {{key}}
/// $ pulumi import gcp:compute/projectMetadataItem:ProjectMetadataItem default projects/{{project}}/meta-data/{{key}}
/// ```
class ProjectMetadataItem extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The metadata key to set.
  late final pulumi.Output<String> key;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The value to set for the given metadata key.
  ///
  /// - - -
  late final pulumi.Output<String> value;

  /// Creates a new [ProjectMetadataItem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectMetadataItem]. {@macro pulumi_compute_project_metadata_item_project_metadata_item_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectMetadataItem(
    String name, {
    ProjectMetadataItemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/projectMetadataItem:ProjectMetadataItem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    key = registerOutput<String>('key');
    project = registerOutput<String>('project');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [ProjectMetadataItem] resource's state with the given [name] and [id].
  static ProjectMetadataItem get(
    String name,
    pulumi.Input<String> id, {
    ProjectMetadataItemState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ProjectMetadataItem._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ProjectMetadataItem._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/projectMetadataItem:ProjectMetadataItem',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    key = registerOutput<String>('key');
    project = registerOutput<String>('project');
    value = registerOutput<String>('value');
  }

  /// Creates a typed reference to an existing [ProjectMetadataItem] resource.
  ProjectMetadataItem.reference(String urn)
    : super(
        'gcp:compute/projectMetadataItem:ProjectMetadataItem',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    key = registerOutput<String>('key');
    project = registerOutput<String>('project');
    value = registerOutput<String>('value');
  }
}
