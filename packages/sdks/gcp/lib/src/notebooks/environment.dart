import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_args.dart';
import 'environment_container_image.dart';
import 'environment_state.dart';
import 'environment_vm_image.dart';

/// A Cloud AI Platform Notebook environment.
///
///
/// To get more information about Environment, see:
///
/// * [API documentation](https://cloud.google.com/ai-platform/notebooks/docs/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/ai-platform-notebooks)
///
/// ## Example Usage
///
/// ### Notebook Environment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const environment = new gcp.notebooks.Environment("environment", {
///     name: "notebooks-environment",
///     location: "us-west1-a",
///     containerImage: {
///         repository: "gcr.io/deeplearning-platform-release/base-cpu",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// environment = gcp.notebooks.Environment("environment",
///     name="notebooks-environment",
///     location="us-west1-a",
///     container_image={
///         "repository": "gcr.io/deeplearning-platform-release/base-cpu",
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
///     var environment = new Gcp.Notebooks.Environment("environment", new()
///     {
///         Name = "notebooks-environment",
///         Location = "us-west1-a",
///         ContainerImage = new Gcp.Notebooks.Inputs.EnvironmentContainerImageArgs
///         {
///             Repository = "gcr.io/deeplearning-platform-release/base-cpu",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notebooks.NewEnvironment(ctx, "environment", &notebooks.EnvironmentArgs{
/// 			Name:     pulumi.String("notebooks-environment"),
/// 			Location: pulumi.String("us-west1-a"),
/// 			ContainerImage: &notebooks.EnvironmentContainerImageArgs{
/// 				Repository: pulumi.String("gcr.io/deeplearning-platform-release/base-cpu"),
/// 			},
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
/// import com.pulumi.gcp.notebooks.Environment;
/// import com.pulumi.gcp.notebooks.EnvironmentArgs;
/// import com.pulumi.gcp.notebooks.inputs.EnvironmentContainerImageArgs;
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
///         var environment = new Environment("environment", EnvironmentArgs.builder()
///             .name("notebooks-environment")
///             .location("us-west1-a")
///             .containerImage(EnvironmentContainerImageArgs.builder()
///                 .repository("gcr.io/deeplearning-platform-release/base-cpu")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   environment:
///     type: gcp:notebooks:Environment
///     properties:
///       name: notebooks-environment
///       location: us-west1-a
///       containerImage:
///         repository: gcr.io/deeplearning-platform-release/base-cpu
/// ```
///
///
/// ## Import
///
/// Environment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/environments/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Environment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:notebooks/environment:Environment default projects/{{project}}/locations/{{location}}/environments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:notebooks/environment:Environment default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:notebooks/environment:Environment default {{location}}/{{name}}
/// ```
class Environment extends pulumi.CustomResource {
  /// Use a container image to start the notebook instance.
  /// Structure is documented below.
  late final pulumi.Output<EnvironmentContainerImage?> containerImage;
  /// Instance creation time
  late final pulumi.Output<String> createTime;
  /// A brief description of this environment.
  late final pulumi.Output<String?> description;
  /// Display name of this environment for the UI.
  late final pulumi.Output<String?> displayName;
  /// A reference to the zone where the machine resides.
  late final pulumi.Output<String> location;
  /// The name specified for the Environment instance.
  /// Format: projects/{project_id}/locations/{location}/environments/{environmentId}
  late final pulumi.Output<String> name;
  /// Path to a Bash script that automatically runs after a notebook instance fully boots up.
  /// The path must be a URL or Cloud Storage path. Example: "gs://path-to-file/file-name"
  late final pulumi.Output<String?> postStartupScript;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Use a Compute Engine VM image to start the notebook instance.
  /// Structure is documented below.
  late final pulumi.Output<EnvironmentVmImage?> vmImage;

  /// Creates a new [Environment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Environment]. {@macro pulumi_notebooks_environment_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Environment(
    String name, {
    EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:notebooks/environment:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.containerImage = registerOutput<EnvironmentContainerImage?>('containerImage');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.postStartupScript = registerOutput<String?>('postStartupScript');
    this.project = registerOutput<String>('project');
    this.vmImage = registerOutput<EnvironmentVmImage?>('vmImage');
  }

  /// Gets an existing [Environment] resource's state with the given [name] and [id].
  static Environment get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentState? state,
  }) {
    return Environment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Environment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:notebooks/environment:Environment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.containerImage = registerOutput<EnvironmentContainerImage?>('containerImage');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.postStartupScript = registerOutput<String?>('postStartupScript');
    this.project = registerOutput<String>('project');
    this.vmImage = registerOutput<EnvironmentVmImage?>('vmImage');
  }
}
