import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_args.dart';
import 'config_state.dart';

/// Manages a RuntimeConfig resource in Google Cloud.
///
/// To get more information about RuntimeConfigs, see:
///
/// * [API documentation](https://cloud.google.com/deployment-manager/runtime-configurator/reference/rest/v1beta1/projects.configs)
/// * How-to Guides
/// * [Runtime Configurator Fundamentals](https://cloud.google.com/deployment-manager/runtime-configurator/)
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// ## Example Usage
///
/// Example creating a RuntimeConfig resource.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_runtime_config = new gcp.runtimeconfig.Config("my-runtime-config", {
///     name: "my-service-runtime-config",
///     description: "Runtime configuration values for my service",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_runtime_config = gcp.runtimeconfig.Config("my-runtime-config",
///     name="my-service-runtime-config",
///     description="Runtime configuration values for my service")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_runtime_config = new Gcp.RuntimeConfig.Config("my-runtime-config", new()
///     {
///         Name = "my-service-runtime-config",
///         Description = "Runtime configuration values for my service",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/runtimeconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := runtimeconfig.NewConfig(ctx, "my-runtime-config", &runtimeconfig.ConfigArgs{
/// 			Name:        pulumi.String("my-service-runtime-config"),
/// 			Description: pulumi.String("Runtime configuration values for my service"),
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
/// resource "gcp_runtimeconfig_config" "my-runtime-config" {
///   name        = "my-service-runtime-config"
///   description = "Runtime configuration values for my service"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.runtimeconfig.Config;
/// import com.pulumi.gcp.runtimeconfig.ConfigArgs;
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
///         var my_runtime_config = new Config("my-runtime-config", ConfigArgs.builder()
///             .name("my-service-runtime-config")
///             .description("Runtime configuration values for my service")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-runtime-config:
///     type: gcp:runtimeconfig:Config
///     properties:
///       name: my-service-runtime-config
///       description: Runtime configuration values for my service
/// ```
///
///
/// ## Import
///
/// Runtime Configs can be imported using the `name` or full config name, e.g.
///
/// * `projects/{{project_id}}/configs/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Runtime Configs can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:runtimeconfig/config:Config default projects/{{project_id}}/configs/{{name}}
/// $ pulumi import gcp:runtimeconfig/config:Config default {{name}}
/// ```
///
/// When importing using only the name, the provider project must be set.
class Config extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The description to associate with the runtime
  /// config.
  late final pulumi.Output<String?> description;
  /// The name of the runtime config.
  ///
  /// - - -
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [Config].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Config]. {@macro pulumi_runtimeconfig_config_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Config(
    String name, {
    ConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:runtimeconfig/config:Config',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [Config] resource's state with the given [name] and [id].
  static Config get(
    String name,
    pulumi.Input<String> id, {
    ConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Config._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Config._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:runtimeconfig/config:Config',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [Config] resource.
  Config.reference(String urn)
    : super(
        'gcp:runtimeconfig/config:Config',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
