import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_schedule_args.dart';
import 'ai_schedule_create_notebook_execution_job_request.dart';
import 'ai_schedule_create_pipeline_job_request.dart';
import 'ai_schedule_last_scheduled_run_response.dart';
import 'ai_schedule_state.dart';

/// &gt; **Warning:** `gcp.vertex.AiSchedule` is deprecated and will be removed in a future major release. Use `gcp.colab.Schedule` instead.
///
/// An online schedule that triggers running pipeline jobs or notebook execution jobs.
///
///
///
/// ## Example Usage
///
/// ### Vertex Ai Schedule
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "pipeline-job",
///     location: "us-central1",
///     uniformBucketLevelAccess: true,
///     forceDestroy: true,
/// });
/// const schedule = new gcp.vertex.AiSchedule("schedule", {
///     displayName: "test-schedule",
///     location: "us-central1",
///     maxConcurrentRunCount: "2",
///     cron: "*/5 * * * *",
///     allowQueueing: true,
///     maxConcurrentActiveRunCount: "2",
///     maxRunCount: "10",
///     startTime: "2030-01-01T00:00:00Z",
///     endTime: "2030-01-02T00:00:00Z",
///     createPipelineJobRequest: {
///         parent: project.then(project => `projects/${project.projectId}/locations/us-central1`),
///         pipelineJob: {
///             displayName: "test-pipeline-job",
///             preflightValidations: true,
///             labels: {
///                 key: "value-one",
///             },
///             pipelineSpec: JSON.stringify({
///                 pipelineInfo: {
///                     name: "hello-world",
///                 },
///                 root: {
///                     dag: {
///                         tasks: {},
///                     },
///                 },
///                 schemaVersion: "2.1.0",
///                 sdkVersion: "kfp-2.0.0",
///             }),
///             runtimeConfig: {
///                 gcsOutputDirectory: pulumi.interpolate`gs://${bucket.name}/pipeline_root`,
///                 failurePolicy: "PIPELINE_FAILURE_POLICY_FAIL_FAST",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// bucket = gcp.storage.Bucket("bucket",
///     name="pipeline-job",
///     location="us-central1",
///     uniform_bucket_level_access=True,
///     force_destroy=True)
/// schedule = gcp.vertex.AiSchedule("schedule",
///     display_name="test-schedule",
///     location="us-central1",
///     max_concurrent_run_count="2",
///     cron="*/5 * * * *",
///     allow_queueing=True,
///     max_concurrent_active_run_count="2",
///     max_run_count="10",
///     start_time="2030-01-01T00:00:00Z",
///     end_time="2030-01-02T00:00:00Z",
///     create_pipeline_job_request={
///         "parent": f"projects/{project.project_id}/locations/us-central1",
///         "pipeline_job": {
///             "display_name": "test-pipeline-job",
///             "preflight_validations": True,
///             "labels": {
///                 "key": "value-one",
///             },
///             "pipeline_spec": json.dumps({
///                 "pipelineInfo": {
///                     "name": "hello-world",
///                 },
///                 "root": {
///                     "dag": {
///                         "tasks": {},
///                     },
///                 },
///                 "schemaVersion": "2.1.0",
///                 "sdkVersion": "kfp-2.0.0",
///             }),
///             "runtime_config": {
///                 "gcs_output_directory": bucket.name.apply(lambda name: f"gs://{name}/pipeline_root"),
///                 "failure_policy": "PIPELINE_FAILURE_POLICY_FAIL_FAST",
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "pipeline-job",
///         Location = "us-central1",
///         UniformBucketLevelAccess = true,
///         ForceDestroy = true,
///     });
///
///     var schedule = new Gcp.Vertex.AiSchedule("schedule", new()
///     {
///         DisplayName = "test-schedule",
///         Location = "us-central1",
///         MaxConcurrentRunCount = "2",
///         Cron = "*/5 * * * *",
///         AllowQueueing = true,
///         MaxConcurrentActiveRunCount = "2",
///         MaxRunCount = "10",
///         StartTime = "2030-01-01T00:00:00Z",
///         EndTime = "2030-01-02T00:00:00Z",
///         CreatePipelineJobRequest = new Gcp.Vertex.Inputs.AiScheduleCreatePipelineJobRequestArgs
///         {
///             Parent = $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/locations/us-central1",
///             PipelineJob = new Gcp.Vertex.Inputs.AiScheduleCreatePipelineJobRequestPipelineJobArgs
///             {
///                 DisplayName = "test-pipeline-job",
///                 PreflightValidations = true,
///                 Labels =
///                 {
///                     { "key", "value-one" },
///                 },
///                 PipelineSpec = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["pipelineInfo"] = new Dictionary<string, object?>
///                     {
///                         ["name"] = "hello-world",
///                     },
///                     ["root"] = new Dictionary<string, object?>
///                     {
///                         ["dag"] = new Dictionary<string, object?>
///                         {
///                             ["tasks"] = new Dictionary<string, object?>
///                             {
///                             },
///                         },
///                     },
///                     ["schemaVersion"] = "2.1.0",
///                     ["sdkVersion"] = "kfp-2.0.0",
///                 }),
///                 RuntimeConfig = new Gcp.Vertex.Inputs.AiScheduleCreatePipelineJobRequestPipelineJobRuntimeConfigArgs
///                 {
///                     GcsOutputDirectory = bucket.Name.Apply(name => $"gs://{name}/pipeline_root"),
///                     FailurePolicy = "PIPELINE_FAILURE_POLICY_FAIL_FAST",
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
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("pipeline-job"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"pipelineInfo": map[string]string{
/// 				"name": "hello-world",
/// 			},
/// 			"root": map[string]map[string]map[string]interface{}{
/// 				"dag": map[string]map[string]interface{}{
/// 					"tasks": map[string]interface{}{},
/// 				},
/// 			},
/// 			"schemaVersion": "2.1.0",
/// 			"sdkVersion":    "kfp-2.0.0",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = vertex.NewAiSchedule(ctx, "schedule", &vertex.AiScheduleArgs{
/// 			DisplayName:                 pulumi.String("test-schedule"),
/// 			Location:                    pulumi.String("us-central1"),
/// 			MaxConcurrentRunCount:       pulumi.String("2"),
/// 			Cron:                        pulumi.String("*/5 * * * *"),
/// 			AllowQueueing:               pulumi.Bool(true),
/// 			MaxConcurrentActiveRunCount: pulumi.String("2"),
/// 			MaxRunCount:                 pulumi.String("10"),
/// 			StartTime:                   pulumi.String("2030-01-01T00:00:00Z"),
/// 			EndTime:                     pulumi.String("2030-01-02T00:00:00Z"),
/// 			CreatePipelineJobRequest: &vertex.AiScheduleCreatePipelineJobRequestArgs{
/// 				Parent: pulumi.Sprintf("projects/%v/locations/us-central1", project.ProjectId),
/// 				PipelineJob: &vertex.AiScheduleCreatePipelineJobRequestPipelineJobArgs{
/// 					DisplayName:          pulumi.String("test-pipeline-job"),
/// 					PreflightValidations: pulumi.Bool(true),
/// 					Labels: pulumi.StringMap{
/// 						"key": pulumi.String("value-one"),
/// 					},
/// 					PipelineSpec: pulumi.String(json0),
/// 					RuntimeConfig: &vertex.AiScheduleCreatePipelineJobRequestPipelineJobRuntimeConfigArgs{
/// 						GcsOutputDirectory: bucket.Name.ApplyT(func(name string) (string, error) {
/// 							return fmt.Sprintf("gs://%v/pipeline_root", name), nil
/// 						}).(pulumi.StringOutput),
/// 						FailurePolicy: pulumi.String("PIPELINE_FAILURE_POLICY_FAIL_FAST"),
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
/// resource "gcp_storage_bucket" "bucket" {
///   name                        = "pipeline-job"
///   location                    = "us-central1"
///   uniform_bucket_level_access = true
///   force_destroy               = true
/// }
/// resource "gcp_vertex_aischedule" "schedule" {
///   display_name                    = "test-schedule"
///   location                        = "us-central1"
///   max_concurrent_run_count        = 2
///   cron                            = "*/5 * * * *"
///   allow_queueing                  = true
///   max_concurrent_active_run_count = 2
///   max_run_count                   = "10"
///   start_time                      = "2030-01-01T00:00:00Z"
///   end_time                        = "2030-01-02T00:00:00Z"
///   create_pipeline_job_request = {
///     parent ="projects/${data.gcp_organizations_getproject.project.project_id}/locations/us-central1"
///     pipeline_job = {
///       display_name          = "test-pipeline-job"
///       preflight_validations = true
///       labels = {
///         "key" = "value-one"
///       }
///       pipeline_spec = jsonencode({
///         "pipelineInfo" = {
///           "name" = "hello-world"
///         }
///         "root" = {
///           "dag" = {
///             "tasks" = {}
///           }
///         }
///         "schemaVersion" = "2.1.0"
///         "sdkVersion"    = "kfp-2.0.0"
///       })
///       runtime_config = {
///         gcs_output_directory ="gs://${gcp_storage_bucket.bucket.name}/pipeline_root"
///         failure_policy       = "PIPELINE_FAILURE_POLICY_FAIL_FAST"
///       }
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.vertex.AiSchedule;
/// import com.pulumi.gcp.vertex.AiScheduleArgs;
/// import com.pulumi.gcp.vertex.inputs.AiScheduleCreatePipelineJobRequestArgs;
/// import com.pulumi.gcp.vertex.inputs.AiScheduleCreatePipelineJobRequestPipelineJobArgs;
/// import com.pulumi.gcp.vertex.inputs.AiScheduleCreatePipelineJobRequestPipelineJobRuntimeConfigArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("pipeline-job")
///             .location("us-central1")
///             .uniformBucketLevelAccess(true)
///             .forceDestroy(true)
///             .build());
///
///         var schedule = new AiSchedule("schedule", AiScheduleArgs.builder()
///             .displayName("test-schedule")
///             .location("us-central1")
///             .maxConcurrentRunCount("2")
///             .cron("*/5 * * * *")
///             .allowQueueing(true)
///             .maxConcurrentActiveRunCount("2")
///             .maxRunCount("10")
///             .startTime("2030-01-01T00:00:00Z")
///             .endTime("2030-01-02T00:00:00Z")
///             .createPipelineJobRequest(AiScheduleCreatePipelineJobRequestArgs.builder()
///                 .parent(String.format("projects/%s/locations/us-central1", project.projectId()))
///                 .pipelineJob(AiScheduleCreatePipelineJobRequestPipelineJobArgs.builder()
///                     .displayName("test-pipeline-job")
///                     .preflightValidations(true)
///                     .labels(Map.of("key", "value-one"))
///                     .pipelineSpec(serializeJson(
///                         jsonObject(
///                             jsonProperty("pipelineInfo", jsonObject(
///                                 jsonProperty("name", "hello-world")
///                             )),
///                             jsonProperty("root", jsonObject(
///                                 jsonProperty("dag", jsonObject(
///                                     jsonProperty("tasks", jsonObject(
///
///                                     ))
///                                 ))
///                             )),
///                             jsonProperty("schemaVersion", "2.1.0"),
///                             jsonProperty("sdkVersion", "kfp-2.0.0")
///                         )))
///                     .runtimeConfig(AiScheduleCreatePipelineJobRequestPipelineJobRuntimeConfigArgs.builder()
///                         .gcsOutputDirectory(bucket.name().applyValue(_name -> String.format("gs://%s/pipeline_root", _name)))
///                         .failurePolicy("PIPELINE_FAILURE_POLICY_FAIL_FAST")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: pipeline-job
///       location: us-central1
///       uniformBucketLevelAccess: true
///       forceDestroy: true
///   schedule:
///     type: gcp:vertex:AiSchedule
///     properties:
///       displayName: test-schedule
///       location: us-central1
///       maxConcurrentRunCount: 2
///       cron: '*/5 * * * *'
///       allowQueueing: true
///       maxConcurrentActiveRunCount: 2
///       maxRunCount: '10'
///       startTime: 2030-01-01T00:00:00Z
///       endTime: 2030-01-02T00:00:00Z
///       createPipelineJobRequest:
///         parent: projects/${project.projectId}/locations/us-central1
///         pipelineJob:
///           displayName: test-pipeline-job
///           preflightValidations: true
///           labels:
///             key: value-one
///           pipelineSpec:
///             fn::toJSON:
///               pipelineInfo:
///                 name: hello-world
///               root:
///                 dag:
///                   tasks: {}
///               schemaVersion: 2.1.0
///               sdkVersion: kfp-2.0.0
///           runtimeConfig:
///             gcsOutputDirectory: gs://${bucket.name}/pipeline_root
///             failurePolicy: PIPELINE_FAILURE_POLICY_FAIL_FAST
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Vertex Ai Schedule Notebook
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "notebook-job",
///     location: "us-central1",
///     uniformBucketLevelAccess: true,
///     forceDestroy: true,
/// });
/// const notebook = new gcp.storage.BucketObject("notebook", {
///     name: "notebook.ipynb",
///     content: "{ \"cells\": [], \"metadata\": {}, \"nbformat\": 4, \"nbminor\": 0 }",
///     bucket: bucket.name,
/// });
/// const schedule = new gcp.vertex.AiSchedule("schedule", {
///     displayName: "test-schedule-notebook",
///     location: "us-central1",
///     maxConcurrentRunCount: "2",
///     cron: "*/5 * * * *",
///     startTime: "2030-01-01T00:00:00Z",
///     createNotebookExecutionJobRequest: {
///         parent: project.then(project => `projects/${project.projectId}/locations/us-central1`),
///         notebookExecutionJob: {
///             displayName: "test-notebook-execution-job",
///             gcsOutputUri: pulumi.interpolate`gs://${bucket.name}`,
///             serviceAccount: project.then(project => `${project.number}-compute@developer.gserviceaccount.com`),
///             gcsNotebookSource: {
///                 uri: pulumi.interpolate`gs://${bucket.name}/${notebook.name}`,
///                 generation: notebook.generation.apply(x =>String(x)),
///             },
///             customEnvironmentSpec: {
///                 machineSpec: {
///                     machineType: "n1-standard-4",
///                     acceleratorType: "NVIDIA_TESLA_T4",
///                     acceleratorCount: 1,
///                 },
///                 persistentDiskSpec: {
///                     diskSizeGb: "100",
///                     diskType: "pd-standard",
///                 },
///                 networkSpec: {
///                     enableInternetAccess: true,
///                 },
///             },
///             executionTimeout: "86400s",
///             kernelName: "python3",
///             labels: {
///                 test: "value",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// bucket = gcp.storage.Bucket("bucket",
///     name="notebook-job",
///     location="us-central1",
///     uniform_bucket_level_access=True,
///     force_destroy=True)
/// notebook = gcp.storage.BucketObject("notebook",
///     name="notebook.ipynb",
///     content="{ \"cells\": [], \"metadata\": {}, \"nbformat\": 4, \"nbminor\": 0 }",
///     bucket=bucket.name)
/// schedule = gcp.vertex.AiSchedule("schedule",
///     display_name="test-schedule-notebook",
///     location="us-central1",
///     max_concurrent_run_count="2",
///     cron="*/5 * * * *",
///     start_time="2030-01-01T00:00:00Z",
///     create_notebook_execution_job_request={
///         "parent": f"projects/{project.project_id}/locations/us-central1",
///         "notebook_execution_job": {
///             "display_name": "test-notebook-execution-job",
///             "gcs_output_uri": bucket.name.apply(lambda name: f"gs://{name}"),
///             "service_account": f"{project.number}-compute@developer.gserviceaccount.com",
///             "gcs_notebook_source": {
///                 "uri": pulumi.Output.all(
///                     bucketName=bucket.name,
///                     notebookName=notebook.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucketName']}/{resolved_outputs['notebookName']}")
/// ,
///                 "generation": notebook.generation.apply(lambda x: str(x)),
///             },
///             "custom_environment_spec": {
///                 "machine_spec": {
///                     "machine_type": "n1-standard-4",
///                     "accelerator_type": "NVIDIA_TESLA_T4",
///                     "accelerator_count": 1,
///                 },
///                 "persistent_disk_spec": {
///                     "disk_size_gb": "100",
///                     "disk_type": "pd-standard",
///                 },
///                 "network_spec": {
///                     "enable_internet_access": True,
///                 },
///             },
///             "execution_timeout": "86400s",
///             "kernel_name": "python3",
///             "labels": {
///                 "test": "value",
///             },
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "notebook-job",
///         Location = "us-central1",
///         UniformBucketLevelAccess = true,
///         ForceDestroy = true,
///     });
///
///     var notebook = new Gcp.Storage.BucketObject("notebook", new()
///     {
///         Name = "notebook.ipynb",
///         Content = "{ \"cells\": [], \"metadata\": {}, \"nbformat\": 4, \"nbminor\": 0 }",
///         Bucket = bucket.Name,
///     });
///
///     var schedule = new Gcp.Vertex.AiSchedule("schedule", new()
///     {
///         DisplayName = "test-schedule-notebook",
///         Location = "us-central1",
///         MaxConcurrentRunCount = "2",
///         Cron = "*/5 * * * *",
///         StartTime = "2030-01-01T00:00:00Z",
///         CreateNotebookExecutionJobRequest = new Gcp.Vertex.Inputs.AiScheduleCreateNotebookExecutionJobRequestArgs
///         {
///             Parent = $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/locations/us-central1",
///             NotebookExecutionJob = new Gcp.Vertex.Inputs.AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs
///             {
///                 DisplayName = "test-notebook-execution-job",
///                 GcsOutputUri = bucket.Name.Apply(name => $"gs://{name}"),
///                 ServiceAccount = $"{project.Apply(getProjectResult => getProjectResult.Number)}-compute@developer.gserviceaccount.com",
///                 GcsNotebookSource = new Gcp.Vertex.Inputs.AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs
///                 {
///                     Uri = Output.Tuple(bucket.Name, notebook.Name).Apply(values =>
///                     {
///                         var bucketName = values.Item1;
///                         var notebookName = values.Item2;
///                         return $"gs://{bucketName}/{notebookName}";
///                     }),
///                     Generation = notebook.Generation.Apply(x => x.ToString(System.Globalization.CultureInfo.InvariantCulture)),
///                 },
///                 CustomEnvironmentSpec = new Gcp.Vertex.Inputs.AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecArgs
///                 {
///                     MachineSpec = new Gcp.Vertex.Inputs.AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpecArgs
///                     {
///                         MachineType = "n1-standard-4",
///                         AcceleratorType = "NVIDIA_TESLA_T4",
///                         AcceleratorCount = 1,
///                     },
///                     PersistentDiskSpec = new Gcp.Vertex.Inputs.AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecPersistentDiskSpecArgs
///                     {
///                         DiskSizeGb = "100",
///                         DiskType = "pd-standard",
///                     },
///                     NetworkSpec = new Gcp.Vertex.Inputs.AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecNetworkSpecArgs
///                     {
///                         EnableInternetAccess = true,
///                     },
///                 },
///                 ExecutionTimeout = "86400s",
///                 KernelName = "python3",
///                 Labels =
///                 {
///                     { "test", "value" },
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("notebook-job"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		notebook, err := storage.NewBucketObject(ctx, "notebook", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("notebook.ipynb"),
/// 			Content: pulumi.String("{ \"cells\": [], \"metadata\": {}, \"nbformat\": 4, \"nbminor\": 0 }"),
/// 			Bucket:  bucket.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiSchedule(ctx, "schedule", &vertex.AiScheduleArgs{
/// 			DisplayName:           pulumi.String("test-schedule-notebook"),
/// 			Location:              pulumi.String("us-central1"),
/// 			MaxConcurrentRunCount: pulumi.String("2"),
/// 			Cron:                  pulumi.String("*/5 * * * *"),
/// 			StartTime:             pulumi.String("2030-01-01T00:00:00Z"),
/// 			CreateNotebookExecutionJobRequest: &vertex.AiScheduleCreateNotebookExecutionJobRequestArgs{
/// 				Parent: pulumi.Sprintf("projects/%v/locations/us-central1", project.ProjectId),
/// 				NotebookExecutionJob: &vertex.AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs{
/// 					DisplayName: pulumi.String("test-notebook-execution-job"),
/// 					GcsOutputUri: bucket.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("gs://%v", name), nil
/// 					}).(pulumi.StringOutput),
/// 					ServiceAccount: pulumi.Sprintf("%v-compute@developer.gserviceaccount.com", project.Number),
/// 					GcsNotebookSource: &vertex.AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs{
/// 						Uri: pulumi.All(bucket.Name, notebook.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 							bucketName := _args[0].(string)
/// 							notebookName := _args[1].(string)
/// 							return fmt.Sprintf("gs://%v/%v", bucketName, notebookName), nil
/// 						}).(pulumi.StringOutput),
/// 						Generation: notebook.Generation,
/// 					},
/// 					CustomEnvironmentSpec: &vertex.AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecArgs{
/// 						MachineSpec: &vertex.AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpecArgs{
/// 							MachineType:      pulumi.String("n1-standard-4"),
/// 							AcceleratorType:  pulumi.String("NVIDIA_TESLA_T4"),
/// 							AcceleratorCount: pulumi.Int(1),
/// 						},
/// 						PersistentDiskSpec: &vertex.AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecPersistentDiskSpecArgs{
/// 							DiskSizeGb: pulumi.String("100"),
/// 							DiskType:   pulumi.String("pd-standard"),
/// 						},
/// 						NetworkSpec: &vertex.AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecNetworkSpecArgs{
/// 							EnableInternetAccess: pulumi.Bool(true),
/// 						},
/// 					},
/// 					ExecutionTimeout: pulumi.String("86400s"),
/// 					KernelName:       pulumi.String("python3"),
/// 					Labels: pulumi.StringMap{
/// 						"test": pulumi.String("value"),
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
/// resource "gcp_storage_bucket" "bucket" {
///   name                        = "notebook-job"
///   location                    = "us-central1"
///   uniform_bucket_level_access = true
///   force_destroy               = true
/// }
/// resource "gcp_storage_bucketobject" "notebook" {
///   name    = "notebook.ipynb"
///   content = "{ \"cells\": [], \"metadata\": {}, \"nbformat\": 4, \"nbminor\": 0 }"
///   bucket  = gcp_storage_bucket.bucket.name
/// }
/// resource "gcp_vertex_aischedule" "schedule" {
///   display_name             = "test-schedule-notebook"
///   location                 = "us-central1"
///   max_concurrent_run_count = 2
///   cron                     = "*/5 * * * *"
///   start_time               = "2030-01-01T00:00:00Z"
///   create_notebook_execution_job_request = {
///     parent ="projects/${data.gcp_organizations_getproject.project.project_id}/locations/us-central1"
///     notebook_execution_job = {
///       display_name    = "test-notebook-execution-job"
///       gcs_output_uri  ="gs://${gcp_storage_bucket.bucket.name}"
///       service_account ="${data.gcp_organizations_getproject.project.number}-compute@developer.gserviceaccount.com"
///       gcs_notebook_source = {
///         uri        ="gs://${gcp_storage_bucket.bucket.name}/${gcp_storage_bucketobject.notebook.name}"
///         generation = gcp_storage_bucketobject.notebook.generation
///       }
///       custom_environment_spec = {
///         machine_spec = {
///           machine_type      = "n1-standard-4"
///           accelerator_type  = "NVIDIA_TESLA_T4"
///           accelerator_count = 1
///         }
///         persistent_disk_spec = {
///           disk_size_gb = "100"
///           disk_type    = "pd-standard"
///         }
///         network_spec = {
///           enable_internet_access = true
///         }
///       }
///       execution_timeout = "86400s"
///       kernel_name       = "python3"
///       labels = {
///         "test" = "value"
///       }
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.vertex.AiSchedule;
/// import com.pulumi.gcp.vertex.AiScheduleArgs;
/// import com.pulumi.gcp.vertex.inputs.AiScheduleCreateNotebookExecutionJobRequestArgs;
/// import com.pulumi.gcp.vertex.inputs.AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs;
/// import com.pulumi.gcp.vertex.inputs.AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs;
/// import com.pulumi.gcp.vertex.inputs.AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecPersistentDiskSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecNetworkSpecArgs;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("notebook-job")
///             .location("us-central1")
///             .uniformBucketLevelAccess(true)
///             .forceDestroy(true)
///             .build());
///
///         var notebook = new BucketObject("notebook", BucketObjectArgs.builder()
///             .name("notebook.ipynb")
///             .content("{ \"cells\": [], \"metadata\": {}, \"nbformat\": 4, \"nbminor\": 0 }")
///             .bucket(bucket.name())
///             .build());
///
///         var schedule = new AiSchedule("schedule", AiScheduleArgs.builder()
///             .displayName("test-schedule-notebook")
///             .location("us-central1")
///             .maxConcurrentRunCount("2")
///             .cron("*/5 * * * *")
///             .startTime("2030-01-01T00:00:00Z")
///             .createNotebookExecutionJobRequest(AiScheduleCreateNotebookExecutionJobRequestArgs.builder()
///                 .parent(String.format("projects/%s/locations/us-central1", project.projectId()))
///                 .notebookExecutionJob(AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs.builder()
///                     .displayName("test-notebook-execution-job")
///                     .gcsOutputUri(bucket.name().applyValue(_name -> String.format("gs://%s", _name)))
///                     .serviceAccount(String.format("%s-compute@developer.gserviceaccount.com", project.number()))
///                     .gcsNotebookSource(AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs.builder()
///                         .uri(Output.tuple(bucket.name(), notebook.name()).applyValue(values -> {
///                             var bucketName = values.t1;
///                             var notebookName = values.t2;
///                             return String.format("gs://%s/%s", bucketName,notebookName);
///                         }))
///                         .generation(notebook.generation())
///                         .build())
///                     .customEnvironmentSpec(AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecArgs.builder()
///                         .machineSpec(AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpecArgs.builder()
///                             .machineType("n1-standard-4")
///                             .acceleratorType("NVIDIA_TESLA_T4")
///                             .acceleratorCount(1)
///                             .build())
///                         .persistentDiskSpec(AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecPersistentDiskSpecArgs.builder()
///                             .diskSizeGb("100")
///                             .diskType("pd-standard")
///                             .build())
///                         .networkSpec(AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecNetworkSpecArgs.builder()
///                             .enableInternetAccess(true)
///                             .build())
///                         .build())
///                     .executionTimeout("86400s")
///                     .kernelName("python3")
///                     .labels(Map.of("test", "value"))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: notebook-job
///       location: us-central1
///       uniformBucketLevelAccess: true
///       forceDestroy: true
///   notebook:
///     type: gcp:storage:BucketObject
///     properties:
///       name: notebook.ipynb
///       content: '{ "cells": [], "metadata": {}, "nbformat": 4, "nbminor": 0 }'
///       bucket: ${bucket.name}
///   schedule:
///     type: gcp:vertex:AiSchedule
///     properties:
///       displayName: test-schedule-notebook
///       location: us-central1
///       maxConcurrentRunCount: 2
///       cron: '*/5 * * * *'
///       startTime: 2030-01-01T00:00:00Z
///       createNotebookExecutionJobRequest:
///         parent: projects/${project.projectId}/locations/us-central1
///         notebookExecutionJob:
///           displayName: test-notebook-execution-job
///           gcsOutputUri: gs://${bucket.name}
///           serviceAccount: ${project.number}-compute@developer.gserviceaccount.com
///           gcsNotebookSource:
///             uri: gs://${bucket.name}/${notebook.name}
///             generation: ${notebook.generation}
///           customEnvironmentSpec:
///             machineSpec:
///               machineType: n1-standard-4
///               acceleratorType: NVIDIA_TESLA_T4
///               acceleratorCount: 1
///             persistentDiskSpec:
///               diskSizeGb: '100'
///               diskType: pd-standard
///             networkSpec:
///               enableInternetAccess: true
///           executionTimeout: 86400s
///           kernelName: python3
///           labels:
///             test: value
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
/// Schedule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/schedules/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Schedule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiSchedule:AiSchedule default projects/{{project}}/locations/{{location}}/schedules/{{name}}
/// $ pulumi import gcp:vertex/aiSchedule:AiSchedule default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:vertex/aiSchedule:AiSchedule default {{location}}/{{name}}
/// ```
class AiSchedule extends pulumi.CustomResource {
  /// Whether new scheduled runs can be queued when maxConcurrentRuns limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  late final pulumi.Output<bool?> allowQueueing;
  /// Whether to backfill missed runs when the schedule is resumed from PAUSED state. If set to true, all missed runs will be scheduled. New runs will be scheduled after the backfill is complete. Default to false.
  late final pulumi.Output<bool> catchUp;
  /// Request message for [NotebookService.CreateNotebookExecutionJob]
  /// Structure is documented below.
  late final pulumi.Output<AiScheduleCreateNotebookExecutionJobRequest?> createNotebookExecutionJobRequest;
  /// Request message for PipelineService.CreatePipelineJob.
  /// Structure is documented below.
  late final pulumi.Output<AiScheduleCreatePipelineJobRequest?> createPipelineJobRequest;
  /// Timestamp when this Schedule was created.
  late final pulumi.Output<String> createTime;
  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York 1 * * * *".
  late final pulumi.Output<String?> cron;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// User provided name of the Schedule. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final pulumi.Output<String> displayName;
  /// Timestamp after which no new runs can be scheduled. If specified, The schedule will be completed when either endTime is reached or when scheduledRunCount &gt;= max_run_count. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  late final pulumi.Output<String?> endTime;
  /// Timestamp when this Schedule was last paused. Unset if never paused.
  late final pulumi.Output<String> lastPauseTime;
  /// Timestamp when this Schedule was last resumed. Unset if never resumed from pause.
  late final pulumi.Output<String> lastResumeTime;
  /// Status of a scheduled run.
  /// Structure is documented below.
  late final pulumi.Output<List<AiScheduleLastScheduledRunResponse>> lastScheduledRunResponses;
  /// The location of the Schedule. eg us-central1
  late final pulumi.Output<String> location;
  /// Specifies the maximum number of active runs that can be executed concurrently for this Schedule. This limits the number of runs that can be in a non-terminal state at the same time. Currently, this field is only supported for requests of type CreatePipelineJobRequest.
  late final pulumi.Output<String?> maxConcurrentActiveRunCount;
  /// Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the operations/jobs created by the requests (if applicable).
  late final pulumi.Output<String> maxConcurrentRunCount;
  /// Maximum run count of the schedule. If specified, The schedule will be completed when either startedRunCount &gt;= maxRunCount or when endTime is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  late final pulumi.Output<String?> maxRunCount;
  /// The resource name of the Schedule.
  late final pulumi.Output<String> name;
  /// Timestamp when this Schedule should schedule the next run. Having a nextRunTime in the past means the runs are being started behind schedule.
  late final pulumi.Output<String> nextRunTime;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Timestamp after which the first run can be scheduled. Default to Schedule create time if not specified.
  late final pulumi.Output<String> startTime;
  /// The number of runs started by this schedule.
  late final pulumi.Output<String> startedRunCount;
  /// The state of this Schedule. Possible values: ACTIVE PAUSED COMPLETED
  late final pulumi.Output<String> state;
  /// Timestamp when this Schedule was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AiSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiSchedule]. {@macro pulumi_vertex_ai_schedule_ai_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiSchedule(
    String name, {
    AiScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiSchedule:AiSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    allowQueueing = registerOutput<bool?>('allowQueueing');
    catchUp = registerOutput<bool>('catchUp');
    createNotebookExecutionJobRequest = registerOutput<AiScheduleCreateNotebookExecutionJobRequest?>('createNotebookExecutionJobRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiScheduleCreateNotebookExecutionJobRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createPipelineJobRequest = registerOutput<AiScheduleCreatePipelineJobRequest?>('createPipelineJobRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiScheduleCreatePipelineJobRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    cron = registerOutput<String?>('cron');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    endTime = registerOutput<String?>('endTime');
    lastPauseTime = registerOutput<String>('lastPauseTime');
    lastResumeTime = registerOutput<String>('lastResumeTime');
    lastScheduledRunResponses = registerOutput<List<AiScheduleLastScheduledRunResponse>>('lastScheduledRunResponses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiScheduleLastScheduledRunResponse>(guardedValue, (value) => AiScheduleLastScheduledRunResponse.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    maxConcurrentActiveRunCount = registerOutput<String?>('maxConcurrentActiveRunCount');
    maxConcurrentRunCount = registerOutput<String>('maxConcurrentRunCount');
    maxRunCount = registerOutput<String?>('maxRunCount');
    this.name = registerOutput<String>('name');
    nextRunTime = registerOutput<String>('nextRunTime');
    project = registerOutput<String>('project');
    startTime = registerOutput<String>('startTime');
    startedRunCount = registerOutput<String>('startedRunCount');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AiSchedule] resource's state with the given [name] and [id].
  static AiSchedule get(
    String name,
    pulumi.Input<String> id, {
    AiScheduleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiSchedule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiSchedule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiSchedule:AiSchedule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowQueueing = registerOutput<bool?>('allowQueueing');
    catchUp = registerOutput<bool>('catchUp');
    createNotebookExecutionJobRequest = registerOutput<AiScheduleCreateNotebookExecutionJobRequest?>('createNotebookExecutionJobRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiScheduleCreateNotebookExecutionJobRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createPipelineJobRequest = registerOutput<AiScheduleCreatePipelineJobRequest?>('createPipelineJobRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiScheduleCreatePipelineJobRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    cron = registerOutput<String?>('cron');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    endTime = registerOutput<String?>('endTime');
    lastPauseTime = registerOutput<String>('lastPauseTime');
    lastResumeTime = registerOutput<String>('lastResumeTime');
    lastScheduledRunResponses = registerOutput<List<AiScheduleLastScheduledRunResponse>>('lastScheduledRunResponses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiScheduleLastScheduledRunResponse>(guardedValue, (value) => AiScheduleLastScheduledRunResponse.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    maxConcurrentActiveRunCount = registerOutput<String?>('maxConcurrentActiveRunCount');
    maxConcurrentRunCount = registerOutput<String>('maxConcurrentRunCount');
    maxRunCount = registerOutput<String?>('maxRunCount');
    this.name = registerOutput<String>('name');
    nextRunTime = registerOutput<String>('nextRunTime');
    project = registerOutput<String>('project');
    startTime = registerOutput<String>('startTime');
    startedRunCount = registerOutput<String>('startedRunCount');
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [AiSchedule] resource.
  AiSchedule.reference(String urn)
    : super(
        'gcp:vertex/aiSchedule:AiSchedule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowQueueing = registerOutput<bool?>('allowQueueing');
    catchUp = registerOutput<bool>('catchUp');
    createNotebookExecutionJobRequest = registerOutput<AiScheduleCreateNotebookExecutionJobRequest?>('createNotebookExecutionJobRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiScheduleCreateNotebookExecutionJobRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createPipelineJobRequest = registerOutput<AiScheduleCreatePipelineJobRequest?>('createPipelineJobRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiScheduleCreatePipelineJobRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    cron = registerOutput<String?>('cron');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    endTime = registerOutput<String?>('endTime');
    lastPauseTime = registerOutput<String>('lastPauseTime');
    lastResumeTime = registerOutput<String>('lastResumeTime');
    lastScheduledRunResponses = registerOutput<List<AiScheduleLastScheduledRunResponse>>('lastScheduledRunResponses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiScheduleLastScheduledRunResponse>(guardedValue, (value) => AiScheduleLastScheduledRunResponse.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    maxConcurrentActiveRunCount = registerOutput<String?>('maxConcurrentActiveRunCount');
    maxConcurrentRunCount = registerOutput<String>('maxConcurrentRunCount');
    maxRunCount = registerOutput<String?>('maxRunCount');
    this.name = registerOutput<String>('name');
    nextRunTime = registerOutput<String>('nextRunTime');
    project = registerOutput<String>('project');
    startTime = registerOutput<String>('startTime');
    startedRunCount = registerOutput<String>('startedRunCount');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
