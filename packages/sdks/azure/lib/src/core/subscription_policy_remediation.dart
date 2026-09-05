import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_policy_remediation_args.dart';
import 'subscription_policy_remediation_state.dart';

/// Manages an Azure Subscription Policy Remediation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.core.getSubscription({});
/// const exampleGetPolicyDefintion = azure.policy.getPolicyDefintion({
///     displayName: "Allowed resource types",
/// });
/// const exampleSubscriptionPolicyAssignment = new azure.core.SubscriptionPolicyAssignment("example", {
///     name: "exampleAssignment",
///     subscriptionId: example.then(example => example.id),
///     policyDefinitionId: exampleGetPolicyDefintion.then(exampleGetPolicyDefintion => exampleGetPolicyDefintion.id),
///     parameters: JSON.stringify({
///         listOfAllowedLocations: {
///             value: [
///                 "West Europe",
///                 "East US",
///             ],
///         },
///     }),
/// });
/// const exampleSubscriptionPolicyRemediation = new azure.core.SubscriptionPolicyRemediation("example", {
///     name: "example",
///     subscriptionId: example.then(example => example.id),
///     policyAssignmentId: exampleSubscriptionPolicyAssignment.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_azure as azure
///
/// example = azure.core.get_subscription()
/// example_get_policy_defintion = azure.policy.get_policy_defintion(display_name="Allowed resource types")
/// example_subscription_policy_assignment = azure.core.SubscriptionPolicyAssignment("example",
///     name="exampleAssignment",
///     subscription_id=example.id,
///     policy_definition_id=example_get_policy_defintion.id,
///     parameters=json.dumps({
///         "listOfAllowedLocations": {
///             "value": [
///                 "West Europe",
///                 "East US",
///             ],
///         },
///     }))
/// example_subscription_policy_remediation = azure.core.SubscriptionPolicyRemediation("example",
///     name="example",
///     subscription_id=example.id,
///     policy_assignment_id=example_subscription_policy_assignment.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Core.GetSubscription.Invoke();
///
///     var exampleGetPolicyDefintion = Azure.Policy.GetPolicyDefintion.Invoke(new()
///     {
///         DisplayName = "Allowed resource types",
///     });
///
///     var exampleSubscriptionPolicyAssignment = new Azure.Core.SubscriptionPolicyAssignment("example", new()
///     {
///         Name = "exampleAssignment",
///         SubscriptionId = example.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         PolicyDefinitionId = exampleGetPolicyDefintion.Apply(getPolicyDefintionResult => getPolicyDefintionResult.Id),
///         Parameters = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["listOfAllowedLocations"] = new Dictionary<string, object?>
///             {
///                 ["value"] = new[]
///                 {
///                     "West Europe",
///                     "East US",
///                 },
///             },
///         }),
///     });
///
///     var exampleSubscriptionPolicyRemediation = new Azure.Core.SubscriptionPolicyRemediation("example", new()
///     {
///         Name = "example",
///         SubscriptionId = example.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         PolicyAssignmentId = exampleSubscriptionPolicyAssignment.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/policy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetPolicyDefintion, err := policy.GetPolicyDefintion(ctx, &policy.GetPolicyDefintionArgs{
/// 			DisplayName: pulumi.StringRef("Allowed resource types"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]map[string][]string{
/// 			"listOfAllowedLocations": map[string][]string{
/// 				"value": []string{
/// 					"West Europe",
/// 					"East US",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		exampleSubscriptionPolicyAssignment, err := core.NewSubscriptionPolicyAssignment(ctx, "example", &core.SubscriptionPolicyAssignmentArgs{
/// 			Name:               pulumi.String("exampleAssignment"),
/// 			SubscriptionId:     pulumi.String(example.Id),
/// 			PolicyDefinitionId: pulumi.String(exampleGetPolicyDefintion.Id),
/// 			Parameters:         pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.NewSubscriptionPolicyRemediation(ctx, "example", &core.SubscriptionPolicyRemediationArgs{
/// 			Name:               pulumi.String("example"),
/// 			SubscriptionId:     pulumi.String(example.Id),
/// 			PolicyAssignmentId: exampleSubscriptionPolicyAssignment.ID().ToIDOutput().ToStringOutput(),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_core_getsubscription" "example" {
/// }
/// data "azure_policy_getpolicydefintion" "exampleGetPolicyDefintion" {
///   display_name = "Allowed resource types"
/// }
///
/// resource "azure_core_subscriptionpolicyassignment" "example" {
///   name                 = "exampleAssignment"
///   subscription_id      = data.azure_core_getsubscription.example.id
///   policy_definition_id = data.azure_policy_getpolicydefintion.exampleGetPolicyDefintion.id
///   parameters = jsonencode({
///     "listOfAllowedLocations" = {
///       "value" = ["West Europe", "East US"]
///     }
///   })
/// }
/// resource "azure_core_subscriptionpolicyremediation" "example" {
///   name                 = "example"
///   subscription_id      = data.azure_core_getsubscription.example.id
///   policy_assignment_id = azure_core_subscriptionpolicyassignment.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.policy.PolicyFunctions;
/// import com.pulumi.azure.policy.inputs.GetPolicyDefintionArgs;
/// import com.pulumi.azure.core.SubscriptionPolicyAssignment;
/// import com.pulumi.azure.core.SubscriptionPolicyAssignmentArgs;
/// import com.pulumi.azure.core.SubscriptionPolicyRemediation;
/// import com.pulumi.azure.core.SubscriptionPolicyRemediationArgs;
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
///         final var example = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         final var exampleGetPolicyDefintion = PolicyFunctions.getPolicyDefintion(GetPolicyDefintionArgs.builder()
///             .displayName("Allowed resource types")
///             .build());
///
///         var exampleSubscriptionPolicyAssignment = new SubscriptionPolicyAssignment("exampleSubscriptionPolicyAssignment", SubscriptionPolicyAssignmentArgs.builder()
///             .name("exampleAssignment")
///             .subscriptionId(example.id())
///             .policyDefinitionId(exampleGetPolicyDefintion.id())
///             .parameters(serializeJson(
///                 jsonObject(
///                     jsonProperty("listOfAllowedLocations", jsonObject(
///                         jsonProperty("value", jsonArray(
///                             "West Europe",
///                             "East US"
///                         ))
///                     ))
///                 )))
///             .build());
///
///         var exampleSubscriptionPolicyRemediation = new SubscriptionPolicyRemediation("exampleSubscriptionPolicyRemediation", SubscriptionPolicyRemediationArgs.builder()
///             .name("example")
///             .subscriptionId(example.id())
///             .policyAssignmentId(exampleSubscriptionPolicyAssignment.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSubscriptionPolicyAssignment:
///     type: azure:core:SubscriptionPolicyAssignment
///     name: example
///     properties:
///       name: exampleAssignment
///       subscriptionId: ${example.id}
///       policyDefinitionId: ${exampleGetPolicyDefintion.id}
///       parameters:
///         fn::toJSON:
///           listOfAllowedLocations:
///             value:
///               - West Europe
///               - East US
///   exampleSubscriptionPolicyRemediation:
///     type: azure:core:SubscriptionPolicyRemediation
///     name: example
///     properties:
///       name: example
///       subscriptionId: ${example.id}
///       policyAssignmentId: ${exampleSubscriptionPolicyAssignment.id}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
///   exampleGetPolicyDefintion:
///     fn::invoke:
///       function: azure:policy:getPolicyDefintion
///       arguments:
///         displayName: Allowed resource types
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.PolicyInsights` - 2021-10-01
///
/// ## Import
///
/// Policy Remediations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:core/subscriptionPolicyRemediation:SubscriptionPolicyRemediation example /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.PolicyInsights/remediations/remediation1
/// ```
class SubscriptionPolicyRemediation extends pulumi.CustomResource {
  /// A number between 0.0 to 1.0 representing the percentage failure threshold. The remediation will fail if the percentage of failed remediation operations (i.e. failed deployments) exceeds this threshold.
  late final pulumi.Output<double?> failurePercentage;
  /// A list of the resource locations that will be remediated.
  late final pulumi.Output<List<String>?> locationFilters;
  /// The name of the Policy Remediation. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Determines how many resources to remediate at any given time. Can be used to increase or reduce the pace of the remediation. If not provided, the default parallel deployments value is used.
  late final pulumi.Output<int?> parallelDeployments;
  /// The ID of the Policy Assignment that should be remediated.
  late final pulumi.Output<String> policyAssignmentId;
  /// The unique ID for the policy definition reference within the policy set definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition.
  late final pulumi.Output<String?> policyDefinitionReferenceId;
  /// Determines the max number of resources that can be remediated by the remediation job. If not provided, the default resource count is used.
  late final pulumi.Output<int?> resourceCount;
  /// The way that resources to remediate are discovered. Possible values are `ExistingNonCompliant`, `ReEvaluateCompliance`. Defaults to `ExistingNonCompliant`.
  late final pulumi.Output<String?> resourceDiscoveryMode;
  /// The Subscription ID at which the Policy Remediation should be applied. Changing this forces a new resource to be created.
  late final pulumi.Output<String> subscriptionId;

  /// Creates a new [SubscriptionPolicyRemediation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubscriptionPolicyRemediation]. {@macro pulumi_core_subscription_policy_remediation_subscription_policy_remediation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubscriptionPolicyRemediation(
    String name, {
    SubscriptionPolicyRemediationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/subscriptionPolicyRemediation:SubscriptionPolicyRemediation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    failurePercentage = registerOutput<double?>('failurePercentage');
    locationFilters = registerOutput<List<String>?>('locationFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    parallelDeployments = registerOutput<int?>('parallelDeployments');
    policyAssignmentId = registerOutput<String>('policyAssignmentId');
    policyDefinitionReferenceId = registerOutput<String?>('policyDefinitionReferenceId');
    resourceCount = registerOutput<int?>('resourceCount');
    resourceDiscoveryMode = registerOutput<String?>('resourceDiscoveryMode');
    subscriptionId = registerOutput<String>('subscriptionId');
  }

  /// Gets an existing [SubscriptionPolicyRemediation] resource's state with the given [name] and [id].
  static SubscriptionPolicyRemediation get(
    String name,
    pulumi.Input<String> id, {
    SubscriptionPolicyRemediationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SubscriptionPolicyRemediation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SubscriptionPolicyRemediation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/subscriptionPolicyRemediation:SubscriptionPolicyRemediation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    failurePercentage = registerOutput<double?>('failurePercentage');
    locationFilters = registerOutput<List<String>?>('locationFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    parallelDeployments = registerOutput<int?>('parallelDeployments');
    policyAssignmentId = registerOutput<String>('policyAssignmentId');
    policyDefinitionReferenceId = registerOutput<String?>('policyDefinitionReferenceId');
    resourceCount = registerOutput<int?>('resourceCount');
    resourceDiscoveryMode = registerOutput<String?>('resourceDiscoveryMode');
    subscriptionId = registerOutput<String>('subscriptionId');
  }

  /// Creates a typed reference to an existing [SubscriptionPolicyRemediation] resource.
  SubscriptionPolicyRemediation.reference(String urn)
    : super(
        'azure:core/subscriptionPolicyRemediation:SubscriptionPolicyRemediation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    failurePercentage = registerOutput<double?>('failurePercentage');
    locationFilters = registerOutput<List<String>?>('locationFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    parallelDeployments = registerOutput<int?>('parallelDeployments');
    policyAssignmentId = registerOutput<String>('policyAssignmentId');
    policyDefinitionReferenceId = registerOutput<String?>('policyDefinitionReferenceId');
    resourceCount = registerOutput<int?>('resourceCount');
    resourceDiscoveryMode = registerOutput<String?>('resourceDiscoveryMode');
    subscriptionId = registerOutput<String>('subscriptionId');
  }
}
