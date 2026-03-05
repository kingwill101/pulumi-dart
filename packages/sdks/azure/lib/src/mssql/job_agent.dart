import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_agent_args.dart';
import 'job_agent_identity.dart';
import 'job_agent_state.dart';

/// Manages an Elastic Job Agent.
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
/// 			ServerId:  exampleServer.ID(),
/// 			Collation: pulumi.String("SQL_Latin1_General_CP1_CI_AS"),
/// 			SkuName:   pulumi.String("S1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewJobAgent(ctx, "example", &mssql.JobAgentArgs{
/// 			Name:       pulumi.String("example-job-agent"),
/// 			Location:   example.Location,
/// 			DatabaseId: exampleDatabase.ID(),
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
/// Elastic Job Agents can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/jobAgent:JobAgent example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Sql/servers/myserver1/jobAgents/myjobagent1
/// ```
class JobAgent extends pulumi.CustomResource {
  /// The ID of the database to store metadata for this Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created.
  late final pulumi.Output<String> databaseId;

  /// An `identity` block as defined below.
  late final pulumi.Output<JobAgentIdentity?> identity;

  /// The Azure Region where this Elastic Job Agent should exist. Changing this forces a new Elastic Job Agent to be created.
  late final pulumi.Output<String> location;

  /// The name which should be used for this Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created.
  late final pulumi.Output<String> name;

  /// The name of the SKU to use for this Elastic Job Agent. Possible values are `JA100`, `JA200`, `JA400`, and `JA800`. Defaults to `JA100`.
  late final pulumi.Output<String?> sku;

  /// A mapping of tags which should be assigned to this Elastic Job Agent.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [JobAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobAgent]. {@macro pulumi_mssql_job_agent_job_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobAgent(
    String name, {
    JobAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:mssql/jobAgent:JobAgent',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    databaseId = registerOutput<String>('databaseId');
    identity = registerOutput<JobAgentIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return JobAgentIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    sku = registerOutput<String?>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [JobAgent] resource's state with the given [name] and [id].
  static JobAgent get(
    String name,
    pulumi.Input<String> id, {
    JobAgentState? state,
  }) {
    return JobAgent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  JobAgent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:mssql/jobAgent:JobAgent',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    databaseId = registerOutput<String>('databaseId');
    identity = registerOutput<JobAgentIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return JobAgentIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    sku = registerOutput<String?>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
