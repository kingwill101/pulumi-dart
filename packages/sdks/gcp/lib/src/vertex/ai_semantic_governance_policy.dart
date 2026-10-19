import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_semantic_governance_policy_agent_response_customization.dart';
import 'ai_semantic_governance_policy_args.dart';
import 'ai_semantic_governance_policy_mcp_tools.dart';
import 'ai_semantic_governance_policy_state.dart';

/// A Semantic Governance Policy governs an AI agent's actions and tool execution
/// using natural language constraints. A policy requires an active
/// SemanticGovernancePolicyEngine (`gcp.vertex.AiSemanticGovernancePolicyEngine`)
/// in the same project and region.
///
///
/// To get more information about SemanticGovernancePolicy, see:
///
/// * [API documentation](https://docs.cloud.google.com/gemini-enterprise-agent-platform/reference/rest/v1/projects.locations.semanticGovernancePolicies)
/// * How-to Guides
/// * [Semantic governance overview](https://docs.cloud.google.com/gemini-enterprise-agent-platform/govern/policies/semantic-governance-overview)
///
/// ## Example Usage
///
/// ### Vertex Ai Semantic Governance Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const sgpe = new gcp.vertex.AiSemanticGovernancePolicyEngine("sgpe", {region: "us-central1"});
/// const agentAiReasoningEngine = new gcp.vertex.AiReasoningEngine("agent", {
///     displayName: "example-agent",
///     region: "us-central1",
///     spec: {
///         identityType: "AGENT_IDENTITY",
///     },
/// });
/// const waitForIngestion = new time.Sleep("wait_for_ingestion", {createDuration: "120s"}, {
///     dependsOn: [agentAiReasoningEngine],
/// });
/// const agent = gcp.agentregistry.getAgentOutput({
///     location: "us-central1",
///     filter: pulumi.interpolate`displayName="${agentAiReasoningEngine.displayName}"`,
/// });
/// const policy = new gcp.vertex.AiSemanticGovernancePolicy("policy", {
///     semanticGovernancePolicyId: "example-policy",
///     region: "us-central1",
///     naturalLanguageConstraint: "Do not access internal developer endpoints",
///     agent: agent.id,
/// }, {
///     dependsOn: [sgpe],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// sgpe = gcp.vertex.AiSemanticGovernancePolicyEngine("sgpe", region="us-central1")
/// agent_ai_reasoning_engine = gcp.vertex.AiReasoningEngine("agent",
///     display_name="example-agent",
///     region="us-central1",
///     spec={
///         "identity_type": "AGENT_IDENTITY",
///     })
/// wait_for_ingestion = time.Sleep("wait_for_ingestion", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[agent_ai_reasoning_engine]))
/// agent = gcp.agentregistry.get_agent_output(location="us-central1",
///     filter=agent_ai_reasoning_engine.display_name.apply(lambda display_name: f"displayName=\"{display_name}\""))
/// policy = gcp.vertex.AiSemanticGovernancePolicy("policy",
///     semantic_governance_policy_id="example-policy",
///     region="us-central1",
///     natural_language_constraint="Do not access internal developer endpoints",
///     agent=agent.id,
///     opts = pulumi.ResourceOptions(depends_on=[sgpe]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sgpe = new Gcp.Vertex.AiSemanticGovernancePolicyEngine("sgpe", new()
///     {
///         Region = "us-central1",
///     });
///
///     var agentAiReasoningEngine = new Gcp.Vertex.AiReasoningEngine("agent", new()
///     {
///         DisplayName = "example-agent",
///         Region = "us-central1",
///         Spec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecArgs
///         {
///             IdentityType = "AGENT_IDENTITY",
///         },
///     });
///
///     var waitForIngestion = new Time.Sleep("wait_for_ingestion", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             agentAiReasoningEngine,
///         },
///     });
///
///     var agent = Gcp.AgentRegistry.GetAgent.Invoke(new()
///     {
///         Location = "us-central1",
///         Filter = $"displayName=\"{agentAiReasoningEngine.DisplayName}\"",
///     });
///
///     var policy = new Gcp.Vertex.AiSemanticGovernancePolicy("policy", new()
///     {
///         SemanticGovernancePolicyId = "example-policy",
///         Region = "us-central1",
///         NaturalLanguageConstraint = "Do not access internal developer endpoints",
///         Agent = agent.Apply(getAgentResult => getAgentResult.Id),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             sgpe,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/agentregistry"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		sgpe, err := vertex.NewAiSemanticGovernancePolicyEngine(ctx, "sgpe", &vertex.AiSemanticGovernancePolicyEngineArgs{
/// 			Region: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		agentAiReasoningEngine, err := vertex.NewAiReasoningEngine(ctx, "agent", &vertex.AiReasoningEngineArgs{
/// 			DisplayName: pulumi.String("example-agent"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Spec: &vertex.AiReasoningEngineSpecArgs{
/// 				IdentityType: pulumi.String("AGENT_IDENTITY"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = time.NewSleep(ctx, "wait_for_ingestion", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			agentAiReasoningEngine,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		agent := agentregistry.GetAgentOutput(ctx, agentregistry.GetAgentOutputArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Filter: agentAiReasoningEngine.DisplayName.ApplyT(func(displayName string) (string, error) {
/// 				return fmt.Sprintf("displayName=\"%v\"", displayName), nil
/// 			}).(pulumi.StringOutput),
/// 		}, nil)
/// 		_, err = vertex.NewAiSemanticGovernancePolicy(ctx, "policy", &vertex.AiSemanticGovernancePolicyArgs{
/// 			SemanticGovernancePolicyId: pulumi.String("example-policy"),
/// 			Region:                     pulumi.String("us-central1"),
/// 			NaturalLanguageConstraint:  pulumi.String("Do not access internal developer endpoints"),
/// 			Agent:                      agent.Id(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			sgpe,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// data "gcp_agentregistry_agent" "agent" {
///   location = "us-central1"
///   filter   ="displayName="${gcp_vertex_ai_reasoning_engine.agent.display_name}""
/// }
///
/// resource "gcp_vertex_ai_semantic_governance_policy_engine" "sgpe" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   region = "us-central1"
/// }
/// resource "gcp_vertex_ai_reasoning_engine" "agent" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "example-agent"
///   region       = "us-central1"
///   spec = {
///     identity_type = "AGENT_IDENTITY"
///   }
/// }
/// resource "time_sleep" "wait_for_ingestion" {
///   depends_on = [gcp_vertex_ai_reasoning_engine.agent]
///   lifecycle {
///     create_before_destroy = true
///   }
///   create_duration = "120s"
/// }
/// resource "gcp_vertex_ai_semantic_governance_policy" "policy" {
///   depends_on = [gcp_vertex_ai_semantic_governance_policy_engine.sgpe]
///   lifecycle {
///     create_before_destroy = true
///   }
///   semantic_governance_policy_id = "example-policy"
///   region                        = "us-central1"
///   natural_language_constraint   = "Do not access internal developer endpoints"
///   agent                         = data.gcp_agentregistry_agent.agent.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiSemanticGovernancePolicyEngine;
/// import com.pulumi.gcp.vertex.AiSemanticGovernancePolicyEngineArgs;
/// import com.pulumi.gcp.vertex.AiReasoningEngine;
/// import com.pulumi.gcp.vertex.AiReasoningEngineArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.agentregistry.AgentregistryFunctions;
/// import com.pulumi.gcp.agentregistry.inputs.GetAgentArgs;
/// import com.pulumi.gcp.vertex.AiSemanticGovernancePolicy;
/// import com.pulumi.gcp.vertex.AiSemanticGovernancePolicyArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var sgpe = new AiSemanticGovernancePolicyEngine("sgpe", AiSemanticGovernancePolicyEngineArgs.builder()
///             .region("us-central1")
///             .build());
///
///         var agentAiReasoningEngine = new AiReasoningEngine("agentAiReasoningEngine", AiReasoningEngineArgs.builder()
///             .displayName("example-agent")
///             .region("us-central1")
///             .spec(AiReasoningEngineSpecArgs.builder()
///                 .identityType("AGENT_IDENTITY")
///                 .build())
///             .build());
///
///         var waitForIngestion = new Sleep("waitForIngestion", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(agentAiReasoningEngine)
///                 .build());
///
///         final var agent = AgentregistryFunctions.getAgent(GetAgentArgs.builder()
///             .location("us-central1")
///             .filter(agentAiReasoningEngine.displayName().applyValue(_displayName -> String.format("displayName=\"%s\"", _displayName)))
///             .build());
///
///         var policy = new AiSemanticGovernancePolicy("policy", AiSemanticGovernancePolicyArgs.builder()
///             .semanticGovernancePolicyId("example-policy")
///             .region("us-central1")
///             .naturalLanguageConstraint("Do not access internal developer endpoints")
///             .agent(agent.applyValue(_agent -> _agent.id()))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(sgpe)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sgpe:
///     type: gcp:vertex:AiSemanticGovernancePolicyEngine
///     properties:
///       region: us-central1
///   agentAiReasoningEngine:
///     type: gcp:vertex:AiReasoningEngine
///     name: agent
///     properties:
///       displayName: example-agent
///       region: us-central1
///       spec:
///         identityType: AGENT_IDENTITY
///   waitForIngestion:
///     type: time:Sleep
///     name: wait_for_ingestion
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${agentAiReasoningEngine}
///   policy:
///     type: gcp:vertex:AiSemanticGovernancePolicy
///     properties:
///       semanticGovernancePolicyId: example-policy
///       region: us-central1
///       naturalLanguageConstraint: Do not access internal developer endpoints
///       agent: ${agent.id}
///     options:
///       dependsOn:
///         - ${sgpe}
/// variables:
///   agent:
///     fn::invoke:
///       function: gcp:agentregistry:getAgent
///       arguments:
///         location: us-central1
///         filter: displayName="${agentAiReasoningEngine.displayName}"
/// ```
///
///
/// ## Import
///
/// SemanticGovernancePolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/semanticGovernancePolicies/{{semantic_governance_policy_id}}`
/// * `{{project}}/{{region}}/{{semantic_governance_policy_id}}`
/// * `{{region}}/{{semantic_governance_policy_id}}`
/// * `{{semantic_governance_policy_id}}`
///
///
/// When using the `pulumi import` command, SemanticGovernancePolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiSemanticGovernancePolicy:AiSemanticGovernancePolicy default projects/{{project}}/locations/{{region}}/semanticGovernancePolicies/{{semantic_governance_policy_id}}
/// $ pulumi import gcp:vertex/aiSemanticGovernancePolicy:AiSemanticGovernancePolicy default {{project}}/{{region}}/{{semantic_governance_policy_id}}
/// $ pulumi import gcp:vertex/aiSemanticGovernancePolicy:AiSemanticGovernancePolicy default {{region}}/{{semantic_governance_policy_id}}
/// $ pulumi import gcp:vertex/aiSemanticGovernancePolicy:AiSemanticGovernancePolicy default {{semantic_governance_policy_id}}
/// ```
class AiSemanticGovernancePolicy extends pulumi.CustomResource {
  /// The name of the agent in Agent Registry that is affected by this policy.
  late final pulumi.Output<String> agent;
  /// Represents the principal of the agent, used by the Policy Decision Point (PDP) for governance checks.
  /// For more information, see https://docs.cloud.google.com/agent-builder/agent-engine/agent-identity.
  /// Format: `principal://TRUST_DOMAIN/NAMESPACE/AGENT_NAME`
  late final pulumi.Output<String> agentIdentity;
  /// Settings for customizing the agent's response to end users when this policy is evaluated.
  /// Structure is documented below.
  late final pulumi.Output<AiSemanticGovernancePolicyAgentResponseCustomization?> agentResponseCustomization;
  /// The time the SemanticGovernancePolicy was created, in RFC3339 UTC "Zulu" format.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The description of the SemanticGovernancePolicy.
  late final pulumi.Output<String?> description;
  /// The user-defined name of the SemanticGovernancePolicy.
  late final pulumi.Output<String?> displayName;
  /// Used to perform consistent read-modify-write transactions.
  late final pulumi.Output<String> etag;
  /// The McpTools that are affected by this policy.
  /// Structure is documented below.
  late final pulumi.Output<AiSemanticGovernancePolicyMcpTools?> mcpTools;
  /// The resource name of the SemanticGovernancePolicy, in the form
  /// 'projects/{project}/locations/{location}/semanticGovernancePolicies/{semantic_governance_policy}'.
  late final pulumi.Output<String> name;
  /// The natural language constraint of the SemanticGovernancePolicy.
  late final pulumi.Output<String> naturalLanguageConstraint;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The region of the SemanticGovernancePolicy, e.g. 'us-central1'.
  late final pulumi.Output<String?> region;
  /// The ID of the SemanticGovernancePolicy, which will become the final component of the resource name.
  /// This value may be up to 63 characters, and valid characters are [a-z0-9-]. The first character cannot be a number or hyphen. The last character must be a letter or a number.
  late final pulumi.Output<String> semanticGovernancePolicyId;
  /// The time the SemanticGovernancePolicy was last updated, in RFC3339 UTC "Zulu" format.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AiSemanticGovernancePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiSemanticGovernancePolicy]. {@macro pulumi_vertex_ai_semantic_governance_policy_ai_semantic_governance_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiSemanticGovernancePolicy(
    String name, {
    AiSemanticGovernancePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiSemanticGovernancePolicy:AiSemanticGovernancePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.1').merge(options),
        ) {
    agent = registerOutput<String>('agent');
    agentIdentity = registerOutput<String>('agentIdentity');
    agentResponseCustomization = registerOutput<AiSemanticGovernancePolicyAgentResponseCustomization?>('agentResponseCustomization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSemanticGovernancePolicyAgentResponseCustomization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String>('etag');
    mcpTools = registerOutput<AiSemanticGovernancePolicyMcpTools?>('mcpTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSemanticGovernancePolicyMcpTools.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    naturalLanguageConstraint = registerOutput<String>('naturalLanguageConstraint');
    project = registerOutput<String>('project');
    region = registerOutput<String?>('region');
    semanticGovernancePolicyId = registerOutput<String>('semanticGovernancePolicyId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AiSemanticGovernancePolicy] resource's state with the given [name] and [id].
  static AiSemanticGovernancePolicy get(
    String name,
    pulumi.Input<String> id, {
    AiSemanticGovernancePolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiSemanticGovernancePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiSemanticGovernancePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiSemanticGovernancePolicy:AiSemanticGovernancePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agent = registerOutput<String>('agent');
    agentIdentity = registerOutput<String>('agentIdentity');
    agentResponseCustomization = registerOutput<AiSemanticGovernancePolicyAgentResponseCustomization?>('agentResponseCustomization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSemanticGovernancePolicyAgentResponseCustomization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String>('etag');
    mcpTools = registerOutput<AiSemanticGovernancePolicyMcpTools?>('mcpTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSemanticGovernancePolicyMcpTools.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    naturalLanguageConstraint = registerOutput<String>('naturalLanguageConstraint');
    project = registerOutput<String>('project');
    region = registerOutput<String?>('region');
    semanticGovernancePolicyId = registerOutput<String>('semanticGovernancePolicyId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [AiSemanticGovernancePolicy] resource.
  AiSemanticGovernancePolicy.reference(String urn)
    : super(
        'gcp:vertex/aiSemanticGovernancePolicy:AiSemanticGovernancePolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    agent = registerOutput<String>('agent');
    agentIdentity = registerOutput<String>('agentIdentity');
    agentResponseCustomization = registerOutput<AiSemanticGovernancePolicyAgentResponseCustomization?>('agentResponseCustomization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSemanticGovernancePolicyAgentResponseCustomization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String>('etag');
    mcpTools = registerOutput<AiSemanticGovernancePolicyMcpTools?>('mcpTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSemanticGovernancePolicyMcpTools.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    naturalLanguageConstraint = registerOutput<String>('naturalLanguageConstraint');
    project = registerOutput<String>('project');
    region = registerOutput<String?>('region');
    semanticGovernancePolicyId = registerOutput<String>('semanticGovernancePolicyId');
    updateTime = registerOutput<String>('updateTime');
  }
}
