import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_args.dart';
import 'get_agent_result.dart';
import 'get_endpoint_args.dart';
import 'get_endpoint_result.dart';
import 'get_mcp_server_args.dart';
import 'get_mcp_server_result.dart';

/// Get information about an Agent Registry Agent.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.agentregistry.getAgent({
///     location: "us-central1",
///     agentId: "apphub-00000000-0000-0000-0000-000000000000",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.agentregistry.get_agent(location="us-central1",
///     agent_id="apphub-00000000-0000-0000-0000-000000000000")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.AgentRegistry.GetAgent.Invoke(new()
///     {
///         Location = "us-central1",
///         AgentId = "apphub-00000000-0000-0000-0000-000000000000",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/agentregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := agentregistry.GetAgent(ctx, &agentregistry.GetAgentArgs{
/// 			Location: "us-central1",
/// 			AgentId:  pulumi.StringRef("apphub-00000000-0000-0000-0000-000000000000"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_agentregistry_getagent" "default" {
///   location = "us-central1"
///   agent_id = "apphub-00000000-0000-0000-0000-000000000000"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.agentregistry.AgentregistryFunctions;
/// import com.pulumi.gcp.agentregistry.inputs.GetAgentArgs;
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
///         final var default = AgentregistryFunctions.getAgent(GetAgentArgs.builder()
///             .location("us-central1")
///             .agentId("apphub-00000000-0000-0000-0000-000000000000")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:agentregistry:getAgent
///       arguments:
///         location: us-central1
///         agentId: apphub-00000000-0000-0000-0000-000000000000
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_agentregistry_get_agent_get_agent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgentResult> getAgent(
  GetAgentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:agentregistry/getAgent:getAgent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentResult.fromMap(result);
}

pulumi.Output<GetAgentResult> getAgentOutput(
  GetAgentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:agentregistry/getAgent:getAgent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAgentResult.fromMap);
}

/// Get information about an Agent Registry Endpoint.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.agentregistry.getEndpoint({
///     location: "us-central1",
///     endpointId: "apphub-00000000-0000-0000-0000-000000000000",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.agentregistry.get_endpoint(location="us-central1",
///     endpoint_id="apphub-00000000-0000-0000-0000-000000000000")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.AgentRegistry.GetEndpoint.Invoke(new()
///     {
///         Location = "us-central1",
///         EndpointId = "apphub-00000000-0000-0000-0000-000000000000",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/agentregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := agentregistry.GetEndpoint(ctx, &agentregistry.GetEndpointArgs{
/// 			Location:   "us-central1",
/// 			EndpointId: pulumi.StringRef("apphub-00000000-0000-0000-0000-000000000000"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_agentregistry_getendpoint" "default" {
///   location    = "us-central1"
///   endpoint_id = "apphub-00000000-0000-0000-0000-000000000000"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.agentregistry.AgentregistryFunctions;
/// import com.pulumi.gcp.agentregistry.inputs.GetEndpointArgs;
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
///         final var default = AgentregistryFunctions.getEndpoint(GetEndpointArgs.builder()
///             .location("us-central1")
///             .endpointId("apphub-00000000-0000-0000-0000-000000000000")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:agentregistry:getEndpoint
///       arguments:
///         location: us-central1
///         endpointId: apphub-00000000-0000-0000-0000-000000000000
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_agentregistry_get_endpoint_get_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointResult> getEndpoint(
  GetEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:agentregistry/getEndpoint:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult.fromMap(result);
}

pulumi.Output<GetEndpointResult> getEndpointOutput(
  GetEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:agentregistry/getEndpoint:getEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEndpointResult.fromMap);
}

/// Get information about an Agent Registry MCP Server.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.agentregistry.getMcpServer({
///     location: "us-central1",
///     mcpServerId: "apphub-00000000-0000-0000-0000-000000000000",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.agentregistry.get_mcp_server(location="us-central1",
///     mcp_server_id="apphub-00000000-0000-0000-0000-000000000000")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.AgentRegistry.GetMcpServer.Invoke(new()
///     {
///         Location = "us-central1",
///         McpServerId = "apphub-00000000-0000-0000-0000-000000000000",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/agentregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := agentregistry.GetMcpServer(ctx, &agentregistry.GetMcpServerArgs{
/// 			Location:    "us-central1",
/// 			McpServerId: pulumi.StringRef("apphub-00000000-0000-0000-0000-000000000000"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_agentregistry_getmcpserver" "default" {
///   location      = "us-central1"
///   mcp_server_id = "apphub-00000000-0000-0000-0000-000000000000"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.agentregistry.AgentregistryFunctions;
/// import com.pulumi.gcp.agentregistry.inputs.GetMcpServerArgs;
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
///         final var default = AgentregistryFunctions.getMcpServer(GetMcpServerArgs.builder()
///             .location("us-central1")
///             .mcpServerId("apphub-00000000-0000-0000-0000-000000000000")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:agentregistry:getMcpServer
///       arguments:
///         location: us-central1
///         mcpServerId: apphub-00000000-0000-0000-0000-000000000000
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_agentregistry_get_mcp_server_get_mcp_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMcpServerResult> getMcpServer(
  GetMcpServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:agentregistry/getMcpServer:getMcpServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMcpServerResult.fromMap(result);
}

pulumi.Output<GetMcpServerResult> getMcpServerOutput(
  GetMcpServerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:agentregistry/getMcpServer:getMcpServer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMcpServerResult.fromMap);
}
