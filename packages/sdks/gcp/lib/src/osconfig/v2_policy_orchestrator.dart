import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_args.dart';
import 'v2_policy_orchestrator_orchestrated_resource.dart';
import 'v2_policy_orchestrator_orchestration_scope.dart';
import 'v2_policy_orchestrator_state.dart';

/// PolicyOrchestrator helps managing project+zone level policy resources (e.g.
/// OS Policy Assignments), by providing tools to create, update and delete them
/// across projects and locations, at scale.
///
///
///
/// ## Example Usage
///
/// ### Osconfigv2 Policy Orchestrator Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policyOrchestrator = new gcp.osconfig.V2PolicyOrchestrator("policy_orchestrator", {
///     policyOrchestratorId: "po",
///     state: "ACTIVE",
///     action: "UPSERT",
///     orchestratedResource: {
///         id: "test-orchestrated-resource",
///         osPolicyAssignmentV1Payload: {
///             osPolicies: [{
///                 id: "test-os-policy",
///                 mode: "VALIDATION",
///                 resourceGroups: [{
///                     resources: [{
///                         id: "resource-tf",
///                         file: {
///                             content: "file-content-tf",
///                             path: "file-path-tf-1",
///                             state: "PRESENT",
///                         },
///                     }],
///                 }],
///             }],
///             instanceFilter: {
///                 inventories: [{
///                     osShortName: "windows-10",
///                 }],
///             },
///             rollout: {
///                 disruptionBudget: {
///                     percent: 100,
///                 },
///                 minWaitDuration: "60s",
///             },
///         },
///     },
///     labels: {
///         state: "active",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy_orchestrator = gcp.osconfig.V2PolicyOrchestrator("policy_orchestrator",
///     policy_orchestrator_id="po",
///     state="ACTIVE",
///     action="UPSERT",
///     orchestrated_resource={
///         "id": "test-orchestrated-resource",
///         "os_policy_assignment_v1_payload": {
///             "os_policies": [{
///                 "id": "test-os-policy",
///                 "mode": "VALIDATION",
///                 "resource_groups": [{
///                     "resources": [{
///                         "id": "resource-tf",
///                         "file": {
///                             "content": "file-content-tf",
///                             "path": "file-path-tf-1",
///                             "state": "PRESENT",
///                         },
///                     }],
///                 }],
///             }],
///             "instance_filter": {
///                 "inventories": [{
///                     "os_short_name": "windows-10",
///                 }],
///             },
///             "rollout": {
///                 "disruption_budget": {
///                     "percent": 100,
///                 },
///                 "min_wait_duration": "60s",
///             },
///         },
///     },
///     labels={
///         "state": "active",
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
///     var policyOrchestrator = new Gcp.OsConfig.V2PolicyOrchestrator("policy_orchestrator", new()
///     {
///         PolicyOrchestratorId = "po",
///         State = "ACTIVE",
///         Action = "UPSERT",
///         OrchestratedResource = new Gcp.OsConfig.Inputs.V2PolicyOrchestratorOrchestratedResourceArgs
///         {
///             Id = "test-orchestrated-resource",
///             OsPolicyAssignmentV1Payload = new Gcp.OsConfig.Inputs.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadArgs
///             {
///                 OsPolicies = new[]
///                 {
///                     new Gcp.OsConfig.Inputs.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyArgs
///                     {
///                         Id = "test-os-policy",
///                         Mode = "VALIDATION",
///                         ResourceGroups = new[]
///                         {
///                             new Gcp.OsConfig.Inputs.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupArgs
///                             {
///                                 Resources = new[]
///                                 {
///                                     new Gcp.OsConfig.Inputs.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceArgs
///                                     {
///                                         Id = "resource-tf",
///                                         File = new Gcp.OsConfig.Inputs.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFileArgs
///                                         {
///                                             Content = "file-content-tf",
///                                             Path = "file-path-tf-1",
///                                             State = "PRESENT",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 InstanceFilter = new Gcp.OsConfig.Inputs.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterArgs
///                 {
///                     Inventories = new[]
///                     {
///                         new Gcp.OsConfig.Inputs.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventoryArgs
///                         {
///                             OsShortName = "windows-10",
///                         },
///                     },
///                 },
///                 Rollout = new Gcp.OsConfig.Inputs.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutArgs
///                 {
///                     DisruptionBudget = new Gcp.OsConfig.Inputs.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudgetArgs
///                     {
///                         Percent = 100,
///                     },
///                     MinWaitDuration = "60s",
///                 },
///             },
///         },
///         Labels =
///         {
///             { "state", "active" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/osconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := osconfig.NewV2PolicyOrchestrator(ctx, "policy_orchestrator", &osconfig.V2PolicyOrchestratorArgs{
/// 			PolicyOrchestratorId: pulumi.String("po"),
/// 			State:                pulumi.String("ACTIVE"),
/// 			Action:               pulumi.String("UPSERT"),
/// 			OrchestratedResource: &osconfig.V2PolicyOrchestratorOrchestratedResourceArgs{
/// 				Id: pulumi.String("test-orchestrated-resource"),
/// 				OsPolicyAssignmentV1Payload: &osconfig.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadArgs{
/// 					OsPolicies: osconfig.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyArray{
/// 						&osconfig.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyArgs{
/// 							Id:   pulumi.String("test-os-policy"),
/// 							Mode: pulumi.String("VALIDATION"),
/// 							ResourceGroups: osconfig.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupArray{
/// 								&osconfig.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupArgs{
/// 									Resources: osconfig.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceArray{
/// 										&osconfig.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceArgs{
/// 											Id: pulumi.String("resource-tf"),
/// 											File: &osconfig.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFileArgs{
/// 												Content: pulumi.String("file-content-tf"),
/// 												Path:    pulumi.String("file-path-tf-1"),
/// 												State:   pulumi.String("PRESENT"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					InstanceFilter: &osconfig.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterArgs{
/// 						Inventories: osconfig.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventoryArray{
/// 							&osconfig.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventoryArgs{
/// 								OsShortName: pulumi.String("windows-10"),
/// 							},
/// 						},
/// 					},
/// 					Rollout: &osconfig.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutArgs{
/// 						DisruptionBudget: &osconfig.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudgetArgs{
/// 							Percent: pulumi.Int(100),
/// 						},
/// 						MinWaitDuration: pulumi.String("60s"),
/// 					},
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"state": pulumi.String("active"),
/// 			},
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
/// import com.pulumi.gcp.osconfig.V2PolicyOrchestrator;
/// import com.pulumi.gcp.osconfig.V2PolicyOrchestratorArgs;
/// import com.pulumi.gcp.osconfig.inputs.V2PolicyOrchestratorOrchestratedResourceArgs;
/// import com.pulumi.gcp.osconfig.inputs.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadArgs;
/// import com.pulumi.gcp.osconfig.inputs.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterArgs;
/// import com.pulumi.gcp.osconfig.inputs.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutArgs;
/// import com.pulumi.gcp.osconfig.inputs.V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudgetArgs;
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
///         var policyOrchestrator = new V2PolicyOrchestrator("policyOrchestrator", V2PolicyOrchestratorArgs.builder()
///             .policyOrchestratorId("po")
///             .state("ACTIVE")
///             .action("UPSERT")
///             .orchestratedResource(V2PolicyOrchestratorOrchestratedResourceArgs.builder()
///                 .id("test-orchestrated-resource")
///                 .osPolicyAssignmentV1Payload(V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadArgs.builder()
///                     .osPolicies(V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyArgs.builder()
///                         .id("test-os-policy")
///                         .mode("VALIDATION")
///                         .resourceGroups(V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupArgs.builder()
///                             .resources(V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceArgs.builder()
///                                 .id("resource-tf")
///                                 .file(V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFileArgs.builder()
///                                     .content("file-content-tf")
///                                     .path("file-path-tf-1")
///                                     .state("PRESENT")
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .instanceFilter(V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterArgs.builder()
///                         .inventories(V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventoryArgs.builder()
///                             .osShortName("windows-10")
///                             .build())
///                         .build())
///                     .rollout(V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutArgs.builder()
///                         .disruptionBudget(V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudgetArgs.builder()
///                             .percent(100)
///                             .build())
///                         .minWaitDuration("60s")
///                         .build())
///                     .build())
///                 .build())
///             .labels(Map.of("state", "active"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policyOrchestrator:
///     type: gcp:osconfig:V2PolicyOrchestrator
///     name: policy_orchestrator
///     properties:
///       policyOrchestratorId: po
///       state: ACTIVE
///       action: UPSERT
///       orchestratedResource:
///         id: test-orchestrated-resource
///         osPolicyAssignmentV1Payload:
///           osPolicies:
///             - id: test-os-policy
///               mode: VALIDATION
///               resourceGroups:
///                 - resources:
///                     - id: resource-tf
///                       file:
///                         content: file-content-tf
///                         path: file-path-tf-1
///                         state: PRESENT
///           instanceFilter:
///             inventories:
///               - osShortName: windows-10
///           rollout:
///             disruptionBudget:
///               percent: 100
///             minWaitDuration: 60s
///       labels:
///         state: active
/// ```
///
///
/// ## Import
///
/// PolicyOrchestrator can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/policyOrchestrators/{{policy_orchestrator_id}}`
///
/// * `{{project}}/{{policy_orchestrator_id}}`
///
/// * `{{policy_orchestrator_id}}`
///
/// When using the `pulumi import` command, PolicyOrchestrator can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:osconfig/v2PolicyOrchestrator:V2PolicyOrchestrator default projects/{{project}}/locations/global/policyOrchestrators/{{policy_orchestrator_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:osconfig/v2PolicyOrchestrator:V2PolicyOrchestrator default {{project}}/{{policy_orchestrator_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:osconfig/v2PolicyOrchestrator:V2PolicyOrchestrator default {{policy_orchestrator_id}}
/// ```
class V2PolicyOrchestrator extends pulumi.CustomResource {
  /// Required. Action to be done by the orchestrator in
  /// `projects/{project_id}/zones/{zone_id}` locations defined by the
  /// `orchestration_scope`. Allowed values:
  /// - `UPSERT` - Orchestrator will create or update target resources.
  /// - `DELETE` - Orchestrator will delete target resources, if they exist
  late final pulumi.Output<String> action;

  /// Output only. Timestamp when the policy orchestrator resource was created.
  late final pulumi.Output<String> createTime;

  /// Optional. Freeform text describing the purpose of the resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Immutable. Identifier. In form of
  /// * `organizations/{organization_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// * `folders/{folder_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// * `projects/{project_id_or_number}/locations/global/policyOrchestrators/{orchestrator_id}`
  late final pulumi.Output<String> name;

  /// Represents a resource that is being orchestrated by the policy orchestrator.
  /// Structure is documented below.
  late final pulumi.Output<V2PolicyOrchestratorOrchestratedResource>
  orchestratedResource;

  /// Defines a set of selectors which drive which resources are in scope of policy
  /// orchestration.
  /// Structure is documented below.
  late final pulumi.Output<V2PolicyOrchestratorOrchestrationScope?>
  orchestrationScope;

  /// Describes the state of the orchestration process.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> orchestrationStates;

  /// Required. The logical identifier of the policy orchestrator, with the following
  /// restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the parent.
  late final pulumi.Output<String> policyOrchestratorId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Output only. Set to true, if the there are ongoing changes being applied by the
  /// orchestrator.
  late final pulumi.Output<bool> reconciling;

  /// Optional. State of the orchestrator. Can be updated to change orchestrator behaviour.
  /// Allowed values:
  /// - `ACTIVE` - orchestrator is actively looking for actions to be taken.
  /// - `STOPPED` - orchestrator won't make any changes.
  /// Note: There might be more states added in the future. We use string here
  /// instead of an enum, to avoid the need of propagating new states to all the
  /// client code.
  late final pulumi.Output<String?> state;

  /// Output only. Timestamp when the policy orchestrator resource was last modified.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [V2PolicyOrchestrator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2PolicyOrchestrator]. {@macro pulumi_osconfig_v2_policy_orchestrator_v2_policy_orchestrator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2PolicyOrchestrator(
    String name, {
    V2PolicyOrchestratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:osconfig/v2PolicyOrchestrator:V2PolicyOrchestrator',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String>('action');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    orchestratedResource =
        registerOutput<V2PolicyOrchestratorOrchestratedResource>(
          'orchestratedResource',
        );
    orchestrationScope =
        registerOutput<V2PolicyOrchestratorOrchestrationScope?>(
          'orchestrationScope',
        );
    orchestrationStates = registerOutput<List<Map<String, dynamic>>>(
      'orchestrationStates',
    );
    policyOrchestratorId = registerOutput<String>('policyOrchestratorId');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    reconciling = registerOutput<bool>('reconciling');
    state = registerOutput<String?>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [V2PolicyOrchestrator] resource's state with the given [name] and [id].
  static V2PolicyOrchestrator get(
    String name,
    pulumi.Input<String> id, {
    V2PolicyOrchestratorState? state,
  }) {
    return V2PolicyOrchestrator._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  V2PolicyOrchestrator._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:osconfig/v2PolicyOrchestrator:V2PolicyOrchestrator',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String>('action');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    orchestratedResource =
        registerOutput<V2PolicyOrchestratorOrchestratedResource>(
          'orchestratedResource',
        );
    orchestrationScope =
        registerOutput<V2PolicyOrchestratorOrchestrationScope?>(
          'orchestrationScope',
        );
    orchestrationStates = registerOutput<List<Map<String, dynamic>>>(
      'orchestrationStates',
    );
    policyOrchestratorId = registerOutput<String>('policyOrchestratorId');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String?>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
