import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_private_endpoint_args.dart';

/// A job agent private endpoint.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a private endpoint.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var jobPrivateEndpoint = new AzureNative.Sql.JobPrivateEndpoint("jobPrivateEndpoint", new()
///     {
///         JobAgentName = "agent1",
///         PrivateEndpointName = "endpoint1",
///         ResourceGroupName = "group1",
///         ServerName = "server1",
///         TargetServerAzureResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/targetserver1",
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
/// 		_, err := sql.NewJobPrivateEndpoint(ctx, "jobPrivateEndpoint", &sql.JobPrivateEndpointArgs{
/// 			JobAgentName:                pulumi.String("agent1"),
/// 			PrivateEndpointName:         pulumi.String("endpoint1"),
/// 			ResourceGroupName:           pulumi.String("group1"),
/// 			ServerName:                  pulumi.String("server1"),
/// 			TargetServerAzureResourceId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/targetserver1"),
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
/// import com.pulumi.azurenative.sql.JobPrivateEndpoint;
/// import com.pulumi.azurenative.sql.JobPrivateEndpointArgs;
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
///         var jobPrivateEndpoint = new JobPrivateEndpoint("jobPrivateEndpoint", JobPrivateEndpointArgs.builder()
///             .jobAgentName("agent1")
///             .privateEndpointName("endpoint1")
///             .resourceGroupName("group1")
///             .serverName("server1")
///             .targetServerAzureResourceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/targetserver1")
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
/// const jobPrivateEndpoint = new azure_native.sql.JobPrivateEndpoint("jobPrivateEndpoint", {
///     jobAgentName: "agent1",
///     privateEndpointName: "endpoint1",
///     resourceGroupName: "group1",
///     serverName: "server1",
///     targetServerAzureResourceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/targetserver1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job_private_endpoint = azure_native.sql.JobPrivateEndpoint("jobPrivateEndpoint",
///     job_agent_name="agent1",
///     private_endpoint_name="endpoint1",
///     resource_group_name="group1",
///     server_name="server1",
///     target_server_azure_resource_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/targetserver1")
///
/// ```
///
/// ```yaml
/// resources:
///   jobPrivateEndpoint:
///     type: azure-native:sql:JobPrivateEndpoint
///     properties:
///       jobAgentName: agent1
///       privateEndpointName: endpoint1
///       resourceGroupName: group1
///       serverName: server1
///       targetServerAzureResourceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/targetserver1
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
/// $ pulumi import azure-native:sql:JobPrivateEndpoint endpoint1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/jobAgents/{jobAgentName}/privateEndpoints/{privateEndpointName}
/// ```
class JobPrivateEndpoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Private endpoint id of the private endpoint.
  late final pulumi.Output<String> privateEndpointId;
  /// ARM resource id of the server the private endpoint will target.
  late final pulumi.Output<String> targetServerAzureResourceId;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [JobPrivateEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobPrivateEndpoint]. {@macro pulumi_sql_job_private_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobPrivateEndpoint(
    String name, {
    JobPrivateEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:JobPrivateEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.privateEndpointId = registerOutput<String>('privateEndpointId');
    this.targetServerAzureResourceId = registerOutput<String>('targetServerAzureResourceId');
    this.type = registerOutput<String>('type');
  }
}
