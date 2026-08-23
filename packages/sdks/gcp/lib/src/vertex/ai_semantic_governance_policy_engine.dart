import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_semantic_governance_policy_engine_args.dart';
import 'ai_semantic_governance_policy_engine_state.dart';

/// A SemanticGovernancePolicyEngine (SGPE) is the managed, runtime evaluation
/// infrastructure for Semantic Governance Policies (SGP): the natural-language
/// constraints that govern an AI agent's tool calls. It is a project-level,
/// regional singleton, so each project has at most one engine per region.
///
/// Provisioning the engine sets up managed Private Service Connect (PSC)
/// networking in your VPC and a policy decision point that the Agent Gateway
/// consults at runtime to allow or deny an agent's proposed tool calls. The
/// Semantic Governance Policies themselves, and the Agent Gateway integration
/// that routes agent traffic through the engine, are configured separately and
/// are not managed by this resource.
///
/// Reading an uninitialized or deprovisioned engine returns the singleton
/// with state INACTIVE rather than reporting it as absent.
///
///
/// To get more information about SemanticGovernancePolicyEngine, see:
/// * How-to Guides
/// * [Semantic governance overview](https://docs.cloud.google.com/gemini-enterprise-agent-platform/govern/policies/semantic-governance-overview)
///
/// ## Example Usage
///
/// ### Vertex Ai Semantic Governance Policy Engine Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sgpe = new gcp.vertex.AiSemanticGovernancePolicyEngine("sgpe", {region: "us-central1"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// sgpe = gcp.vertex.AiSemanticGovernancePolicyEngine("sgpe", region="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sgpe = new Gcp.Vertex.AiSemanticGovernancePolicyEngine("sgpe", new()
///     {
///         Region = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiSemanticGovernancePolicyEngine(ctx, "sgpe", &vertex.AiSemanticGovernancePolicyEngineArgs{
/// 			Region: pulumi.String("us-central1"),
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
/// resource "gcp_vertex_aisemanticgovernancepolicyengine" "sgpe" {
///   region = "us-central1"
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sgpe:
///     type: gcp:vertex:AiSemanticGovernancePolicyEngine
///     properties:
///       region: us-central1
/// ```
///
///
/// ## Import
///
/// SemanticGovernancePolicyEngine can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/semanticGovernancePolicyEngine`
/// * `{{project}}/{{region}}`
/// * `{{region}}`
///
///
/// When using the `pulumi import` command, SemanticGovernancePolicyEngine can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiSemanticGovernancePolicyEngine:AiSemanticGovernancePolicyEngine default projects/{{project}}/locations/{{region}}/semanticGovernancePolicyEngine
/// $ pulumi import gcp:vertex/aiSemanticGovernancePolicyEngine:AiSemanticGovernancePolicyEngine default {{project}}/{{region}}
/// $ pulumi import gcp:vertex/aiSemanticGovernancePolicyEngine:AiSemanticGovernancePolicyEngine default {{region}}
/// ```
class AiSemanticGovernancePolicyEngine extends pulumi.CustomResource {
  /// The time the SemanticGovernancePolicyEngine was created, in RFC3339
  /// UTC "Zulu" format.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The IP address allocated for the SGPE's managed PSC endpoint.
  late final pulumi.Output<String> ipAddress;
  /// The resource name of the SemanticGovernancePolicyEngine, in the form
  /// 'projects/{project}/locations/{region}/semanticGovernancePolicyEngine'.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The Private Service Connect forwarding rule URI for the SGPE's
  /// managed endpoint.
  late final pulumi.Output<String> pscForwardingRule;
  /// The Private Service Connect service attachment URI for the SGPE's
  /// managed endpoint.
  late final pulumi.Output<String> pscServiceAttachment;
  /// The region of the SemanticGovernancePolicyEngine, e.g. 'us-central1'.
  late final pulumi.Output<String> region;
  /// The current state of the SemanticGovernancePolicyEngine. One of:
  /// STATE_UNSPECIFIED, PROVISIONING, ACTIVE, FAILED, DEPROVISIONING,
  /// INACTIVE. `FAILED` indicates provisioning did not succeed; recover by
  /// destroying the resource (deprovision) or re-applying (re-provision).
  late final pulumi.Output<String> state;
  /// The time the SemanticGovernancePolicyEngine was last updated, in
  /// RFC3339 UTC "Zulu" format.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AiSemanticGovernancePolicyEngine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiSemanticGovernancePolicyEngine]. {@macro pulumi_vertex_ai_semantic_governance_policy_engine_ai_semantic_governance_policy_engine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiSemanticGovernancePolicyEngine(
    String name, {
    AiSemanticGovernancePolicyEngineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiSemanticGovernancePolicyEngine:AiSemanticGovernancePolicyEngine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    ipAddress = registerOutput<String>('ipAddress');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pscForwardingRule = registerOutput<String>('pscForwardingRule');
    pscServiceAttachment = registerOutput<String>('pscServiceAttachment');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AiSemanticGovernancePolicyEngine] resource's state with the given [name] and [id].
  static AiSemanticGovernancePolicyEngine get(
    String name,
    pulumi.Input<String> id, {
    AiSemanticGovernancePolicyEngineState? state,
  }) {
    return AiSemanticGovernancePolicyEngine._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AiSemanticGovernancePolicyEngine._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiSemanticGovernancePolicyEngine:AiSemanticGovernancePolicyEngine',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    ipAddress = registerOutput<String>('ipAddress');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pscForwardingRule = registerOutput<String>('pscForwardingRule');
    pscServiceAttachment = registerOutput<String>('pscServiceAttachment');
    region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
