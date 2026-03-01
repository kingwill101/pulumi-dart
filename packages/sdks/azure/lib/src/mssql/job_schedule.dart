import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_schedule_args.dart';
import 'job_schedule_state.dart';

/// Manages an Elastic Job Schedule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resource-group",
///     location: "East US",
/// });
/// const exampleServer = new azure.mssql.Server("example", {
///     name: "example-server",
///     resourceGroupName: example.name,
///     location: example.location,
///     version: "12.0",
///     administratorLogin: "4dm1n157r470r",
///     administratorLoginPassword: "4-v3ry-53cr37-p455w0rd",
/// });
/// const exampleDatabase = new azure.mssql.Database("example", {
///     name: "example-db",
///     serverId: exampleServer.id,
///     collation: "SQL_Latin1_General_CP1_CI_AS",
///     skuName: "S1",
/// });
/// const exampleJobAgent = new azure.mssql.JobAgent("example", {
///     name: "example-job-agent",
///     location: example.location,
///     databaseId: exampleDatabase.id,
/// });
/// const exampleJobCredential = new azure.mssql.JobCredential("example", {
///     name: "example-job-credential",
///     jobAgentId: exampleJobAgent.id,
///     username: "my-username",
///     password: "MyP4ssw0rd!!!",
/// });
/// const exampleJob = new azure.mssql.Job("example", {
///     name: "example-job",
///     jobAgentId: exampleJobAgent.id,
/// });
/// const exampleJobSchedule = new azure.mssql.JobSchedule("example", {
///     jobId: exampleJob.id,
///     type: "Recurring",
///     enabled: true,
///     endTime: "2025-12-01T00:00:00Z",
///     interval: "PT5M",
///     startTime: "2025-01-01T00:00:00Z",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resource-group",
///     location="East US")
/// example_server = azure.mssql.Server("example",
///     name="example-server",
///     resource_group_name=example.name,
///     location=example.location,
///     version="12.0",
///     administrator_login="4dm1n157r470r",
///     administrator_login_password="4-v3ry-53cr37-p455w0rd")
/// example_database = azure.mssql.Database("example",
///     name="example-db",
///     server_id=example_server.id,
///     collation="SQL_Latin1_General_CP1_CI_AS",
///     sku_name="S1")
/// example_job_agent = azure.mssql.JobAgent("example",
///     name="example-job-agent",
///     location=example.location,
///     database_id=example_database.id)
/// example_job_credential = azure.mssql.JobCredential("example",
///     name="example-job-credential",
///     job_agent_id=example_job_agent.id,
///     username="my-username",
///     password="MyP4ssw0rd!!!")
/// example_job = azure.mssql.Job("example",
///     name="example-job",
///     job_agent_id=example_job_agent.id)
/// example_job_schedule = azure.mssql.JobSchedule("example",
///     job_id=example_job.id,
///     type="Recurring",
///     enabled=True,
///     end_time="2025-12-01T00:00:00Z",
///     interval="PT5M",
///     start_time="2025-01-01T00:00:00Z")
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
///         Name = "example-resource-group",
///         Location = "East US",
///     });
///
///     var exampleServer = new Azure.MSSql.Server("example", new()
///     {
///         Name = "example-server",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Version = "12.0",
///         AdministratorLogin = "4dm1n157r470r",
///         AdministratorLoginPassword = "4-v3ry-53cr37-p455w0rd",
///     });
///
///     var exampleDatabase = new Azure.MSSql.Database("example", new()
///     {
///         Name = "example-db",
///         ServerId = exampleServer.Id,
///         Collation = "SQL_Latin1_General_CP1_CI_AS",
///         SkuName = "S1",
///     });
///
///     var exampleJobAgent = new Azure.MSSql.JobAgent("example", new()
///     {
///         Name = "example-job-agent",
///         Location = example.Location,
///         DatabaseId = exampleDatabase.Id,
///     });
///
///     var exampleJobCredential = new Azure.MSSql.JobCredential("example", new()
///     {
///         Name = "example-job-credential",
///         JobAgentId = exampleJobAgent.Id,
///         Username = "my-username",
///         Password = "MyP4ssw0rd!!!",
///     });
///
///     var exampleJob = new Azure.MSSql.Job("example", new()
///     {
///         Name = "example-job",
///         JobAgentId = exampleJobAgent.Id,
///     });
///
///     var exampleJobSchedule = new Azure.MSSql.JobSchedule("example", new()
///     {
///         JobId = exampleJob.Id,
///         Type = "Recurring",
///         Enabled = true,
///         EndTime = "2025-12-01T00:00:00Z",
///         Interval = "PT5M",
///         StartTime = "2025-01-01T00:00:00Z",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resource-group"),
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServer, err := mssql.NewServer(ctx, "example", &mssql.ServerArgs{
/// 			Name:                       pulumi.String("example-server"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			Version:                    pulumi.String("12.0"),
/// 			AdministratorLogin:         pulumi.String("4dm1n157r470r"),
/// 			AdministratorLoginPassword: pulumi.String("4-v3ry-53cr37-p455w0rd"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDatabase, err := mssql.NewDatabase(ctx, "example", &mssql.DatabaseArgs{
/// 			Name:      pulumi.String("example-db"),
/// 			ServerId:  exampleServer.ID(),
/// 			Collation: pulumi.String("SQL_Latin1_General_CP1_CI_AS"),
/// 			SkuName:   pulumi.String("S1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleJobAgent, err := mssql.NewJobAgent(ctx, "example", &mssql.JobAgentArgs{
/// 			Name:       pulumi.String("example-job-agent"),
/// 			Location:   example.Location,
/// 			DatabaseId: exampleDatabase.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewJobCredential(ctx, "example", &mssql.JobCredentialArgs{
/// 			Name:       pulumi.String("example-job-credential"),
/// 			JobAgentId: exampleJobAgent.ID(),
/// 			Username:   pulumi.String("my-username"),
/// 			Password:   pulumi.String("MyP4ssw0rd!!!"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleJob, err := mssql.NewJob(ctx, "example", &mssql.JobArgs{
/// 			Name:       pulumi.String("example-job"),
/// 			JobAgentId: exampleJobAgent.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewJobSchedule(ctx, "example", &mssql.JobScheduleArgs{
/// 			JobId:     exampleJob.ID(),
/// 			Type:      pulumi.String("Recurring"),
/// 			Enabled:   pulumi.Bool(true),
/// 			EndTime:   pulumi.String("2025-12-01T00:00:00Z"),
/// 			Interval:  pulumi.String("PT5M"),
/// 			StartTime: pulumi.String("2025-01-01T00:00:00Z"),
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
/// import com.pulumi.azure.mssql.Server;
/// import com.pulumi.azure.mssql.ServerArgs;
/// import com.pulumi.azure.mssql.Database;
/// import com.pulumi.azure.mssql.DatabaseArgs;
/// import com.pulumi.azure.mssql.JobAgent;
/// import com.pulumi.azure.mssql.JobAgentArgs;
/// import com.pulumi.azure.mssql.JobCredential;
/// import com.pulumi.azure.mssql.JobCredentialArgs;
/// import com.pulumi.azure.mssql.Job;
/// import com.pulumi.azure.mssql.JobArgs;
/// import com.pulumi.azure.mssql.JobSchedule;
/// import com.pulumi.azure.mssql.JobScheduleArgs;
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
///             .name("example-resource-group")
///             .location("East US")
///             .build());
///
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("example-server")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .version("12.0")
///             .administratorLogin("4dm1n157r470r")
///             .administratorLoginPassword("4-v3ry-53cr37-p455w0rd")
///             .build());
///
///         var exampleDatabase = new Database("exampleDatabase", DatabaseArgs.builder()
///             .name("example-db")
///             .serverId(exampleServer.id())
///             .collation("SQL_Latin1_General_CP1_CI_AS")
///             .skuName("S1")
///             .build());
///
///         var exampleJobAgent = new JobAgent("exampleJobAgent", JobAgentArgs.builder()
///             .name("example-job-agent")
///             .location(example.location())
///             .databaseId(exampleDatabase.id())
///             .build());
///
///         var exampleJobCredential = new JobCredential("exampleJobCredential", JobCredentialArgs.builder()
///             .name("example-job-credential")
///             .jobAgentId(exampleJobAgent.id())
///             .username("my-username")
///             .password("MyP4ssw0rd!!!")
///             .build());
///
///         var exampleJob = new Job("exampleJob", JobArgs.builder()
///             .name("example-job")
///             .jobAgentId(exampleJobAgent.id())
///             .build());
///
///         var exampleJobSchedule = new JobSchedule("exampleJobSchedule", JobScheduleArgs.builder()
///             .jobId(exampleJob.id())
///             .type("Recurring")
///             .enabled(true)
///             .endTime("2025-12-01T00:00:00Z")
///             .interval("PT5M")
///             .startTime("2025-01-01T00:00:00Z")
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
///       name: example-resource-group
///       location: East US
///   exampleServer:
///     type: azure:mssql:Server
///     name: example
///     properties:
///       name: example-server
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       version: '12.0'
///       administratorLogin: 4dm1n157r470r
///       administratorLoginPassword: 4-v3ry-53cr37-p455w0rd
///   exampleDatabase:
///     type: azure:mssql:Database
///     name: example
///     properties:
///       name: example-db
///       serverId: ${exampleServer.id}
///       collation: SQL_Latin1_General_CP1_CI_AS
///       skuName: S1
///   exampleJobAgent:
///     type: azure:mssql:JobAgent
///     name: example
///     properties:
///       name: example-job-agent
///       location: ${example.location}
///       databaseId: ${exampleDatabase.id}
///   exampleJobCredential:
///     type: azure:mssql:JobCredential
///     name: example
///     properties:
///       name: example-job-credential
///       jobAgentId: ${exampleJobAgent.id}
///       username: my-username
///       password: MyP4ssw0rd!!!
///   exampleJob:
///     type: azure:mssql:Job
///     name: example
///     properties:
///       name: example-job
///       jobAgentId: ${exampleJobAgent.id}
///   exampleJobSchedule:
///     type: azure:mssql:JobSchedule
///     name: example
///     properties:
///       jobId: ${exampleJob.id}
///       type: Recurring
///       enabled: true
///       endTime: 2025-12-01T00:00:00Z
///       interval: PT5M
///       startTime: 2025-01-01T00:00:00Z
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Sql` - 2023-08-01-preview
///
/// ## Import
///
/// Elastic Job Schedules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/jobSchedule:JobSchedule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Sql/servers/myserver1/jobAgents/myjobagent1/jobs/myjob1
/// ```
class JobSchedule extends pulumi.CustomResource {
  /// Should the Elastic Job Schedule be enabled? Defaults to `false`.
  ///
  /// > **Note:** When `type` is set to `Once` and `enabled` is set to `true`, it's recommended to add `enabled` to `ignore_changes`. This is because Azure will set `enabled` to `false` once the job has executed.
  late final pulumi.Output<bool> enabled;
  /// The end time of the schedule. Must be in RFC3339 format.
  late final pulumi.Output<String> endTime;
  /// The interval between job executions. Must be in ISO8601 duration format.
  late final pulumi.Output<String?> interval;
  /// The ID of the Elastic Job. Changing this forces a new Elastic Job Schedule to be created.
  late final pulumi.Output<String> jobId;
  /// The start time of the schedule. Must be in RFC3339 format.
  late final pulumi.Output<String> startTime;
  /// The type of schedule. Possible values are `Once` and `Recurring`.
  late final pulumi.Output<String> type;

  /// Creates a new [JobSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobSchedule]. {@macro pulumi_mssql_job_schedule_job_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobSchedule(
    String name, {
    JobScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/jobSchedule:JobSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enabled = registerOutput<bool>('enabled');
    this.endTime = registerOutput<String>('endTime');
    this.interval = registerOutput<String?>('interval');
    this.jobId = registerOutput<String>('jobId');
    this.startTime = registerOutput<String>('startTime');
    this.type = registerOutput<String>('type');
  }

  /// Gets an existing [JobSchedule] resource's state with the given [name] and [id].
  static JobSchedule get(
    String name,
    pulumi.Input<String> id, {
    JobScheduleState? state,
  }) {
    return JobSchedule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  JobSchedule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/jobSchedule:JobSchedule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enabled = registerOutput<bool>('enabled');
    this.endTime = registerOutput<String>('endTime');
    this.interval = registerOutput<String?>('interval');
    this.jobId = registerOutput<String>('jobId');
    this.startTime = registerOutput<String>('startTime');
    this.type = registerOutput<String>('type');
  }
}
