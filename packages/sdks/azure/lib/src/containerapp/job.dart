import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_args.dart';
import 'job_event_trigger_config.dart';
import 'job_identity.dart';
import 'job_manual_trigger_config.dart';
import 'job_registry.dart';
import 'job_schedule_trigger_config.dart';
import 'job_secret.dart';
import 'job_state.dart';
import 'job_template.dart';

/// Manages a Container App Job.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "example-log-analytics-workspace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
///     retentionInDays: 30,
/// });
/// const exampleEnvironment = new azure.containerapp.Environment("example", {
///     name: "example-container-app-environment",
///     location: example.location,
///     resourceGroupName: example.name,
///     logAnalyticsWorkspaceId: exampleAnalyticsWorkspace.id,
/// });
/// const exampleJob = new azure.containerapp.Job("example", {
///     name: "example-container-app-job",
///     location: example.location,
///     resourceGroupName: example.name,
///     containerAppEnvironmentId: exampleEnvironment.id,
///     replicaTimeoutInSeconds: 10,
///     replicaRetryLimit: 10,
///     manualTriggerConfig: {
///         parallelism: 4,
///         replicaCompletionCount: 1,
///     },
///     template: {
///         containers: [{
///             image: "repo/testcontainerAppsJob0:v1",
///             name: "testcontainerappsjob0",
///             readinessProbes: [{
///                 transport: "HTTP",
///                 port: 5000,
///             }],
///             livenessProbes: [{
///                 transport: "HTTP",
///                 port: 5000,
///                 path: "/health",
///                 headers: [{
///                     name: "Cache-Control",
///                     value: "no-cache",
///                 }],
///                 initialDelay: 5,
///                 intervalSeconds: 20,
///                 timeout: 2,
///                 failureCountThreshold: 1,
///             }],
///             startupProbes: [{
///                 transport: "TCP",
///                 port: 5000,
///             }],
///             cpu: 0.5,
///             memory: "1Gi",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="example-log-analytics-workspace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018",
///     retention_in_days=30)
/// example_environment = azure.containerapp.Environment("example",
///     name="example-container-app-environment",
///     location=example.location,
///     resource_group_name=example.name,
///     log_analytics_workspace_id=example_analytics_workspace.id)
/// example_job = azure.containerapp.Job("example",
///     name="example-container-app-job",
///     location=example.location,
///     resource_group_name=example.name,
///     container_app_environment_id=example_environment.id,
///     replica_timeout_in_seconds=10,
///     replica_retry_limit=10,
///     manual_trigger_config={
///         "parallelism": 4,
///         "replica_completion_count": 1,
///     },
///     template={
///         "containers": [{
///             "image": "repo/testcontainerAppsJob0:v1",
///             "name": "testcontainerappsjob0",
///             "readiness_probes": [{
///                 "transport": "HTTP",
///                 "port": 5000,
///             }],
///             "liveness_probes": [{
///                 "transport": "HTTP",
///                 "port": 5000,
///                 "path": "/health",
///                 "headers": [{
///                     "name": "Cache-Control",
///                     "value": "no-cache",
///                 }],
///                 "initial_delay": 5,
///                 "interval_seconds": 20,
///                 "timeout": 2,
///                 "failure_count_threshold": 1,
///             }],
///             "startup_probes": [{
///                 "transport": "TCP",
///                 "port": 5000,
///             }],
///             "cpu": 0.5,
///             "memory": "1Gi",
///         }],
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "example-log-analytics-workspace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///         RetentionInDays = 30,
///     });
///
///     var exampleEnvironment = new Azure.ContainerApp.Environment("example", new()
///     {
///         Name = "example-container-app-environment",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         LogAnalyticsWorkspaceId = exampleAnalyticsWorkspace.Id,
///     });
///
///     var exampleJob = new Azure.ContainerApp.Job("example", new()
///     {
///         Name = "example-container-app-job",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ContainerAppEnvironmentId = exampleEnvironment.Id,
///         ReplicaTimeoutInSeconds = 10,
///         ReplicaRetryLimit = 10,
///         ManualTriggerConfig = new Azure.ContainerApp.Inputs.JobManualTriggerConfigArgs
///         {
///             Parallelism = 4,
///             ReplicaCompletionCount = 1,
///         },
///         Template = new Azure.ContainerApp.Inputs.JobTemplateArgs
///         {
///             Containers = new[]
///             {
///                 new Azure.ContainerApp.Inputs.JobTemplateContainerArgs
///                 {
///                     Image = "repo/testcontainerAppsJob0:v1",
///                     Name = "testcontainerappsjob0",
///                     ReadinessProbes = new[]
///                     {
///                         new Azure.ContainerApp.Inputs.JobTemplateContainerReadinessProbeArgs
///                         {
///                             Transport = "HTTP",
///                             Port = 5000,
///                         },
///                     },
///                     LivenessProbes = new[]
///                     {
///                         new Azure.ContainerApp.Inputs.JobTemplateContainerLivenessProbeArgs
///                         {
///                             Transport = "HTTP",
///                             Port = 5000,
///                             Path = "/health",
///                             Headers = new[]
///                             {
///                                 new Azure.ContainerApp.Inputs.JobTemplateContainerLivenessProbeHeaderArgs
///                                 {
///                                     Name = "Cache-Control",
///                                     Value = "no-cache",
///                                 },
///                             },
///                             InitialDelay = 5,
///                             IntervalSeconds = 20,
///                             Timeout = 2,
///                             FailureCountThreshold = 1,
///                         },
///                     },
///                     StartupProbes = new[]
///                     {
///                         new Azure.ContainerApp.Inputs.JobTemplateContainerStartupProbeArgs
///                         {
///                             Transport = "TCP",
///                             Port = 5000,
///                         },
///                     },
///                     Cpu = 0.5,
///                     Memory = "1Gi",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerapp"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("example-log-analytics-workspace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 			RetentionInDays:   pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEnvironment, err := containerapp.NewEnvironment(ctx, "example", &containerapp.EnvironmentArgs{
/// 			Name:                    pulumi.String("example-container-app-environment"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			LogAnalyticsWorkspaceId: exampleAnalyticsWorkspace.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerapp.NewJob(ctx, "example", &containerapp.JobArgs{
/// 			Name:                      pulumi.String("example-container-app-job"),
/// 			Location:                  example.Location,
/// 			ResourceGroupName:         example.Name,
/// 			ContainerAppEnvironmentId: exampleEnvironment.ID().ToIDOutput().ToStringOutput(),
/// 			ReplicaTimeoutInSeconds:   pulumi.Int(10),
/// 			ReplicaRetryLimit:         pulumi.Int(10),
/// 			ManualTriggerConfig: &containerapp.JobManualTriggerConfigArgs{
/// 				Parallelism:            pulumi.Int(4),
/// 				ReplicaCompletionCount: pulumi.Int(1),
/// 			},
/// 			Template: &containerapp.JobTemplateArgs{
/// 				Containers: containerapp.JobTemplateContainerArray{
/// 					&containerapp.JobTemplateContainerArgs{
/// 						Image: pulumi.String("repo/testcontainerAppsJob0:v1"),
/// 						Name:  pulumi.String("testcontainerappsjob0"),
/// 						ReadinessProbes: containerapp.JobTemplateContainerReadinessProbeArray{
/// 							&containerapp.JobTemplateContainerReadinessProbeArgs{
/// 								Transport: pulumi.String("HTTP"),
/// 								Port:      pulumi.Int(5000),
/// 							},
/// 						},
/// 						LivenessProbes: containerapp.JobTemplateContainerLivenessProbeArray{
/// 							&containerapp.JobTemplateContainerLivenessProbeArgs{
/// 								Transport: pulumi.String("HTTP"),
/// 								Port:      pulumi.Int(5000),
/// 								Path:      pulumi.String("/health"),
/// 								Headers: containerapp.JobTemplateContainerLivenessProbeHeaderArray{
/// 									&containerapp.JobTemplateContainerLivenessProbeHeaderArgs{
/// 										Name:  pulumi.String("Cache-Control"),
/// 										Value: pulumi.String("no-cache"),
/// 									},
/// 								},
/// 								InitialDelay:          pulumi.Int(5),
/// 								IntervalSeconds:       pulumi.Int(20),
/// 								Timeout:               pulumi.Int(2),
/// 								FailureCountThreshold: pulumi.Int(1),
/// 							},
/// 						},
/// 						StartupProbes: containerapp.JobTemplateContainerStartupProbeArray{
/// 							&containerapp.JobTemplateContainerStartupProbeArgs{
/// 								Transport: pulumi.String("TCP"),
/// 								Port:      pulumi.Int(5000),
/// 							},
/// 						},
/// 						Cpu:    pulumi.Float64(0.5),
/// 						Memory: pulumi.String("1Gi"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_operationalinsights_analyticsworkspace" "example" {
///   name                = "example-log-analytics-workspace"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "PerGB2018"
///   retention_in_days   = 30
/// }
/// resource "azure_containerapp_environment" "example" {
///   name                       = "example-container-app-environment"
///   location                   = azure_core_resourcegroup.example.location
///   resource_group_name        = azure_core_resourcegroup.example.name
///   log_analytics_workspace_id = azure_operationalinsights_analyticsworkspace.example.id
/// }
/// resource "azure_containerapp_job" "example" {
///   name                         = "example-container-app-job"
///   location                     = azure_core_resourcegroup.example.location
///   resource_group_name          = azure_core_resourcegroup.example.name
///   container_app_environment_id = azure_containerapp_environment.example.id
///   replica_timeout_in_seconds   = 10
///   replica_retry_limit          = 10
///   manual_trigger_config = {
///     parallelism              = 4
///     replica_completion_count = 1
///   }
///   template = {
///     containers = [{
///       "image" = "repo/testcontainerAppsJob0:v1"
///       "name"  = "testcontainerappsjob0"
///       "readinessProbes" = [{
///         "transport" = "HTTP"
///         "port"      = 5000
///       }]
///       "livenessProbes" = [{
///         "transport" = "HTTP"
///         "port"      = 5000
///         "path"      = "/health"
///         "headers" = [{
///           "name"  = "Cache-Control"
///           "value" = "no-cache"
///         }]
///         "initialDelay"          = 5
///         "intervalSeconds"       = 20
///         "timeout"               = 2
///         "failureCountThreshold" = 1
///       }]
///       "startupProbes" = [{
///         "transport" = "TCP"
///         "port"      = 5000
///       }]
///       "cpu"    = 0.5
///       "memory" = "1Gi"
///     }]
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
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.containerapp.Environment;
/// import com.pulumi.azure.containerapp.EnvironmentArgs;
/// import com.pulumi.azure.containerapp.Job;
/// import com.pulumi.azure.containerapp.JobArgs;
/// import com.pulumi.azure.containerapp.inputs.JobManualTriggerConfigArgs;
/// import com.pulumi.azure.containerapp.inputs.JobTemplateArgs;
/// import com.pulumi.azure.containerapp.inputs.JobTemplateContainerArgs;
/// import com.pulumi.azure.containerapp.inputs.JobTemplateContainerReadinessProbeArgs;
/// import com.pulumi.azure.containerapp.inputs.JobTemplateContainerLivenessProbeArgs;
/// import com.pulumi.azure.containerapp.inputs.JobTemplateContainerLivenessProbeHeaderArgs;
/// import com.pulumi.azure.containerapp.inputs.JobTemplateContainerStartupProbeArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("example-log-analytics-workspace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .retentionInDays(30)
///             .build());
///
///         var exampleEnvironment = new Environment("exampleEnvironment", EnvironmentArgs.builder()
///             .name("example-container-app-environment")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .logAnalyticsWorkspaceId(exampleAnalyticsWorkspace.id())
///             .build());
///
///         var exampleJob = new Job("exampleJob", JobArgs.builder()
///             .name("example-container-app-job")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .containerAppEnvironmentId(exampleEnvironment.id())
///             .replicaTimeoutInSeconds(10)
///             .replicaRetryLimit(10)
///             .manualTriggerConfig(JobManualTriggerConfigArgs.builder()
///                 .parallelism(4)
///                 .replicaCompletionCount(1)
///                 .build())
///             .template(JobTemplateArgs.builder()
///                 .containers(JobTemplateContainerArgs.builder()
///                     .image("repo/testcontainerAppsJob0:v1")
///                     .name("testcontainerappsjob0")
///                     .readinessProbes(JobTemplateContainerReadinessProbeArgs.builder()
///                         .transport("HTTP")
///                         .port(5000)
///                         .build())
///                     .livenessProbes(JobTemplateContainerLivenessProbeArgs.builder()
///                         .transport("HTTP")
///                         .port(5000)
///                         .path("/health")
///                         .headers(JobTemplateContainerLivenessProbeHeaderArgs.builder()
///                             .name("Cache-Control")
///                             .value("no-cache")
///                             .build())
///                         .initialDelay(5)
///                         .intervalSeconds(20)
///                         .timeout(2)
///                         .failureCountThreshold(1)
///                         .build())
///                     .startupProbes(JobTemplateContainerStartupProbeArgs.builder()
///                         .transport("TCP")
///                         .port(5000)
///                         .build())
///                     .cpu(0.5)
///                     .memory("1Gi")
///                     .build())
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
///       name: example-resources
///       location: West Europe
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: example-log-analytics-workspace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///       retentionInDays: 30
///   exampleEnvironment:
///     type: azure:containerapp:Environment
///     name: example
///     properties:
///       name: example-container-app-environment
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       logAnalyticsWorkspaceId: ${exampleAnalyticsWorkspace.id}
///   exampleJob:
///     type: azure:containerapp:Job
///     name: example
///     properties:
///       name: example-container-app-job
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       containerAppEnvironmentId: ${exampleEnvironment.id}
///       replicaTimeoutInSeconds: 10
///       replicaRetryLimit: 10
///       manualTriggerConfig:
///         parallelism: 4
///         replicaCompletionCount: 1
///       template:
///         containers:
///           - image: repo/testcontainerAppsJob0:v1
///             name: testcontainerappsjob0
///             readinessProbes:
///               - transport: HTTP
///                 port: 5000
///             livenessProbes:
///               - transport: HTTP
///                 port: 5000
///                 path: /health
///                 headers:
///                   - name: Cache-Control
///                     value: no-cache
///                 initialDelay: 5
///                 intervalSeconds: 20
///                 timeout: 2
///                 failureCountThreshold: 1
///             startupProbes:
///               - transport: TCP
///                 port: 5000
///             cpu: 0.5
///             memory: 1Gi
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.App` - 2025-07-01
///
/// ## Import
///
/// A Container App Job can be imported using the resource id, e.g.
///
/// ```sh
/// $ pulumi import azure:containerapp/job:Job example "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-resources/providers/Microsoft.App/jobs/example-container-app-job"
/// ```
class Job extends pulumi.CustomResource {
  /// The ID of the Container App Environment in which to create the Container App Job. Changing this forces a new resource to be created.
  late final pulumi.Output<String> containerAppEnvironmentId;
  /// The endpoint for the Container App Job event stream.
  late final pulumi.Output<String> eventStreamEndpoint;
  /// A `eventTriggerConfig` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<JobEventTriggerConfig?> eventTriggerConfig;
  /// A `identity` block as defined below.
  late final pulumi.Output<JobIdentity?> identity;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// A `manualTriggerConfig` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<JobManualTriggerConfig?> manualTriggerConfig;
  /// Specifies the name of the Container App Job resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A list of the Public IP Addresses which the Container App uses for outbound network access.
  late final pulumi.Output<List<String>> outboundIpAddresses;
  /// One or more `registry` blocks as defined below.
  late final pulumi.Output<List<JobRegistry>?> registries;
  /// The maximum number of times a replica is allowed to retry.
  late final pulumi.Output<int?> replicaRetryLimit;
  /// The maximum number of seconds a replica is allowed to run.
  late final pulumi.Output<int> replicaTimeoutInSeconds;
  /// The name of the resource group in which to create the Container App Job. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `scheduleTriggerConfig` block as defined below. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Only one of `manualTriggerConfig`, `eventTriggerConfig` or `scheduleTriggerConfig` can be specified.
  late final pulumi.Output<JobScheduleTriggerConfig?> scheduleTriggerConfig;
  /// One or more `secret` blocks as defined below.
  late final pulumi.Output<List<JobSecret>?> secrets;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A `template` block as defined below.
  late final pulumi.Output<JobTemplate> template;
  /// The name of the workload profile to use for the Container App Job.
  late final pulumi.Output<String?> workloadProfileName;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_containerapp_job_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(
    String name, {
    JobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerapp/job:Job',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['secrets'],
        ) {
    containerAppEnvironmentId = registerOutput<String>('containerAppEnvironmentId');
    eventStreamEndpoint = registerOutput<String>('eventStreamEndpoint');
    eventTriggerConfig = registerOutput<JobEventTriggerConfig?>('eventTriggerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobEventTriggerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<JobIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    manualTriggerConfig = registerOutput<JobManualTriggerConfig?>('manualTriggerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobManualTriggerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    outboundIpAddresses = registerOutput<List<String>>('outboundIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    registries = registerOutput<List<JobRegistry>?>('registries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<JobRegistry>(guardedValue, (value) => JobRegistry.fromMap((value as Map).cast<String, dynamic>())); });
    replicaRetryLimit = registerOutput<int?>('replicaRetryLimit');
    replicaTimeoutInSeconds = registerOutput<int>('replicaTimeoutInSeconds');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scheduleTriggerConfig = registerOutput<JobScheduleTriggerConfig?>('scheduleTriggerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobScheduleTriggerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secrets = registerOutput<List<JobSecret>?>('secrets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<JobSecret>(guardedValue, (value) => JobSecret.fromMap((value as Map).cast<String, dynamic>())); }, isSecret: true);
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    template = registerOutput<JobTemplate>('template', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workloadProfileName = registerOutput<String?>('workloadProfileName');
  }

  /// Gets an existing [Job] resource's state with the given [name] and [id].
  static Job get(
    String name,
    pulumi.Input<String> id, {
    JobState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Job._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Job._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerapp/job:Job',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    containerAppEnvironmentId = registerOutput<String>('containerAppEnvironmentId');
    eventStreamEndpoint = registerOutput<String>('eventStreamEndpoint');
    eventTriggerConfig = registerOutput<JobEventTriggerConfig?>('eventTriggerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobEventTriggerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<JobIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    manualTriggerConfig = registerOutput<JobManualTriggerConfig?>('manualTriggerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobManualTriggerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    outboundIpAddresses = registerOutput<List<String>>('outboundIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    registries = registerOutput<List<JobRegistry>?>('registries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<JobRegistry>(guardedValue, (value) => JobRegistry.fromMap((value as Map).cast<String, dynamic>())); });
    replicaRetryLimit = registerOutput<int?>('replicaRetryLimit');
    replicaTimeoutInSeconds = registerOutput<int>('replicaTimeoutInSeconds');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scheduleTriggerConfig = registerOutput<JobScheduleTriggerConfig?>('scheduleTriggerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobScheduleTriggerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secrets = registerOutput<List<JobSecret>?>('secrets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<JobSecret>(guardedValue, (value) => JobSecret.fromMap((value as Map).cast<String, dynamic>())); }, isSecret: true);
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    template = registerOutput<JobTemplate>('template', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workloadProfileName = registerOutput<String?>('workloadProfileName');
  }

  /// Creates a typed reference to an existing [Job] resource.
  Job.reference(String urn)
    : super(
        'azure:containerapp/job:Job',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['secrets'],
        isResourceReference: true,
      ) {
    containerAppEnvironmentId = registerOutput<String>('containerAppEnvironmentId');
    eventStreamEndpoint = registerOutput<String>('eventStreamEndpoint');
    eventTriggerConfig = registerOutput<JobEventTriggerConfig?>('eventTriggerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobEventTriggerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<JobIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    manualTriggerConfig = registerOutput<JobManualTriggerConfig?>('manualTriggerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobManualTriggerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    outboundIpAddresses = registerOutput<List<String>>('outboundIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    registries = registerOutput<List<JobRegistry>?>('registries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<JobRegistry>(guardedValue, (value) => JobRegistry.fromMap((value as Map).cast<String, dynamic>())); });
    replicaRetryLimit = registerOutput<int?>('replicaRetryLimit');
    replicaTimeoutInSeconds = registerOutput<int>('replicaTimeoutInSeconds');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scheduleTriggerConfig = registerOutput<JobScheduleTriggerConfig?>('scheduleTriggerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobScheduleTriggerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secrets = registerOutput<List<JobSecret>?>('secrets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<JobSecret>(guardedValue, (value) => JobSecret.fromMap((value as Map).cast<String, dynamic>())); }, isSecret: true);
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    template = registerOutput<JobTemplate>('template', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workloadProfileName = registerOutput<String?>('workloadProfileName');
  }
}
