import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_args.dart';
import 'job_schedule_response.dart';

/// A job.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a job with all properties specified
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var job = new AzureNative.Sql.Job("job", new()
///     {
///         Description = "my favourite job",
///         JobAgentName = "agent1",
///         JobName = "job1",
///         ResourceGroupName = "group1",
///         Schedule = new AzureNative.Sql.Inputs.JobScheduleArgs
///         {
///             Enabled = true,
///             EndTime = "2015-09-24T23:59:59Z",
///             Interval = "PT5M",
///             StartTime = "2015-09-24T18:30:01Z",
///             Type = AzureNative.Sql.JobScheduleType.Recurring,
///         },
///         ServerName = "server1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewJob(ctx, "job", &sql.JobArgs{
/// 			Description:       pulumi.String("my favourite job"),
/// 			JobAgentName:      pulumi.String("agent1"),
/// 			JobName:           pulumi.String("job1"),
/// 			ResourceGroupName: pulumi.String("group1"),
/// 			Schedule: &sql.JobScheduleArgs{
/// 				Enabled:   pulumi.Bool(true),
/// 				EndTime:   pulumi.String("2015-09-24T23:59:59Z"),
/// 				Interval:  pulumi.String("PT5M"),
/// 				StartTime: pulumi.String("2015-09-24T18:30:01Z"),
/// 				Type:      sql.JobScheduleTypeRecurring,
/// 			},
/// 			ServerName: pulumi.String("server1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.Job;
/// import com.pulumi.azurenative.sql.JobArgs;
/// import com.pulumi.azurenative.sql.inputs.JobScheduleArgs;
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
///         var job = new Job("job", JobArgs.builder()
///             .description("my favourite job")
///             .jobAgentName("agent1")
///             .jobName("job1")
///             .resourceGroupName("group1")
///             .schedule(JobScheduleArgs.builder()
///                 .enabled(true)
///                 .endTime("2015-09-24T23:59:59Z")
///                 .interval("PT5M")
///                 .startTime("2015-09-24T18:30:01Z")
///                 .type("Recurring")
///                 .build())
///             .serverName("server1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const job = new azure_native.sql.Job("job", {
///     description: "my favourite job",
///     jobAgentName: "agent1",
///     jobName: "job1",
///     resourceGroupName: "group1",
///     schedule: {
///         enabled: true,
///         endTime: "2015-09-24T23:59:59Z",
///         interval: "PT5M",
///         startTime: "2015-09-24T18:30:01Z",
///         type: azure_native.sql.JobScheduleType.Recurring,
///     },
///     serverName: "server1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job = azure_native.sql.Job("job",
///     description="my favourite job",
///     job_agent_name="agent1",
///     job_name="job1",
///     resource_group_name="group1",
///     schedule={
///         "enabled": True,
///         "end_time": "2015-09-24T23:59:59Z",
///         "interval": "PT5M",
///         "start_time": "2015-09-24T18:30:01Z",
///         "type": azure_native.sql.JobScheduleType.RECURRING,
///     },
///     server_name="server1")
///
/// ```
///
/// ```yaml
/// resources:
///   job:
///     type: azure-native:sql:Job
///     properties:
///       description: my favourite job
///       jobAgentName: agent1
///       jobName: job1
///       resourceGroupName: group1
///       schedule:
///         enabled: true
///         endTime: 2015-09-24T23:59:59Z
///         interval: PT5M
///         startTime: 2015-09-24T18:30:01Z
///         type: Recurring
///       serverName: server1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a job with default properties
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var job = new AzureNative.Sql.Job("job", new()
///     {
///         JobAgentName = "agent1",
///         JobName = "job1",
///         ResourceGroupName = "group1",
///         ServerName = "server1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewJob(ctx, "job", &sql.JobArgs{
/// 			JobAgentName:      pulumi.String("agent1"),
/// 			JobName:           pulumi.String("job1"),
/// 			ResourceGroupName: pulumi.String("group1"),
/// 			ServerName:        pulumi.String("server1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.Job;
/// import com.pulumi.azurenative.sql.JobArgs;
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
///         var job = new Job("job", JobArgs.builder()
///             .jobAgentName("agent1")
///             .jobName("job1")
///             .resourceGroupName("group1")
///             .serverName("server1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const job = new azure_native.sql.Job("job", {
///     jobAgentName: "agent1",
///     jobName: "job1",
///     resourceGroupName: "group1",
///     serverName: "server1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job = azure_native.sql.Job("job",
///     job_agent_name="agent1",
///     job_name="job1",
///     resource_group_name="group1",
///     server_name="server1")
///
/// ```
///
/// ```yaml
/// resources:
///   job:
///     type: azure-native:sql:Job
///     properties:
///       jobAgentName: agent1
///       jobName: job1
///       resourceGroupName: group1
///       serverName: server1
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:sql:Job job1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/jobAgents/{jobAgentName}/jobs/{jobName}
/// ```
class Job extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// User-defined description of the job.
  late final pulumi.Output<String?> description;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Schedule properties of the job.
  late final pulumi.Output<JobScheduleResponse?> schedule;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// The job version number.
  late final pulumi.Output<int> version;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_sql_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(String name, {JobArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:sql:Job',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    schedule = registerOutput<JobScheduleResponse?>(
      'schedule',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return JobScheduleResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
    version = registerOutput<int>('version');
  }
}
