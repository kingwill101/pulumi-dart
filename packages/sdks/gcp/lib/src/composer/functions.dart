import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_args.dart';
import 'get_environment_result.dart';
import 'get_image_versions_args.dart';
import 'get_image_versions_result.dart';
import 'get_user_workloads_config_map_args.dart';
import 'get_user_workloads_config_map_result.dart';
import 'get_user_workloads_secret_args.dart';
import 'get_user_workloads_secret_result.dart';

/// Provides access to Managed Airflow environment configuration in a region for a
/// given project.
///
/// To get more information about Managed Airflow Environment, see:
///
/// * [API documentation](https://cloud.google.com/composer/docs/reference/rest/v1/projects.locations.environments)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/composer/docs/latest/composer-overview)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const composerEnvEnvironment = new gcp.composer.Environment("composer_env", {name: "composer-environment"});
/// const composerEnv = gcp.composer.getEnvironment({
///     name: test.name,
/// });
/// export const debug = composerEnv.then(composerEnv => composerEnv.configs);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// composer_env_environment = gcp.composer.Environment("composer_env", name="composer-environment")
/// composer_env = gcp.composer.get_environment(name=test["name"])
/// pulumi.export("debug", composer_env.configs)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var composerEnvEnvironment = new Gcp.Composer.Environment("composer_env", new()
///     {
///         Name = "composer-environment",
///     });
///
///     var composerEnv = Gcp.Composer.GetEnvironment.Invoke(new()
///     {
///         Name = test.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["debug"] = composerEnv.Apply(getEnvironmentResult => getEnvironmentResult.Configs),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/composer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := composer.NewEnvironment(ctx, "composer_env", &composer.EnvironmentArgs{
/// 			Name: pulumi.String("composer-environment"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		composerEnv, err := composer.LookupEnvironment(ctx, &composer.LookupEnvironmentArgs{
/// 			Name: test.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("debug", composerEnv.Configs)
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
/// data "gcp_composer_getenvironment" "composerEnv" {
///   name = test.name
/// }
///
/// resource "gcp_composer_environment" "composer_env" {
///   name = "composer-environment"
/// }
/// output "debug" {
///   value = data.gcp_composer_getenvironment.composerEnv.configs
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
/// import com.pulumi.gcp.composer.ComposerFunctions;
/// import com.pulumi.gcp.composer.inputs.GetEnvironmentArgs;
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
///         var composerEnvEnvironment = new Environment("composerEnvEnvironment", EnvironmentArgs.builder()
///             .name("composer-environment")
///             .build());
///
///         final var composerEnv = ComposerFunctions.getEnvironment(GetEnvironmentArgs.builder()
///             .name(test.get("name"))
///             .build());
///
///         ctx.export("debug", composerEnv.configs());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   composerEnvEnvironment:
///     type: gcp:composer:Environment
///     name: composer_env
///     properties:
///       name: composer-environment
/// variables:
///   composerEnv:
///     fn::invoke:
///       function: gcp:composer:getEnvironment
///       arguments:
///         name: ${test.name}
/// outputs:
///   debug: ${composerEnv.configs}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_composer_get_environment_get_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentResult> getEnvironment(
  GetEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:composer/getEnvironment:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult.fromMap(result);
}

/// Provides access to available Managed Airflow versions in a region for a given project.
///
/// To get more information about Managed Airflow image versions, see:
///
/// * [API documentation](https://cloud.google.com/composer/docs/reference/rest/v1/projects.locations.imageVersions)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/composer/docs/composer-versions)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const all = gcp.composer.getImageVersions({});
/// const test = new gcp.composer.Environment("test", {
///     name: "test-env",
///     region: "us-central1",
///     config: {
///         softwareConfig: {
///             imageVersion: all.then(all => all.imageVersions?.[0]?.imageVersionId),
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// all = gcp.composer.get_image_versions()
/// test = gcp.composer.Environment("test",
///     name="test-env",
///     region="us-central1",
///     config={
///         "software_config": {
///             "image_version": all.image_versions[0].image_version_id,
///         },
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
///     var all = Gcp.Composer.GetImageVersions.Invoke();
///
///     var test = new Gcp.Composer.Environment("test", new()
///     {
///         Name = "test-env",
///         Region = "us-central1",
///         Config = new Gcp.Composer.Inputs.EnvironmentConfigArgs
///         {
///             SoftwareConfig = new Gcp.Composer.Inputs.EnvironmentConfigSoftwareConfigArgs
///             {
///                 ImageVersion = all.Apply(getImageVersionsResult => getImageVersionsResult.ImageVersions[0]?.ImageVersionId),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/composer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		all, err := composer.GetImageVersions(ctx, &composer.GetImageVersionsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = composer.NewEnvironment(ctx, "test", &composer.EnvironmentArgs{
/// 			Name:   pulumi.String("test-env"),
/// 			Region: pulumi.String("us-central1"),
/// 			Config: &composer.EnvironmentConfigArgs{
/// 				SoftwareConfig: &composer.EnvironmentConfigSoftwareConfigArgs{
/// 					ImageVersion: pulumi.String(all.ImageVersions[0].ImageVersionId),
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
/// data "gcp_composer_getimageversions" "all" {
/// }
///
/// resource "gcp_composer_environment" "test" {
///   name   = "test-env"
///   region = "us-central1"
///   config = {
///     software_config = {
///       image_version = data.gcp_composer_getimageversions.all.image_versions[0].image_version_id
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
/// import com.pulumi.gcp.composer.ComposerFunctions;
/// import com.pulumi.gcp.composer.inputs.GetImageVersionsArgs;
/// import com.pulumi.gcp.composer.Environment;
/// import com.pulumi.gcp.composer.EnvironmentArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigSoftwareConfigArgs;
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
///         final var all = ComposerFunctions.getImageVersions(GetImageVersionsArgs.builder()
///             .build());
///
///         var test = new Environment("test", EnvironmentArgs.builder()
///             .name("test-env")
///             .region("us-central1")
///             .config(EnvironmentConfigArgs.builder()
///                 .softwareConfig(EnvironmentConfigSoftwareConfigArgs.builder()
///                     .imageVersion(all.imageVersions()[0].imageVersionId())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: gcp:composer:Environment
///     properties:
///       name: test-env
///       region: us-central1
///       config:
///         softwareConfig:
///           imageVersion: ${all.imageVersions[0].imageVersionId}
/// variables:
///   all:
///     fn::invoke:
///       function: gcp:composer:getImageVersions
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_composer_get_image_versions_get_image_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageVersionsResult> getImageVersions(
  GetImageVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:composer/getImageVersions:getImageVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageVersionsResult.fromMap(result);
}

/// Provides access to Kubernetes ConfigMap configuration for a given project, region and Managed Airflow Environment.
///
/// To get more information about Managed Airflow User Workloads Config Map, see:
///
/// * [API documentation](https://cloud.google.com/composer/docs/reference/rest/v1/projects.locations.environments.userWorkloadsConfigMaps)
/// * How-to Guides
/// * [Official Documentation](https://clouddocs.devsite.corp.google.com/composer/docs/composer-3/use-kubernetes-pod-operator#secret-config)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const exampleEnvironment = new gcp.composer.Environment("example", {
///     name: "example-environment",
///     config: {
///         softwareConfig: {
///             imageVersion: "composer-3-airflow-2",
///         },
///     },
/// });
/// const exampleUserWorkloadsConfigMap = new gcp.composer.UserWorkloadsConfigMap("example", {
///     environment: exampleEnvironment.name,
///     name: "example-config-map",
///     data: {
///         db_host: "dbhost:5432",
///         api_host: "apihost:443",
///     },
/// });
/// const example = gcp.composer.getUserWorkloadsConfigMapOutput({
///     environment: exampleEnvironment.name,
///     name: googleComposerUserWorkloadsConfigMap.example.name,
/// });
/// export const debug = example;
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_environment = gcp.composer.Environment("example",
///     name="example-environment",
///     config={
///         "software_config": {
///             "image_version": "composer-3-airflow-2",
///         },
///     })
/// example_user_workloads_config_map = gcp.composer.UserWorkloadsConfigMap("example",
///     environment=example_environment.name,
///     name="example-config-map",
///     data={
///         "db_host": "dbhost:5432",
///         "api_host": "apihost:443",
///     })
/// example = gcp.composer.get_user_workloads_config_map_output(environment=example_environment.name,
///     name=google_composer_user_workloads_config_map["example"]["name"])
/// pulumi.export("debug", example)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleEnvironment = new Gcp.Composer.Environment("example", new()
///     {
///         Name = "example-environment",
///         Config = new Gcp.Composer.Inputs.EnvironmentConfigArgs
///         {
///             SoftwareConfig = new Gcp.Composer.Inputs.EnvironmentConfigSoftwareConfigArgs
///             {
///                 ImageVersion = "composer-3-airflow-2",
///             },
///         },
///     });
///
///     var exampleUserWorkloadsConfigMap = new Gcp.Composer.UserWorkloadsConfigMap("example", new()
///     {
///         Environment = exampleEnvironment.Name,
///         Name = "example-config-map",
///         Data =
///         {
///             { "db_host", "dbhost:5432" },
///             { "api_host", "apihost:443" },
///         },
///     });
///
///     var example = Gcp.Composer.GetUserWorkloadsConfigMap.Invoke(new()
///     {
///         Environment = exampleEnvironment.Name,
///         Name = googleComposerUserWorkloadsConfigMap.Example.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["debug"] = example,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/composer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleEnvironment, err := composer.NewEnvironment(ctx, "example", &composer.EnvironmentArgs{
/// 			Name: pulumi.String("example-environment"),
/// 			Config: &composer.EnvironmentConfigArgs{
/// 				SoftwareConfig: &composer.EnvironmentConfigSoftwareConfigArgs{
/// 					ImageVersion: pulumi.String("composer-3-airflow-2"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = composer.NewUserWorkloadsConfigMap(ctx, "example", &composer.UserWorkloadsConfigMapArgs{
/// 			Environment: exampleEnvironment.Name,
/// 			Name:        pulumi.String("example-config-map"),
/// 			Data: pulumi.StringMap{
/// 				"db_host":  pulumi.String("dbhost:5432"),
/// 				"api_host": pulumi.String("apihost:443"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := composer.LookupUserWorkloadsConfigMapOutput(ctx, composer.GetUserWorkloadsConfigMapOutputArgs{
/// 			Environment: exampleEnvironment.Name,
/// 			Name:        pulumi.Any(googleComposerUserWorkloadsConfigMap.Example.Name),
/// 		}, nil)
/// 		ctx.Export("debug", example)
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
/// data "gcp_composer_getuserworkloadsconfigmap" "example" {
///   environment = gcp_composer_environment.example.name
///   name        = googleComposerUserWorkloadsConfigMap.example.name
/// }
///
/// resource "gcp_composer_environment" "example" {
///   name = "example-environment"
///   config = {
///     software_config = {
///       image_version = "composer-3-airflow-2"
///     }
///   }
/// }
/// resource "gcp_composer_userworkloadsconfigmap" "example" {
///   environment = gcp_composer_environment.example.name
///   name        = "example-config-map"
///   data = {
///     "db_host"  = "dbhost:5432"
///     "api_host" = "apihost:443"
///   }
/// }
/// output "debug" {
///   value = data.gcp_composer_getuserworkloadsconfigmap.example
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
/// import com.pulumi.gcp.composer.UserWorkloadsConfigMap;
/// import com.pulumi.gcp.composer.UserWorkloadsConfigMapArgs;
/// import com.pulumi.gcp.composer.ComposerFunctions;
/// import com.pulumi.gcp.composer.inputs.GetUserWorkloadsConfigMapArgs;
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
///         var exampleEnvironment = new Environment("exampleEnvironment", EnvironmentArgs.builder()
///             .name("example-environment")
///             .config(EnvironmentConfigArgs.builder()
///                 .softwareConfig(EnvironmentConfigSoftwareConfigArgs.builder()
///                     .imageVersion("composer-3-airflow-2")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleUserWorkloadsConfigMap = new UserWorkloadsConfigMap("exampleUserWorkloadsConfigMap", UserWorkloadsConfigMapArgs.builder()
///             .environment(exampleEnvironment.name())
///             .name("example-config-map")
///             .data(Map.ofEntries(
///                 Map.entry("db_host", "dbhost:5432"),
///                 Map.entry("api_host", "apihost:443")
///             ))
///             .build());
///
///         final var example = ComposerFunctions.getUserWorkloadsConfigMap(GetUserWorkloadsConfigMapArgs.builder()
///             .environment(exampleEnvironment.name())
///             .name(googleComposerUserWorkloadsConfigMap.get("example").get("name"))
///             .build());
///
///         ctx.export("debug", example);
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleEnvironment:
///     type: gcp:composer:Environment
///     name: example
///     properties:
///       name: example-environment
///       config:
///         softwareConfig:
///           imageVersion: composer-3-airflow-2
///   exampleUserWorkloadsConfigMap:
///     type: gcp:composer:UserWorkloadsConfigMap
///     name: example
///     properties:
///       environment: ${exampleEnvironment.name}
///       name: example-config-map
///       data:
///         db_host: dbhost:5432
///         api_host: apihost:443
/// variables:
///   example:
///     fn::invoke:
///       function: gcp:composer:getUserWorkloadsConfigMap
///       arguments:
///         environment: ${exampleEnvironment.name}
///         name: ${googleComposerUserWorkloadsConfigMap.example.name}
/// outputs:
///   debug: ${example}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_composer_get_user_workloads_config_map_get_user_workloads_config_map_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserWorkloadsConfigMapResult> getUserWorkloadsConfigMap(
  GetUserWorkloadsConfigMapArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:composer/getUserWorkloadsConfigMap:getUserWorkloadsConfigMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserWorkloadsConfigMapResult.fromMap(result);
}

/// Provides access to Kubernetes Secret configuration for a given project, region
/// and Managed Airflow Environment.
///
/// To get more information about Managed Airflow User Workloads Secrets, see:
///
/// * [API documentation](https://cloud.google.com/composer/docs/reference/rest/v1/projects.locations.environments.userWorkloadsSecrets)
/// * How-to Guides
/// * [Official Documentation](https://clouddocs.devsite.corp.google.com/composer/docs/composer-3/use-kubernetes-pod-operator#secret-config)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const exampleEnvironment = new gcp.composer.Environment("example", {
///     name: "example-environment",
///     config: {
///         softwareConfig: {
///             imageVersion: "composer-3-airflow-2",
///         },
///     },
/// });
/// const exampleUserWorkloadsSecret = new gcp.composer.UserWorkloadsSecret("example", {
///     environment: exampleEnvironment.name,
///     name: "example-secret",
///     data: {
///         username: std.base64encode({
///             input: "username",
///         }).then(invoke => invoke.result),
///         password: std.base64encode({
///             input: "password",
///         }).then(invoke => invoke.result),
///     },
/// });
/// const example = gcp.composer.getUserWorkloadsSecretOutput({
///     environment: exampleEnvironment.name,
///     name: googleComposerUserWorkloadsSecret.example.name,
/// });
/// export const debug = example;
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// example_environment = gcp.composer.Environment("example",
///     name="example-environment",
///     config={
///         "software_config": {
///             "image_version": "composer-3-airflow-2",
///         },
///     })
/// example_user_workloads_secret = gcp.composer.UserWorkloadsSecret("example",
///     environment=example_environment.name,
///     name="example-secret",
///     data={
///         "username": std.base64encode(input="username").result,
///         "password": std.base64encode(input="password").result,
///     })
/// example = gcp.composer.get_user_workloads_secret_output(environment=example_environment.name,
///     name=google_composer_user_workloads_secret["example"]["name"])
/// pulumi.export("debug", example)
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
///     var exampleEnvironment = new Gcp.Composer.Environment("example", new()
///     {
///         Name = "example-environment",
///         Config = new Gcp.Composer.Inputs.EnvironmentConfigArgs
///         {
///             SoftwareConfig = new Gcp.Composer.Inputs.EnvironmentConfigSoftwareConfigArgs
///             {
///                 ImageVersion = "composer-3-airflow-2",
///             },
///         },
///     });
///
///     var exampleUserWorkloadsSecret = new Gcp.Composer.UserWorkloadsSecret("example", new()
///     {
///         Environment = exampleEnvironment.Name,
///         Name = "example-secret",
///         Data =
///         {
///             { "username", Std.Base64encode.Invoke(new()
///             {
///                 Input = "username",
///             }).Apply(invoke => invoke.Result) },
///             { "password", Std.Base64encode.Invoke(new()
///             {
///                 Input = "password",
///             }).Apply(invoke => invoke.Result) },
///         },
///     });
///
///     var example = Gcp.Composer.GetUserWorkloadsSecret.Invoke(new()
///     {
///         Environment = exampleEnvironment.Name,
///         Name = googleComposerUserWorkloadsSecret.Example.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["debug"] = example,
///     };
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
/// 		exampleEnvironment, err := composer.NewEnvironment(ctx, "example", &composer.EnvironmentArgs{
/// 			Name: pulumi.String("example-environment"),
/// 			Config: &composer.EnvironmentConfigArgs{
/// 				SoftwareConfig: &composer.EnvironmentConfigSoftwareConfigArgs{
/// 					ImageVersion: pulumi.String("composer-3-airflow-2"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: "username",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBase64encode1, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: "password",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = composer.NewUserWorkloadsSecret(ctx, "example", &composer.UserWorkloadsSecretArgs{
/// 			Environment: exampleEnvironment.Name,
/// 			Name:        pulumi.String("example-secret"),
/// 			Data: pulumi.StringMap{
/// 				"username": pulumi.String(invokeBase64encode.Result),
/// 				"password": pulumi.String(invokeBase64encode1.Result),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := composer.LookupUserWorkloadsSecretOutput(ctx, composer.GetUserWorkloadsSecretOutputArgs{
/// 			Environment: exampleEnvironment.Name,
/// 			Name:        pulumi.Any(googleComposerUserWorkloadsSecret.Example.Name),
/// 		}, nil)
/// 		ctx.Export("debug", example)
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
/// data "gcp_composer_getuserworkloadssecret" "example" {
///   environment = gcp_composer_environment.example.name
///   name        = googleComposerUserWorkloadsSecret.example.name
/// }
///
/// resource "gcp_composer_environment" "example" {
///   name = "example-environment"
///   config = {
///     software_config = {
///       image_version = "composer-3-airflow-2"
///     }
///   }
/// }
/// resource "gcp_composer_userworkloadssecret" "example" {
///   environment = gcp_composer_environment.example.name
///   name        = "example-secret"
///   data = {
///     "username" = base64encode("username")
///     "password" = base64encode("password")
///   }
/// }
/// output "debug" {
///   value = data.gcp_composer_getuserworkloadssecret.example
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
/// import com.pulumi.gcp.composer.ComposerFunctions;
/// import com.pulumi.gcp.composer.inputs.GetUserWorkloadsSecretArgs;
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
///         var exampleEnvironment = new Environment("exampleEnvironment", EnvironmentArgs.builder()
///             .name("example-environment")
///             .config(EnvironmentConfigArgs.builder()
///                 .softwareConfig(EnvironmentConfigSoftwareConfigArgs.builder()
///                     .imageVersion("composer-3-airflow-2")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleUserWorkloadsSecret = new UserWorkloadsSecret("exampleUserWorkloadsSecret", UserWorkloadsSecretArgs.builder()
///             .environment(exampleEnvironment.name())
///             .name("example-secret")
///             .data(Map.ofEntries(
///                 Map.entry("username", StdFunctions.base64encode(Base64encodeArgs.builder()
///                     .input("username")
///                     .build()).result()),
///                 Map.entry("password", StdFunctions.base64encode(Base64encodeArgs.builder()
///                     .input("password")
///                     .build()).result())
///             ))
///             .build());
///
///         final var example = ComposerFunctions.getUserWorkloadsSecret(GetUserWorkloadsSecretArgs.builder()
///             .environment(exampleEnvironment.name())
///             .name(googleComposerUserWorkloadsSecret.get("example").get("name"))
///             .build());
///
///         ctx.export("debug", example);
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleEnvironment:
///     type: gcp:composer:Environment
///     name: example
///     properties:
///       name: example-environment
///       config:
///         softwareConfig:
///           imageVersion: composer-3-airflow-2
///   exampleUserWorkloadsSecret:
///     type: gcp:composer:UserWorkloadsSecret
///     name: example
///     properties:
///       environment: ${exampleEnvironment.name}
///       name: example-secret
///       data:
///         username:
///           fn::invoke:
///             function: std:base64encode
///             arguments:
///               input: username
///             return: result
///         password:
///           fn::invoke:
///             function: std:base64encode
///             arguments:
///               input: password
///             return: result
/// variables:
///   example:
///     fn::invoke:
///       function: gcp:composer:getUserWorkloadsSecret
///       arguments:
///         environment: ${exampleEnvironment.name}
///         name: ${googleComposerUserWorkloadsSecret.example.name}
/// outputs:
///   debug: ${example}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_composer_get_user_workloads_secret_get_user_workloads_secret_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserWorkloadsSecretResult> getUserWorkloadsSecret(
  GetUserWorkloadsSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:composer/getUserWorkloadsSecret:getUserWorkloadsSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserWorkloadsSecretResult.fromMap(result);
}
