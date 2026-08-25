import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_registry_agent_iam_policy_args.dart';
import 'get_agent_registry_agent_iam_policy_result.dart';
import 'get_agent_registry_endpoint_iam_policy_args.dart';
import 'get_agent_registry_endpoint_iam_policy_result.dart';
import 'get_agent_registry_iam_policy_args.dart';
import 'get_agent_registry_iam_policy_result.dart';
import 'get_agent_registry_mcp_server_iam_policy_args.dart';
import 'get_agent_registry_mcp_server_iam_policy_result.dart';
import 'get_app_engine_service_iam_policy_args.dart';
import 'get_app_engine_service_iam_policy_result.dart';
import 'get_app_engine_version_iam_policy_args.dart';
import 'get_app_engine_version_iam_policy_result.dart';
import 'get_client_args.dart';
import 'get_client_result.dart';
import 'get_location_web_iam_policy_args.dart';
import 'get_location_web_iam_policy_result.dart';
import 'get_tunnel_dest_group_iam_policy_args.dart';
import 'get_tunnel_dest_group_iam_policy_result.dart';
import 'get_tunnel_iam_policy_args.dart';
import 'get_tunnel_iam_policy_result.dart';
import 'get_tunnel_instance_iam_policy_args.dart';
import 'get_tunnel_instance_iam_policy_result.dart';
import 'get_web_backend_service_iam_policy_args.dart';
import 'get_web_backend_service_iam_policy_result.dart';
import 'get_web_cloud_run_service_iam_policy_args.dart';
import 'get_web_cloud_run_service_iam_policy_result.dart';
import 'get_web_forwarding_rule_service_iam_policy_args.dart';
import 'get_web_forwarding_rule_service_iam_policy_result.dart';
import 'get_web_iam_policy_args.dart';
import 'get_web_iam_policy_result.dart';
import 'get_web_region_backend_service_iam_policy_args.dart';
import 'get_web_region_backend_service_iam_policy_result.dart';
import 'get_web_region_forwarding_rule_service_iam_policy_args.dart';
import 'get_web_region_forwarding_rule_service_iam_policy_result.dart';
import 'get_web_type_app_engine_iam_policy_args.dart';
import 'get_web_type_app_engine_iam_policy_result.dart';
import 'get_web_type_compute_iam_policy_args.dart';
import 'get_web_type_compute_iam_policy_result.dart';

/// Retrieves the current IAM policy data for agentregistryagent
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getAgentRegistryAgentIamPolicy({
///     project: _default.project,
///     location: _default.location,
///     agentId: _default.agentId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_agent_registry_agent_iam_policy(project=default["project"],
///     location=default["location"],
///     agent_id=default["agentId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetAgentRegistryAgentIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         AgentId = @default.AgentId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupAgentRegistryAgentIamPolicy(ctx, &iap.LookupAgentRegistryAgentIamPolicyArgs{
/// 			Project:  pulumi.StringRef(_default.Project),
/// 			Location: pulumi.StringRef(_default.Location),
/// 			AgentId:  _default.AgentId,
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
/// data "gcp_iap_getagentregistryagentiampolicy" "policy" {
///   project  = default.project
///   location = default.location
///   agent_id = default.agentId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetAgentRegistryAgentIamPolicyArgs;
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
///         final var policy = IapFunctions.getAgentRegistryAgentIamPolicy(GetAgentRegistryAgentIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .agentId(default_.get("agentId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getAgentRegistryAgentIamPolicy
///       arguments:
///         project: ${default.project}
///         location: ${default.location}
///         agentId: ${default.agentId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_agent_registry_agent_iam_policy_get_agent_registry_agent_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgentRegistryAgentIamPolicyResult> getAgentRegistryAgentIamPolicy(
  GetAgentRegistryAgentIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getAgentRegistryAgentIamPolicy:getAgentRegistryAgentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentRegistryAgentIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAgentRegistryAgentIamPolicyResult> getAgentRegistryAgentIamPolicyOutput(
  GetAgentRegistryAgentIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:iap/getAgentRegistryAgentIamPolicy:getAgentRegistryAgentIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAgentRegistryAgentIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for agentregistryendpoint
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getAgentRegistryEndpointIamPolicy({
///     project: _default.project,
///     location: _default.location,
///     endpointId: _default.endpointId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_agent_registry_endpoint_iam_policy(project=default["project"],
///     location=default["location"],
///     endpoint_id=default["endpointId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetAgentRegistryEndpointIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         EndpointId = @default.EndpointId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupAgentRegistryEndpointIamPolicy(ctx, &iap.LookupAgentRegistryEndpointIamPolicyArgs{
/// 			Project:    pulumi.StringRef(_default.Project),
/// 			Location:   pulumi.StringRef(_default.Location),
/// 			EndpointId: _default.EndpointId,
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
/// data "gcp_iap_getagentregistryendpointiampolicy" "policy" {
///   project     = default.project
///   location    = default.location
///   endpoint_id = default.endpointId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetAgentRegistryEndpointIamPolicyArgs;
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
///         final var policy = IapFunctions.getAgentRegistryEndpointIamPolicy(GetAgentRegistryEndpointIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .endpointId(default_.get("endpointId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getAgentRegistryEndpointIamPolicy
///       arguments:
///         project: ${default.project}
///         location: ${default.location}
///         endpointId: ${default.endpointId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_agent_registry_endpoint_iam_policy_get_agent_registry_endpoint_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgentRegistryEndpointIamPolicyResult> getAgentRegistryEndpointIamPolicy(
  GetAgentRegistryEndpointIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getAgentRegistryEndpointIamPolicy:getAgentRegistryEndpointIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentRegistryEndpointIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAgentRegistryEndpointIamPolicyResult> getAgentRegistryEndpointIamPolicyOutput(
  GetAgentRegistryEndpointIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:iap/getAgentRegistryEndpointIamPolicy:getAgentRegistryEndpointIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAgentRegistryEndpointIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for agentregistry
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getAgentRegistryIamPolicy({
///     project: projectService.project,
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_agent_registry_iam_policy(project=project_service["project"],
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetAgentRegistryIamPolicy.Invoke(new()
///     {
///         Project = projectService.Project,
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupAgentRegistryIamPolicy(ctx, &iap.LookupAgentRegistryIamPolicyArgs{
/// 			Project:  pulumi.StringRef(projectService.Project),
/// 			Location: "us-central1",
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
/// data "gcp_iap_getagentregistryiampolicy" "policy" {
///   project  = projectService.project
///   location = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetAgentRegistryIamPolicyArgs;
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
///         final var policy = IapFunctions.getAgentRegistryIamPolicy(GetAgentRegistryIamPolicyArgs.builder()
///             .project(projectService.get("project"))
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getAgentRegistryIamPolicy
///       arguments:
///         project: ${projectService.project}
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_agent_registry_iam_policy_get_agent_registry_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgentRegistryIamPolicyResult> getAgentRegistryIamPolicy(
  GetAgentRegistryIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getAgentRegistryIamPolicy:getAgentRegistryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentRegistryIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAgentRegistryIamPolicyResult> getAgentRegistryIamPolicyOutput(
  GetAgentRegistryIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:iap/getAgentRegistryIamPolicy:getAgentRegistryIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAgentRegistryIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for agentregistrymcpserver
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getAgentRegistryMcpServerIamPolicy({
///     project: _default.project,
///     location: _default.location,
///     mcpServerId: _default.mcpServerId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_agent_registry_mcp_server_iam_policy(project=default["project"],
///     location=default["location"],
///     mcp_server_id=default["mcpServerId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetAgentRegistryMcpServerIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         McpServerId = @default.McpServerId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupAgentRegistryMcpServerIamPolicy(ctx, &iap.LookupAgentRegistryMcpServerIamPolicyArgs{
/// 			Project:     pulumi.StringRef(_default.Project),
/// 			Location:    pulumi.StringRef(_default.Location),
/// 			McpServerId: _default.McpServerId,
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
/// data "gcp_iap_getagentregistrymcpserveriampolicy" "policy" {
///   project       = default.project
///   location      = default.location
///   mcp_server_id = default.mcpServerId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetAgentRegistryMcpServerIamPolicyArgs;
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
///         final var policy = IapFunctions.getAgentRegistryMcpServerIamPolicy(GetAgentRegistryMcpServerIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .mcpServerId(default_.get("mcpServerId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getAgentRegistryMcpServerIamPolicy
///       arguments:
///         project: ${default.project}
///         location: ${default.location}
///         mcpServerId: ${default.mcpServerId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_agent_registry_mcp_server_iam_policy_get_agent_registry_mcp_server_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgentRegistryMcpServerIamPolicyResult> getAgentRegistryMcpServerIamPolicy(
  GetAgentRegistryMcpServerIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getAgentRegistryMcpServerIamPolicy:getAgentRegistryMcpServerIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentRegistryMcpServerIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAgentRegistryMcpServerIamPolicyResult> getAgentRegistryMcpServerIamPolicyOutput(
  GetAgentRegistryMcpServerIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:iap/getAgentRegistryMcpServerIamPolicy:getAgentRegistryMcpServerIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAgentRegistryMcpServerIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for appengineservice
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getAppEngineServiceIamPolicy({
///     project: version.project,
///     appId: version.project,
///     service: version.service,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_app_engine_service_iam_policy(project=version["project"],
///     app_id=version["project"],
///     service=version["service"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetAppEngineServiceIamPolicy.Invoke(new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupAppEngineServiceIamPolicy(ctx, &iap.LookupAppEngineServiceIamPolicyArgs{
/// 			Project: pulumi.StringRef(version.Project),
/// 			AppId:   version.Project,
/// 			Service: version.Service,
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
/// data "gcp_iap_getappengineserviceiampolicy" "policy" {
///   project = version.project
///   app_id  = version.project
///   service = version.service
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetAppEngineServiceIamPolicyArgs;
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
///         final var policy = IapFunctions.getAppEngineServiceIamPolicy(GetAppEngineServiceIamPolicyArgs.builder()
///             .project(version.get("project"))
///             .appId(version.get("project"))
///             .service(version.get("service"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getAppEngineServiceIamPolicy
///       arguments:
///         project: ${version.project}
///         appId: ${version.project}
///         service: ${version.service}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_app_engine_service_iam_policy_get_app_engine_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppEngineServiceIamPolicyResult> getAppEngineServiceIamPolicy(
  GetAppEngineServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getAppEngineServiceIamPolicy:getAppEngineServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppEngineServiceIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAppEngineServiceIamPolicyResult> getAppEngineServiceIamPolicyOutput(
  GetAppEngineServiceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:iap/getAppEngineServiceIamPolicy:getAppEngineServiceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppEngineServiceIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for appengineversion
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getAppEngineVersionIamPolicy({
///     project: version.project,
///     appId: version.project,
///     service: version.service,
///     versionId: version.versionId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_app_engine_version_iam_policy(project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
///     version_id=version["versionId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetAppEngineVersionIamPolicy.Invoke(new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
///         VersionId = version.VersionId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupAppEngineVersionIamPolicy(ctx, &iap.LookupAppEngineVersionIamPolicyArgs{
/// 			Project:   pulumi.StringRef(version.Project),
/// 			AppId:     version.Project,
/// 			Service:   version.Service,
/// 			VersionId: version.VersionId,
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
/// data "gcp_iap_getappengineversioniampolicy" "policy" {
///   project    = version.project
///   app_id     = version.project
///   service    = version.service
///   version_id = version.versionId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetAppEngineVersionIamPolicyArgs;
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
///         final var policy = IapFunctions.getAppEngineVersionIamPolicy(GetAppEngineVersionIamPolicyArgs.builder()
///             .project(version.get("project"))
///             .appId(version.get("project"))
///             .service(version.get("service"))
///             .versionId(version.get("versionId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getAppEngineVersionIamPolicy
///       arguments:
///         project: ${version.project}
///         appId: ${version.project}
///         service: ${version.service}
///         versionId: ${version.versionId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_app_engine_version_iam_policy_get_app_engine_version_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppEngineVersionIamPolicyResult> getAppEngineVersionIamPolicy(
  GetAppEngineVersionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getAppEngineVersionIamPolicy:getAppEngineVersionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppEngineVersionIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAppEngineVersionIamPolicyResult> getAppEngineVersionIamPolicyOutput(
  GetAppEngineVersionIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:iap/getAppEngineVersionIamPolicy:getAppEngineVersionIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppEngineVersionIamPolicyResult.fromMap);
}

/// Get information about a Identity-Aware Proxy Client.
///
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.iap.getClient({
///     brand: projectClient.brand,
///     clientId: projectClient.clientId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.iap.get_client(brand=project_client["brand"],
///     client_id=project_client["clientId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Iap.GetClient.Invoke(new()
///     {
///         Brand = projectClient.Brand,
///         ClientId = projectClient.ClientId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupClient(ctx, &iap.LookupClientArgs{
/// 			Brand:    projectClient.Brand,
/// 			ClientId: projectClient.ClientId,
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
/// data "gcp_iap_getclient" "default" {
///   brand     = projectClient.brand
///   client_id = projectClient.clientId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetClientArgs;
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
///         final var default = IapFunctions.getClient(GetClientArgs.builder()
///             .brand(projectClient.get("brand"))
///             .clientId(projectClient.get("clientId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:iap:getClient
///       arguments:
///         brand: ${projectClient.brand}
///         clientId: ${projectClient.clientId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_client_get_client_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClientResult> getClient(
  GetClientArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getClient:getClient',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientResult.fromMap(result);
}

pulumi.Output<GetClientResult> getClientOutput(
  GetClientArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:iap/getClient:getClient',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClientResult.fromMap);
}

/// Retrieves the current IAM policy data for locationweb
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getLocationWebIamPolicy({
///     project: projectService.project,
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_location_web_iam_policy(project=project_service["project"],
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetLocationWebIamPolicy.Invoke(new()
///     {
///         Project = projectService.Project,
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupLocationWebIamPolicy(ctx, &iap.LookupLocationWebIamPolicyArgs{
/// 			Project:  pulumi.StringRef(projectService.Project),
/// 			Location: "us-central1",
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
/// data "gcp_iap_getlocationwebiampolicy" "policy" {
///   project  = projectService.project
///   location = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetLocationWebIamPolicyArgs;
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
///         final var policy = IapFunctions.getLocationWebIamPolicy(GetLocationWebIamPolicyArgs.builder()
///             .project(projectService.get("project"))
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getLocationWebIamPolicy
///       arguments:
///         project: ${projectService.project}
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_location_web_iam_policy_get_location_web_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocationWebIamPolicyResult> getLocationWebIamPolicy(
  GetLocationWebIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getLocationWebIamPolicy:getLocationWebIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocationWebIamPolicyResult.fromMap(result);
}

pulumi.Output<GetLocationWebIamPolicyResult> getLocationWebIamPolicyOutput(
  GetLocationWebIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:iap/getLocationWebIamPolicy:getLocationWebIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLocationWebIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for tunneldestgroup
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getTunnelDestGroupIamPolicy({
///     project: destGroup.project,
///     region: destGroup.region,
///     destGroup: destGroup.groupName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_tunnel_dest_group_iam_policy(project=dest_group["project"],
///     region=dest_group["region"],
///     dest_group=dest_group["groupName"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetTunnelDestGroupIamPolicy.Invoke(new()
///     {
///         Project = destGroup.Project,
///         Region = destGroup.Region,
///         DestGroup = destGroup.GroupName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupTunnelDestGroupIamPolicy(ctx, &iap.LookupTunnelDestGroupIamPolicyArgs{
/// 			Project:   pulumi.StringRef(destGroup.Project),
/// 			Region:    pulumi.StringRef(destGroup.Region),
/// 			DestGroup: destGroup.GroupName,
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
/// data "gcp_iap_gettunneldestgroupiampolicy" "policy" {
///   project    = destGroup.project
///   region     = destGroup.region
///   dest_group = destGroup.groupName
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetTunnelDestGroupIamPolicyArgs;
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
///         final var policy = IapFunctions.getTunnelDestGroupIamPolicy(GetTunnelDestGroupIamPolicyArgs.builder()
///             .project(destGroup.get("project"))
///             .region(destGroup.get("region"))
///             .destGroup(destGroup.get("groupName"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getTunnelDestGroupIamPolicy
///       arguments:
///         project: ${destGroup.project}
///         region: ${destGroup.region}
///         destGroup: ${destGroup.groupName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_tunnel_dest_group_iam_policy_get_tunnel_dest_group_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTunnelDestGroupIamPolicyResult> getTunnelDestGroupIamPolicy(
  GetTunnelDestGroupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getTunnelDestGroupIamPolicy:getTunnelDestGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTunnelDestGroupIamPolicyResult.fromMap(result);
}

pulumi.Output<GetTunnelDestGroupIamPolicyResult> getTunnelDestGroupIamPolicyOutput(
  GetTunnelDestGroupIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:iap/getTunnelDestGroupIamPolicy:getTunnelDestGroupIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTunnelDestGroupIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for tunnel
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getTunnelIamPolicy({
///     project: projectService.project,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_tunnel_iam_policy(project=project_service["project"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetTunnelIamPolicy.Invoke(new()
///     {
///         Project = projectService.Project,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupTunnelIamPolicy(ctx, &iap.LookupTunnelIamPolicyArgs{
/// 			Project: pulumi.StringRef(projectService.Project),
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
/// data "gcp_iap_gettunneliampolicy" "policy" {
///   project = projectService.project
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetTunnelIamPolicyArgs;
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
///         final var policy = IapFunctions.getTunnelIamPolicy(GetTunnelIamPolicyArgs.builder()
///             .project(projectService.get("project"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getTunnelIamPolicy
///       arguments:
///         project: ${projectService.project}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_tunnel_iam_policy_get_tunnel_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTunnelIamPolicyResult> getTunnelIamPolicy(
  GetTunnelIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getTunnelIamPolicy:getTunnelIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTunnelIamPolicyResult.fromMap(result);
}

pulumi.Output<GetTunnelIamPolicyResult> getTunnelIamPolicyOutput(
  GetTunnelIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:iap/getTunnelIamPolicy:getTunnelIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTunnelIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for tunnelinstance
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getTunnelInstanceIamPolicy({
///     project: tunnelvm.project,
///     zone: tunnelvm.zone,
///     instance: tunnelvm.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_tunnel_instance_iam_policy(project=tunnelvm["project"],
///     zone=tunnelvm["zone"],
///     instance=tunnelvm["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetTunnelInstanceIamPolicy.Invoke(new()
///     {
///         Project = tunnelvm.Project,
///         Zone = tunnelvm.Zone,
///         Instance = tunnelvm.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.GetTunnelInstanceIamPolicy(ctx, &iap.GetTunnelInstanceIamPolicyArgs{
/// 			Project:  pulumi.StringRef(tunnelvm.Project),
/// 			Zone:     pulumi.StringRef(tunnelvm.Zone),
/// 			Instance: tunnelvm.Name,
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
/// data "gcp_iap_gettunnelinstanceiampolicy" "policy" {
///   project  = tunnelvm.project
///   zone     = tunnelvm.zone
///   instance = tunnelvm.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetTunnelInstanceIamPolicyArgs;
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
///         final var policy = IapFunctions.getTunnelInstanceIamPolicy(GetTunnelInstanceIamPolicyArgs.builder()
///             .project(tunnelvm.get("project"))
///             .zone(tunnelvm.get("zone"))
///             .instance(tunnelvm.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getTunnelInstanceIamPolicy
///       arguments:
///         project: ${tunnelvm.project}
///         zone: ${tunnelvm.zone}
///         instance: ${tunnelvm.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_tunnel_instance_iam_policy_get_tunnel_instance_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTunnelInstanceIamPolicyResult> getTunnelInstanceIamPolicy(
  GetTunnelInstanceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getTunnelInstanceIamPolicy:getTunnelInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTunnelInstanceIamPolicyResult.fromMap(result);
}

pulumi.Output<GetTunnelInstanceIamPolicyResult> getTunnelInstanceIamPolicyOutput(
  GetTunnelInstanceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:iap/getTunnelInstanceIamPolicy:getTunnelInstanceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTunnelInstanceIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for webbackendservice
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getWebBackendServiceIamPolicy({
///     project: _default.project,
///     webBackendService: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_web_backend_service_iam_policy(project=default["project"],
///     web_backend_service=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetWebBackendServiceIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         WebBackendService = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupWebBackendServiceIamPolicy(ctx, &iap.LookupWebBackendServiceIamPolicyArgs{
/// 			Project:           pulumi.StringRef(_default.Project),
/// 			WebBackendService: _default.Name,
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
/// data "gcp_iap_getwebbackendserviceiampolicy" "policy" {
///   project             = default.project
///   web_backend_service = default.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetWebBackendServiceIamPolicyArgs;
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
///         final var policy = IapFunctions.getWebBackendServiceIamPolicy(GetWebBackendServiceIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .webBackendService(default_.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getWebBackendServiceIamPolicy
///       arguments:
///         project: ${default.project}
///         webBackendService: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_web_backend_service_iam_policy_get_web_backend_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebBackendServiceIamPolicyResult> getWebBackendServiceIamPolicy(
  GetWebBackendServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebBackendServiceIamPolicy:getWebBackendServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebBackendServiceIamPolicyResult.fromMap(result);
}

pulumi.Output<GetWebBackendServiceIamPolicyResult> getWebBackendServiceIamPolicyOutput(
  GetWebBackendServiceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:iap/getWebBackendServiceIamPolicy:getWebBackendServiceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebBackendServiceIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for webcloudrunservice
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getWebCloudRunServiceIamPolicy({
///     project: _default.project,
///     location: _default.location,
///     cloudRunServiceName: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_web_cloud_run_service_iam_policy(project=default["project"],
///     location=default["location"],
///     cloud_run_service_name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetWebCloudRunServiceIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         CloudRunServiceName = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupWebCloudRunServiceIamPolicy(ctx, &iap.LookupWebCloudRunServiceIamPolicyArgs{
/// 			Project:             pulumi.StringRef(_default.Project),
/// 			Location:            pulumi.StringRef(_default.Location),
/// 			CloudRunServiceName: _default.Name,
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
/// data "gcp_iap_getwebcloudrunserviceiampolicy" "policy" {
///   project                = default.project
///   location               = default.location
///   cloud_run_service_name = default.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetWebCloudRunServiceIamPolicyArgs;
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
///         final var policy = IapFunctions.getWebCloudRunServiceIamPolicy(GetWebCloudRunServiceIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .cloudRunServiceName(default_.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getWebCloudRunServiceIamPolicy
///       arguments:
///         project: ${default.project}
///         location: ${default.location}
///         cloudRunServiceName: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_web_cloud_run_service_iam_policy_get_web_cloud_run_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebCloudRunServiceIamPolicyResult> getWebCloudRunServiceIamPolicy(
  GetWebCloudRunServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebCloudRunServiceIamPolicy:getWebCloudRunServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebCloudRunServiceIamPolicyResult.fromMap(result);
}

pulumi.Output<GetWebCloudRunServiceIamPolicyResult> getWebCloudRunServiceIamPolicyOutput(
  GetWebCloudRunServiceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:iap/getWebCloudRunServiceIamPolicy:getWebCloudRunServiceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebCloudRunServiceIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for webforwardingruleservice
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getWebForwardingRuleServiceIamPolicy({
///     project: _default.project,
///     forwardingRuleServiceName: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_web_forwarding_rule_service_iam_policy(project=default["project"],
///     forwarding_rule_service_name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetWebForwardingRuleServiceIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         ForwardingRuleServiceName = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupWebForwardingRuleServiceIamPolicy(ctx, &iap.LookupWebForwardingRuleServiceIamPolicyArgs{
/// 			Project:                   pulumi.StringRef(_default.Project),
/// 			ForwardingRuleServiceName: _default.Name,
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
/// data "gcp_iap_getwebforwardingruleserviceiampolicy" "policy" {
///   project                      = default.project
///   forwarding_rule_service_name = default.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetWebForwardingRuleServiceIamPolicyArgs;
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
///         final var policy = IapFunctions.getWebForwardingRuleServiceIamPolicy(GetWebForwardingRuleServiceIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .forwardingRuleServiceName(default_.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getWebForwardingRuleServiceIamPolicy
///       arguments:
///         project: ${default.project}
///         forwardingRuleServiceName: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_web_forwarding_rule_service_iam_policy_get_web_forwarding_rule_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebForwardingRuleServiceIamPolicyResult> getWebForwardingRuleServiceIamPolicy(
  GetWebForwardingRuleServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebForwardingRuleServiceIamPolicy:getWebForwardingRuleServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebForwardingRuleServiceIamPolicyResult.fromMap(result);
}

pulumi.Output<GetWebForwardingRuleServiceIamPolicyResult> getWebForwardingRuleServiceIamPolicyOutput(
  GetWebForwardingRuleServiceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:iap/getWebForwardingRuleServiceIamPolicy:getWebForwardingRuleServiceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebForwardingRuleServiceIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for web
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getWebIamPolicy({
///     project: projectService.project,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_web_iam_policy(project=project_service["project"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetWebIamPolicy.Invoke(new()
///     {
///         Project = projectService.Project,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupWebIamPolicy(ctx, &iap.LookupWebIamPolicyArgs{
/// 			Project: pulumi.StringRef(projectService.Project),
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
/// data "gcp_iap_getwebiampolicy" "policy" {
///   project = projectService.project
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetWebIamPolicyArgs;
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
///         final var policy = IapFunctions.getWebIamPolicy(GetWebIamPolicyArgs.builder()
///             .project(projectService.get("project"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getWebIamPolicy
///       arguments:
///         project: ${projectService.project}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_web_iam_policy_get_web_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebIamPolicyResult> getWebIamPolicy(
  GetWebIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebIamPolicy:getWebIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebIamPolicyResult.fromMap(result);
}

pulumi.Output<GetWebIamPolicyResult> getWebIamPolicyOutput(
  GetWebIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:iap/getWebIamPolicy:getWebIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for webregionbackendservice
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getWebRegionBackendServiceIamPolicy({
///     project: _default.project,
///     region: _default.region,
///     webRegionBackendService: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_web_region_backend_service_iam_policy(project=default["project"],
///     region=default["region"],
///     web_region_backend_service=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetWebRegionBackendServiceIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Region = @default.Region,
///         WebRegionBackendService = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupWebRegionBackendServiceIamPolicy(ctx, &iap.LookupWebRegionBackendServiceIamPolicyArgs{
/// 			Project:                 pulumi.StringRef(_default.Project),
/// 			Region:                  pulumi.StringRef(_default.Region),
/// 			WebRegionBackendService: _default.Name,
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
/// data "gcp_iap_getwebregionbackendserviceiampolicy" "policy" {
///   project                    = default.project
///   region                     = default.region
///   web_region_backend_service = default.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetWebRegionBackendServiceIamPolicyArgs;
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
///         final var policy = IapFunctions.getWebRegionBackendServiceIamPolicy(GetWebRegionBackendServiceIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .region(default_.get("region"))
///             .webRegionBackendService(default_.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getWebRegionBackendServiceIamPolicy
///       arguments:
///         project: ${default.project}
///         region: ${default.region}
///         webRegionBackendService: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_web_region_backend_service_iam_policy_get_web_region_backend_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebRegionBackendServiceIamPolicyResult> getWebRegionBackendServiceIamPolicy(
  GetWebRegionBackendServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebRegionBackendServiceIamPolicy:getWebRegionBackendServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebRegionBackendServiceIamPolicyResult.fromMap(result);
}

pulumi.Output<GetWebRegionBackendServiceIamPolicyResult> getWebRegionBackendServiceIamPolicyOutput(
  GetWebRegionBackendServiceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:iap/getWebRegionBackendServiceIamPolicy:getWebRegionBackendServiceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebRegionBackendServiceIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for webregionforwardingruleservice
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getWebRegionForwardingRuleServiceIamPolicy({
///     project: _default.project,
///     region: _default.region,
///     forwardingRuleRegionServiceName: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_web_region_forwarding_rule_service_iam_policy(project=default["project"],
///     region=default["region"],
///     forwarding_rule_region_service_name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetWebRegionForwardingRuleServiceIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Region = @default.Region,
///         ForwardingRuleRegionServiceName = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupWebRegionForwardingRuleServiceIamPolicy(ctx, &iap.LookupWebRegionForwardingRuleServiceIamPolicyArgs{
/// 			Project:                         pulumi.StringRef(_default.Project),
/// 			Region:                          pulumi.StringRef(_default.Region),
/// 			ForwardingRuleRegionServiceName: _default.Name,
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
/// data "gcp_iap_getwebregionforwardingruleserviceiampolicy" "policy" {
///   project                             = default.project
///   region                              = default.region
///   forwarding_rule_region_service_name = default.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetWebRegionForwardingRuleServiceIamPolicyArgs;
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
///         final var policy = IapFunctions.getWebRegionForwardingRuleServiceIamPolicy(GetWebRegionForwardingRuleServiceIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .region(default_.get("region"))
///             .forwardingRuleRegionServiceName(default_.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getWebRegionForwardingRuleServiceIamPolicy
///       arguments:
///         project: ${default.project}
///         region: ${default.region}
///         forwardingRuleRegionServiceName: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_web_region_forwarding_rule_service_iam_policy_get_web_region_forwarding_rule_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebRegionForwardingRuleServiceIamPolicyResult> getWebRegionForwardingRuleServiceIamPolicy(
  GetWebRegionForwardingRuleServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebRegionForwardingRuleServiceIamPolicy:getWebRegionForwardingRuleServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebRegionForwardingRuleServiceIamPolicyResult.fromMap(result);
}

pulumi.Output<GetWebRegionForwardingRuleServiceIamPolicyResult> getWebRegionForwardingRuleServiceIamPolicyOutput(
  GetWebRegionForwardingRuleServiceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:iap/getWebRegionForwardingRuleServiceIamPolicy:getWebRegionForwardingRuleServiceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebRegionForwardingRuleServiceIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for webtypeappengine
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getWebTypeAppEngineIamPolicy({
///     project: app.project,
///     appId: app.appId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_web_type_app_engine_iam_policy(project=app["project"],
///     app_id=app["appId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetWebTypeAppEngineIamPolicy.Invoke(new()
///     {
///         Project = app.Project,
///         AppId = app.AppId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.GetWebTypeAppEngineIamPolicy(ctx, &iap.GetWebTypeAppEngineIamPolicyArgs{
/// 			Project: pulumi.StringRef(app.Project),
/// 			AppId:   app.AppId,
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
/// data "gcp_iap_getwebtypeappengineiampolicy" "policy" {
///   project = app.project
///   app_id  = app.appId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetWebTypeAppEngineIamPolicyArgs;
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
///         final var policy = IapFunctions.getWebTypeAppEngineIamPolicy(GetWebTypeAppEngineIamPolicyArgs.builder()
///             .project(app.get("project"))
///             .appId(app.get("appId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getWebTypeAppEngineIamPolicy
///       arguments:
///         project: ${app.project}
///         appId: ${app.appId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_web_type_app_engine_iam_policy_get_web_type_app_engine_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebTypeAppEngineIamPolicyResult> getWebTypeAppEngineIamPolicy(
  GetWebTypeAppEngineIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebTypeAppEngineIamPolicy:getWebTypeAppEngineIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebTypeAppEngineIamPolicyResult.fromMap(result);
}

pulumi.Output<GetWebTypeAppEngineIamPolicyResult> getWebTypeAppEngineIamPolicyOutput(
  GetWebTypeAppEngineIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:iap/getWebTypeAppEngineIamPolicy:getWebTypeAppEngineIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebTypeAppEngineIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for webtypecompute
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getWebTypeComputeIamPolicy({
///     project: projectService.project,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_web_type_compute_iam_policy(project=project_service["project"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetWebTypeComputeIamPolicy.Invoke(new()
///     {
///         Project = projectService.Project,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupWebTypeComputeIamPolicy(ctx, &iap.LookupWebTypeComputeIamPolicyArgs{
/// 			Project: pulumi.StringRef(projectService.Project),
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
/// data "gcp_iap_getwebtypecomputeiampolicy" "policy" {
///   project = projectService.project
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetWebTypeComputeIamPolicyArgs;
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
///         final var policy = IapFunctions.getWebTypeComputeIamPolicy(GetWebTypeComputeIamPolicyArgs.builder()
///             .project(projectService.get("project"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getWebTypeComputeIamPolicy
///       arguments:
///         project: ${projectService.project}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_web_type_compute_iam_policy_get_web_type_compute_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebTypeComputeIamPolicyResult> getWebTypeComputeIamPolicy(
  GetWebTypeComputeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebTypeComputeIamPolicy:getWebTypeComputeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebTypeComputeIamPolicyResult.fromMap(result);
}

pulumi.Output<GetWebTypeComputeIamPolicyResult> getWebTypeComputeIamPolicyOutput(
  GetWebTypeComputeIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:iap/getWebTypeComputeIamPolicy:getWebTypeComputeIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebTypeComputeIamPolicyResult.fromMap);
}
