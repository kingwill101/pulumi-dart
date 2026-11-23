import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_gateway_endpoint_args.dart';
import 'action_gateway_endpoint_insights.dart';
import 'action_gateway_endpoint_state.dart';
import 'action_gateway_endpoint_version.dart';

/// Provides a DigitalOcean [Action Gateway](https://docs.digitalocean.com/products/managed-agents/action-gateway/)
/// endpoint resource. An endpoint is a named lineage of immutable versions, and a
/// version is the tool selection, permission policy, and configuration that
/// Gateway applies to a request. This resource owns an endpoint and publishes the
/// version its `version` block describes.
///
/// Changing the `version` block publishes a new head version in place. The
/// endpoint keeps its ID, the previous version stays live and reachable through its
/// own pinned URL, and nothing is deleted. A revert is another apply with the
/// earlier configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const support = new digitalocean.ActionGatewayEndpoint("support", {
///     name: "support-agent",
///     insights: {
///         logs: true,
///         traces: false,
///     },
///     version: {
///         actorId: "user-123",
///         tools: [
///             "jira_get_issue",
///             "exa_web_search",
///             "toolbelt:read-only@1",
///         ],
///         policy: {
///             defaultAction: "ask",
///             rules: [{
///                 tool: "jira_get_issue",
///                 action: "allow",
///             }],
///         },
///         config: JSON.stringify({
///             customInstructions: "Answer in the customer's language.",
///         }),
///     },
/// });
/// export const mcpUrl = support.mcpUrl;
/// export const pinnedMcpUrl = support.versionMcpUrl;
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_digitalocean as digitalocean
///
/// support = digitalocean.ActionGatewayEndpoint("support",
///     name="support-agent",
///     insights={
///         "logs": True,
///         "traces": False,
///     },
///     version={
///         "actor_id": "user-123",
///         "tools": [
///             "jira_get_issue",
///             "exa_web_search",
///             "toolbelt:read-only@1",
///         ],
///         "policy": {
///             "default_action": "ask",
///             "rules": [{
///                 "tool": "jira_get_issue",
///                 "action": "allow",
///             }],
///         },
///         "config": json.dumps({
///             "customInstructions": "Answer in the customer's language.",
///         }),
///     })
/// pulumi.export("mcpUrl", support.mcp_url)
/// pulumi.export("pinnedMcpUrl", support.version_mcp_url)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var support = new DigitalOcean.ActionGatewayEndpoint("support", new()
///     {
///         Name = "support-agent",
///         Insights = new DigitalOcean.Inputs.ActionGatewayEndpointInsightsArgs
///         {
///             Logs = true,
///             Traces = false,
///         },
///         Version = new DigitalOcean.Inputs.ActionGatewayEndpointVersionArgs
///         {
///             ActorId = "user-123",
///             Tools = new[]
///             {
///                 "jira_get_issue",
///                 "exa_web_search",
///                 "toolbelt:read-only@1",
///             },
///             Policy = new DigitalOcean.Inputs.ActionGatewayEndpointVersionPolicyArgs
///             {
///                 DefaultAction = "ask",
///                 Rules = new[]
///                 {
///                     new DigitalOcean.Inputs.ActionGatewayEndpointVersionPolicyRuleArgs
///                     {
///                         Tool = "jira_get_issue",
///                         Action = "allow",
///                     },
///                 },
///             },
///             Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///             {
///                 ["customInstructions"] = "Answer in the customer's language.",
///             }),
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["mcpUrl"] = support.McpUrl,
///         ["pinnedMcpUrl"] = support.VersionMcpUrl,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"customInstructions": "Answer in the customer's language.",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		support, err := digitalocean.NewActionGatewayEndpoint(ctx, "support", &digitalocean.ActionGatewayEndpointArgs{
/// 			Name: pulumi.String("support-agent"),
/// 			Insights: &digitalocean.ActionGatewayEndpointInsightsArgs{
/// 				Logs:   pulumi.Bool(true),
/// 				Traces: pulumi.Bool(false),
/// 			},
/// 			Version: &digitalocean.ActionGatewayEndpointVersionArgs{
/// 				ActorId: pulumi.String("user-123"),
/// 				Tools: pulumi.StringArray{
/// 					pulumi.String("jira_get_issue"),
/// 					pulumi.String("exa_web_search"),
/// 					pulumi.String("toolbelt:read-only@1"),
/// 				},
/// 				Policy: &digitalocean.ActionGatewayEndpointVersionPolicyArgs{
/// 					DefaultAction: pulumi.String("ask"),
/// 					Rules: digitalocean.ActionGatewayEndpointVersionPolicyRuleArray{
/// 						&digitalocean.ActionGatewayEndpointVersionPolicyRuleArgs{
/// 							Tool:   pulumi.String("jira_get_issue"),
/// 							Action: pulumi.String("allow"),
/// 						},
/// 					},
/// 				},
/// 				Config: pulumi.String(json0),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mcpUrl", support.McpUrl)
/// 		ctx.Export("pinnedMcpUrl", support.VersionMcpUrl)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_action_gateway_endpoint" "support" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name = "support-agent"
///   insights {
///     logs   = true
///     traces = false
///   }
///   version {
///     actor_id = "user-123"
///     tools    = ["jira_get_issue", "exa_web_search", "toolbelt:read-only@1"]
///     policy {
///       default_action = "ask"
///       rules {
///         tool   = "jira_get_issue"
///         action = "allow"
///       }
///     }
///     config = jsonencode({
///       "customInstructions" = "Answer in the customer's language."
///     })
///   }
/// }
/// output "mcpUrl" {
///   value = digitalocean_action_gateway_endpoint.support.mcp_url
/// }
/// output "pinnedMcpUrl" {
///   value = digitalocean_action_gateway_endpoint.support.version_mcp_url
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.ActionGatewayEndpoint;
/// import com.pulumi.digitalocean.ActionGatewayEndpointArgs;
/// import com.pulumi.digitalocean.inputs.ActionGatewayEndpointInsightsArgs;
/// import com.pulumi.digitalocean.inputs.ActionGatewayEndpointVersionArgs;
/// import com.pulumi.digitalocean.inputs.ActionGatewayEndpointVersionPolicyArgs;
/// import com.pulumi.digitalocean.inputs.ActionGatewayEndpointVersionPolicyRuleArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var support = new ActionGatewayEndpoint("support", ActionGatewayEndpointArgs.builder()
///             .name("support-agent")
///             .insights(ActionGatewayEndpointInsightsArgs.builder()
///                 .logs(true)
///                 .traces(false)
///                 .build())
///             .version(ActionGatewayEndpointVersionArgs.builder()
///                 .actorId("user-123")
///                 .tools(
///                     "jira_get_issue",
///                     "exa_web_search",
///                     "toolbelt:read-only@1")
///                 .policy(ActionGatewayEndpointVersionPolicyArgs.builder()
///                     .defaultAction("ask")
///                     .rules(ActionGatewayEndpointVersionPolicyRuleArgs.builder()
///                         .tool("jira_get_issue")
///                         .action("allow")
///                         .build())
///                     .build())
///                 .config(serializeJson(
///                     jsonObject(
///                         jsonProperty("customInstructions", "Answer in the customer's language.")
///                     )))
///                 .build())
///             .build());
///
///         ctx.export("mcpUrl", support.mcpUrl());
///         ctx.export("pinnedMcpUrl", support.versionMcpUrl());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   support:
///     type: digitalocean:ActionGatewayEndpoint
///     properties:
///       name: support-agent
///       insights:
///         logs: true
///         traces: false
///       version:
///         actorId: user-123
///         tools:
///           - jira_get_issue
///           - exa_web_search
///           - toolbelt:read-only@1
///         policy:
///           defaultAction: ask
///           rules:
///             - tool: jira_get_issue
///               action: allow
///         config:
///           fn::toJSON:
///             customInstructions: Answer in the customer's language.
/// outputs:
///   mcpUrl: ${support.mcpUrl}
///   pinnedMcpUrl: ${support.versionMcpUrl}
/// ```
///
///
/// ## Drift
///
/// `pulumi preview` reads the endpoint's head version into the `version` block. A
/// version published from the console, PyDo, another workspace, or a promotion
/// therefore appears as a diff, and the next apply converges by publishing the
/// configured version as a new head. The resource never adopts an out-of-band
/// configuration silently, and it never deletes a version it did not publish.
///
/// ## Limit on live versions
///
/// The resource never prunes versions. Each applied configuration change adds one
/// live version, an endpoint keeps at most 100 live versions, and the next publish
/// beyond that limit is refused with `endpointVersionLimitExceeded`. Deleting
/// history is an out-of-band action, because a version identity is never reused.
///
/// ## Promotion
///
/// Promotion is not modeled, because a promotion creates a new head whose identity
/// the caller cannot predict. Reverting the configuration to an earlier one
/// publishes it again as a new head, which has the same effect; only the
/// `promotedFromVersionNumber` provenance marker is out of reach.
///
/// ## Import
///
/// An endpoint can be imported using its UUID, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/actionGatewayEndpoint:ActionGatewayEndpoint support 1b4d4e0f-9a7c-4d5b-8f3c-2a6e6e8f0a13
/// ```
///
/// An imported endpoint plans no change when its head version matches the
/// configuration, and one publish when it does not. An import reports `tools` and
/// `pinnedTools` in the API's pinned spelling, such as `exa_web_search@1`, so a
/// configuration that matches an imported head names the pins too. An imported
/// **default** endpoint is managed like any other, but deleting it makes the next
/// generic `/mcp` request create a new default endpoint with a new ID, so a client
/// pinned to the deleted endpoint's own URL stops working.
class ActionGatewayEndpoint extends pulumi.CustomResource {
  /// When the endpoint was created.
  late final pulumi.Output<String> createdAt;
  /// Insights consent, which applies to every version of the endpoint. See Insights below.
  late final pulumi.Output<ActionGatewayEndpointInsights> insights;
  /// Whether this is the default endpoint that a generic `/mcp` request resolves to for your user.
  late final pulumi.Output<bool> isDefault;
  /// The MCP URL that follows the endpoint's current head version. Its host can change when a new head version moves the endpoint to a VPC in another region, so do not treat it as a stable hostname.
  late final pulumi.Output<String> mcpUrl;
  /// The name of the endpoint, unique among your team's active endpoints. It must contain 1 to 64 characters from `[A-Za-z0-9._-]`. Changing the name renames the endpoint in place.
  late final pulumi.Output<String> name;
  /// When the endpoint was last modified.
  late final pulumi.Output<String> updatedAt;
  /// The version the configuration describes. See Version below. Changing it publishes a new head version.
  late final pulumi.Output<ActionGatewayEndpointVersion> version;
  /// The MCP URL pinned to the current head version. It is stable only while Terraform owns the head.
  late final pulumi.Output<String> versionMcpUrl;

  /// Creates a new [ActionGatewayEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ActionGatewayEndpoint]. {@macro pulumi_index_action_gateway_endpoint_action_gateway_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ActionGatewayEndpoint(
    String name, {
    ActionGatewayEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/actionGatewayEndpoint:ActionGatewayEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '4.86.0').merge(options),
        ) {
    createdAt = registerOutput<String>('createdAt');
    insights = registerOutput<ActionGatewayEndpointInsights>('insights', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ActionGatewayEndpointInsights.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isDefault = registerOutput<bool>('isDefault');
    mcpUrl = registerOutput<String>('mcpUrl');
    this.name = registerOutput<String>('name');
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<ActionGatewayEndpointVersion>('version', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ActionGatewayEndpointVersion.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    versionMcpUrl = registerOutput<String>('versionMcpUrl');
  }

  /// Gets an existing [ActionGatewayEndpoint] resource's state with the given [name] and [id].
  static ActionGatewayEndpoint get(
    String name,
    pulumi.Input<String> id, {
    ActionGatewayEndpointState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ActionGatewayEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ActionGatewayEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/actionGatewayEndpoint:ActionGatewayEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    insights = registerOutput<ActionGatewayEndpointInsights>('insights', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ActionGatewayEndpointInsights.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isDefault = registerOutput<bool>('isDefault');
    mcpUrl = registerOutput<String>('mcpUrl');
    this.name = registerOutput<String>('name');
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<ActionGatewayEndpointVersion>('version', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ActionGatewayEndpointVersion.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    versionMcpUrl = registerOutput<String>('versionMcpUrl');
  }

  /// Creates a typed reference to an existing [ActionGatewayEndpoint] resource.
  ActionGatewayEndpoint.reference(String urn)
    : super(
        'digitalocean:index/actionGatewayEndpoint:ActionGatewayEndpoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createdAt = registerOutput<String>('createdAt');
    insights = registerOutput<ActionGatewayEndpointInsights>('insights', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ActionGatewayEndpointInsights.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isDefault = registerOutput<bool>('isDefault');
    mcpUrl = registerOutput<String>('mcpUrl');
    this.name = registerOutput<String>('name');
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<ActionGatewayEndpointVersion>('version', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ActionGatewayEndpointVersion.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    versionMcpUrl = registerOutput<String>('versionMcpUrl');
  }
}
