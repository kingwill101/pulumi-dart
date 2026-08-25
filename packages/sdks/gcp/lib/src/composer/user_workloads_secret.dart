import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_workloads_secret_args.dart';
import 'user_workloads_secret_state.dart';

/// User workloads Secret used by Airflow tasks that run with Kubernetes Executor
/// or KubernetesPodOperator. Intended for Managed Airflow (Gen 3) Environments.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const example = new gcp.composer.Environment("example", {
///     name: "example-environment",
///     project: "example-project",
///     region: "us-central1",
///     config: {
///         softwareConfig: {
///             imageVersion: "example-image-version",
///         },
///     },
/// });
/// const exampleUserWorkloadsSecret = new gcp.composer.UserWorkloadsSecret("example", {
///     name: "example-secret",
///     project: "example-project",
///     region: "us-central1",
///     environment: example.name,
///     data: {
///         email: std.base64encode({
///             input: "example-email",
///         }).then(invoke => invoke.result),
///         password: std.base64encode({
///             input: "example-password",
///         }).then(invoke => invoke.result),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// example = gcp.composer.Environment("example",
///     name="example-environment",
///     project="example-project",
///     region="us-central1",
///     config={
///         "software_config": {
///             "image_version": "example-image-version",
///         },
///     })
/// example_user_workloads_secret = gcp.composer.UserWorkloadsSecret("example",
///     name="example-secret",
///     project="example-project",
///     region="us-central1",
///     environment=example.name,
///     data={
///         "email": std.base64encode(input="example-email").result,
///         "password": std.base64encode(input="example-password").result,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Composer.Environment("example", new()
///     {
///         Name = "example-environment",
///         Project = "example-project",
///         Region = "us-central1",
///         Config = new Gcp.Composer.Inputs.EnvironmentConfigArgs
///         {
///             SoftwareConfig = new Gcp.Composer.Inputs.EnvironmentConfigSoftwareConfigArgs
///             {
///                 ImageVersion = "example-image-version",
///             },
///         },
///     });
///
///     var exampleUserWorkloadsSecret = new Gcp.Composer.UserWorkloadsSecret("example", new()
///     {
///         Name = "example-secret",
///         Project = "example-project",
///         Region = "us-central1",
///         Environment = example.Name,
///         Data =
///         {
///             { "email", Std.Base64encode.Invoke(new()
///             {
///                 Input = "example-email",
///             }).Apply(invoke => invoke.Result) },
///             { "password", Std.Base64encode.Invoke(new()
///             {
///                 Input = "example-password",
///             }).Apply(invoke => invoke.Result) },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/composer"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := composer.NewEnvironment(ctx, "example", &composer.EnvironmentArgs{
/// 			Name:    pulumi.String("example-environment"),
/// 			Project: pulumi.String("example-project"),
/// 			Region:  pulumi.String("us-central1"),
/// 			Config: &composer.EnvironmentConfigArgs{
/// 				SoftwareConfig: &composer.EnvironmentConfigSoftwareConfigArgs{
/// 					ImageVersion: pulumi.String("example-image-version"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: "example-email",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBase64encode1, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: "example-password",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = composer.NewUserWorkloadsSecret(ctx, "example", &composer.UserWorkloadsSecretArgs{
/// 			Name:        pulumi.String("example-secret"),
/// 			Project:     pulumi.String("example-project"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Environment: example.Name,
/// 			Data: pulumi.StringMap{
/// 				"email":    pulumi.String(invokeBase64encode.Result),
/// 				"password": pulumi.String(invokeBase64encode1.Result),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_composer_environment" "example" {
///   name    = "example-environment"
///   project = "example-project"
///   region  = "us-central1"
///   config = {
///     software_config = {
///       image_version = "example-image-version"
///     }
///   }
/// }
/// resource "gcp_composer_userworkloadssecret" "example" {
///   name        = "example-secret"
///   project     = "example-project"
///   region      = "us-central1"
///   environment = gcp_composer_environment.example.name
///   data = {
///     "email"    = base64encode("example-email")
///     "password" = base64encode("example-password")
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.composer.Environment;
/// import com.pulumi.gcp.composer.EnvironmentArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigSoftwareConfigArgs;
/// import com.pulumi.gcp.composer.UserWorkloadsSecret;
/// import com.pulumi.gcp.composer.UserWorkloadsSecretArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
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
///         var example = new Environment("example", EnvironmentArgs.builder()
///             .name("example-environment")
///             .project("example-project")
///             .region("us-central1")
///             .config(EnvironmentConfigArgs.builder()
///                 .softwareConfig(EnvironmentConfigSoftwareConfigArgs.builder()
///                     .imageVersion("example-image-version")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleUserWorkloadsSecret = new UserWorkloadsSecret("exampleUserWorkloadsSecret", UserWorkloadsSecretArgs.builder()
///             .name("example-secret")
///             .project("example-project")
///             .region("us-central1")
///             .environment(example.name())
///             .data(Map.ofEntries(
///                 Map.entry("email", StdFunctions.base64encode(Base64encodeArgs.builder()
///                     .input("example-email")
///                     .build()).result()),
///                 Map.entry("password", StdFunctions.base64encode(Base64encodeArgs.builder()
///                     .input("example-password")
///                     .build()).result())
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:composer:Environment
///     properties:
///       name: example-environment
///       project: example-project
///       region: us-central1
///       config:
///         softwareConfig:
///           imageVersion: example-image-version
///   exampleUserWorkloadsSecret:
///     type: gcp:composer:UserWorkloadsSecret
///     name: example
///     properties:
///       name: example-secret
///       project: example-project
///       region: us-central1
///       environment: ${example.name}
///       data:
///         email:
///           fn::invoke:
///             function: std:base64encode
///             arguments:
///               input: example-email
///             return: result
///         password:
///           fn::invoke:
///             function: std:base64encode
///             arguments:
///               input: example-password
///             return: result
/// ```
///
///
/// ## Import
///
/// Secret can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/environments/{{environment}}/userWorkloadsSecrets/{{name}}`
/// * `{{project}}/{{region}}/{{environment}}/{{name}}`
/// * `{{environment}}/{{name}}`
///
///
/// When using the `pulumi import` command, Environment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:composer/userWorkloadsSecret:UserWorkloadsSecret example projects/{{project}}/locations/{{region}}/environments/{{environment}}/userWorkloadsSecrets/{{name}}
/// $ pulumi import gcp:composer/userWorkloadsSecret:UserWorkloadsSecret example {{project}}/{{region}}/{{environment}}/{{name}}
/// $ pulumi import gcp:composer/userWorkloadsSecret:UserWorkloadsSecret example {{environment}}/{{name}}
/// ```
class UserWorkloadsSecret extends pulumi.CustomResource {
  /// The "data" field of Kubernetes Secret, organized in key-value pairs,
  /// which can contain sensitive values such as a password, a token, or a key.
  /// Content of this field will not be displayed in CLI output,
  /// but it will be stored in terraform state file. To protect sensitive data,
  /// follow the best practices outlined in the HashiCorp documentation:
  /// https://developer.hashicorp.com/terraform/language/state/sensitive-data.
  /// The values for all keys have to be base64-encoded strings.
  /// For details see: https://kubernetes.io/docs/concepts/configuration/secret/
  late final pulumi.Output<Map<String, String>?> data;
  /// (Optional) Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Environment where the Kubernetes Secret will be stored and used.
  late final pulumi.Output<String> environment;
  /// Name of the Kubernetes Secret.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The location or Compute Engine region for the environment.
  late final pulumi.Output<String> region;

  /// Creates a new [UserWorkloadsSecret].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserWorkloadsSecret]. {@macro pulumi_composer_user_workloads_secret_user_workloads_secret_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserWorkloadsSecret(
    String name, {
    UserWorkloadsSecretArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:composer/userWorkloadsSecret:UserWorkloadsSecret',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['data'],
        ) {
    data = registerOutput<Map<String, String>?>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    deletionPolicy = registerOutput<String>('deletionPolicy');
    environment = registerOutput<String>('environment');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [UserWorkloadsSecret] resource's state with the given [name] and [id].
  static UserWorkloadsSecret get(
    String name,
    pulumi.Input<String> id, {
    UserWorkloadsSecretState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return UserWorkloadsSecret._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  UserWorkloadsSecret._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:composer/userWorkloadsSecret:UserWorkloadsSecret',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    data = registerOutput<Map<String, String>?>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    deletionPolicy = registerOutput<String>('deletionPolicy');
    environment = registerOutput<String>('environment');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [UserWorkloadsSecret] resource.
  UserWorkloadsSecret.reference(String urn)
    : super(
        'gcp:composer/userWorkloadsSecret:UserWorkloadsSecret',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['data'],
        isResourceReference: true,
      ) {
    data = registerOutput<Map<String, String>?>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    deletionPolicy = registerOutput<String>('deletionPolicy');
    environment = registerOutput<String>('environment');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }
}
