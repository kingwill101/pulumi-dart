import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_task_agent_setting.dart';
import 'registry_task_args.dart';
import 'registry_task_base_image_trigger.dart';
import 'registry_task_docker_step.dart';
import 'registry_task_encoded_step.dart';
import 'registry_task_file_step.dart';
import 'registry_task_identity.dart';
import 'registry_task_platform.dart';
import 'registry_task_registry_credential.dart';
import 'registry_task_source_trigger.dart';
import 'registry_task_state.dart';
import 'registry_task_timer_trigger.dart';

/// Manages a Container Registry Task.
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
///     name: "example",
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
///         contextPath: "https://github.com/<username>/<repository>#<branch>:<folder>",
///         contextAccessToken: "<github personal access token>",
///         imageNames: ["helloworld:{{.Run.ID}}"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_registry = azure.containerservice.Registry("example",
///     name="example",
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
///         "context_path": "https://github.com/<username>/<repository>#<branch>:<folder>",
///         "context_access_token": "<github personal access token>",
///         "image_names": ["helloworld:{{.Run.ID}}"],
///     })
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
///         Name = "example",
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
///             ContextPath = "https://github.com/<username>/<repository>#<branch>:<folder>",
///             ContextAccessToken = "<github personal access token>",
///             ImageNames = new[]
///             {
///                 "helloworld:{{.Run.ID}}",
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
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerservice.NewRegistryTask(ctx, "example", &containerservice.RegistryTaskArgs{
/// 			Name:                pulumi.String("example-task"),
/// 			ContainerRegistryId: exampleRegistry.ID().ToIDOutput().ToStringOutput(),
/// 			Platform: &containerservice.RegistryTaskPlatformArgs{
/// 				Os: pulumi.String("Linux"),
/// 			},
/// 			DockerStep: &containerservice.RegistryTaskDockerStepArgs{
/// 				DockerfilePath:     pulumi.String("Dockerfile"),
/// 				ContextPath:        pulumi.String("https://github.com/<username>/<repository>#<branch>:<folder>"),
/// 				ContextAccessToken: pulumi.String("<github personal access token>"),
/// 				ImageNames: pulumi.StringArray{
/// 					pulumi.String("helloworld:{{.Run.ID}}"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-rg"
///   location = "West Europe"
/// }
/// resource "azure_containerservice_registry" "example" {
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   sku                 = "Basic"
/// }
/// resource "azure_containerservice_registrytask" "example" {
///   name                  = "example-task"
///   container_registry_id = azure_containerservice_registry.example.id
///   platform = {
///     os = "Linux"
///   }
///   docker_step = {
///     dockerfile_path      = "Dockerfile"
///     context_path         = "https://github.com/<username>/<repository>#<branch>:<folder>"
///     context_access_token = "<github personal access token>"
///     image_names          = ["helloworld:{{.Run.ID}}"]
///   }
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
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleRegistry = new Registry("exampleRegistry", RegistryArgs.builder()
///             .name("example")
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
///                 .contextPath("https://github.com/<username>/<repository>#<branch>:<folder>")
///                 .contextAccessToken("<github personal access token>")
///                 .imageNames("helloworld:{{.Run.ID}}")
///                 .build())
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
///       name: example
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
///         contextPath: https://github.com/<username>/<repository>#<branch>:<folder>
///         contextAccessToken: <github personal access token>
///         imageNames:
///           - helloworld:{{.Run.ID}}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ContainerRegistry` - 2025-11-01, 2019-06-01-preview
///
/// ## Import
///
/// Container Registry Tasks can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerservice/registryTask:RegistryTask example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.ContainerRegistry/registries/registry1/tasks/task1
/// ```
class RegistryTask extends pulumi.CustomResource {
  /// The name of the dedicated Container Registry Agent Pool for this Container Registry Task.
  late final pulumi.Output<String?> agentPoolName;
  /// A `agentSetting` block as defined below.
  ///
  /// &gt; **Note:** Only one of `agentPoolName` and `agentSetting` can be specified.
  late final pulumi.Output<RegistryTaskAgentSetting?> agentSetting;
  /// A `baseImageTrigger` block as defined below.
  late final pulumi.Output<RegistryTaskBaseImageTrigger?> baseImageTrigger;
  /// The ID of the Container Registry that this Container Registry Task resides in. Changing this forces a new Container Registry Task to be created.
  late final pulumi.Output<String> containerRegistryId;
  /// A `dockerStep` block as defined below.
  late final pulumi.Output<RegistryTaskDockerStep?> dockerStep;
  /// Should this Container Registry Task be enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// A `encodedStep` block as defined below.
  late final pulumi.Output<RegistryTaskEncodedStep?> encodedStep;
  /// A `fileStep` block as defined below.
  ///
  /// &gt; **Note:** For non-system task (when `isSystemTask` is set to `false`), one and only one of the `dockerStep`, `encodedStep` and `fileStep` should be specified.
  late final pulumi.Output<RegistryTaskFileStep?> fileStep;
  /// An `identity` block as defined below.
  late final pulumi.Output<RegistryTaskIdentity?> identity;
  /// Whether this Container Registry Task is a system task. Changing this forces a new Container Registry Task to be created. Defaults to `false`.
  late final pulumi.Output<bool?> isSystemTask;
  late final pulumi.Output<String?> logTemplate;
  /// The name which should be used for this Container Registry Task. Changing this forces a new Container Registry Task to be created.
  late final pulumi.Output<String> name;
  /// A `platform` block as defined below.
  ///
  /// &gt; **Note:** The `platform` is required for non-system task (when `isSystemTask` is set to `false`).
  late final pulumi.Output<RegistryTaskPlatform?> platform;
  late final pulumi.Output<RegistryTaskRegistryCredential?> registryCredential;
  /// One or more `sourceTrigger` blocks as defined below.
  late final pulumi.Output<List<RegistryTaskSourceTrigger>?> sourceTriggers;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<int?> timeoutInSeconds;
  /// One or more `timerTrigger` blocks as defined below.
  late final pulumi.Output<List<RegistryTaskTimerTrigger>?> timerTriggers;

  /// Creates a new [RegistryTask].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryTask]. {@macro pulumi_containerservice_registry_task_registry_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryTask(
    String name, {
    RegistryTaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/registryTask:RegistryTask',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    agentPoolName = registerOutput<String?>('agentPoolName');
    agentSetting = registerOutput<RegistryTaskAgentSetting?>('agentSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskAgentSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    baseImageTrigger = registerOutput<RegistryTaskBaseImageTrigger?>('baseImageTrigger', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskBaseImageTrigger.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    containerRegistryId = registerOutput<String>('containerRegistryId');
    dockerStep = registerOutput<RegistryTaskDockerStep?>('dockerStep', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskDockerStep.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool?>('enabled');
    encodedStep = registerOutput<RegistryTaskEncodedStep?>('encodedStep', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskEncodedStep.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fileStep = registerOutput<RegistryTaskFileStep?>('fileStep', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskFileStep.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<RegistryTaskIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isSystemTask = registerOutput<bool?>('isSystemTask');
    logTemplate = registerOutput<String?>('logTemplate');
    this.name = registerOutput<String>('name');
    platform = registerOutput<RegistryTaskPlatform?>('platform', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskPlatform.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    registryCredential = registerOutput<RegistryTaskRegistryCredential?>('registryCredential', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskRegistryCredential.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceTriggers = registerOutput<List<RegistryTaskSourceTrigger>?>('sourceTriggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegistryTaskSourceTrigger>(guardedValue, (value) => RegistryTaskSourceTrigger.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeoutInSeconds = registerOutput<int?>('timeoutInSeconds');
    timerTriggers = registerOutput<List<RegistryTaskTimerTrigger>?>('timerTriggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegistryTaskTimerTrigger>(guardedValue, (value) => RegistryTaskTimerTrigger.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [RegistryTask] resource's state with the given [name] and [id].
  static RegistryTask get(
    String name,
    pulumi.Input<String> id, {
    RegistryTaskState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegistryTask._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegistryTask._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/registryTask:RegistryTask',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentPoolName = registerOutput<String?>('agentPoolName');
    agentSetting = registerOutput<RegistryTaskAgentSetting?>('agentSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskAgentSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    baseImageTrigger = registerOutput<RegistryTaskBaseImageTrigger?>('baseImageTrigger', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskBaseImageTrigger.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    containerRegistryId = registerOutput<String>('containerRegistryId');
    dockerStep = registerOutput<RegistryTaskDockerStep?>('dockerStep', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskDockerStep.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool?>('enabled');
    encodedStep = registerOutput<RegistryTaskEncodedStep?>('encodedStep', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskEncodedStep.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fileStep = registerOutput<RegistryTaskFileStep?>('fileStep', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskFileStep.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<RegistryTaskIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isSystemTask = registerOutput<bool?>('isSystemTask');
    logTemplate = registerOutput<String?>('logTemplate');
    this.name = registerOutput<String>('name');
    platform = registerOutput<RegistryTaskPlatform?>('platform', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskPlatform.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    registryCredential = registerOutput<RegistryTaskRegistryCredential?>('registryCredential', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskRegistryCredential.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceTriggers = registerOutput<List<RegistryTaskSourceTrigger>?>('sourceTriggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegistryTaskSourceTrigger>(guardedValue, (value) => RegistryTaskSourceTrigger.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeoutInSeconds = registerOutput<int?>('timeoutInSeconds');
    timerTriggers = registerOutput<List<RegistryTaskTimerTrigger>?>('timerTriggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegistryTaskTimerTrigger>(guardedValue, (value) => RegistryTaskTimerTrigger.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [RegistryTask] resource.
  RegistryTask.reference(String urn)
    : super(
        'azure:containerservice/registryTask:RegistryTask',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    agentPoolName = registerOutput<String?>('agentPoolName');
    agentSetting = registerOutput<RegistryTaskAgentSetting?>('agentSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskAgentSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    baseImageTrigger = registerOutput<RegistryTaskBaseImageTrigger?>('baseImageTrigger', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskBaseImageTrigger.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    containerRegistryId = registerOutput<String>('containerRegistryId');
    dockerStep = registerOutput<RegistryTaskDockerStep?>('dockerStep', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskDockerStep.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool?>('enabled');
    encodedStep = registerOutput<RegistryTaskEncodedStep?>('encodedStep', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskEncodedStep.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fileStep = registerOutput<RegistryTaskFileStep?>('fileStep', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskFileStep.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<RegistryTaskIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isSystemTask = registerOutput<bool?>('isSystemTask');
    logTemplate = registerOutput<String?>('logTemplate');
    this.name = registerOutput<String>('name');
    platform = registerOutput<RegistryTaskPlatform?>('platform', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskPlatform.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    registryCredential = registerOutput<RegistryTaskRegistryCredential?>('registryCredential', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTaskRegistryCredential.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceTriggers = registerOutput<List<RegistryTaskSourceTrigger>?>('sourceTriggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegistryTaskSourceTrigger>(guardedValue, (value) => RegistryTaskSourceTrigger.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeoutInSeconds = registerOutput<int?>('timeoutInSeconds');
    timerTriggers = registerOutput<List<RegistryTaskTimerTrigger>?>('timerTriggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegistryTaskTimerTrigger>(guardedValue, (value) => RegistryTaskTimerTrigger.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
