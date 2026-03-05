import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_exclusion_args.dart';
import 'project_exclusion_state.dart';

/// Manages a project-level logging exclusion. For more information see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/projects.exclusions)
/// * How-to Guides
/// * [Excluding Logs](https://cloud.google.com/logging/docs/exclusions)
///
/// &gt; You can specify exclusions for log sinks created by the provider by using the exclusions field of `gcp.logging.ProjectSink`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_exclusion = new gcp.logging.ProjectExclusion("my-exclusion", {
///     name: "my-instance-debug-exclusion",
///     description: "Exclude GCE instance debug logs",
///     filter: "resource.type = gce_instance AND severity <= DEBUG",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_exclusion = gcp.logging.ProjectExclusion("my-exclusion",
///     name="my-instance-debug-exclusion",
///     description="Exclude GCE instance debug logs",
///     filter="resource.type = gce_instance AND severity <= DEBUG")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_exclusion = new Gcp.Logging.ProjectExclusion("my-exclusion", new()
///     {
///         Name = "my-instance-debug-exclusion",
///         Description = "Exclude GCE instance debug logs",
///         Filter = "resource.type = gce_instance AND severity <= DEBUG",
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
/// 		_, err := logging.NewProjectExclusion(ctx, "my-exclusion", &logging.ProjectExclusionArgs{
/// 			Name:        pulumi.String("my-instance-debug-exclusion"),
/// 			Description: pulumi.String("Exclude GCE instance debug logs"),
/// 			Filter:      pulumi.String("resource.type = gce_instance AND severity <= DEBUG"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.ProjectExclusion;
/// import com.pulumi.gcp.logging.ProjectExclusionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var my_exclusion = new ProjectExclusion("my-exclusion", ProjectExclusionArgs.builder()
///             .name("my-instance-debug-exclusion")
///             .description("Exclude GCE instance debug logs")
///             .filter("resource.type = gce_instance AND severity <= DEBUG")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-exclusion:
///     type: gcp:logging:ProjectExclusion
///     properties:
///       name: my-instance-debug-exclusion
///       description: Exclude GCE instance debug logs
///       filter: resource.type = gce_instance AND severity <= DEBUG
/// ```
///
///
/// ## Import
///
/// Project-level logging exclusions can be imported using their URI, e.g.
///
/// * `projects/{{project_id}}/exclusions/{{name}}`
///
/// When using the `pulumi import` command, project-level logging exclusions can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/projectExclusion:ProjectExclusion default projects/{{project_id}}/exclusions/{{name}}
/// ```
class ProjectExclusion extends pulumi.CustomResource {
  /// A human-readable description.
  late final pulumi.Output<String?> description;
  /// Whether this exclusion rule should be disabled or not. This defaults to
  /// false.
  late final pulumi.Output<bool?> disabled;
  /// The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced-filters) for information on how to
  /// write a filter.
  late final pulumi.Output<String> filter;
  /// The name of the logging exclusion.
  late final pulumi.Output<String> name;
  /// The project to create the exclusion in. If omitted, the project associated with the provider is
  /// used.
  late final pulumi.Output<String> project;

  /// Creates a new [ProjectExclusion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectExclusion]. {@macro pulumi_logging_project_exclusion_project_exclusion_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectExclusion(
    String name, {
    ProjectExclusionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/projectExclusion:ProjectExclusion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    disabled = registerOutput<bool?>('disabled');
    filter = registerOutput<String>('filter');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [ProjectExclusion] resource's state with the given [name] and [id].
  static ProjectExclusion get(
    String name,
    pulumi.Input<String> id, {
    ProjectExclusionState? state,
  }) {
    return ProjectExclusion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProjectExclusion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/projectExclusion:ProjectExclusion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    disabled = registerOutput<bool?>('disabled');
    filter = registerOutput<String>('filter');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
