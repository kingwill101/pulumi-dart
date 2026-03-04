import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_step_action_response.dart';
import 'job_step_args.dart';
import 'job_step_execution_options_response.dart';
import 'job_step_output_response.dart';

/// A job step.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a job step with all properties specified.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var jobStep = new AzureNative.Sql.JobStep("jobStep", new()
///     {
///         Action = new AzureNative.Sql.Inputs.JobStepActionArgs
///         {
///             Source = AzureNative.Sql.JobStepActionSource.Inline,
///             Type = AzureNative.Sql.JobStepActionType.TSql,
///             Value = "select 2",
///         },
///         Credential = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/cred1",
///         ExecutionOptions = new AzureNative.Sql.Inputs.JobStepExecutionOptionsArgs
///         {
///             InitialRetryIntervalSeconds = 11,
///             MaximumRetryIntervalSeconds = 222,
///             RetryAttempts = 42,
///             RetryIntervalBackoffMultiplier = 3,
///             TimeoutSeconds = 1234,
///         },
///         JobAgentName = "agent1",
///         JobName = "job1",
///         Output = new AzureNative.Sql.Inputs.JobStepOutputArgs
///         {
///             Credential = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/cred0",
///             DatabaseName = "database3",
///             ResourceGroupName = "group3",
///             SchemaName = "myschema1234",
///             ServerName = "server3",
///             SubscriptionId = "3501b905-a848-4b5d-96e8-b253f62d735a",
///             TableName = "mytable5678",
///             Type = AzureNative.Sql.JobStepOutputType.SqlDatabase,
///         },
///         ResourceGroupName = "group1",
///         ServerName = "server1",
///         StepId = 1,
///         StepName = "step1",
///         TargetGroup = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/targetGroups/targetGroup1",
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
/// 		_, err := sql.NewJobStep(ctx, "jobStep", &sql.JobStepArgs{
/// 			Action: &sql.JobStepActionArgs{
/// 				Source: pulumi.String(sql.JobStepActionSourceInline),
/// 				Type:   pulumi.String(sql.JobStepActionTypeTSql),
/// 				Value:  pulumi.String("select 2"),
/// 			},
/// 			Credential: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/cred1"),
/// 			ExecutionOptions: &sql.JobStepExecutionOptionsArgs{
/// 				InitialRetryIntervalSeconds:    pulumi.Int(11),
/// 				MaximumRetryIntervalSeconds:    pulumi.Int(222),
/// 				RetryAttempts:                  pulumi.Int(42),
/// 				RetryIntervalBackoffMultiplier: pulumi.Float64(3),
/// 				TimeoutSeconds:                 pulumi.Int(1234),
/// 			},
/// 			JobAgentName: pulumi.String("agent1"),
/// 			JobName:      pulumi.String("job1"),
/// 			Output: &sql.JobStepOutputTypeArgs{
/// 				Credential:        pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/cred0"),
/// 				DatabaseName:      pulumi.String("database3"),
/// 				ResourceGroupName: pulumi.String("group3"),
/// 				SchemaName:        pulumi.String("myschema1234"),
/// 				ServerName:        pulumi.String("server3"),
/// 				SubscriptionId:    pulumi.String("3501b905-a848-4b5d-96e8-b253f62d735a"),
/// 				TableName:         pulumi.String("mytable5678"),
/// 				Type:              pulumi.String(sql.JobStepOutputTypeSqlDatabase),
/// 			},
/// 			ResourceGroupName: pulumi.String("group1"),
/// 			ServerName:        pulumi.String("server1"),
/// 			StepId:            pulumi.Int(1),
/// 			StepName:          pulumi.String("step1"),
/// 			TargetGroup:       pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/targetGroups/targetGroup1"),
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
/// import com.pulumi.azurenative.sql.JobStep;
/// import com.pulumi.azurenative.sql.JobStepArgs;
/// import com.pulumi.azurenative.sql.inputs.JobStepActionArgs;
/// import com.pulumi.azurenative.sql.inputs.JobStepExecutionOptionsArgs;
/// import com.pulumi.azurenative.sql.inputs.JobStepOutputArgs;
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
///         var jobStep = new JobStep("jobStep", JobStepArgs.builder()
///             .action(JobStepActionArgs.builder()
///                 .source("Inline")
///                 .type("TSql")
///                 .value("select 2")
///                 .build())
///             .credential("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/cred1")
///             .executionOptions(JobStepExecutionOptionsArgs.builder()
///                 .initialRetryIntervalSeconds(11)
///                 .maximumRetryIntervalSeconds(222)
///                 .retryAttempts(42)
///                 .retryIntervalBackoffMultiplier(3.0)
///                 .timeoutSeconds(1234)
///                 .build())
///             .jobAgentName("agent1")
///             .jobName("job1")
///             .output(JobStepOutputArgs.builder()
///                 .credential("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/cred0")
///                 .databaseName("database3")
///                 .resourceGroupName("group3")
///                 .schemaName("myschema1234")
///                 .serverName("server3")
///                 .subscriptionId("3501b905-a848-4b5d-96e8-b253f62d735a")
///                 .tableName("mytable5678")
///                 .type("SqlDatabase")
///                 .build())
///             .resourceGroupName("group1")
///             .serverName("server1")
///             .stepId(1)
///             .stepName("step1")
///             .targetGroup("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/targetGroups/targetGroup1")
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
/// const jobStep = new azure_native.sql.JobStep("jobStep", {
///     action: {
///         source: azure_native.sql.JobStepActionSource.Inline,
///         type: azure_native.sql.JobStepActionType.TSql,
///         value: "select 2",
///     },
///     credential: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/cred1",
///     executionOptions: {
///         initialRetryIntervalSeconds: 11,
///         maximumRetryIntervalSeconds: 222,
///         retryAttempts: 42,
///         retryIntervalBackoffMultiplier: 3,
///         timeoutSeconds: 1234,
///     },
///     jobAgentName: "agent1",
///     jobName: "job1",
///     output: {
///         credential: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/cred0",
///         databaseName: "database3",
///         resourceGroupName: "group3",
///         schemaName: "myschema1234",
///         serverName: "server3",
///         subscriptionId: "3501b905-a848-4b5d-96e8-b253f62d735a",
///         tableName: "mytable5678",
///         type: azure_native.sql.JobStepOutputType.SqlDatabase,
///     },
///     resourceGroupName: "group1",
///     serverName: "server1",
///     stepId: 1,
///     stepName: "step1",
///     targetGroup: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/targetGroups/targetGroup1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job_step = azure_native.sql.JobStep("jobStep",
///     action={
///         "source": azure_native.sql.JobStepActionSource.INLINE,
///         "type": azure_native.sql.JobStepActionType.T_SQL,
///         "value": "select 2",
///     },
///     credential="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/cred1",
///     execution_options={
///         "initial_retry_interval_seconds": 11,
///         "maximum_retry_interval_seconds": 222,
///         "retry_attempts": 42,
///         "retry_interval_backoff_multiplier": 3,
///         "timeout_seconds": 1234,
///     },
///     job_agent_name="agent1",
///     job_name="job1",
///     output={
///         "credential": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/cred0",
///         "database_name": "database3",
///         "resource_group_name": "group3",
///         "schema_name": "myschema1234",
///         "server_name": "server3",
///         "subscription_id": "3501b905-a848-4b5d-96e8-b253f62d735a",
///         "table_name": "mytable5678",
///         "type": azure_native.sql.JobStepOutputType.SQL_DATABASE,
///     },
///     resource_group_name="group1",
///     server_name="server1",
///     step_id=1,
///     step_name="step1",
///     target_group="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/targetGroups/targetGroup1")
///
/// ```
///
/// ```yaml
/// resources:
///   jobStep:
///     type: azure-native:sql:JobStep
///     properties:
///       action:
///         source: Inline
///         type: TSql
///         value: select 2
///       credential: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/cred1
///       executionOptions:
///         initialRetryIntervalSeconds: 11
///         maximumRetryIntervalSeconds: 222
///         retryAttempts: 42
///         retryIntervalBackoffMultiplier: 3
///         timeoutSeconds: 1234
///       jobAgentName: agent1
///       jobName: job1
///       output:
///         credential: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/cred0
///         databaseName: database3
///         resourceGroupName: group3
///         schemaName: myschema1234
///         serverName: server3
///         subscriptionId: 3501b905-a848-4b5d-96e8-b253f62d735a
///         tableName: mytable5678
///         type: SqlDatabase
///       resourceGroupName: group1
///       serverName: server1
///       stepId: 1
///       stepName: step1
///       targetGroup: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/targetGroups/targetGroup1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a job step with minimal properties specified.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var jobStep = new AzureNative.Sql.JobStep("jobStep", new()
///     {
///         Action = new AzureNative.Sql.Inputs.JobStepActionArgs
///         {
///             Value = "select 1",
///         },
///         JobAgentName = "agent1",
///         JobName = "job1",
///         ResourceGroupName = "group1",
///         ServerName = "server1",
///         StepName = "step1",
///         TargetGroup = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/targetGroups/targetGroup0",
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
/// 		_, err := sql.NewJobStep(ctx, "jobStep", &sql.JobStepArgs{
/// 			Action: &sql.JobStepActionArgs{
/// 				Value: pulumi.String("select 1"),
/// 			},
/// 			JobAgentName:      pulumi.String("agent1"),
/// 			JobName:           pulumi.String("job1"),
/// 			ResourceGroupName: pulumi.String("group1"),
/// 			ServerName:        pulumi.String("server1"),
/// 			StepName:          pulumi.String("step1"),
/// 			TargetGroup:       pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/targetGroups/targetGroup0"),
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
/// import com.pulumi.azurenative.sql.JobStep;
/// import com.pulumi.azurenative.sql.JobStepArgs;
/// import com.pulumi.azurenative.sql.inputs.JobStepActionArgs;
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
///         var jobStep = new JobStep("jobStep", JobStepArgs.builder()
///             .action(JobStepActionArgs.builder()
///                 .value("select 1")
///                 .build())
///             .jobAgentName("agent1")
///             .jobName("job1")
///             .resourceGroupName("group1")
///             .serverName("server1")
///             .stepName("step1")
///             .targetGroup("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/targetGroups/targetGroup0")
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
/// const jobStep = new azure_native.sql.JobStep("jobStep", {
///     action: {
///         value: "select 1",
///     },
///     jobAgentName: "agent1",
///     jobName: "job1",
///     resourceGroupName: "group1",
///     serverName: "server1",
///     stepName: "step1",
///     targetGroup: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/targetGroups/targetGroup0",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job_step = azure_native.sql.JobStep("jobStep",
///     action={
///         "value": "select 1",
///     },
///     job_agent_name="agent1",
///     job_name="job1",
///     resource_group_name="group1",
///     server_name="server1",
///     step_name="step1",
///     target_group="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/targetGroups/targetGroup0")
///
/// ```
///
/// ```yaml
/// resources:
///   jobStep:
///     type: azure-native:sql:JobStep
///     properties:
///       action:
///         value: select 1
///       jobAgentName: agent1
///       jobName: job1
///       resourceGroupName: group1
///       serverName: server1
///       stepName: step1
///       targetGroup: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/targetGroups/targetGroup0
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
/// $ pulumi import azure-native:sql:JobStep step1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/jobAgents/{jobAgentName}/jobs/{jobName}/steps/{stepName}
/// ```
class JobStep extends pulumi.CustomResource {
  /// The action payload of the job step.
  late final pulumi.Output<JobStepActionResponse> action;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The resource ID of the job credential that will be used to connect to the targets.
  late final pulumi.Output<String?> credential;

  /// Execution options for the job step.
  late final pulumi.Output<JobStepExecutionOptionsResponse?> executionOptions;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Output destination properties of the job step.
  late final pulumi.Output<JobStepOutputResponse?> output;

  /// The job step's index within the job. If not specified when creating the job step, it will be created as the last step. If not specified when updating the job step, the step id is not modified.
  late final pulumi.Output<int?> stepId;

  /// The resource ID of the target group that the job step will be executed on.
  late final pulumi.Output<String> targetGroup;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [JobStep].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobStep]. {@macro pulumi_sql_job_step_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobStep(
    String name, {
    JobStepArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:sql:JobStep',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<JobStepActionResponse>('action');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    credential = registerOutput<String?>('credential');
    executionOptions = registerOutput<JobStepExecutionOptionsResponse?>(
      'executionOptions',
    );
    this.name = registerOutput<String>('name');
    output = registerOutput<JobStepOutputResponse?>('output');
    stepId = registerOutput<int?>('stepId');
    targetGroup = registerOutput<String>('targetGroup');
    type = registerOutput<String>('type');
  }
}
