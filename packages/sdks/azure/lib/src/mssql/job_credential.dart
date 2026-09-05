import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_credential_args.dart';
import 'job_credential_state.dart';

/// Manages an Elastic Job Credential.
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
///     location: "northeurope",
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
///     name: "example-credential",
///     jobAgentId: exampleJobAgent.id,
///     username: "my-username",
///     password: "MyP4ssw0rd!!!",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="northeurope")
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
///     name="example-credential",
///     job_agent_id=example_job_agent.id,
///     username="my-username",
///     password="MyP4ssw0rd!!!")
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
///         Location = "northeurope",
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
///         Name = "example-credential",
///         JobAgentId = exampleJobAgent.Id,
///         Username = "my-username",
///         Password = "MyP4ssw0rd!!!",
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
/// 			Location: pulumi.String("northeurope"),
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
/// 		_, err = mssql.NewJobCredential(ctx, "example", &mssql.JobCredentialArgs{
/// 			Name:       pulumi.String("example-credential"),
/// 			JobAgentId: exampleJobAgent.ID().ToIDOutput().ToStringOutput(),
/// 			Username:   pulumi.String("my-username"),
/// 			Password:   pulumi.String("MyP4ssw0rd!!!"),
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
///   location = "northeurope"
/// }
/// resource "azure_mssql_server" "example" {
///   name                         = "example-server"
///   resource_group_name          = azure_core_resourcegroup.example.name
///   location                     = azure_core_resourcegroup.example.location
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
///   name         = "example-credential"
///   job_agent_id = azure_mssql_jobagent.example.id
///   username     = "my-username"
///   password     = "MyP4ssw0rd!!!"
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
///             .location("northeurope")
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
///             .name("example-credential")
///             .jobAgentId(exampleJobAgent.id())
///             .username("my-username")
///             .password("MyP4ssw0rd!!!")
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
///       location: northeurope
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
///       name: example-credential
///       jobAgentId: ${exampleJobAgent.id}
///       username: my-username
///       password: MyP4ssw0rd!!!
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
/// Elastic Job Credentials can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/jobCredential:JobCredential example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Sql/servers/myserver1/jobAgents/myjobagent1/credentials/credential1
/// ```
class JobCredential extends pulumi.CustomResource {
  /// The ID of the Elastic Job Agent. Changing this forces a new Elastic Job Credential to be created.
  late final pulumi.Output<String> jobAgentId;
  /// The name which should be used for this Elastic Job Credential. Changing this forces a new Elastic Job Credential to be created.
  late final pulumi.Output<String> name;
  /// The password to use for this Elastic Job credential.
  late final pulumi.Output<String?> password;
  /// An integer value used to trigger an update for `passwordWo`. This property should be incremented when updating `passwordWo`.
  late final pulumi.Output<int?> passwordWoVersion;
  /// The username to use for this Elastic Job credential.
  late final pulumi.Output<String> username;

  /// Creates a new [JobCredential].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobCredential]. {@macro pulumi_mssql_job_credential_job_credential_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobCredential(
    String name, {
    JobCredentialArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/jobCredential:JobCredential',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['password'],
        ) {
    jobAgentId = registerOutput<String>('jobAgentId');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password', isSecret: true);
    passwordWoVersion = registerOutput<int?>('passwordWoVersion');
    username = registerOutput<String>('username');
  }

  /// Gets an existing [JobCredential] resource's state with the given [name] and [id].
  static JobCredential get(
    String name,
    pulumi.Input<String> id, {
    JobCredentialState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return JobCredential._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  JobCredential._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/jobCredential:JobCredential',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    jobAgentId = registerOutput<String>('jobAgentId');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password', isSecret: true);
    passwordWoVersion = registerOutput<int?>('passwordWoVersion');
    username = registerOutput<String>('username');
  }

  /// Creates a typed reference to an existing [JobCredential] resource.
  JobCredential.reference(String urn)
    : super(
        'azure:mssql/jobCredential:JobCredential',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['password'],
        isResourceReference: true,
      ) {
    jobAgentId = registerOutput<String>('jobAgentId');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password', isSecret: true);
    passwordWoVersion = registerOutput<int?>('passwordWoVersion');
    username = registerOutput<String>('username');
  }
}
