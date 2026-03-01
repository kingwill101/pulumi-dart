import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_task_schedule_run_now_args.dart';
import 'registry_task_schedule_run_now_state.dart';

/// Runs a Container Registry Task Schedule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "West Europe",
/// });
/// const exampleRegistry = new azure.containerservice.Registry("example", {
///     name: "example-acr",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "Basic",
/// });
/// const exampleRegistryTask = new azure.containerservice.RegistryTask("example", {
///     name: "example-task",
///     containerRegistryId: exampleRegistry.id,
///     platform: {
///         os: "Linux",
///     },
///     dockerStep: {
///         dockerfilePath: "Dockerfile",
///         contextPath: "https://github.com/<user name>/acr-build-helloworld-node#main",
///         contextAccessToken: "<github personal access token>",
///         imageNames: ["helloworld:{{.Run.ID}}"],
///     },
/// });
/// const exampleRegistryTaskScheduleRunNow = new azure.containerservice.RegistryTaskScheduleRunNow("example", {containerRegistryTaskId: exampleRegistryTask.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_registry = azure.containerservice.Registry("example",
///     name="example-acr",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="Basic")
/// example_registry_task = azure.containerservice.RegistryTask("example",
///     name="example-task",
///     container_registry_id=example_registry.id,
///     platform={
///         "os": "Linux",
///     },
///     docker_step={
///         "dockerfile_path": "Dockerfile",
///         "context_path": "https://github.com/<user name>/acr-build-helloworld-node#main",
///         "context_access_token": "<github personal access token>",
///         "image_names": ["helloworld:{{.Run.ID}}"],
///     })
/// example_registry_task_schedule_run_now = azure.containerservice.RegistryTaskScheduleRunNow("example", container_registry_task_id=example_registry_task.id)
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
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var exampleRegistry = new Azure.ContainerService.Registry("example", new()
///     {
///         Name = "example-acr",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "Basic",
///     });
///
///     var exampleRegistryTask = new Azure.ContainerService.RegistryTask("example", new()
///     {
///         Name = "example-task",
///         ContainerRegistryId = exampleRegistry.Id,
///         Platform = new Azure.ContainerService.Inputs.RegistryTaskPlatformArgs
///         {
///             Os = "Linux",
///         },
///         DockerStep = new Azure.ContainerService.Inputs.RegistryTaskDockerStepArgs
///         {
///             DockerfilePath = "Dockerfile",
///             ContextPath = "https://github.com/<user name>/acr-build-helloworld-node#main",
///             ContextAccessToken = "<github personal access token>",
///             ImageNames = new[]
///             {
///                 "helloworld:{{.Run.ID}}",
///             },
///         },
///     });
///
///     var exampleRegistryTaskScheduleRunNow = new Azure.ContainerService.RegistryTaskScheduleRunNow("example", new()
///     {
///         ContainerRegistryTaskId = exampleRegistryTask.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRegistry, err := containerservice.NewRegistry(ctx, "example", &containerservice.RegistryArgs{
/// 			Name:              pulumi.String("example-acr"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRegistryTask, err := containerservice.NewRegistryTask(ctx, "example", &containerservice.RegistryTaskArgs{
/// 			Name:                pulumi.String("example-task"),
/// 			ContainerRegistryId: exampleRegistry.ID(),
/// 			Platform: &containerservice.RegistryTaskPlatformArgs{
/// 				Os: pulumi.String("Linux"),
/// 			},
/// 			DockerStep: &containerservice.RegistryTaskDockerStepArgs{
/// 				DockerfilePath:     pulumi.String("Dockerfile"),
/// 				ContextPath:        pulumi.String("https://github.com/<user name>/acr-build-helloworld-node#main"),
/// 				ContextAccessToken: pulumi.String("<github personal access token>"),
/// 				ImageNames: pulumi.StringArray{
/// 					pulumi.String("helloworld:{{.Run.ID}}"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerservice.NewRegistryTaskScheduleRunNow(ctx, "example", &containerservice.RegistryTaskScheduleRunNowArgs{
/// 			ContainerRegistryTaskId: exampleRegistryTask.ID(),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.containerservice.Registry;
/// import com.pulumi.azure.containerservice.RegistryArgs;
/// import com.pulumi.azure.containerservice.RegistryTask;
/// import com.pulumi.azure.containerservice.RegistryTaskArgs;
/// import com.pulumi.azure.containerservice.inputs.RegistryTaskPlatformArgs;
/// import com.pulumi.azure.containerservice.inputs.RegistryTaskDockerStepArgs;
/// import com.pulumi.azure.containerservice.RegistryTaskScheduleRunNow;
/// import com.pulumi.azure.containerservice.RegistryTaskScheduleRunNowArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleRegistry = new Registry("exampleRegistry", RegistryArgs.builder()
///             .name("example-acr")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("Basic")
///             .build());
///
///         var exampleRegistryTask = new RegistryTask("exampleRegistryTask", RegistryTaskArgs.builder()
///             .name("example-task")
///             .containerRegistryId(exampleRegistry.id())
///             .platform(RegistryTaskPlatformArgs.builder()
///                 .os("Linux")
///                 .build())
///             .dockerStep(RegistryTaskDockerStepArgs.builder()
///                 .dockerfilePath("Dockerfile")
///                 .contextPath("https://github.com/<user name>/acr-build-helloworld-node#main")
///                 .contextAccessToken("<github personal access token>")
///                 .imageNames("helloworld:{{.Run.ID}}")
///                 .build())
///             .build());
///
///         var exampleRegistryTaskScheduleRunNow = new RegistryTaskScheduleRunNow("exampleRegistryTaskScheduleRunNow", RegistryTaskScheduleRunNowArgs.builder()
///             .containerRegistryTaskId(exampleRegistryTask.id())
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
///       name: example-rg
///       location: West Europe
///   exampleRegistry:
///     type: azure:containerservice:Registry
///     name: example
///     properties:
///       name: example-acr
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: Basic
///   exampleRegistryTask:
///     type: azure:containerservice:RegistryTask
///     name: example
///     properties:
///       name: example-task
///       containerRegistryId: ${exampleRegistry.id}
///       platform:
///         os: Linux
///       dockerStep:
///         dockerfilePath: Dockerfile
///         contextPath: https://github.com/<user name>/acr-build-helloworld-node#main
///         contextAccessToken: <github personal access token>
///         imageNames:
///           - helloworld:{{.Run.ID}}
///   exampleRegistryTaskScheduleRunNow:
///     type: azure:containerservice:RegistryTaskScheduleRunNow
///     name: example
///     properties:
///       containerRegistryTaskId: ${exampleRegistryTask.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ContainerRegistry` - 2019-06-01-preview
class RegistryTaskScheduleRunNow extends pulumi.CustomResource {
  /// The ID of the Container Registry Task that to be scheduled. Changing this forces a new Container Registry Task Schedule to be created.
  late final pulumi.Output<String> containerRegistryTaskId;

  /// Creates a new [RegistryTaskScheduleRunNow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryTaskScheduleRunNow]. {@macro pulumi_containerservice_registry_task_schedule_run_now_registry_task_schedule_run_now_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryTaskScheduleRunNow(
    String name, {
    RegistryTaskScheduleRunNowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/registryTaskScheduleRunNow:RegistryTaskScheduleRunNow',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.containerRegistryTaskId = registerOutput<String>('containerRegistryTaskId');
  }

  /// Gets an existing [RegistryTaskScheduleRunNow] resource's state with the given [name] and [id].
  static RegistryTaskScheduleRunNow get(
    String name,
    pulumi.Input<String> id, {
    RegistryTaskScheduleRunNowState? state,
  }) {
    return RegistryTaskScheduleRunNow._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegistryTaskScheduleRunNow._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/registryTaskScheduleRunNow:RegistryTaskScheduleRunNow',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.containerRegistryTaskId = registerOutput<String>('containerRegistryTaskId');
  }
}
