import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_args.dart';
import 'pipeline_schedule_info.dart';
import 'pipeline_state.dart';
import 'pipeline_workload.dart';

/// The main pipeline entity and all the necessary metadata for launching and managing linked jobs.
///
///
/// To get more information about Pipeline, see:
///
/// * [API documentation](https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataflow)
///
/// ## Example Usage
///
/// ### Data Pipeline Pipeline
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {
///     accountId: "my-account",
///     displayName: "Service Account",
/// });
/// const primary = new gcp.dataflow.Pipeline("primary", {
///     name: "my-pipeline",
///     displayName: "my-pipeline",
///     type: "PIPELINE_TYPE_BATCH",
///     state: "STATE_ACTIVE",
///     region: "us-central1",
///     workload: {
///         dataflowLaunchTemplateRequest: {
///             projectId: "my-project",
///             gcsPath: "gs://my-bucket/path",
///             launchParameters: {
///                 jobName: "my-job",
///                 parameters: {
///                     name: "wrench",
///                 },
///                 environment: {
///                     numWorkers: 5,
///                     maxWorkers: 5,
///                     zone: "us-centra1-a",
///                     serviceAccountEmail: serviceAccount.email,
///                     network: "default",
///                     tempLocation: "gs://my-bucket/tmp_dir",
///                     bypassTempDirValidation: false,
///                     machineType: "E2",
///                     additionalUserLabels: {
///                         context: "test",
///                     },
///                     workerRegion: "us-central1",
///                     workerZone: "us-central1-a",
///                     enableStreamingEngine: false,
///                 },
///                 update: false,
///                 transformNameMapping: {
///                     name: "wrench",
///                 },
///             },
///             location: "us-central1",
///         },
///     },
///     scheduleInfo: {
///         schedule: "* */2 * * *",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// service_account = gcp.serviceaccount.Account("service_account",
///     account_id="my-account",
///     display_name="Service Account")
/// primary = gcp.dataflow.Pipeline("primary",
///     name="my-pipeline",
///     display_name="my-pipeline",
///     type="PIPELINE_TYPE_BATCH",
///     state="STATE_ACTIVE",
///     region="us-central1",
///     workload={
///         "dataflow_launch_template_request": {
///             "project_id": "my-project",
///             "gcs_path": "gs://my-bucket/path",
///             "launch_parameters": {
///                 "job_name": "my-job",
///                 "parameters": {
///                     "name": "wrench",
///                 },
///                 "environment": {
///                     "num_workers": 5,
///                     "max_workers": 5,
///                     "zone": "us-centra1-a",
///                     "service_account_email": service_account.email,
///                     "network": "default",
///                     "temp_location": "gs://my-bucket/tmp_dir",
///                     "bypass_temp_dir_validation": False,
///                     "machine_type": "E2",
///                     "additional_user_labels": {
///                         "context": "test",
///                     },
///                     "worker_region": "us-central1",
///                     "worker_zone": "us-central1-a",
///                     "enable_streaming_engine": False,
///                 },
///                 "update": False,
///                 "transform_name_mapping": {
///                     "name": "wrench",
///                 },
///             },
///             "location": "us-central1",
///         },
///     },
///     schedule_info={
///         "schedule": "* */2 * * *",
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
///     var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
///     {
///         AccountId = "my-account",
///         DisplayName = "Service Account",
///     });
///
///     var primary = new Gcp.Dataflow.Pipeline("primary", new()
///     {
///         Name = "my-pipeline",
///         DisplayName = "my-pipeline",
///         Type = "PIPELINE_TYPE_BATCH",
///         State = "STATE_ACTIVE",
///         Region = "us-central1",
///         Workload = new Gcp.Dataflow.Inputs.PipelineWorkloadArgs
///         {
///             DataflowLaunchTemplateRequest = new Gcp.Dataflow.Inputs.PipelineWorkloadDataflowLaunchTemplateRequestArgs
///             {
///                 ProjectId = "my-project",
///                 GcsPath = "gs://my-bucket/path",
///                 LaunchParameters = new Gcp.Dataflow.Inputs.PipelineWorkloadDataflowLaunchTemplateRequestLaunchParametersArgs
///                 {
///                     JobName = "my-job",
///                     Parameters =
///                     {
///                         { "name", "wrench" },
///                     },
///                     Environment = new Gcp.Dataflow.Inputs.PipelineWorkloadDataflowLaunchTemplateRequestLaunchParametersEnvironmentArgs
///                     {
///                         NumWorkers = 5,
///                         MaxWorkers = 5,
///                         Zone = "us-centra1-a",
///                         ServiceAccountEmail = serviceAccount.Email,
///                         Network = "default",
///                         TempLocation = "gs://my-bucket/tmp_dir",
///                         BypassTempDirValidation = false,
///                         MachineType = "E2",
///                         AdditionalUserLabels =
///                         {
///                             { "context", "test" },
///                         },
///                         WorkerRegion = "us-central1",
///                         WorkerZone = "us-central1-a",
///                         EnableStreamingEngine = false,
///                     },
///                     Update = false,
///                     TransformNameMapping =
///                     {
///                         { "name", "wrench" },
///                     },
///                 },
///                 Location = "us-central1",
///             },
///         },
///         ScheduleInfo = new Gcp.Dataflow.Inputs.PipelineScheduleInfoArgs
///         {
///             Schedule = "* */2 * * *",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataflow"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("my-account"),
/// 			DisplayName: pulumi.String("Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataflow.NewPipeline(ctx, "primary", &dataflow.PipelineArgs{
/// 			Name:        pulumi.String("my-pipeline"),
/// 			DisplayName: pulumi.String("my-pipeline"),
/// 			Type:        pulumi.String("PIPELINE_TYPE_BATCH"),
/// 			State:       pulumi.String("STATE_ACTIVE"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Workload: &dataflow.PipelineWorkloadArgs{
/// 				DataflowLaunchTemplateRequest: &dataflow.PipelineWorkloadDataflowLaunchTemplateRequestArgs{
/// 					ProjectId: pulumi.String("my-project"),
/// 					GcsPath:   pulumi.String("gs://my-bucket/path"),
/// 					LaunchParameters: &dataflow.PipelineWorkloadDataflowLaunchTemplateRequestLaunchParametersArgs{
/// 						JobName: pulumi.String("my-job"),
/// 						Parameters: pulumi.StringMap{
/// 							"name": pulumi.String("wrench"),
/// 						},
/// 						Environment: &dataflow.PipelineWorkloadDataflowLaunchTemplateRequestLaunchParametersEnvironmentArgs{
/// 							NumWorkers:              pulumi.Int(5),
/// 							MaxWorkers:              pulumi.Int(5),
/// 							Zone:                    pulumi.String("us-centra1-a"),
/// 							ServiceAccountEmail:     serviceAccount.Email,
/// 							Network:                 pulumi.String("default"),
/// 							TempLocation:            pulumi.String("gs://my-bucket/tmp_dir"),
/// 							BypassTempDirValidation: pulumi.Bool(false),
/// 							MachineType:             pulumi.String("E2"),
/// 							AdditionalUserLabels: pulumi.StringMap{
/// 								"context": pulumi.String("test"),
/// 							},
/// 							WorkerRegion:          pulumi.String("us-central1"),
/// 							WorkerZone:            pulumi.String("us-central1-a"),
/// 							EnableStreamingEngine: pulumi.Bool(false),
/// 						},
/// 						Update: pulumi.Bool(false),
/// 						TransformNameMapping: pulumi.StringMap{
/// 							"name": pulumi.String("wrench"),
/// 						},
/// 					},
/// 					Location: pulumi.String("us-central1"),
/// 				},
/// 			},
/// 			ScheduleInfo: &dataflow.PipelineScheduleInfoArgs{
/// 				Schedule: pulumi.String("* */2 * * *"),
/// 			},
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.dataflow.Pipeline;
/// import com.pulumi.gcp.dataflow.PipelineArgs;
/// import com.pulumi.gcp.dataflow.inputs.PipelineWorkloadArgs;
/// import com.pulumi.gcp.dataflow.inputs.PipelineWorkloadDataflowLaunchTemplateRequestArgs;
/// import com.pulumi.gcp.dataflow.inputs.PipelineWorkloadDataflowLaunchTemplateRequestLaunchParametersArgs;
/// import com.pulumi.gcp.dataflow.inputs.PipelineWorkloadDataflowLaunchTemplateRequestLaunchParametersEnvironmentArgs;
/// import com.pulumi.gcp.dataflow.inputs.PipelineScheduleInfoArgs;
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
///         var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
///             .accountId("my-account")
///             .displayName("Service Account")
///             .build());
///
///         var primary = new Pipeline("primary", PipelineArgs.builder()
///             .name("my-pipeline")
///             .displayName("my-pipeline")
///             .type("PIPELINE_TYPE_BATCH")
///             .state("STATE_ACTIVE")
///             .region("us-central1")
///             .workload(PipelineWorkloadArgs.builder()
///                 .dataflowLaunchTemplateRequest(PipelineWorkloadDataflowLaunchTemplateRequestArgs.builder()
///                     .projectId("my-project")
///                     .gcsPath("gs://my-bucket/path")
///                     .launchParameters(PipelineWorkloadDataflowLaunchTemplateRequestLaunchParametersArgs.builder()
///                         .jobName("my-job")
///                         .parameters(Map.of("name", "wrench"))
///                         .environment(PipelineWorkloadDataflowLaunchTemplateRequestLaunchParametersEnvironmentArgs.builder()
///                             .numWorkers(5)
///                             .maxWorkers(5)
///                             .zone("us-centra1-a")
///                             .serviceAccountEmail(serviceAccount.email())
///                             .network("default")
///                             .tempLocation("gs://my-bucket/tmp_dir")
///                             .bypassTempDirValidation(false)
///                             .machineType("E2")
///                             .additionalUserLabels(Map.of("context", "test"))
///                             .workerRegion("us-central1")
///                             .workerZone("us-central1-a")
///                             .enableStreamingEngine(false)
///                             .build())
///                         .update(false)
///                         .transformNameMapping(Map.of("name", "wrench"))
///                         .build())
///                     .location("us-central1")
///                     .build())
///                 .build())
///             .scheduleInfo(PipelineScheduleInfoArgs.builder()
///                 .schedule("* */2 * * *")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   serviceAccount:
///     type: gcp:serviceaccount:Account
///     name: service_account
///     properties:
///       accountId: my-account
///       displayName: Service Account
///   primary:
///     type: gcp:dataflow:Pipeline
///     properties:
///       name: my-pipeline
///       displayName: my-pipeline
///       type: PIPELINE_TYPE_BATCH
///       state: STATE_ACTIVE
///       region: us-central1
///       workload:
///         dataflowLaunchTemplateRequest:
///           projectId: my-project
///           gcsPath: gs://my-bucket/path
///           launchParameters:
///             jobName: my-job
///             parameters:
///               name: wrench
///             environment:
///               numWorkers: 5
///               maxWorkers: 5
///               zone: us-centra1-a
///               serviceAccountEmail: ${serviceAccount.email}
///               network: default
///               tempLocation: gs://my-bucket/tmp_dir
///               bypassTempDirValidation: false
///               machineType: E2
///               additionalUserLabels:
///                 context: test
///               workerRegion: us-central1
///               workerZone: us-central1-a
///               enableStreamingEngine: 'false'
///             update: false
///             transformNameMapping:
///               name: wrench
///           location: us-central1
///       scheduleInfo:
///         schedule: '* */2 * * *'
/// ```
///
///
/// ## Import
///
/// Pipeline can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/pipelines/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Pipeline can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataflow/pipeline:Pipeline default projects/{{project}}/locations/{{region}}/pipelines/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataflow/pipeline:Pipeline default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataflow/pipeline:Pipeline default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataflow/pipeline:Pipeline default {{name}}
/// ```
class Pipeline extends pulumi.CustomResource {
  /// The timestamp when the pipeline was initially created. Set by the Data Pipelines service.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
  /// The display name of the pipeline. It can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), and underscores (_).
  late final pulumi.Output<String?> displayName;
  /// Number of jobs.
  late final pulumi.Output<int> jobCount;
  /// The timestamp when the pipeline was last modified. Set by the Data Pipelines service.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> lastUpdateTime;
  /// "The pipeline name. For example': 'projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID."
  /// "- PROJECT_ID can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), and periods (.). For more information, see Identifying projects."
  /// "LOCATION_ID is the canonical ID for the pipeline's location. The list of available locations can be obtained by calling google.cloud.location.Locations.ListLocations. Note that the Data Pipelines service is not available in all regions. It depends on Cloud Scheduler, an App Engine application, so it's only available in App Engine regions."
  /// "PIPELINE_ID is the ID of the pipeline. Must be unique for the selected project and location."
  late final pulumi.Output<String> name;
  /// The sources of the pipeline (for example, Dataplex). The keys and values are set by the corresponding sources during pipeline creation.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  late final pulumi.Output<Map<String, String>?> pipelineSources;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// A reference to the region
  late final pulumi.Output<String?> region;
  /// Internal scheduling information for a pipeline. If this information is provided, periodic jobs will be created per the schedule. If not, users are responsible for creating jobs externally.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#schedulespec
  /// Structure is documented below.
  late final pulumi.Output<PipelineScheduleInfo?> scheduleInfo;
  /// Optional. A service account email to be used with the Cloud Scheduler job. If not specified, the default compute engine service account will be used.
  late final pulumi.Output<String> schedulerServiceAccountEmail;
  /// The state of the pipeline. When the pipeline is created, the state is set to 'PIPELINE_STATE_ACTIVE' by default. State changes can be requested by setting the state to stopping, paused, or resuming. State cannot be changed through pipelines.patch requests.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#state
  /// Possible values are: `STATE_UNSPECIFIED`, `STATE_RESUMING`, `STATE_ACTIVE`, `STATE_STOPPING`, `STATE_ARCHIVED`, `STATE_PAUSED`.
  late final pulumi.Output<String> state;
  /// The type of the pipeline. This field affects the scheduling of the pipeline and the type of metrics to show for the pipeline.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#pipelinetype
  /// Possible values are: `PIPELINE_TYPE_UNSPECIFIED`, `PIPELINE_TYPE_BATCH`, `PIPELINE_TYPE_STREAMING`.
  late final pulumi.Output<String> type;
  /// Workload information for creating new jobs.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#workload
  /// Structure is documented below.
  late final pulumi.Output<PipelineWorkload?> workload;

  /// Creates a new [Pipeline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pipeline]. {@macro pulumi_dataflow_pipeline_pipeline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pipeline(
    String name, {
    PipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataflow/pipeline:Pipeline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String?>('displayName');
    jobCount = registerOutput<int>('jobCount');
    lastUpdateTime = registerOutput<String>('lastUpdateTime');
    this.name = registerOutput<String>('name');
    pipelineSources = registerOutput<Map<String, String>?>('pipelineSources');
    project = registerOutput<String>('project');
    region = registerOutput<String?>('region');
    scheduleInfo = registerOutput<PipelineScheduleInfo?>('scheduleInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineScheduleInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    schedulerServiceAccountEmail = registerOutput<String>('schedulerServiceAccountEmail');
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
    workload = registerOutput<PipelineWorkload?>('workload', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineWorkload.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Pipeline] resource's state with the given [name] and [id].
  static Pipeline get(
    String name,
    pulumi.Input<String> id, {
    PipelineState? state,
  }) {
    return Pipeline._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Pipeline._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataflow/pipeline:Pipeline',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String?>('displayName');
    jobCount = registerOutput<int>('jobCount');
    lastUpdateTime = registerOutput<String>('lastUpdateTime');
    this.name = registerOutput<String>('name');
    pipelineSources = registerOutput<Map<String, String>?>('pipelineSources');
    project = registerOutput<String>('project');
    region = registerOutput<String?>('region');
    scheduleInfo = registerOutput<PipelineScheduleInfo?>('scheduleInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineScheduleInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    schedulerServiceAccountEmail = registerOutput<String>('schedulerServiceAccountEmail');
    this.state = registerOutput<String>('state');
    type = registerOutput<String>('type');
    workload = registerOutput<PipelineWorkload?>('workload', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineWorkload.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
