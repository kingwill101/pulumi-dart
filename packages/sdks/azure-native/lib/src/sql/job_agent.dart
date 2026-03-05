import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_agent_args.dart';
import 'job_agent_identity_response.dart';
import 'sku_response.dart';

/// An Azure SQL job agent.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a job agent
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var jobAgent = new AzureNative.Sql.JobAgent("jobAgent", new()
///     {
///         DatabaseId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/databases/db1",
///         JobAgentName = "agent1",
///         Location = "southeastasia",
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
/// 		_, err := sql.NewJobAgent(ctx, "jobAgent", &sql.JobAgentArgs{
/// 			DatabaseId:        pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/databases/db1"),
/// 			JobAgentName:      pulumi.String("agent1"),
/// 			Location:          pulumi.String("southeastasia"),
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
/// import com.pulumi.azurenative.sql.JobAgent;
/// import com.pulumi.azurenative.sql.JobAgentArgs;
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
///         var jobAgent = new JobAgent("jobAgent", JobAgentArgs.builder()
///             .databaseId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/databases/db1")
///             .jobAgentName("agent1")
///             .location("southeastasia")
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
/// const jobAgent = new azure_native.sql.JobAgent("jobAgent", {
///     databaseId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/databases/db1",
///     jobAgentName: "agent1",
///     location: "southeastasia",
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
/// job_agent = azure_native.sql.JobAgent("jobAgent",
///     database_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/databases/db1",
///     job_agent_name="agent1",
///     location="southeastasia",
///     resource_group_name="group1",
///     server_name="server1")
///
/// ```
///
/// ```yaml
/// resources:
///   jobAgent:
///     type: azure-native:sql:JobAgent
///     properties:
///       databaseId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/databases/db1
///       jobAgentName: agent1
///       location: southeastasia
///       resourceGroupName: group1
///       serverName: server1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a job agent with sku.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var jobAgent = new AzureNative.Sql.JobAgent("jobAgent", new()
///     {
///         DatabaseId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/databases/db1",
///         JobAgentName = "agent1",
///         Location = "southeastasia",
///         ResourceGroupName = "group1",
///         ServerName = "server1",
///         Sku = new AzureNative.Sql.Inputs.SkuArgs
///         {
///             Name = "JA400",
///         },
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
/// 		_, err := sql.NewJobAgent(ctx, "jobAgent", &sql.JobAgentArgs{
/// 			DatabaseId:        pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/databases/db1"),
/// 			JobAgentName:      pulumi.String("agent1"),
/// 			Location:          pulumi.String("southeastasia"),
/// 			ResourceGroupName: pulumi.String("group1"),
/// 			ServerName:        pulumi.String("server1"),
/// 			Sku: &sql.SkuArgs{
/// 				Name: pulumi.String("JA400"),
/// 			},
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
/// import com.pulumi.azurenative.sql.JobAgent;
/// import com.pulumi.azurenative.sql.JobAgentArgs;
/// import com.pulumi.azurenative.sql.inputs.SkuArgs;
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
///         var jobAgent = new JobAgent("jobAgent", JobAgentArgs.builder()
///             .databaseId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/databases/db1")
///             .jobAgentName("agent1")
///             .location("southeastasia")
///             .resourceGroupName("group1")
///             .serverName("server1")
///             .sku(SkuArgs.builder()
///                 .name("JA400")
///                 .build())
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
/// const jobAgent = new azure_native.sql.JobAgent("jobAgent", {
///     databaseId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/databases/db1",
///     jobAgentName: "agent1",
///     location: "southeastasia",
///     resourceGroupName: "group1",
///     serverName: "server1",
///     sku: {
///         name: "JA400",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job_agent = azure_native.sql.JobAgent("jobAgent",
///     database_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/databases/db1",
///     job_agent_name="agent1",
///     location="southeastasia",
///     resource_group_name="group1",
///     server_name="server1",
///     sku={
///         "name": "JA400",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   jobAgent:
///     type: azure-native:sql:JobAgent
///     properties:
///       databaseId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/databases/db1
///       jobAgentName: agent1
///       location: southeastasia
///       resourceGroupName: group1
///       serverName: server1
///       sku:
///         name: JA400
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
/// $ pulumi import azure-native:sql:JobAgent agent1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/jobAgents/{jobAgentName}
/// ```
class JobAgent extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource ID of the database to store job metadata in.
  late final pulumi.Output<String> databaseId;
  /// The identity of the job agent.
  late final pulumi.Output<JobAgentIdentityResponse?> identity;
  /// Resource location.
  late final pulumi.Output<String> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The name and tier of the SKU.
  late final pulumi.Output<SkuResponse?> sku;
  /// The state of the job agent.
  late final pulumi.Output<String> state;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [JobAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobAgent]. {@macro pulumi_sql_job_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobAgent(
    String name, {
    JobAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:JobAgent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    databaseId = registerOutput<String>('databaseId');
    identity = registerOutput<JobAgentIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobAgentIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
