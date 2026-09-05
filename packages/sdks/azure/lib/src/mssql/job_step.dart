import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_step_args.dart';
import 'job_step_output_target.dart';
import 'job_step_state.dart';

/// Manages an Elastic Job Step.
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
///     location: "westeurope",
/// });
/// const exampleServer = new azure.mssql.Server("example", {
///     name: "example-server",
///     location: example.location,
///     resourceGroupName: example.name,
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
///     username: "exampleusername",
///     password: "examplepassword",
/// });
/// const exampleJobTargetGroup = new azure.mssql.JobTargetGroup("example", {
///     name: "example-target-group",
///     jobAgentId: exampleJobAgent.id,
///     jobTargets: [{
///         serverName: exampleServer.name,
///         databaseName: exampleDatabase.name,
///         jobCredentialId: exampleJobCredential.id,
///     }],
/// });
/// const exampleJob = new azure.mssql.Job("example", {
///     name: "example-job",
///     jobAgentId: exampleJobAgent.id,
///     description: "example description",
/// });
/// const test = new azure.mssql.JobStep("test", {
///     name: "example-job-step",
///     jobId: exampleJob.id,
///     jobCredentialId: exampleJobCredential.id,
///     jobTargetGroupId: exampleJobTargetGroup.id,
///     jobStepIndex: 1,
///     sqlScript: `IF NOT EXISTS (SELECT * FROM sys.objects WHERE [name] = N'Pets')
///   CREATE TABLE Pets (
///     Animal NVARCHAR(50),
///     Name NVARCHAR(50),
///   );
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="westeurope")
/// example_server = azure.mssql.Server("example",
///     name="example-server",
///     location=example.location,
///     resource_group_name=example.name,
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
///     username="exampleusername",
///     password="examplepassword")
/// example_job_target_group = azure.mssql.JobTargetGroup("example",
///     name="example-target-group",
///     job_agent_id=example_job_agent.id,
///     job_targets=[{
///         "server_name": example_server.name,
///         "database_name": example_database.name,
///         "job_credential_id": example_job_credential.id,
///     }])
/// example_job = azure.mssql.Job("example",
///     name="example-job",
///     job_agent_id=example_job_agent.id,
///     description="example description")
/// test = azure.mssql.JobStep("test",
///     name="example-job-step",
///     job_id=example_job.id,
///     job_credential_id=example_job_credential.id,
///     job_target_group_id=example_job_target_group.id,
///     job_step_index=1,
///     sql_script="""IF NOT EXISTS (SELECT * FROM sys.objects WHERE [name] = N'Pets')
///   CREATE TABLE Pets (
///     Animal NVARCHAR(50),
///     Name NVARCHAR(50),
///   );
/// """)
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
///         Location = "westeurope",
///     });
///
///     var exampleServer = new Azure.MSSql.Server("example", new()
///     {
///         Name = "example-server",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
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
///         Username = "exampleusername",
///         Password = "examplepassword",
///     });
///
///     var exampleJobTargetGroup = new Azure.MSSql.JobTargetGroup("example", new()
///     {
///         Name = "example-target-group",
///         JobAgentId = exampleJobAgent.Id,
///         JobTargets = new[]
///         {
///             new Azure.MSSql.Inputs.JobTargetGroupJobTargetArgs
///             {
///                 ServerName = exampleServer.Name,
///                 DatabaseName = exampleDatabase.Name,
///                 JobCredentialId = exampleJobCredential.Id,
///             },
///         },
///     });
///
///     var exampleJob = new Azure.MSSql.Job("example", new()
///     {
///         Name = "example-job",
///         JobAgentId = exampleJobAgent.Id,
///         Description = "example description",
///     });
///
///     var test = new Azure.MSSql.JobStep("test", new()
///     {
///         Name = "example-job-step",
///         JobId = exampleJob.Id,
///         JobCredentialId = exampleJobCredential.Id,
///         JobTargetGroupId = exampleJobTargetGroup.Id,
///         JobStepIndex = 1,
///         SqlScript = @"IF NOT EXISTS (SELECT * FROM sys.objects WHERE [name] = N'Pets')
///   CREATE TABLE Pets (
///     Animal NVARCHAR(50),
///     Name NVARCHAR(50),
///   );
/// ",
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
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("westeurope"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServer, err := mssql.NewServer(ctx, "example", &mssql.ServerArgs{
/// 			Name:                       pulumi.String("example-server"),
/// 			Location:                   example.Location,
/// 			ResourceGroupName:          example.Name,
/// 			Version:                    pulumi.String("12.0"),
/// 			AdministratorLogin:         pulumi.String("4dm1n157r470r"),
/// 			AdministratorLoginPassword: pulumi.String("4-v3ry-53cr37-p455w0rd"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDatabase, err := mssql.NewDatabase(ctx, "example", &mssql.DatabaseArgs{
/// 			Name:      pulumi.String("example-db"),
/// 			ServerId:  exampleServer.ID().ToIDOutput().ToStringOutput(),
/// 			Collation: pulumi.String("SQL_Latin1_General_CP1_CI_AS"),
/// 			SkuName:   pulumi.String("S1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleJobAgent, err := mssql.NewJobAgent(ctx, "example", &mssql.JobAgentArgs{
/// 			Name:       pulumi.String("example-job-agent"),
/// 			Location:   example.Location,
/// 			DatabaseId: exampleDatabase.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleJobCredential, err := mssql.NewJobCredential(ctx, "example", &mssql.JobCredentialArgs{
/// 			Name:       pulumi.String("example-job-credential"),
/// 			JobAgentId: exampleJobAgent.ID().ToIDOutput().ToStringOutput(),
/// 			Username:   pulumi.String("exampleusername"),
/// 			Password:   pulumi.String("examplepassword"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleJobTargetGroup, err := mssql.NewJobTargetGroup(ctx, "example", &mssql.JobTargetGroupArgs{
/// 			Name:       pulumi.String("example-target-group"),
/// 			JobAgentId: exampleJobAgent.ID().ToIDOutput().ToStringOutput(),
/// 			JobTargets: mssql.JobTargetGroupJobTargetArray{
/// 				&mssql.JobTargetGroupJobTargetArgs{
/// 					ServerName:      exampleServer.Name,
/// 					DatabaseName:    exampleDatabase.Name,
/// 					JobCredentialId: exampleJobCredential.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleJob, err := mssql.NewJob(ctx, "example", &mssql.JobArgs{
/// 			Name:        pulumi.String("example-job"),
/// 			JobAgentId:  exampleJobAgent.ID().ToIDOutput().ToStringOutput(),
/// 			Description: pulumi.String("example description"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewJobStep(ctx, "test", &mssql.JobStepArgs{
/// 			Name:             pulumi.String("example-job-step"),
/// 			JobId:            exampleJob.ID().ToIDOutput().ToStringOutput(),
/// 			JobCredentialId:  exampleJobCredential.ID().ToIDOutput().ToStringOutput(),
/// 			JobTargetGroupId: exampleJobTargetGroup.ID().ToIDOutput().ToStringOutput(),
/// 			JobStepIndex:     pulumi.Int(1),
/// 			SqlScript: pulumi.String(`IF NOT EXISTS (SELECT * FROM sys.objects WHERE [name] = N'Pets')
///   CREATE TABLE Pets (
///     Animal NVARCHAR(50),
///     Name NVARCHAR(50),
///   );
/// `),
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
///   location = "westeurope"
/// }
/// resource "azure_mssql_server" "example" {
///   name                         = "example-server"
///   location                     = azure_core_resourcegroup.example.location
///   resource_group_name          = azure_core_resourcegroup.example.name
///   version                      = "12.0"
///   administrator_login          = "4dm1n157r470r"
///   administrator_login_password = "4-v3ry-53cr37-p455w0rd"
/// }
/// resource "azure_mssql_database" "example" {
///   name      = "example-db"
///   server_id = azure_mssql_server.example.id
///   collation = "SQL_Latin1_General_CP1_CI_AS"
///   sku_name  = "S1"
/// }
/// resource "azure_mssql_jobagent" "example" {
///   name        = "example-job-agent"
///   location    = azure_core_resourcegroup.example.location
///   database_id = azure_mssql_database.example.id
/// }
/// resource "azure_mssql_jobcredential" "example" {
///   name         = "example-job-credential"
///   job_agent_id = azure_mssql_jobagent.example.id
///   username     = "exampleusername"
///   password     = "examplepassword"
/// }
/// resource "azure_mssql_jobtargetgroup" "example" {
///   name         = "example-target-group"
///   job_agent_id = azure_mssql_jobagent.example.id
///   job_targets {
///     server_name       = azure_mssql_server.example.name
///     database_name     = azure_mssql_database.example.name
///     job_credential_id = azure_mssql_jobcredential.example.id
///   }
/// }
/// resource "azure_mssql_job" "example" {
///   name         = "example-job"
///   job_agent_id = azure_mssql_jobagent.example.id
///   description  = "example description"
/// }
/// resource "azure_mssql_jobstep" "test" {
///   name                = "example-job-step"
///   job_id              = azure_mssql_job.example.id
///   job_credential_id   = azure_mssql_jobcredential.example.id
///   job_target_group_id = azure_mssql_jobtargetgroup.example.id
///   job_step_index      = 1
///   sql_script          = "IF NOT EXISTS (SELECT * FROM sys.objects WHERE [name] = N'Pets')\n  CREATE TABLE Pets (\n    Animal NVARCHAR(50),\n    Name NVARCHAR(50),\n  );\n"
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
/// import com.pulumi.azure.mssql.JobTargetGroup;
/// import com.pulumi.azure.mssql.JobTargetGroupArgs;
/// import com.pulumi.azure.mssql.inputs.JobTargetGroupJobTargetArgs;
/// import com.pulumi.azure.mssql.Job;
/// import com.pulumi.azure.mssql.JobArgs;
/// import com.pulumi.azure.mssql.JobStep;
/// import com.pulumi.azure.mssql.JobStepArgs;
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
///             .location("westeurope")
///             .build());
///
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("example-server")
///             .location(example.location())
///             .resourceGroupName(example.name())
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
///             .username("exampleusername")
///             .password("examplepassword")
///             .build());
///
///         var exampleJobTargetGroup = new JobTargetGroup("exampleJobTargetGroup", JobTargetGroupArgs.builder()
///             .name("example-target-group")
///             .jobAgentId(exampleJobAgent.id())
///             .jobTargets(JobTargetGroupJobTargetArgs.builder()
///                 .serverName(exampleServer.name())
///                 .databaseName(exampleDatabase.name())
///                 .jobCredentialId(exampleJobCredential.id())
///                 .build())
///             .build());
///
///         var exampleJob = new Job("exampleJob", JobArgs.builder()
///             .name("example-job")
///             .jobAgentId(exampleJobAgent.id())
///             .description("example description")
///             .build());
///
///         var test = new JobStep("test", JobStepArgs.builder()
///             .name("example-job-step")
///             .jobId(exampleJob.id())
///             .jobCredentialId(exampleJobCredential.id())
///             .jobTargetGroupId(exampleJobTargetGroup.id())
///             .jobStepIndex(1)
///             .sqlScript("""
/// IF NOT EXISTS (SELECT * FROM sys.objects WHERE [name] = N'Pets')
///   CREATE TABLE Pets (
///     Animal NVARCHAR(50),
///     Name NVARCHAR(50),
///   );
///             """)
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
///       location: westeurope
///   exampleServer:
///     type: azure:mssql:Server
///     name: example
///     properties:
///       name: example-server
///       location: ${example.location}
///       resourceGroupName: ${example.name}
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
///       username: exampleusername
///       password: examplepassword
///   exampleJobTargetGroup:
///     type: azure:mssql:JobTargetGroup
///     name: example
///     properties:
///       name: example-target-group
///       jobAgentId: ${exampleJobAgent.id}
///       jobTargets:
///         - serverName: ${exampleServer.name}
///           databaseName: ${exampleDatabase.name}
///           jobCredentialId: ${exampleJobCredential.id}
///   exampleJob:
///     type: azure:mssql:Job
///     name: example
///     properties:
///       name: example-job
///       jobAgentId: ${exampleJobAgent.id}
///       description: example description
///   test:
///     type: azure:mssql:JobStep
///     properties:
///       name: example-job-step
///       jobId: ${exampleJob.id}
///       jobCredentialId: ${exampleJobCredential.id}
///       jobTargetGroupId: ${exampleJobTargetGroup.id}
///       jobStepIndex: 1
///       sqlScript: |
///         IF NOT EXISTS (SELECT * FROM sys.objects WHERE [name] = N'Pets')
///           CREATE TABLE Pets (
///             Animal NVARCHAR(50),
///             Name NVARCHAR(50),
///           );
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Sql` - 2023-08-01-preview
///
/// ## Import
///
/// Elastic Job Steps can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/jobStep:JobStep example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Sql/servers/myserver1/jobAgents/myjobagent1/jobs/myjob1/steps/myjobstep1
/// ```
class JobStep extends pulumi.CustomResource {
  /// The initial retry interval in seconds. Defaults to `1`.
  late final pulumi.Output<int?> initialRetryIntervalSeconds;
  /// The ID of the Elastic Job Credential to use when executing this Elastic Job Step. Omit this argument to run the step under the Job Agent's managed identity (user-assigned).
  ///
  /// &gt; **Note:** Once set, `jobCredentialId` cannot be removed. Removing the credential will force a new resource to be created.
  late final pulumi.Output<String?> jobCredentialId;
  /// The ID of the Elastic Job. Changing this forces a new Elastic Job Step to be created.
  late final pulumi.Output<String> jobId;
  /// The index at which to insert this Elastic Job Step into the Elastic Job.
  ///
  /// &gt; **Note:** This value must be greater than or equal to 1 and less than or equal to the number of job steps in the Elastic Job.
  late final pulumi.Output<int> jobStepIndex;
  /// The ID of the Elastic Job Target Group.
  late final pulumi.Output<String> jobTargetGroupId;
  /// The maximum retry interval in seconds. Defaults to `120`.
  ///
  /// &gt; **Note:** `maximumRetryIntervalSeconds` must be greater than `initialRetryIntervalSeconds`.
  late final pulumi.Output<int?> maximumRetryIntervalSeconds;
  /// The name which should be used for this Elastic Job Step. Changing this forces a new Elastic Job Step to be created.
  late final pulumi.Output<String> name;
  /// An `outputTarget` block as defined below.
  late final pulumi.Output<JobStepOutputTarget?> outputTarget;
  /// The number of retry attempts. Defaults to `10`.
  late final pulumi.Output<int?> retryAttempts;
  /// The multiplier for time between retries. Defaults to `2.0`.
  late final pulumi.Output<double?> retryIntervalBackoffMultiplier;
  /// The T-SQL script to be executed by this Elastic Job Step.
  ///
  /// &gt; **Note:** While Azure places no restrictions on the script provided here, it is recommended to ensure the script is idempotent.
  late final pulumi.Output<String> sqlScript;
  /// The execution timeout in seconds for this Elastic Job Step. Defaults to `43200`.
  late final pulumi.Output<int?> timeoutSeconds;

  /// Creates a new [JobStep].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobStep]. {@macro pulumi_mssql_job_step_job_step_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobStep(
    String name, {
    JobStepArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/jobStep:JobStep',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    initialRetryIntervalSeconds = registerOutput<int?>('initialRetryIntervalSeconds');
    jobCredentialId = registerOutput<String?>('jobCredentialId');
    jobId = registerOutput<String>('jobId');
    jobStepIndex = registerOutput<int>('jobStepIndex');
    jobTargetGroupId = registerOutput<String>('jobTargetGroupId');
    maximumRetryIntervalSeconds = registerOutput<int?>('maximumRetryIntervalSeconds');
    this.name = registerOutput<String>('name');
    outputTarget = registerOutput<JobStepOutputTarget?>('outputTarget', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobStepOutputTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    retryAttempts = registerOutput<int?>('retryAttempts');
    retryIntervalBackoffMultiplier = registerOutput<double?>('retryIntervalBackoffMultiplier');
    sqlScript = registerOutput<String>('sqlScript');
    timeoutSeconds = registerOutput<int?>('timeoutSeconds');
  }

  /// Gets an existing [JobStep] resource's state with the given [name] and [id].
  static JobStep get(
    String name,
    pulumi.Input<String> id, {
    JobStepState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return JobStep._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  JobStep._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/jobStep:JobStep',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    initialRetryIntervalSeconds = registerOutput<int?>('initialRetryIntervalSeconds');
    jobCredentialId = registerOutput<String?>('jobCredentialId');
    jobId = registerOutput<String>('jobId');
    jobStepIndex = registerOutput<int>('jobStepIndex');
    jobTargetGroupId = registerOutput<String>('jobTargetGroupId');
    maximumRetryIntervalSeconds = registerOutput<int?>('maximumRetryIntervalSeconds');
    this.name = registerOutput<String>('name');
    outputTarget = registerOutput<JobStepOutputTarget?>('outputTarget', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobStepOutputTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    retryAttempts = registerOutput<int?>('retryAttempts');
    retryIntervalBackoffMultiplier = registerOutput<double?>('retryIntervalBackoffMultiplier');
    sqlScript = registerOutput<String>('sqlScript');
    timeoutSeconds = registerOutput<int?>('timeoutSeconds');
  }

  /// Creates a typed reference to an existing [JobStep] resource.
  JobStep.reference(String urn)
    : super(
        'azure:mssql/jobStep:JobStep',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    initialRetryIntervalSeconds = registerOutput<int?>('initialRetryIntervalSeconds');
    jobCredentialId = registerOutput<String?>('jobCredentialId');
    jobId = registerOutput<String>('jobId');
    jobStepIndex = registerOutput<int>('jobStepIndex');
    jobTargetGroupId = registerOutput<String>('jobTargetGroupId');
    maximumRetryIntervalSeconds = registerOutput<int?>('maximumRetryIntervalSeconds');
    this.name = registerOutput<String>('name');
    outputTarget = registerOutput<JobStepOutputTarget?>('outputTarget', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobStepOutputTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    retryAttempts = registerOutput<int?>('retryAttempts');
    retryIntervalBackoffMultiplier = registerOutput<double?>('retryIntervalBackoffMultiplier');
    sqlScript = registerOutput<String>('sqlScript');
    timeoutSeconds = registerOutput<int?>('timeoutSeconds');
  }
}
