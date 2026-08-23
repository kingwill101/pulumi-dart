import 'package:pulumi/pulumi.dart' as pulumi;
import 'wasm_plugin_args.dart';
import 'wasm_plugin_log_config.dart';
import 'wasm_plugin_state.dart';

/// WasmPlugin is a resource representing a service executing a customer-provided Wasm module.
///
///
/// To get more information about WasmPlugin, see:
///
/// * [API documentation](https://cloud.google.com/service-extensions/docs/reference/rest/v1/projects.locations.wasmPlugins)
/// * How-to Guides
/// * [Configure a route extension](https://cloud.google.com/service-extensions/docs/create-plugin)
///
/// ## Example Usage
///
/// ### Wasm Plugin Basic Docker Repository
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const wasmPlugin = new gcp.networkservices.WasmPlugin("wasm_plugin", {
///     name: "my-wasm-plugin",
///     description: "my wasm plugin from a docker repository",
///     mainVersionId: "v1",
///     labels: {
///         test_label: "test_value",
///     },
///     logConfig: {
///         enable: true,
///         sampleRate: 1,
///         minLogLevel: "WARN",
///     },
///     versions: [{
///         versionName: "v1",
///         description: "v1 version of my wasm plugin",
///         imageUri: project.then(project => `us-central1-docker.pkg.dev/${project.name}/my-artifact-registry-docker-repository/my-wasm-plugin-data:prod`),
///         labels: {
///             test_label: "test_value",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// wasm_plugin = gcp.networkservices.WasmPlugin("wasm_plugin",
///     name="my-wasm-plugin",
///     description="my wasm plugin from a docker repository",
///     main_version_id="v1",
///     labels={
///         "test_label": "test_value",
///     },
///     log_config={
///         "enable": True,
///         "sample_rate": float(1),
///         "min_log_level": "WARN",
///     },
///     versions=[{
///         "version_name": "v1",
///         "description": "v1 version of my wasm plugin",
///         "image_uri": f"us-central1-docker.pkg.dev/{project.name}/my-artifact-registry-docker-repository/my-wasm-plugin-data:prod",
///         "labels": {
///             "test_label": "test_value",
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var wasmPlugin = new Gcp.NetworkServices.WasmPlugin("wasm_plugin", new()
///     {
///         Name = "my-wasm-plugin",
///         Description = "my wasm plugin from a docker repository",
///         MainVersionId = "v1",
///         Labels =
///         {
///             { "test_label", "test_value" },
///         },
///         LogConfig = new Gcp.NetworkServices.Inputs.WasmPluginLogConfigArgs
///         {
///             Enable = true,
///             SampleRate = 1.0,
///             MinLogLevel = "WARN",
///         },
///         Versions = new[]
///         {
///             new Gcp.NetworkServices.Inputs.WasmPluginVersionArgs
///             {
///                 VersionName = "v1",
///                 Description = "v1 version of my wasm plugin",
///                 ImageUri = $"us-central1-docker.pkg.dev/{project.Apply(getProjectResult => getProjectResult.Name)}/my-artifact-registry-docker-repository/my-wasm-plugin-data:prod",
///                 Labels =
///                 {
///                     { "test_label", "test_value" },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewWasmPlugin(ctx, "wasm_plugin", &networkservices.WasmPluginArgs{
/// 			Name:          pulumi.String("my-wasm-plugin"),
/// 			Description:   pulumi.String("my wasm plugin from a docker repository"),
/// 			MainVersionId: pulumi.String("v1"),
/// 			Labels: pulumi.StringMap{
/// 				"test_label": pulumi.String("test_value"),
/// 			},
/// 			LogConfig: &networkservices.WasmPluginLogConfigArgs{
/// 				Enable:      pulumi.Bool(true),
/// 				SampleRate:  pulumi.Float64(1),
/// 				MinLogLevel: pulumi.String("WARN"),
/// 			},
/// 			Versions: networkservices.WasmPluginVersionArray{
/// 				&networkservices.WasmPluginVersionArgs{
/// 					VersionName: pulumi.String("v1"),
/// 					Description: pulumi.String("v1 version of my wasm plugin"),
/// 					ImageUri:    pulumi.Sprintf("us-central1-docker.pkg.dev/%v/my-artifact-registry-docker-repository/my-wasm-plugin-data:prod", project.Name),
/// 					Labels: pulumi.StringMap{
/// 						"test_label": pulumi.String("test_value"),
/// 					},
/// 				},
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
/// }
///
/// resource "gcp_networkservices_wasmplugin" "wasm_plugin" {
///   name            = "my-wasm-plugin"
///   description     = "my wasm plugin from a docker repository"
///   main_version_id = "v1"
///   labels = {
///     "test_label" = "test_value"
///   }
///   log_config = {
///     enable        = true
///     sample_rate   = 1
///     min_log_level = "WARN"
///   }
///   versions {
///     version_name = "v1"
///     description  = "v1 version of my wasm plugin"
///     image_uri    ="us-central1-docker.pkg.dev/${data.gcp_organizations_getproject.project.name}/my-artifact-registry-docker-repository/my-wasm-plugin-data:prod"
///     labels = {
///       "test_label" = "test_value"
///     }
///   }
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
/// import com.pulumi.gcp.networkservices.WasmPlugin;
/// import com.pulumi.gcp.networkservices.WasmPluginArgs;
/// import com.pulumi.gcp.networkservices.inputs.WasmPluginLogConfigArgs;
/// import com.pulumi.gcp.networkservices.inputs.WasmPluginVersionArgs;
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
///             .build());
///
///         var wasmPlugin = new WasmPlugin("wasmPlugin", WasmPluginArgs.builder()
///             .name("my-wasm-plugin")
///             .description("my wasm plugin from a docker repository")
///             .mainVersionId("v1")
///             .labels(Map.of("test_label", "test_value"))
///             .logConfig(WasmPluginLogConfigArgs.builder()
///                 .enable(true)
///                 .sampleRate(1.0)
///                 .minLogLevel("WARN")
///                 .build())
///             .versions(WasmPluginVersionArgs.builder()
///                 .versionName("v1")
///                 .description("v1 version of my wasm plugin")
///                 .imageUri(String.format("us-central1-docker.pkg.dev/%s/my-artifact-registry-docker-repository/my-wasm-plugin-data:prod", project.name()))
///                 .labels(Map.of("test_label", "test_value"))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   wasmPlugin:
///     type: gcp:networkservices:WasmPlugin
///     name: wasm_plugin
///     properties:
///       name: my-wasm-plugin
///       description: my wasm plugin from a docker repository
///       mainVersionId: v1
///       labels:
///         test_label: test_value
///       logConfig:
///         enable: true
///         sampleRate: 1
///         minLogLevel: WARN
///       versions:
///         - versionName: v1
///           description: v1 version of my wasm plugin
///           imageUri: us-central1-docker.pkg.dev/${project.name}/my-artifact-registry-docker-repository/my-wasm-plugin-data:prod
///           labels:
///             test_label: test_value
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Wasm Plugin Basic Generic Repository
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const wasmPlugin = new gcp.networkservices.WasmPlugin("wasm_plugin", {
///     name: "my-wasm-plugin",
///     description: "my wasm plugin from a generic repository",
///     mainVersionId: "v1",
///     labels: {
///         test_label: "test_value",
///     },
///     logConfig: {
///         enable: true,
///         sampleRate: 1,
///         minLogLevel: "WARN",
///     },
///     versions: [{
///         versionName: "v1",
///         description: "v1 version of my wasm plugin",
///         imageUri: project.then(project => `projects/${project.name}/locations/us-central1/repositories/my-artifact-registry-generic-repository/genericArtifacts/my-wasm-plugin-data:v1`),
///         labels: {
///             test_label: "test_value",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// wasm_plugin = gcp.networkservices.WasmPlugin("wasm_plugin",
///     name="my-wasm-plugin",
///     description="my wasm plugin from a generic repository",
///     main_version_id="v1",
///     labels={
///         "test_label": "test_value",
///     },
///     log_config={
///         "enable": True,
///         "sample_rate": float(1),
///         "min_log_level": "WARN",
///     },
///     versions=[{
///         "version_name": "v1",
///         "description": "v1 version of my wasm plugin",
///         "image_uri": f"projects/{project.name}/locations/us-central1/repositories/my-artifact-registry-generic-repository/genericArtifacts/my-wasm-plugin-data:v1",
///         "labels": {
///             "test_label": "test_value",
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var wasmPlugin = new Gcp.NetworkServices.WasmPlugin("wasm_plugin", new()
///     {
///         Name = "my-wasm-plugin",
///         Description = "my wasm plugin from a generic repository",
///         MainVersionId = "v1",
///         Labels =
///         {
///             { "test_label", "test_value" },
///         },
///         LogConfig = new Gcp.NetworkServices.Inputs.WasmPluginLogConfigArgs
///         {
///             Enable = true,
///             SampleRate = 1.0,
///             MinLogLevel = "WARN",
///         },
///         Versions = new[]
///         {
///             new Gcp.NetworkServices.Inputs.WasmPluginVersionArgs
///             {
///                 VersionName = "v1",
///                 Description = "v1 version of my wasm plugin",
///                 ImageUri = $"projects/{project.Apply(getProjectResult => getProjectResult.Name)}/locations/us-central1/repositories/my-artifact-registry-generic-repository/genericArtifacts/my-wasm-plugin-data:v1",
///                 Labels =
///                 {
///                     { "test_label", "test_value" },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewWasmPlugin(ctx, "wasm_plugin", &networkservices.WasmPluginArgs{
/// 			Name:          pulumi.String("my-wasm-plugin"),
/// 			Description:   pulumi.String("my wasm plugin from a generic repository"),
/// 			MainVersionId: pulumi.String("v1"),
/// 			Labels: pulumi.StringMap{
/// 				"test_label": pulumi.String("test_value"),
/// 			},
/// 			LogConfig: &networkservices.WasmPluginLogConfigArgs{
/// 				Enable:      pulumi.Bool(true),
/// 				SampleRate:  pulumi.Float64(1),
/// 				MinLogLevel: pulumi.String("WARN"),
/// 			},
/// 			Versions: networkservices.WasmPluginVersionArray{
/// 				&networkservices.WasmPluginVersionArgs{
/// 					VersionName: pulumi.String("v1"),
/// 					Description: pulumi.String("v1 version of my wasm plugin"),
/// 					ImageUri:    pulumi.Sprintf("projects/%v/locations/us-central1/repositories/my-artifact-registry-generic-repository/genericArtifacts/my-wasm-plugin-data:v1", project.Name),
/// 					Labels: pulumi.StringMap{
/// 						"test_label": pulumi.String("test_value"),
/// 					},
/// 				},
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
/// }
///
/// resource "gcp_networkservices_wasmplugin" "wasm_plugin" {
///   name            = "my-wasm-plugin"
///   description     = "my wasm plugin from a generic repository"
///   main_version_id = "v1"
///   labels = {
///     "test_label" = "test_value"
///   }
///   log_config = {
///     enable        = true
///     sample_rate   = 1
///     min_log_level = "WARN"
///   }
///   versions {
///     version_name = "v1"
///     description  = "v1 version of my wasm plugin"
///     image_uri    ="projects/${data.gcp_organizations_getproject.project.name}/locations/us-central1/repositories/my-artifact-registry-generic-repository/genericArtifacts/my-wasm-plugin-data:v1"
///     labels = {
///       "test_label" = "test_value"
///     }
///   }
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
/// import com.pulumi.gcp.networkservices.WasmPlugin;
/// import com.pulumi.gcp.networkservices.WasmPluginArgs;
/// import com.pulumi.gcp.networkservices.inputs.WasmPluginLogConfigArgs;
/// import com.pulumi.gcp.networkservices.inputs.WasmPluginVersionArgs;
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
///             .build());
///
///         var wasmPlugin = new WasmPlugin("wasmPlugin", WasmPluginArgs.builder()
///             .name("my-wasm-plugin")
///             .description("my wasm plugin from a generic repository")
///             .mainVersionId("v1")
///             .labels(Map.of("test_label", "test_value"))
///             .logConfig(WasmPluginLogConfigArgs.builder()
///                 .enable(true)
///                 .sampleRate(1.0)
///                 .minLogLevel("WARN")
///                 .build())
///             .versions(WasmPluginVersionArgs.builder()
///                 .versionName("v1")
///                 .description("v1 version of my wasm plugin")
///                 .imageUri(String.format("projects/%s/locations/us-central1/repositories/my-artifact-registry-generic-repository/genericArtifacts/my-wasm-plugin-data:v1", project.name()))
///                 .labels(Map.of("test_label", "test_value"))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   wasmPlugin:
///     type: gcp:networkservices:WasmPlugin
///     name: wasm_plugin
///     properties:
///       name: my-wasm-plugin
///       description: my wasm plugin from a generic repository
///       mainVersionId: v1
///       labels:
///         test_label: test_value
///       logConfig:
///         enable: true
///         sampleRate: 1
///         minLogLevel: WARN
///       versions:
///         - versionName: v1
///           description: v1 version of my wasm plugin
///           imageUri: projects/${project.name}/locations/us-central1/repositories/my-artifact-registry-generic-repository/genericArtifacts/my-wasm-plugin-data:v1
///           labels:
///             test_label: test_value
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// WasmPlugin can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/wasmPlugins/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, WasmPlugin can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/wasmPlugin:WasmPlugin default projects/{{project}}/locations/{{location}}/wasmPlugins/{{name}}
/// $ pulumi import gcp:networkservices/wasmPlugin:WasmPlugin default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:networkservices/wasmPlugin:WasmPlugin default {{location}}/{{name}}
/// ```
class WasmPlugin extends pulumi.CustomResource {
  /// Output only. The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Optional. A human-readable description of the resource.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Optional. Set of labels associated with the WasmPlugin resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the traffic extension
  late final pulumi.Output<String?> location;
  /// Optional. Specifies the logging options for the activity performed by this plugin. If logging is enabled, plugin logs are exported to Cloud Logging.
  /// Note that the settings relate to the logs generated by using logging statements in your Wasm code.
  /// Structure is documented below.
  late final pulumi.Output<WasmPluginLogConfig?> logConfig;
  /// The ID of the WasmPluginVersion resource that is the currently serving one. The version referred to must be a child of this WasmPlugin resource and should be listed in the "versions" field.
  late final pulumi.Output<String> mainVersionId;
  /// Identifier. Name of the WasmPlugin resource.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Output only. The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;
  /// Output only. List of all extensions that use this WasmPlugin resource.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> usedBies;
  /// All versions of this WasmPlugin resource in the key-value format. The key is the resource ID, and the value is the VersionDetails object.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> versions;

  /// Creates a new [WasmPlugin].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WasmPlugin]. {@macro pulumi_networkservices_wasm_plugin_wasm_plugin_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WasmPlugin(
    String name, {
    WasmPluginArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/wasmPlugin:WasmPlugin',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    logConfig = registerOutput<WasmPluginLogConfig?>('logConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WasmPluginLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mainVersionId = registerOutput<String>('mainVersionId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    updateTime = registerOutput<String>('updateTime');
    usedBies = registerOutput<List<Map<String, dynamic>>>('usedBies');
    versions = registerOutput<List<Map<String, dynamic>>>('versions');
  }

  /// Gets an existing [WasmPlugin] resource's state with the given [name] and [id].
  static WasmPlugin get(
    String name,
    pulumi.Input<String> id, {
    WasmPluginState? state,
  }) {
    return WasmPlugin._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WasmPlugin._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/wasmPlugin:WasmPlugin',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    logConfig = registerOutput<WasmPluginLogConfig?>('logConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WasmPluginLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mainVersionId = registerOutput<String>('mainVersionId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    updateTime = registerOutput<String>('updateTime');
    usedBies = registerOutput<List<Map<String, dynamic>>>('usedBies');
    versions = registerOutput<List<Map<String, dynamic>>>('versions');
  }
}
