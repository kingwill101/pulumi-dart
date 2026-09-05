import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_config_args.dart';
import 'project_config_platform_logs_config.dart';
import 'project_config_state.dart';

/// The Artifact Registry project config, used to configure platform logs that
/// apply to a project.
///
///
/// To get more information about ProjectConfig, see:
///
/// * [API documentation](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations/getProjectConfig)
/// * How-to Guides
/// * [Access and use platform logs](https://cloud.google.com/artifact-registry/docs/platform-logs)
///
/// &gt; **Note:** A project config is automatically created for a given location. Creating a
/// resource of this type will acquire and update the resource that already
/// exists at the location. Deleting this resource will remove the config from
/// your Terraform state but leave the resource as is.
/// ## Example Usage
///
/// ### Artifact Registry Project Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_config = new gcp.artifactregistry.ProjectConfig("my-config", {
///     location: "us-central1",
///     platformLogsConfig: {
///         loggingState: "ENABLED",
///         severityLevel: "INFO",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_config = gcp.artifactregistry.ProjectConfig("my-config",
///     location="us-central1",
///     platform_logs_config={
///         "logging_state": "ENABLED",
///         "severity_level": "INFO",
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
///     var my_config = new Gcp.ArtifactRegistry.ProjectConfig("my-config", new()
///     {
///         Location = "us-central1",
///         PlatformLogsConfig = new Gcp.ArtifactRegistry.Inputs.ProjectConfigPlatformLogsConfigArgs
///         {
///             LoggingState = "ENABLED",
///             SeverityLevel = "INFO",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.NewProjectConfig(ctx, "my-config", &artifactregistry.ProjectConfigArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			PlatformLogsConfig: &artifactregistry.ProjectConfigPlatformLogsConfigArgs{
/// 				LoggingState:  pulumi.String("ENABLED"),
/// 				SeverityLevel: pulumi.String("INFO"),
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
/// resource "gcp_artifactregistry_projectconfig" "my-config" {
///   location = "us-central1"
///   platform_logs_config = {
///     logging_state  = "ENABLED"
///     severity_level = "INFO"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.artifactregistry.ProjectConfig;
/// import com.pulumi.gcp.artifactregistry.ProjectConfigArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.ProjectConfigPlatformLogsConfigArgs;
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
///         var my_config = new ProjectConfig("my-config", ProjectConfigArgs.builder()
///             .location("us-central1")
///             .platformLogsConfig(ProjectConfigPlatformLogsConfigArgs.builder()
///                 .loggingState("ENABLED")
///                 .severityLevel("INFO")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-config:
///     type: gcp:artifactregistry:ProjectConfig
///     properties:
///       location: us-central1
///       platformLogsConfig:
///         loggingState: ENABLED
///         severityLevel: INFO
/// ```
///
///
/// ## Regional Endpoint Policies
///
/// This resource supports Regional Endpoint Policies (REP). See the provider reference for more details on configuration.
///
/// ## Import
///
/// ProjectConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/projectConfig`
/// * `{{project}}/{{location}}`
/// * `{{location}}`
///
///
/// When using the `pulumi import` command, ProjectConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/projectConfig:ProjectConfig default projects/{{project}}/locations/{{location}}/projectConfig
/// $ pulumi import gcp:artifactregistry/projectConfig:ProjectConfig default {{project}}/{{location}}
/// $ pulumi import gcp:artifactregistry/projectConfig:ProjectConfig default {{location}}
/// ```
class ProjectConfig extends pulumi.CustomResource {
  /// The name of the location this config is located in.
  late final pulumi.Output<String> location;
  /// The name of the project's config.
  /// Always of the form: projects/{project}/locations/{location}/projectConfig
  late final pulumi.Output<String> name;
  /// Configuration for platform logs.
  /// Structure is documented below.
  late final pulumi.Output<ProjectConfigPlatformLogsConfig?> platformLogsConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [ProjectConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectConfig]. {@macro pulumi_artifactregistry_project_config_project_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectConfig(
    String name, {
    ProjectConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:artifactregistry/projectConfig:ProjectConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    platformLogsConfig = registerOutput<ProjectConfigPlatformLogsConfig?>('platformLogsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectConfigPlatformLogsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
  }

  /// Gets an existing [ProjectConfig] resource's state with the given [name] and [id].
  static ProjectConfig get(
    String name,
    pulumi.Input<String> id, {
    ProjectConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ProjectConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ProjectConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:artifactregistry/projectConfig:ProjectConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    platformLogsConfig = registerOutput<ProjectConfigPlatformLogsConfig?>('platformLogsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectConfigPlatformLogsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [ProjectConfig] resource.
  ProjectConfig.reference(String urn)
    : super(
        'gcp:artifactregistry/projectConfig:ProjectConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    platformLogsConfig = registerOutput<ProjectConfigPlatformLogsConfig?>('platformLogsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectConfigPlatformLogsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
  }
}
