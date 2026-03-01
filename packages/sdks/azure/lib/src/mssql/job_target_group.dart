import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_target_group_args.dart';
import 'job_target_group_job_target.dart';
import 'job_target_group_state.dart';

/// Manages a Job Target Group.
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
///     username: "testusername",
///     password: "testpassword",
/// });
/// const exampleJobTargetGroup = new azure.mssql.JobTargetGroup("example", {
///     name: "example-target-group",
///     jobAgentId: exampleJobAgent.id,
///     jobTargets: [{
///         serverName: exampleServer.name,
///         jobCredentialId: exampleJobCredential.id,
///     }],
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
///     username="testusername",
///     password="testpassword")
/// example_job_target_group = azure.mssql.JobTargetGroup("example",
///     name="example-target-group",
///     job_agent_id=example_job_agent.id,
///     job_targets=[{
///         "server_name": example_server.name,
///         "job_credential_id": example_job_credential.id,
///     }])
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
///         Username = "testusername",
///         Password = "testpassword",
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
///                 JobCredentialId = exampleJobCredential.Id,
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
/// 		exampleJobCredential, err := mssql.NewJobCredential(ctx, "example", &mssql.JobCredentialArgs{
/// 			Name:       pulumi.String("example-job-credential"),
/// 			JobAgentId: exampleJobAgent.ID(),
/// 			Username:   pulumi.String("testusername"),
/// 			Password:   pulumi.String("testpassword"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewJobTargetGroup(ctx, "example", &mssql.JobTargetGroupArgs{
/// 			Name:       pulumi.String("example-target-group"),
/// 			JobAgentId: exampleJobAgent.ID(),
/// 			JobTargets: mssql.JobTargetGroupJobTargetArray{
/// 				&mssql.JobTargetGroupJobTargetArgs{
/// 					ServerName:      exampleServer.Name,
/// 					JobCredentialId: exampleJobCredential.ID(),
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
///             .username("testusername")
///             .password("testpassword")
///             .build());
///
///         var exampleJobTargetGroup = new JobTargetGroup("exampleJobTargetGroup", JobTargetGroupArgs.builder()
///             .name("example-target-group")
///             .jobAgentId(exampleJobAgent.id())
///             .jobTargets(JobTargetGroupJobTargetArgs.builder()
///                 .serverName(exampleServer.name())
///                 .jobCredentialId(exampleJobCredential.id())
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
///       username: testusername
///       password: testpassword
///   exampleJobTargetGroup:
///     type: azure:mssql:JobTargetGroup
///     name: example
///     properties:
///       name: example-target-group
///       jobAgentId: ${exampleJobAgent.id}
///       jobTargets:
///         - serverName: ${exampleServer.name}
///           jobCredentialId: ${exampleJobCredential.id}
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
/// Job Target Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/jobTargetGroup:JobTargetGroup example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Sql/servers/myserver1/jobAgents/myjobagent1/targetGroups/mytargetgroup1
/// ```
class JobTargetGroup extends pulumi.CustomResource {
  /// The ID of the Elastic Job Agent. Changing this forces a new Job Target Group to be created.
  late final pulumi.Output<String> jobAgentId;
  /// One or more `job_target` blocks as defined below.
  late final pulumi.Output<List<JobTargetGroupJobTarget>?> jobTargets;
  /// The name which should be used for this Job Target Group. Changing this forces a new Job Target Group to be created.
  late final pulumi.Output<String> name;

  /// Creates a new [JobTargetGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobTargetGroup]. {@macro pulumi_mssql_job_target_group_job_target_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobTargetGroup(
    String name, {
    JobTargetGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/jobTargetGroup:JobTargetGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.jobAgentId = registerOutput<String>('jobAgentId');
    this.jobTargets = registerOutput<List<JobTargetGroupJobTarget>?>('jobTargets');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [JobTargetGroup] resource's state with the given [name] and [id].
  static JobTargetGroup get(
    String name,
    pulumi.Input<String> id, {
    JobTargetGroupState? state,
  }) {
    return JobTargetGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  JobTargetGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/jobTargetGroup:JobTargetGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.jobAgentId = registerOutput<String>('jobAgentId');
    this.jobTargets = registerOutput<List<JobTargetGroupJobTarget>?>('jobTargets');
    this.name = registerOutput<String>('name');
  }
}
