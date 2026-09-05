import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_container_deployment_args.dart';
import 'spring_cloud_container_deployment_quota.dart';
import 'spring_cloud_container_deployment_state.dart';

/// Manages a Spring Cloud Container Deployment.
///
/// &gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudContainerDeployment` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const exampleSpringCloudService = new azure.appplatform.SpringCloudService("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "E0",
/// });
/// const exampleSpringCloudApp = new azure.appplatform.SpringCloudApp("example", {
///     name: "example",
///     resourceGroupName: exampleSpringCloudService.resourceGroupName,
///     serviceName: exampleSpringCloudService.name,
/// });
/// const exampleSpringCloudContainerDeployment = new azure.appplatform.SpringCloudContainerDeployment("example", {
///     name: "example",
///     springCloudAppId: exampleSpringCloudApp.id,
///     instanceCount: 2,
///     arguments: [
///         "-cp",
///         "/app/resources:/app/classes:/app/libs/*",
///         "hello.Application",
///     ],
///     commands: ["java"],
///     environmentVariables: {
///         Foo: "Bar",
///         Env: "Staging",
///     },
///     server: "docker.io",
///     image: "springio/gs-spring-boot-docker",
///     languageFramework: "springboot",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_spring_cloud_service = azure.appplatform.SpringCloudService("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="E0")
/// example_spring_cloud_app = azure.appplatform.SpringCloudApp("example",
///     name="example",
///     resource_group_name=example_spring_cloud_service.resource_group_name,
///     service_name=example_spring_cloud_service.name)
/// example_spring_cloud_container_deployment = azure.appplatform.SpringCloudContainerDeployment("example",
///     name="example",
///     spring_cloud_app_id=example_spring_cloud_app.id,
///     instance_count=2,
///     arguments=[
///         "-cp",
///         "/app/resources:/app/classes:/app/libs/*",
///         "hello.Application",
///     ],
///     commands=["java"],
///     environment_variables={
///         "Foo": "Bar",
///         "Env": "Staging",
///     },
///     server="docker.io",
///     image="springio/gs-spring-boot-docker",
///     language_framework="springboot")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var exampleSpringCloudService = new Azure.AppPlatform.SpringCloudService("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "E0",
///     });
///
///     var exampleSpringCloudApp = new Azure.AppPlatform.SpringCloudApp("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = exampleSpringCloudService.ResourceGroupName,
///         ServiceName = exampleSpringCloudService.Name,
///     });
///
///     var exampleSpringCloudContainerDeployment = new Azure.AppPlatform.SpringCloudContainerDeployment("example", new()
///     {
///         Name = "example",
///         SpringCloudAppId = exampleSpringCloudApp.Id,
///         InstanceCount = 2,
///         Arguments = new[]
///         {
///             "-cp",
///             "/app/resources:/app/classes:/app/libs/*",
///             "hello.Application",
///         },
///         Commands = new[]
///         {
///             "java",
///         },
///         EnvironmentVariables =
///         {
///             { "Foo", "Bar" },
///             { "Env", "Staging" },
///         },
///         Server = "docker.io",
///         Image = "springio/gs-spring-boot-docker",
///         LanguageFramework = "springboot",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appplatform"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudService, err := appplatform.NewSpringCloudService(ctx, "example", &appplatform.SpringCloudServiceArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("E0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudApp, err := appplatform.NewSpringCloudApp(ctx, "example", &appplatform.SpringCloudAppArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: exampleSpringCloudService.ResourceGroupName,
/// 			ServiceName:       exampleSpringCloudService.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appplatform.NewSpringCloudContainerDeployment(ctx, "example", &appplatform.SpringCloudContainerDeploymentArgs{
/// 			Name:             pulumi.String("example"),
/// 			SpringCloudAppId: exampleSpringCloudApp.ID().ToIDOutput().ToStringOutput(),
/// 			InstanceCount:    pulumi.Int(2),
/// 			Arguments: pulumi.StringArray{
/// 				pulumi.String("-cp"),
/// 				pulumi.String("/app/resources:/app/classes:/app/libs/*"),
/// 				pulumi.String("hello.Application"),
/// 			},
/// 			Commands: pulumi.StringArray{
/// 				pulumi.String("java"),
/// 			},
/// 			EnvironmentVariables: pulumi.StringMap{
/// 				"Foo": pulumi.String("Bar"),
/// 				"Env": pulumi.String("Staging"),
/// 			},
/// 			Server:            pulumi.String("docker.io"),
/// 			Image:             pulumi.String("springio/gs-spring-boot-docker"),
/// 			LanguageFramework: pulumi.String("springboot"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example"
///   location = "West Europe"
/// }
/// resource "azure_appplatform_springcloudservice" "example" {
///   name                = "example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "E0"
/// }
/// resource "azure_appplatform_springcloudapp" "example" {
///   name                = "example"
///   resource_group_name = azure_appplatform_springcloudservice.example.resource_group_name
///   service_name        = azure_appplatform_springcloudservice.example.name
/// }
/// resource "azure_appplatform_springcloudcontainerdeployment" "example" {
///   name                = "example"
///   spring_cloud_app_id = azure_appplatform_springcloudapp.example.id
///   instance_count      = 2
///   arguments           = ["-cp", "/app/resources:/app/classes:/app/libs/*", "hello.Application"]
///   commands            = ["java"]
///   environment_variables = {
///     "Foo" = "Bar"
///     "Env" = "Staging"
///   }
///   server             = "docker.io"
///   image              = "springio/gs-spring-boot-docker"
///   language_framework = "springboot"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appplatform.SpringCloudService;
/// import com.pulumi.azure.appplatform.SpringCloudServiceArgs;
/// import com.pulumi.azure.appplatform.SpringCloudApp;
/// import com.pulumi.azure.appplatform.SpringCloudAppArgs;
/// import com.pulumi.azure.appplatform.SpringCloudContainerDeployment;
/// import com.pulumi.azure.appplatform.SpringCloudContainerDeploymentArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         var exampleSpringCloudService = new SpringCloudService("exampleSpringCloudService", SpringCloudServiceArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("E0")
///             .build());
///
///         var exampleSpringCloudApp = new SpringCloudApp("exampleSpringCloudApp", SpringCloudAppArgs.builder()
///             .name("example")
///             .resourceGroupName(exampleSpringCloudService.resourceGroupName())
///             .serviceName(exampleSpringCloudService.name())
///             .build());
///
///         var exampleSpringCloudContainerDeployment = new SpringCloudContainerDeployment("exampleSpringCloudContainerDeployment", SpringCloudContainerDeploymentArgs.builder()
///             .name("example")
///             .springCloudAppId(exampleSpringCloudApp.id())
///             .instanceCount(2)
///             .arguments(
///                 "-cp",
///                 "/app/resources:/app/classes:/app/libs/*",
///                 "hello.Application")
///             .commands("java")
///             .environmentVariables(Map.ofEntries(
///                 Map.entry("Foo", "Bar"),
///                 Map.entry("Env", "Staging")
///             ))
///             .server("docker.io")
///             .image("springio/gs-spring-boot-docker")
///             .languageFramework("springboot")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example
///       location: West Europe
///   exampleSpringCloudService:
///     type: azure:appplatform:SpringCloudService
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: E0
///   exampleSpringCloudApp:
///     type: azure:appplatform:SpringCloudApp
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${exampleSpringCloudService.resourceGroupName}
///       serviceName: ${exampleSpringCloudService.name}
///   exampleSpringCloudContainerDeployment:
///     type: azure:appplatform:SpringCloudContainerDeployment
///     name: example
///     properties:
///       name: example
///       springCloudAppId: ${exampleSpringCloudApp.id}
///       instanceCount: 2
///       arguments:
///         - -cp
///         - /app/resources:/app/classes:/app/libs/*
///         - hello.Application
///       commands:
///         - java
///       environmentVariables:
///         Foo: Bar
///         Env: Staging
///       server: docker.io
///       image: springio/gs-spring-boot-docker
///       languageFramework: springboot
/// ```
///
///
/// ## Import
///
/// Spring Cloud Container Deployments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudContainerDeployment:SpringCloudContainerDeployment example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.AppPlatform/spring/spring1/apps/app1/deployments/deploy1
/// ```
class SpringCloudContainerDeployment extends pulumi.CustomResource {
  /// A JSON object that contains the addon configurations of the Spring Cloud Container Deployment.
  late final pulumi.Output<String> addonJson;
  /// Specifies a list of Spring Cloud Application Performance Monitoring IDs.
  late final pulumi.Output<List<String>?> applicationPerformanceMonitoringIds;
  /// Specifies the arguments to the entrypoint. The docker image's `CMD` is used if not specified.
  late final pulumi.Output<List<String>?> arguments;
  /// Specifies the entrypoint array. It will not be executed within a shell. The docker image's `ENTRYPOINT` is used if not specified.
  late final pulumi.Output<List<String>?> commands;
  /// Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs.
  late final pulumi.Output<Map<String, String>?> environmentVariables;
  /// Container image of the custom container. This should be in the form of `&lt;repository&gt;:&lt;tag&gt;` without the server name of the registry.
  late final pulumi.Output<String> image;
  /// Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between `1` and `500`. Defaults to `1` if not specified.
  late final pulumi.Output<int?> instanceCount;
  /// Specifies the language framework of the container image. The only possible value is `springboot`.
  late final pulumi.Output<String?> languageFramework;
  /// The name which should be used for this Spring Cloud Container Deployment. Changing this forces a new Spring Cloud Container Deployment to be created.
  late final pulumi.Output<String> name;
  /// A `quota` block as defined below.
  late final pulumi.Output<SpringCloudContainerDeploymentQuota> quota;
  /// The name of the registry that contains the container image.
  late final pulumi.Output<String> server;
  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Container Deployment to be created.
  late final pulumi.Output<String> springCloudAppId;

  /// Creates a new [SpringCloudContainerDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudContainerDeployment]. {@macro pulumi_appplatform_spring_cloud_container_deployment_spring_cloud_container_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudContainerDeployment(
    String name, {
    SpringCloudContainerDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudContainerDeployment:SpringCloudContainerDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    addonJson = registerOutput<String>('addonJson');
    applicationPerformanceMonitoringIds = registerOutput<List<String>?>('applicationPerformanceMonitoringIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    arguments = registerOutput<List<String>?>('arguments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    commands = registerOutput<List<String>?>('commands', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    environmentVariables = registerOutput<Map<String, String>?>('environmentVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    image = registerOutput<String>('image');
    instanceCount = registerOutput<int?>('instanceCount');
    languageFramework = registerOutput<String?>('languageFramework');
    this.name = registerOutput<String>('name');
    quota = registerOutput<SpringCloudContainerDeploymentQuota>('quota', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudContainerDeploymentQuota.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    server = registerOutput<String>('server');
    springCloudAppId = registerOutput<String>('springCloudAppId');
  }

  /// Gets an existing [SpringCloudContainerDeployment] resource's state with the given [name] and [id].
  static SpringCloudContainerDeployment get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudContainerDeploymentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SpringCloudContainerDeployment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SpringCloudContainerDeployment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudContainerDeployment:SpringCloudContainerDeployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addonJson = registerOutput<String>('addonJson');
    applicationPerformanceMonitoringIds = registerOutput<List<String>?>('applicationPerformanceMonitoringIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    arguments = registerOutput<List<String>?>('arguments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    commands = registerOutput<List<String>?>('commands', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    environmentVariables = registerOutput<Map<String, String>?>('environmentVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    image = registerOutput<String>('image');
    instanceCount = registerOutput<int?>('instanceCount');
    languageFramework = registerOutput<String?>('languageFramework');
    this.name = registerOutput<String>('name');
    quota = registerOutput<SpringCloudContainerDeploymentQuota>('quota', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudContainerDeploymentQuota.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    server = registerOutput<String>('server');
    springCloudAppId = registerOutput<String>('springCloudAppId');
  }

  /// Creates a typed reference to an existing [SpringCloudContainerDeployment] resource.
  SpringCloudContainerDeployment.reference(String urn)
    : super(
        'azure:appplatform/springCloudContainerDeployment:SpringCloudContainerDeployment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    addonJson = registerOutput<String>('addonJson');
    applicationPerformanceMonitoringIds = registerOutput<List<String>?>('applicationPerformanceMonitoringIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    arguments = registerOutput<List<String>?>('arguments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    commands = registerOutput<List<String>?>('commands', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    environmentVariables = registerOutput<Map<String, String>?>('environmentVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    image = registerOutput<String>('image');
    instanceCount = registerOutput<int?>('instanceCount');
    languageFramework = registerOutput<String?>('languageFramework');
    this.name = registerOutput<String>('name');
    quota = registerOutput<SpringCloudContainerDeploymentQuota>('quota', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudContainerDeploymentQuota.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    server = registerOutput<String>('server');
    springCloudAppId = registerOutput<String>('springCloudAppId');
  }
}
