import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_vm_extension_policy_args.dart';
import 'global_vm_extension_policy_extension_policy.dart';
import 'global_vm_extension_policy_instance_selector.dart';
import 'global_vm_extension_policy_rollout_operation.dart';
import 'global_vm_extension_policy_state.dart';

/// A Global VM Extension Policy.
///
///
///
/// ## Example Usage
///
/// ### Compute Global Vm Extension Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const opsAgentPolicy = new gcp.compute.GlobalVmExtensionPolicy("ops_agent_policy", {
///     name: "global-ops-agent-vme-policy-_74391",
///     description: "A basic global VM extension policy",
///     priority: 10,
///     extensionPolicies: [{
///         extensionName: "ops-agent",
///         pinnedVersion: "2.66.0",
///     }],
///     instanceSelectors: [{
///         labelSelector: {
///             inclusionLabels: {
///                 env: "test",
///             },
///         },
///     }],
///     rolloutOperation: {
///         rolloutInput: {
///             predefinedRolloutPlan: "FAST_ROLLOUT",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ops_agent_policy = gcp.compute.GlobalVmExtensionPolicy("ops_agent_policy",
///     name="global-ops-agent-vme-policy-_74391",
///     description="A basic global VM extension policy",
///     priority=10,
///     extension_policies=[{
///         "extension_name": "ops-agent",
///         "pinned_version": "2.66.0",
///     }],
///     instance_selectors=[{
///         "label_selector": {
///             "inclusion_labels": {
///                 "env": "test",
///             },
///         },
///     }],
///     rollout_operation={
///         "rollout_input": {
///             "predefined_rollout_plan": "FAST_ROLLOUT",
///         },
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
///     var opsAgentPolicy = new Gcp.Compute.GlobalVmExtensionPolicy("ops_agent_policy", new()
///     {
///         Name = "global-ops-agent-vme-policy-_74391",
///         Description = "A basic global VM extension policy",
///         Priority = 10,
///         ExtensionPolicies = new[]
///         {
///             new Gcp.Compute.Inputs.GlobalVmExtensionPolicyExtensionPolicyArgs
///             {
///                 ExtensionName = "ops-agent",
///                 PinnedVersion = "2.66.0",
///             },
///         },
///         InstanceSelectors = new[]
///         {
///             new Gcp.Compute.Inputs.GlobalVmExtensionPolicyInstanceSelectorArgs
///             {
///                 LabelSelector = new Gcp.Compute.Inputs.GlobalVmExtensionPolicyInstanceSelectorLabelSelectorArgs
///                 {
///                     InclusionLabels =
///                     {
///                         { "env", "test" },
///                     },
///                 },
///             },
///         },
///         RolloutOperation = new Gcp.Compute.Inputs.GlobalVmExtensionPolicyRolloutOperationArgs
///         {
///             RolloutInput = new Gcp.Compute.Inputs.GlobalVmExtensionPolicyRolloutOperationRolloutInputArgs
///             {
///                 PredefinedRolloutPlan = "FAST_ROLLOUT",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewGlobalVmExtensionPolicy(ctx, "ops_agent_policy", &compute.GlobalVmExtensionPolicyArgs{
/// 			Name:        pulumi.String("global-ops-agent-vme-policy-_74391"),
/// 			Description: pulumi.String("A basic global VM extension policy"),
/// 			Priority:    pulumi.Int(10),
/// 			ExtensionPolicies: compute.GlobalVmExtensionPolicyExtensionPolicyArray{
/// 				&compute.GlobalVmExtensionPolicyExtensionPolicyArgs{
/// 					ExtensionName: pulumi.String("ops-agent"),
/// 					PinnedVersion: pulumi.String("2.66.0"),
/// 				},
/// 			},
/// 			InstanceSelectors: compute.GlobalVmExtensionPolicyInstanceSelectorArray{
/// 				&compute.GlobalVmExtensionPolicyInstanceSelectorArgs{
/// 					LabelSelector: &compute.GlobalVmExtensionPolicyInstanceSelectorLabelSelectorArgs{
/// 						InclusionLabels: pulumi.StringMap{
/// 							"env": pulumi.String("test"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			RolloutOperation: &compute.GlobalVmExtensionPolicyRolloutOperationArgs{
/// 				RolloutInput: &compute.GlobalVmExtensionPolicyRolloutOperationRolloutInputArgs{
/// 					PredefinedRolloutPlan: pulumi.String("FAST_ROLLOUT"),
/// 				},
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
/// resource "gcp_compute_globalvmextensionpolicy" "ops_agent_policy" {
///   name        = "global-ops-agent-vme-policy-_74391"
///   description = "A basic global VM extension policy"
///   priority    = 10
///   extension_policies {
///     extension_name = "ops-agent"
///     pinned_version = "2.66.0"
///   }
///   instance_selectors {
///     label_selector = {
///       inclusion_labels = {
///         "env" = "test"
///       }
///     }
///   }
///   rollout_operation = {
///     rollout_input = {
///       predefined_rollout_plan = "FAST_ROLLOUT"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.GlobalVmExtensionPolicy;
/// import com.pulumi.gcp.compute.GlobalVmExtensionPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.GlobalVmExtensionPolicyExtensionPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.GlobalVmExtensionPolicyInstanceSelectorArgs;
/// import com.pulumi.gcp.compute.inputs.GlobalVmExtensionPolicyInstanceSelectorLabelSelectorArgs;
/// import com.pulumi.gcp.compute.inputs.GlobalVmExtensionPolicyRolloutOperationArgs;
/// import com.pulumi.gcp.compute.inputs.GlobalVmExtensionPolicyRolloutOperationRolloutInputArgs;
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
///         var opsAgentPolicy = new GlobalVmExtensionPolicy("opsAgentPolicy", GlobalVmExtensionPolicyArgs.builder()
///             .name("global-ops-agent-vme-policy-_74391")
///             .description("A basic global VM extension policy")
///             .priority(10)
///             .extensionPolicies(GlobalVmExtensionPolicyExtensionPolicyArgs.builder()
///                 .extensionName("ops-agent")
///                 .pinnedVersion("2.66.0")
///                 .build())
///             .instanceSelectors(GlobalVmExtensionPolicyInstanceSelectorArgs.builder()
///                 .labelSelector(GlobalVmExtensionPolicyInstanceSelectorLabelSelectorArgs.builder()
///                     .inclusionLabels(Map.of("env", "test"))
///                     .build())
///                 .build())
///             .rolloutOperation(GlobalVmExtensionPolicyRolloutOperationArgs.builder()
///                 .rolloutInput(GlobalVmExtensionPolicyRolloutOperationRolloutInputArgs.builder()
///                     .predefinedRolloutPlan("FAST_ROLLOUT")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   opsAgentPolicy:
///     type: gcp:compute:GlobalVmExtensionPolicy
///     name: ops_agent_policy
///     properties:
///       name: global-ops-agent-vme-policy-_74391
///       description: A basic global VM extension policy
///       priority: 10
///       extensionPolicies:
///         - extensionName: ops-agent
///           pinnedVersion: 2.66.0
///       instanceSelectors:
///         - labelSelector:
///             inclusionLabels:
///               env: test
///       rolloutOperation:
///         rolloutInput:
///           predefinedRolloutPlan: FAST_ROLLOUT
/// ```
///
/// ### Compute Global Vm Extension Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const opsAgentPolicy = new gcp.compute.GlobalVmExtensionPolicy("ops_agent_policy", {
///     name: "global-ops-agent-vme-policy-_16511",
///     description: "A basic global VM extension policy",
///     priority: 10,
///     extensionPolicies: [{
///         extensionName: "ops-agent",
///         pinnedVersion: "2.66.0",
///     }],
///     instanceSelectors: [{
///         labelSelector: {
///             inclusionLabels: {
///                 env: "test",
///             },
///         },
///     }],
///     rolloutOperation: {
///         rolloutInput: {
///             predefinedRolloutPlan: "FAST_ROLLOUT",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ops_agent_policy = gcp.compute.GlobalVmExtensionPolicy("ops_agent_policy",
///     name="global-ops-agent-vme-policy-_16511",
///     description="A basic global VM extension policy",
///     priority=10,
///     extension_policies=[{
///         "extension_name": "ops-agent",
///         "pinned_version": "2.66.0",
///     }],
///     instance_selectors=[{
///         "label_selector": {
///             "inclusion_labels": {
///                 "env": "test",
///             },
///         },
///     }],
///     rollout_operation={
///         "rollout_input": {
///             "predefined_rollout_plan": "FAST_ROLLOUT",
///         },
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
///     var opsAgentPolicy = new Gcp.Compute.GlobalVmExtensionPolicy("ops_agent_policy", new()
///     {
///         Name = "global-ops-agent-vme-policy-_16511",
///         Description = "A basic global VM extension policy",
///         Priority = 10,
///         ExtensionPolicies = new[]
///         {
///             new Gcp.Compute.Inputs.GlobalVmExtensionPolicyExtensionPolicyArgs
///             {
///                 ExtensionName = "ops-agent",
///                 PinnedVersion = "2.66.0",
///             },
///         },
///         InstanceSelectors = new[]
///         {
///             new Gcp.Compute.Inputs.GlobalVmExtensionPolicyInstanceSelectorArgs
///             {
///                 LabelSelector = new Gcp.Compute.Inputs.GlobalVmExtensionPolicyInstanceSelectorLabelSelectorArgs
///                 {
///                     InclusionLabels =
///                     {
///                         { "env", "test" },
///                     },
///                 },
///             },
///         },
///         RolloutOperation = new Gcp.Compute.Inputs.GlobalVmExtensionPolicyRolloutOperationArgs
///         {
///             RolloutInput = new Gcp.Compute.Inputs.GlobalVmExtensionPolicyRolloutOperationRolloutInputArgs
///             {
///                 PredefinedRolloutPlan = "FAST_ROLLOUT",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewGlobalVmExtensionPolicy(ctx, "ops_agent_policy", &compute.GlobalVmExtensionPolicyArgs{
/// 			Name:        pulumi.String("global-ops-agent-vme-policy-_16511"),
/// 			Description: pulumi.String("A basic global VM extension policy"),
/// 			Priority:    pulumi.Int(10),
/// 			ExtensionPolicies: compute.GlobalVmExtensionPolicyExtensionPolicyArray{
/// 				&compute.GlobalVmExtensionPolicyExtensionPolicyArgs{
/// 					ExtensionName: pulumi.String("ops-agent"),
/// 					PinnedVersion: pulumi.String("2.66.0"),
/// 				},
/// 			},
/// 			InstanceSelectors: compute.GlobalVmExtensionPolicyInstanceSelectorArray{
/// 				&compute.GlobalVmExtensionPolicyInstanceSelectorArgs{
/// 					LabelSelector: &compute.GlobalVmExtensionPolicyInstanceSelectorLabelSelectorArgs{
/// 						InclusionLabels: pulumi.StringMap{
/// 							"env": pulumi.String("test"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			RolloutOperation: &compute.GlobalVmExtensionPolicyRolloutOperationArgs{
/// 				RolloutInput: &compute.GlobalVmExtensionPolicyRolloutOperationRolloutInputArgs{
/// 					PredefinedRolloutPlan: pulumi.String("FAST_ROLLOUT"),
/// 				},
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
/// resource "gcp_compute_globalvmextensionpolicy" "ops_agent_policy" {
///   name        = "global-ops-agent-vme-policy-_16511"
///   description = "A basic global VM extension policy"
///   priority    = 10
///   extension_policies {
///     extension_name = "ops-agent"
///     pinned_version = "2.66.0"
///   }
///   instance_selectors {
///     label_selector = {
///       inclusion_labels = {
///         "env" = "test"
///       }
///     }
///   }
///   rollout_operation = {
///     rollout_input = {
///       predefined_rollout_plan = "FAST_ROLLOUT"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.GlobalVmExtensionPolicy;
/// import com.pulumi.gcp.compute.GlobalVmExtensionPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.GlobalVmExtensionPolicyExtensionPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.GlobalVmExtensionPolicyInstanceSelectorArgs;
/// import com.pulumi.gcp.compute.inputs.GlobalVmExtensionPolicyInstanceSelectorLabelSelectorArgs;
/// import com.pulumi.gcp.compute.inputs.GlobalVmExtensionPolicyRolloutOperationArgs;
/// import com.pulumi.gcp.compute.inputs.GlobalVmExtensionPolicyRolloutOperationRolloutInputArgs;
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
///         var opsAgentPolicy = new GlobalVmExtensionPolicy("opsAgentPolicy", GlobalVmExtensionPolicyArgs.builder()
///             .name("global-ops-agent-vme-policy-_16511")
///             .description("A basic global VM extension policy")
///             .priority(10)
///             .extensionPolicies(GlobalVmExtensionPolicyExtensionPolicyArgs.builder()
///                 .extensionName("ops-agent")
///                 .pinnedVersion("2.66.0")
///                 .build())
///             .instanceSelectors(GlobalVmExtensionPolicyInstanceSelectorArgs.builder()
///                 .labelSelector(GlobalVmExtensionPolicyInstanceSelectorLabelSelectorArgs.builder()
///                     .inclusionLabels(Map.of("env", "test"))
///                     .build())
///                 .build())
///             .rolloutOperation(GlobalVmExtensionPolicyRolloutOperationArgs.builder()
///                 .rolloutInput(GlobalVmExtensionPolicyRolloutOperationRolloutInputArgs.builder()
///                     .predefinedRolloutPlan("FAST_ROLLOUT")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   opsAgentPolicy:
///     type: gcp:compute:GlobalVmExtensionPolicy
///     name: ops_agent_policy
///     properties:
///       name: global-ops-agent-vme-policy-_16511
///       description: A basic global VM extension policy
///       priority: 10
///       extensionPolicies:
///         - extensionName: ops-agent
///           pinnedVersion: 2.66.0
///       instanceSelectors:
///         - labelSelector:
///             inclusionLabels:
///               env: test
///       rolloutOperation:
///         rolloutInput:
///           predefinedRolloutPlan: FAST_ROLLOUT
/// ```
///
/// ### Compute Global Vm Extension Policy Custom Rollout
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const customRollout = new gcp.compute.RolloutPlan("custom_rollout", {
///     name: "custom-rollout-plan-_9106",
///     locationScope: "ZONAL",
///     waves: [{
///         displayName: "wave-1",
///         selectors: [{
///             locationSelector: {
///                 includedLocations: [
///                     "us-central1-a",
///                     "us-west1-a",
///                 ],
///             },
///         }],
///         validation: {
///             type: "time",
///             timeBasedValidationMetadata: {
///                 waitDuration: "0s",
///             },
///         },
///         orchestrationOptions: {
///             maxConcurrentResourcesPerLocation: 10,
///             maxConcurrentLocations: 10,
///         },
///     }],
/// });
/// const opsAgentPolicy = new gcp.compute.GlobalVmExtensionPolicy("ops_agent_policy", {
///     name: "global-ops-agent-vme-policy-_8493",
///     description: "A global VM extension policy with a custom rollout plan",
///     priority: 10,
///     extensionPolicies: [{
///         extensionName: "ops-agent",
///         pinnedVersion: "2.66.0",
///     }],
///     instanceSelectors: [{
///         labelSelector: {
///             inclusionLabels: {
///                 env: "test",
///             },
///         },
///     }],
///     rolloutOperation: {
///         rolloutInput: {
///             name: pulumi.all([project, customRollout.name]).apply(([project, name]) => `projects/${project.number}/locations/global/rolloutPlans/${name}`),
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// custom_rollout = gcp.compute.RolloutPlan("custom_rollout",
///     name="custom-rollout-plan-_9106",
///     location_scope="ZONAL",
///     waves=[{
///         "display_name": "wave-1",
///         "selectors": [{
///             "location_selector": {
///                 "included_locations": [
///                     "us-central1-a",
///                     "us-west1-a",
///                 ],
///             },
///         }],
///         "validation": {
///             "type": "time",
///             "time_based_validation_metadata": {
///                 "wait_duration": "0s",
///             },
///         },
///         "orchestration_options": {
///             "max_concurrent_resources_per_location": 10,
///             "max_concurrent_locations": 10,
///         },
///     }])
/// ops_agent_policy = gcp.compute.GlobalVmExtensionPolicy("ops_agent_policy",
///     name="global-ops-agent-vme-policy-_8493",
///     description="A global VM extension policy with a custom rollout plan",
///     priority=10,
///     extension_policies=[{
///         "extension_name": "ops-agent",
///         "pinned_version": "2.66.0",
///     }],
///     instance_selectors=[{
///         "label_selector": {
///             "inclusion_labels": {
///                 "env": "test",
///             },
///         },
///     }],
///     rollout_operation={
///         "rollout_input": {
///             "name": custom_rollout.name.apply(lambda name: f"projects/{project.number}/locations/global/rolloutPlans/{name}"),
///         },
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var customRollout = new Gcp.Compute.RolloutPlan("custom_rollout", new()
///     {
///         Name = "custom-rollout-plan-_9106",
///         LocationScope = "ZONAL",
///         Waves = new[]
///         {
///             new Gcp.Compute.Inputs.RolloutPlanWaveArgs
///             {
///                 DisplayName = "wave-1",
///                 Selectors = new[]
///                 {
///                     new Gcp.Compute.Inputs.RolloutPlanWaveSelectorArgs
///                     {
///                         LocationSelector = new Gcp.Compute.Inputs.RolloutPlanWaveSelectorLocationSelectorArgs
///                         {
///                             IncludedLocations = new[]
///                             {
///                                 "us-central1-a",
///                                 "us-west1-a",
///                             },
///                         },
///                     },
///                 },
///                 Validation = new Gcp.Compute.Inputs.RolloutPlanWaveValidationArgs
///                 {
///                     Type = "time",
///                     TimeBasedValidationMetadata = new Gcp.Compute.Inputs.RolloutPlanWaveValidationTimeBasedValidationMetadataArgs
///                     {
///                         WaitDuration = "0s",
///                     },
///                 },
///                 OrchestrationOptions = new Gcp.Compute.Inputs.RolloutPlanWaveOrchestrationOptionsArgs
///                 {
///                     MaxConcurrentResourcesPerLocation = 10,
///                     MaxConcurrentLocations = 10,
///                 },
///             },
///         },
///     });
///
///     var opsAgentPolicy = new Gcp.Compute.GlobalVmExtensionPolicy("ops_agent_policy", new()
///     {
///         Name = "global-ops-agent-vme-policy-_8493",
///         Description = "A global VM extension policy with a custom rollout plan",
///         Priority = 10,
///         ExtensionPolicies = new[]
///         {
///             new Gcp.Compute.Inputs.GlobalVmExtensionPolicyExtensionPolicyArgs
///             {
///                 ExtensionName = "ops-agent",
///                 PinnedVersion = "2.66.0",
///             },
///         },
///         InstanceSelectors = new[]
///         {
///             new Gcp.Compute.Inputs.GlobalVmExtensionPolicyInstanceSelectorArgs
///             {
///                 LabelSelector = new Gcp.Compute.Inputs.GlobalVmExtensionPolicyInstanceSelectorLabelSelectorArgs
///                 {
///                     InclusionLabels =
///                     {
///                         { "env", "test" },
///                     },
///                 },
///             },
///         },
///         RolloutOperation = new Gcp.Compute.Inputs.GlobalVmExtensionPolicyRolloutOperationArgs
///         {
///             RolloutInput = new Gcp.Compute.Inputs.GlobalVmExtensionPolicyRolloutOperationRolloutInputArgs
///             {
///                 Name = Output.Tuple(project, customRollout.Name).Apply(values =>
///                 {
///                     var project = values.Item1;
///                     var name = values.Item2;
///                     return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/global/rolloutPlans/{name}";
///                 }),
///             },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		customRollout, err := compute.NewRolloutPlan(ctx, "custom_rollout", &compute.RolloutPlanArgs{
/// 			Name:          pulumi.String("custom-rollout-plan-_9106"),
/// 			LocationScope: pulumi.String("ZONAL"),
/// 			Waves: compute.RolloutPlanWaveArray{
/// 				&compute.RolloutPlanWaveArgs{
/// 					DisplayName: pulumi.String("wave-1"),
/// 					Selectors: compute.RolloutPlanWaveSelectorArray{
/// 						&compute.RolloutPlanWaveSelectorArgs{
/// 							LocationSelector: &compute.RolloutPlanWaveSelectorLocationSelectorArgs{
/// 								IncludedLocations: pulumi.StringArray{
/// 									pulumi.String("us-central1-a"),
/// 									pulumi.String("us-west1-a"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Validation: &compute.RolloutPlanWaveValidationArgs{
/// 						Type: pulumi.String("time"),
/// 						TimeBasedValidationMetadata: &compute.RolloutPlanWaveValidationTimeBasedValidationMetadataArgs{
/// 							WaitDuration: pulumi.String("0s"),
/// 						},
/// 					},
/// 					OrchestrationOptions: &compute.RolloutPlanWaveOrchestrationOptionsArgs{
/// 						MaxConcurrentResourcesPerLocation: pulumi.Int(10),
/// 						MaxConcurrentLocations:            pulumi.Int(10),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewGlobalVmExtensionPolicy(ctx, "ops_agent_policy", &compute.GlobalVmExtensionPolicyArgs{
/// 			Name:        pulumi.String("global-ops-agent-vme-policy-_8493"),
/// 			Description: pulumi.String("A global VM extension policy with a custom rollout plan"),
/// 			Priority:    pulumi.Int(10),
/// 			ExtensionPolicies: compute.GlobalVmExtensionPolicyExtensionPolicyArray{
/// 				&compute.GlobalVmExtensionPolicyExtensionPolicyArgs{
/// 					ExtensionName: pulumi.String("ops-agent"),
/// 					PinnedVersion: pulumi.String("2.66.0"),
/// 				},
/// 			},
/// 			InstanceSelectors: compute.GlobalVmExtensionPolicyInstanceSelectorArray{
/// 				&compute.GlobalVmExtensionPolicyInstanceSelectorArgs{
/// 					LabelSelector: &compute.GlobalVmExtensionPolicyInstanceSelectorLabelSelectorArgs{
/// 						InclusionLabels: pulumi.StringMap{
/// 							"env": pulumi.String("test"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			RolloutOperation: &compute.GlobalVmExtensionPolicyRolloutOperationArgs{
/// 				RolloutInput: &compute.GlobalVmExtensionPolicyRolloutOperationRolloutInputArgs{
/// 					Name: customRollout.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("projects/%v/locations/global/rolloutPlans/%v", project.Number, name), nil
/// 					}).(pulumi.StringOutput),
/// 				},
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_compute_globalvmextensionpolicy" "ops_agent_policy" {
///   name        = "global-ops-agent-vme-policy-_8493"
///   description = "A global VM extension policy with a custom rollout plan"
///   priority    = 10
///   extension_policies {
///     extension_name = "ops-agent"
///     pinned_version = "2.66.0"
///   }
///   instance_selectors {
///     label_selector = {
///       inclusion_labels = {
///         "env" = "test"
///       }
///     }
///   }
///   rollout_operation = {
///     rollout_input = {
///       name ="projects/${data.gcp_organizations_getproject.project.number}/locations/global/rolloutPlans/${gcp_compute_rolloutplan.custom_rollout.name}"
///     }
///   }
/// }
/// resource "gcp_compute_rolloutplan" "custom_rollout" {
///   name           = "custom-rollout-plan-_9106"
///   location_scope = "ZONAL"
///   waves {
///     display_name = "wave-1"
///     selectors {
///       location_selector = {
///         included_locations = ["us-central1-a", "us-west1-a"]
///       }
///     }
///     validation = {
///       type = "time"
///       time_based_validation_metadata = {
///         wait_duration = "0s"
///       }
///     }
///     orchestration_options = {
///       max_concurrent_resources_per_location = 10
///       max_concurrent_locations              = 10
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.compute.RolloutPlan;
/// import com.pulumi.gcp.compute.RolloutPlanArgs;
/// import com.pulumi.gcp.compute.inputs.RolloutPlanWaveArgs;
/// import com.pulumi.gcp.compute.inputs.RolloutPlanWaveSelectorArgs;
/// import com.pulumi.gcp.compute.inputs.RolloutPlanWaveSelectorLocationSelectorArgs;
/// import com.pulumi.gcp.compute.inputs.RolloutPlanWaveValidationArgs;
/// import com.pulumi.gcp.compute.inputs.RolloutPlanWaveValidationTimeBasedValidationMetadataArgs;
/// import com.pulumi.gcp.compute.inputs.RolloutPlanWaveOrchestrationOptionsArgs;
/// import com.pulumi.gcp.compute.GlobalVmExtensionPolicy;
/// import com.pulumi.gcp.compute.GlobalVmExtensionPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.GlobalVmExtensionPolicyExtensionPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.GlobalVmExtensionPolicyInstanceSelectorArgs;
/// import com.pulumi.gcp.compute.inputs.GlobalVmExtensionPolicyInstanceSelectorLabelSelectorArgs;
/// import com.pulumi.gcp.compute.inputs.GlobalVmExtensionPolicyRolloutOperationArgs;
/// import com.pulumi.gcp.compute.inputs.GlobalVmExtensionPolicyRolloutOperationRolloutInputArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var customRollout = new RolloutPlan("customRollout", RolloutPlanArgs.builder()
///             .name("custom-rollout-plan-_9106")
///             .locationScope("ZONAL")
///             .waves(RolloutPlanWaveArgs.builder()
///                 .displayName("wave-1")
///                 .selectors(RolloutPlanWaveSelectorArgs.builder()
///                     .locationSelector(RolloutPlanWaveSelectorLocationSelectorArgs.builder()
///                         .includedLocations(
///                             "us-central1-a",
///                             "us-west1-a")
///                         .build())
///                     .build())
///                 .validation(RolloutPlanWaveValidationArgs.builder()
///                     .type("time")
///                     .timeBasedValidationMetadata(RolloutPlanWaveValidationTimeBasedValidationMetadataArgs.builder()
///                         .waitDuration("0s")
///                         .build())
///                     .build())
///                 .orchestrationOptions(RolloutPlanWaveOrchestrationOptionsArgs.builder()
///                     .maxConcurrentResourcesPerLocation(10)
///                     .maxConcurrentLocations(10)
///                     .build())
///                 .build())
///             .build());
///
///         var opsAgentPolicy = new GlobalVmExtensionPolicy("opsAgentPolicy", GlobalVmExtensionPolicyArgs.builder()
///             .name("global-ops-agent-vme-policy-_8493")
///             .description("A global VM extension policy with a custom rollout plan")
///             .priority(10)
///             .extensionPolicies(GlobalVmExtensionPolicyExtensionPolicyArgs.builder()
///                 .extensionName("ops-agent")
///                 .pinnedVersion("2.66.0")
///                 .build())
///             .instanceSelectors(GlobalVmExtensionPolicyInstanceSelectorArgs.builder()
///                 .labelSelector(GlobalVmExtensionPolicyInstanceSelectorLabelSelectorArgs.builder()
///                     .inclusionLabels(Map.of("env", "test"))
///                     .build())
///                 .build())
///             .rolloutOperation(GlobalVmExtensionPolicyRolloutOperationArgs.builder()
///                 .rolloutInput(GlobalVmExtensionPolicyRolloutOperationRolloutInputArgs.builder()
///                     .name(customRollout.name().applyValue(_name -> String.format("projects/%s/locations/global/rolloutPlans/%s", project.number(),_name)))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   opsAgentPolicy:
///     type: gcp:compute:GlobalVmExtensionPolicy
///     name: ops_agent_policy
///     properties:
///       name: global-ops-agent-vme-policy-_8493
///       description: A global VM extension policy with a custom rollout plan
///       priority: 10
///       extensionPolicies:
///         - extensionName: ops-agent
///           pinnedVersion: 2.66.0
///       instanceSelectors:
///         - labelSelector:
///             inclusionLabels:
///               env: test
///       rolloutOperation:
///         rolloutInput:
///           name: projects/${project.number}/locations/global/rolloutPlans/${customRollout.name}
///   customRollout:
///     type: gcp:compute:RolloutPlan
///     name: custom_rollout
///     properties:
///       name: custom-rollout-plan-_9106
///       locationScope: ZONAL
///       waves:
///         - displayName: wave-1
///           selectors:
///             - locationSelector:
///                 includedLocations:
///                   - us-central1-a
///                   - us-west1-a
///           validation:
///             type: time
///             timeBasedValidationMetadata:
///               waitDuration: 0s
///           orchestrationOptions:
///             maxConcurrentResourcesPerLocation: 10
///             maxConcurrentLocations: 10
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// GlobalVmExtensionPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/vmExtensionPolicies/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, GlobalVmExtensionPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/globalVmExtensionPolicy:GlobalVmExtensionPolicy default projects/{{project}}/global/vmExtensionPolicies/{{name}}
/// $ pulumi import gcp:compute/globalVmExtensionPolicy:GlobalVmExtensionPolicy default {{project}}/{{name}}
/// $ pulumi import gcp:compute/globalVmExtensionPolicy:GlobalVmExtensionPolicy default {{name}}
/// ```
class GlobalVmExtensionPolicy extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// Map from extension (eg: "cloudops") to its policy configuration.
  /// Structure is documented below.
  late final pulumi.Output<List<GlobalVmExtensionPolicyExtensionPolicy>> extensionPolicies;
  /// Selector to target VMs for a policy.
  /// Structure is documented below.
  late final pulumi.Output<List<GlobalVmExtensionPolicyInstanceSelector>?> instanceSelectors;
  /// Type of the resource.
  late final pulumi.Output<String> kind;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long and match the regular expression '^a-z?$' to comply with RFC1035.
  late final pulumi.Output<String> name;
  /// Used to resolve conflicts when multiple policies are active. Defaults to 0.
  late final pulumi.Output<int> priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Represents the rollout operation.
  /// Structure is documented below.
  late final pulumi.Output<GlobalVmExtensionPolicyRolloutOperation> rolloutOperation;
  /// The scoped resource status.
  late final pulumi.Output<String> scopedResourceStatus;
  /// Server-defined fully-qualified URL for this resource.
  late final pulumi.Output<String> selfLink;
  /// Update timestamp in RFC3339 text format.
  late final pulumi.Output<String> updateTimestamp;

  /// Creates a new [GlobalVmExtensionPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalVmExtensionPolicy]. {@macro pulumi_compute_global_vm_extension_policy_global_vm_extension_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalVmExtensionPolicy(
    String name, {
    GlobalVmExtensionPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/globalVmExtensionPolicy:GlobalVmExtensionPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    extensionPolicies = registerOutput<List<GlobalVmExtensionPolicyExtensionPolicy>>('extensionPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GlobalVmExtensionPolicyExtensionPolicy>(guardedValue, (value) => GlobalVmExtensionPolicyExtensionPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    instanceSelectors = registerOutput<List<GlobalVmExtensionPolicyInstanceSelector>?>('instanceSelectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GlobalVmExtensionPolicyInstanceSelector>(guardedValue, (value) => GlobalVmExtensionPolicyInstanceSelector.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    rolloutOperation = registerOutput<GlobalVmExtensionPolicyRolloutOperation>('rolloutOperation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalVmExtensionPolicyRolloutOperation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scopedResourceStatus = registerOutput<String>('scopedResourceStatus');
    selfLink = registerOutput<String>('selfLink');
    updateTimestamp = registerOutput<String>('updateTimestamp');
  }

  /// Gets an existing [GlobalVmExtensionPolicy] resource's state with the given [name] and [id].
  static GlobalVmExtensionPolicy get(
    String name,
    pulumi.Input<String> id, {
    GlobalVmExtensionPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GlobalVmExtensionPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GlobalVmExtensionPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/globalVmExtensionPolicy:GlobalVmExtensionPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    extensionPolicies = registerOutput<List<GlobalVmExtensionPolicyExtensionPolicy>>('extensionPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GlobalVmExtensionPolicyExtensionPolicy>(guardedValue, (value) => GlobalVmExtensionPolicyExtensionPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    instanceSelectors = registerOutput<List<GlobalVmExtensionPolicyInstanceSelector>?>('instanceSelectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GlobalVmExtensionPolicyInstanceSelector>(guardedValue, (value) => GlobalVmExtensionPolicyInstanceSelector.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    rolloutOperation = registerOutput<GlobalVmExtensionPolicyRolloutOperation>('rolloutOperation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalVmExtensionPolicyRolloutOperation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scopedResourceStatus = registerOutput<String>('scopedResourceStatus');
    selfLink = registerOutput<String>('selfLink');
    updateTimestamp = registerOutput<String>('updateTimestamp');
  }

  /// Creates a typed reference to an existing [GlobalVmExtensionPolicy] resource.
  GlobalVmExtensionPolicy.reference(String urn)
    : super(
        'gcp:compute/globalVmExtensionPolicy:GlobalVmExtensionPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    extensionPolicies = registerOutput<List<GlobalVmExtensionPolicyExtensionPolicy>>('extensionPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GlobalVmExtensionPolicyExtensionPolicy>(guardedValue, (value) => GlobalVmExtensionPolicyExtensionPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    instanceSelectors = registerOutput<List<GlobalVmExtensionPolicyInstanceSelector>?>('instanceSelectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GlobalVmExtensionPolicyInstanceSelector>(guardedValue, (value) => GlobalVmExtensionPolicyInstanceSelector.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    rolloutOperation = registerOutput<GlobalVmExtensionPolicyRolloutOperation>('rolloutOperation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalVmExtensionPolicyRolloutOperation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scopedResourceStatus = registerOutput<String>('scopedResourceStatus');
    selfLink = registerOutput<String>('selfLink');
    updateTimestamp = registerOutput<String>('updateTimestamp');
  }
}
