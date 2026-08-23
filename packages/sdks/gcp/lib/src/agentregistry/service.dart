import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_agent_spec.dart';
import 'service_args.dart';
import 'service_endpoint_spec.dart';
import 'service_mcp_server_spec.dart';
import 'service_state.dart';

/// Service manages a service in a management boundary
///
///
///
/// ## Example Usage
///
/// ### Agent Registry Service Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.agentregistry.Service("default", {
///     location: "us-central1",
///     serviceId: "service",
///     description: "My basic agent registry service",
///     displayName: "My Service",
///     interfaces: [{
///         url: "https://www.google.com/service",
///         protocolBinding: "GRPC",
///     }],
///     agentSpec: {
///         type: "NO_SPEC",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.agentregistry.Service("default",
///     location="us-central1",
///     service_id="service",
///     description="My basic agent registry service",
///     display_name="My Service",
///     interfaces=[{
///         "url": "https://www.google.com/service",
///         "protocol_binding": "GRPC",
///     }],
///     agent_spec={
///         "type": "NO_SPEC",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.AgentRegistry.Service("default", new()
///     {
///         Location = "us-central1",
///         ServiceId = "service",
///         Description = "My basic agent registry service",
///         DisplayName = "My Service",
///         Interfaces = new[]
///         {
///             new Gcp.AgentRegistry.Inputs.ServiceInterfaceArgs
///             {
///                 Url = "https://www.google.com/service",
///                 ProtocolBinding = "GRPC",
///             },
///         },
///         AgentSpec = new Gcp.AgentRegistry.Inputs.ServiceAgentSpecArgs
///         {
///             Type = "NO_SPEC",
///         },
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
/// 		_, err := agentregistry.NewService(ctx, "default", &agentregistry.ServiceArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			ServiceId:   pulumi.String("service"),
/// 			Description: pulumi.String("My basic agent registry service"),
/// 			DisplayName: pulumi.String("My Service"),
/// 			Interfaces: agentregistry.ServiceInterfaceArray{
/// 				&agentregistry.ServiceInterfaceArgs{
/// 					Url:             pulumi.String("https://www.google.com/service"),
/// 					ProtocolBinding: pulumi.String("GRPC"),
/// 				},
/// 			},
/// 			AgentSpec: &agentregistry.ServiceAgentSpecArgs{
/// 				Type: pulumi.String("NO_SPEC"),
/// 			},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_agentregistry_service" "default" {
///   location     = "us-central1"
///   service_id   = "service"
///   description  = "My basic agent registry service"
///   display_name = "My Service"
///   interfaces {
///     url              = "https://www.google.com/service"
///     protocol_binding = "GRPC"
///   }
///   agent_spec = {
///     type = "NO_SPEC"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.agentregistry.Service;
/// import com.pulumi.gcp.agentregistry.ServiceArgs;
/// import com.pulumi.gcp.agentregistry.inputs.ServiceInterfaceArgs;
/// import com.pulumi.gcp.agentregistry.inputs.ServiceAgentSpecArgs;
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
///         var default_ = new Service("default", ServiceArgs.builder()
///             .location("us-central1")
///             .serviceId("service")
///             .description("My basic agent registry service")
///             .displayName("My Service")
///             .interfaces(ServiceInterfaceArgs.builder()
///                 .url("https://www.google.com/service")
///                 .protocolBinding("GRPC")
///                 .build())
///             .agentSpec(ServiceAgentSpecArgs.builder()
///                 .type("NO_SPEC")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:agentregistry:Service
///     properties:
///       location: us-central1
///       serviceId: service
///       description: My basic agent registry service
///       displayName: My Service
///       interfaces:
///         - url: https://www.google.com/service
///           protocolBinding: GRPC
///       agentSpec:
///         type: NO_SPEC
/// ```
///
/// ### Agent Registry Service Mcp Server
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.agentregistry.Service("default", {
///     location: "us-central1",
///     serviceId: "service",
///     description: "My MCP agent registry service",
///     displayName: "My Service",
///     interfaces: [{
///         url: "https://example.com",
///         protocolBinding: "JSONRPC",
///     }],
///     mcpServerSpec: {
///         type: "TOOL_SPEC",
///         content: "{\"tools\":[]}",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.agentregistry.Service("default",
///     location="us-central1",
///     service_id="service",
///     description="My MCP agent registry service",
///     display_name="My Service",
///     interfaces=[{
///         "url": "https://example.com",
///         "protocol_binding": "JSONRPC",
///     }],
///     mcp_server_spec={
///         "type": "TOOL_SPEC",
///         "content": "{\"tools\":[]}",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.AgentRegistry.Service("default", new()
///     {
///         Location = "us-central1",
///         ServiceId = "service",
///         Description = "My MCP agent registry service",
///         DisplayName = "My Service",
///         Interfaces = new[]
///         {
///             new Gcp.AgentRegistry.Inputs.ServiceInterfaceArgs
///             {
///                 Url = "https://example.com",
///                 ProtocolBinding = "JSONRPC",
///             },
///         },
///         McpServerSpec = new Gcp.AgentRegistry.Inputs.ServiceMcpServerSpecArgs
///         {
///             Type = "TOOL_SPEC",
///             Content = "{\"tools\":[]}",
///         },
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
/// 		_, err := agentregistry.NewService(ctx, "default", &agentregistry.ServiceArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			ServiceId:   pulumi.String("service"),
/// 			Description: pulumi.String("My MCP agent registry service"),
/// 			DisplayName: pulumi.String("My Service"),
/// 			Interfaces: agentregistry.ServiceInterfaceArray{
/// 				&agentregistry.ServiceInterfaceArgs{
/// 					Url:             pulumi.String("https://example.com"),
/// 					ProtocolBinding: pulumi.String("JSONRPC"),
/// 				},
/// 			},
/// 			McpServerSpec: &agentregistry.ServiceMcpServerSpecArgs{
/// 				Type:    pulumi.String("TOOL_SPEC"),
/// 				Content: pulumi.String("{\"tools\":[]}"),
/// 			},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_agentregistry_service" "default" {
///   location     = "us-central1"
///   service_id   = "service"
///   description  = "My MCP agent registry service"
///   display_name = "My Service"
///   interfaces {
///     url              = "https://example.com"
///     protocol_binding = "JSONRPC"
///   }
///   mcp_server_spec = {
///     type    = "TOOL_SPEC"
///     content = "{\"tools\":[]}"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.agentregistry.Service;
/// import com.pulumi.gcp.agentregistry.ServiceArgs;
/// import com.pulumi.gcp.agentregistry.inputs.ServiceInterfaceArgs;
/// import com.pulumi.gcp.agentregistry.inputs.ServiceMcpServerSpecArgs;
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
///         var default_ = new Service("default", ServiceArgs.builder()
///             .location("us-central1")
///             .serviceId("service")
///             .description("My MCP agent registry service")
///             .displayName("My Service")
///             .interfaces(ServiceInterfaceArgs.builder()
///                 .url("https://example.com")
///                 .protocolBinding("JSONRPC")
///                 .build())
///             .mcpServerSpec(ServiceMcpServerSpecArgs.builder()
///                 .type("TOOL_SPEC")
///                 .content("{\"tools\":[]}")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:agentregistry:Service
///     properties:
///       location: us-central1
///       serviceId: service
///       description: My MCP agent registry service
///       displayName: My Service
///       interfaces:
///         - url: https://example.com
///           protocolBinding: JSONRPC
///       mcpServerSpec:
///         type: TOOL_SPEC
///         content: '{"tools":[]}'
/// ```
///
///
/// ## Import
///
/// Service can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/services/{{service_id}}`
/// * `{{project}}/{{location}}/{{service_id}}`
/// * `{{location}}/{{service_id}}`
///
///
/// When using the `pulumi import` command, Service can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:agentregistry/service:Service default projects/{{project}}/locations/{{location}}/services/{{service_id}}
/// $ pulumi import gcp:agentregistry/service:Service default {{project}}/{{location}}/{{service_id}}
/// $ pulumi import gcp:agentregistry/service:Service default {{location}}/{{service_id}}
/// ```
class Service extends pulumi.CustomResource {
  /// The spec of the Agent. When set, the type of the Service is Agent.
  /// Structure is documented below.
  late final pulumi.Output<ServiceAgentSpec?> agentSpec;
  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The description of the Service.
  late final pulumi.Output<String?> description;
  /// User-defined display name for the Service. Can have a maximum length of 63 characters.
  late final pulumi.Output<String?> displayName;
  /// The spec of the Endpoint. When set, the type of the Service is Endpoint.
  /// Structure is documented below.
  late final pulumi.Output<ServiceEndpointSpec?> endpointSpec;
  /// The connection details for the Service.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> interfaces;
  /// The location of the resource.
  late final pulumi.Output<String> location;
  /// The spec of the MCP Server. When set, the type of the Service is MCP Server.
  /// Structure is documented below.
  late final pulumi.Output<ServiceMcpServerSpec?> mcpServerSpec;
  /// The resource name of the Service.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The resource name of the resulting Agent, MCP Server, or Endpoint.
  late final pulumi.Output<String> registryResource;
  /// The name of the Service.
  late final pulumi.Output<String> serviceId;
  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_agentregistry_service_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:agentregistry/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentSpec = registerOutput<ServiceAgentSpec?>('agentSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceAgentSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    endpointSpec = registerOutput<ServiceEndpointSpec?>('endpointSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceEndpointSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interfaces = registerOutput<List<Map<String, dynamic>>?>('interfaces');
    location = registerOutput<String>('location');
    mcpServerSpec = registerOutput<ServiceMcpServerSpec?>('mcpServerSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceMcpServerSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    registryResource = registerOutput<String>('registryResource');
    serviceId = registerOutput<String>('serviceId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Service] resource's state with the given [name] and [id].
  static Service get(
    String name,
    pulumi.Input<String> id, {
    ServiceState? state,
  }) {
    return Service._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Service._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:agentregistry/service:Service',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentSpec = registerOutput<ServiceAgentSpec?>('agentSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceAgentSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    endpointSpec = registerOutput<ServiceEndpointSpec?>('endpointSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceEndpointSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interfaces = registerOutput<List<Map<String, dynamic>>?>('interfaces');
    location = registerOutput<String>('location');
    mcpServerSpec = registerOutput<ServiceMcpServerSpec?>('mcpServerSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceMcpServerSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    registryResource = registerOutput<String>('registryResource');
    serviceId = registerOutput<String>('serviceId');
    updateTime = registerOutput<String>('updateTime');
  }
}
