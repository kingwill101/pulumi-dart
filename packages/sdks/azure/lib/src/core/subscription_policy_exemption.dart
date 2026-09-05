import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_policy_exemption_args.dart';
import 'subscription_policy_exemption_state.dart';

/// Manages a Subscription Policy Exemption.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.core.getSubscription({});
/// const exampleGetPolicySetDefinition = azure.policy.getPolicySetDefinition({
///     displayName: "Audit machines with insecure password security settings",
/// });
/// const exampleSubscriptionPolicyAssignment = new azure.core.SubscriptionPolicyAssignment("example", {
///     name: "exampleAssignment",
///     subscriptionId: example.then(example => example.id),
///     policyDefinitionId: exampleGetPolicySetDefinition.then(exampleGetPolicySetDefinition => exampleGetPolicySetDefinition.id),
///     location: "westus",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleSubscriptionPolicyExemption = new azure.core.SubscriptionPolicyExemption("example", {
///     name: "exampleExemption",
///     subscriptionId: example.then(example => example.id),
///     policyAssignmentId: exampleSubscriptionPolicyAssignment.id,
///     exemptionCategory: "Mitigated",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.get_subscription()
/// example_get_policy_set_definition = azure.policy.get_policy_set_definition(display_name="Audit machines with insecure password security settings")
/// example_subscription_policy_assignment = azure.core.SubscriptionPolicyAssignment("example",
///     name="exampleAssignment",
///     subscription_id=example.id,
///     policy_definition_id=example_get_policy_set_definition.id,
///     location="westus",
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_subscription_policy_exemption = azure.core.SubscriptionPolicyExemption("example",
///     name="exampleExemption",
///     subscription_id=example.id,
///     policy_assignment_id=example_subscription_policy_assignment.id,
///     exemption_category="Mitigated")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Core.GetSubscription.Invoke();
///
///     var exampleGetPolicySetDefinition = Azure.Policy.GetPolicySetDefinition.Invoke(new()
///     {
///         DisplayName = "Audit machines with insecure password security settings",
///     });
///
///     var exampleSubscriptionPolicyAssignment = new Azure.Core.SubscriptionPolicyAssignment("example", new()
///     {
///         Name = "exampleAssignment",
///         SubscriptionId = example.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         PolicyDefinitionId = exampleGetPolicySetDefinition.Apply(getPolicySetDefinitionResult => getPolicySetDefinitionResult.Id),
///         Location = "westus",
///         Identity = new Azure.Core.Inputs.SubscriptionPolicyAssignmentIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleSubscriptionPolicyExemption = new Azure.Core.SubscriptionPolicyExemption("example", new()
///     {
///         Name = "exampleExemption",
///         SubscriptionId = example.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         PolicyAssignmentId = exampleSubscriptionPolicyAssignment.Id,
///         ExemptionCategory = "Mitigated",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
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
/// 		exampleGetPolicySetDefinition, err := policy.LookupPolicySetDefinition(ctx, &policy.LookupPolicySetDefinitionArgs{
/// 			DisplayName: pulumi.StringRef("Audit machines with insecure password security settings"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubscriptionPolicyAssignment, err := core.NewSubscriptionPolicyAssignment(ctx, "example", &core.SubscriptionPolicyAssignmentArgs{
/// 			Name:               pulumi.String("exampleAssignment"),
/// 			SubscriptionId:     pulumi.String(example.Id),
/// 			PolicyDefinitionId: pulumi.String(exampleGetPolicySetDefinition.Id),
/// 			Location:           pulumi.String("westus"),
/// 			Identity: &core.SubscriptionPolicyAssignmentIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.NewSubscriptionPolicyExemption(ctx, "example", &core.SubscriptionPolicyExemptionArgs{
/// 			Name:               pulumi.String("exampleExemption"),
/// 			SubscriptionId:     pulumi.String(example.Id),
/// 			PolicyAssignmentId: exampleSubscriptionPolicyAssignment.ID().ToIDOutput().ToStringOutput(),
/// 			ExemptionCategory:  pulumi.String("Mitigated"),
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
/// data "azure_policy_getpolicysetdefinition" "exampleGetPolicySetDefinition" {
///   display_name = "Audit machines with insecure password security settings"
/// }
///
/// resource "azure_core_subscriptionpolicyassignment" "example" {
///   name                 = "exampleAssignment"
///   subscription_id      = data.azure_core_getsubscription.example.id
///   policy_definition_id = data.azure_policy_getpolicysetdefinition.exampleGetPolicySetDefinition.id
///   location             = "westus"
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_core_subscriptionpolicyexemption" "example" {
///   name                 = "exampleExemption"
///   subscription_id      = data.azure_core_getsubscription.example.id
///   policy_assignment_id = azure_core_subscriptionpolicyassignment.example.id
///   exemption_category   = "Mitigated"
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
/// import com.pulumi.azure.policy.inputs.GetPolicySetDefinitionArgs;
/// import com.pulumi.azure.core.SubscriptionPolicyAssignment;
/// import com.pulumi.azure.core.SubscriptionPolicyAssignmentArgs;
/// import com.pulumi.azure.core.inputs.SubscriptionPolicyAssignmentIdentityArgs;
/// import com.pulumi.azure.core.SubscriptionPolicyExemption;
/// import com.pulumi.azure.core.SubscriptionPolicyExemptionArgs;
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
///         final var exampleGetPolicySetDefinition = PolicyFunctions.getPolicySetDefinition(GetPolicySetDefinitionArgs.builder()
///             .displayName("Audit machines with insecure password security settings")
///             .build());
///
///         var exampleSubscriptionPolicyAssignment = new SubscriptionPolicyAssignment("exampleSubscriptionPolicyAssignment", SubscriptionPolicyAssignmentArgs.builder()
///             .name("exampleAssignment")
///             .subscriptionId(example.id())
///             .policyDefinitionId(exampleGetPolicySetDefinition.id())
///             .location("westus")
///             .identity(SubscriptionPolicyAssignmentIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleSubscriptionPolicyExemption = new SubscriptionPolicyExemption("exampleSubscriptionPolicyExemption", SubscriptionPolicyExemptionArgs.builder()
///             .name("exampleExemption")
///             .subscriptionId(example.id())
///             .policyAssignmentId(exampleSubscriptionPolicyAssignment.id())
///             .exemptionCategory("Mitigated")
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
///       policyDefinitionId: ${exampleGetPolicySetDefinition.id}
///       location: westus
///       identity:
///         type: SystemAssigned
///   exampleSubscriptionPolicyExemption:
///     type: azure:core:SubscriptionPolicyExemption
///     name: example
///     properties:
///       name: exampleExemption
///       subscriptionId: ${example.id}
///       policyAssignmentId: ${exampleSubscriptionPolicyAssignment.id}
///       exemptionCategory: Mitigated
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
///   exampleGetPolicySetDefinition:
///     fn::invoke:
///       function: azure:policy:getPolicySetDefinition
///       arguments:
///         displayName: Audit machines with insecure password security settings
/// ```
///
///
/// ## Import
///
/// Policy Exemptions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:core/subscriptionPolicyExemption:SubscriptionPolicyExemption exemption1 /subscriptions/00000000-0000-0000-000000000000/providers/Microsoft.Authorization/policyExemptions/exemption1
/// ```
class SubscriptionPolicyExemption extends pulumi.CustomResource {
  /// A description to use for this Policy Exemption.
  late final pulumi.Output<String?> description;
  /// A friendly display name to use for this Policy Exemption.
  late final pulumi.Output<String?> displayName;
  /// The category of this policy exemption. Possible values are `Waiver` and `Mitigated`.
  late final pulumi.Output<String> exemptionCategory;
  /// The expiration date and time in UTC ISO 8601 format of this policy exemption.
  late final pulumi.Output<String?> expiresOn;
  /// The metadata for this policy exemption. This is a JSON string representing additional metadata that should be stored with the policy exemption.
  late final pulumi.Output<String> metadata;
  /// The name of the Policy Exemption. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Policy Assignment to be exempted at the specified Scope. Changing this forces a new resource to be created.
  late final pulumi.Output<String> policyAssignmentId;
  /// The policy definition reference ID list when the associated policy assignment is an assignment of a policy set definition.
  late final pulumi.Output<List<String>?> policyDefinitionReferenceIds;
  /// The Subscription ID where the Policy Exemption should be applied. Changing this forces a new resource to be created.
  late final pulumi.Output<String> subscriptionId;

  /// Creates a new [SubscriptionPolicyExemption].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubscriptionPolicyExemption]. {@macro pulumi_core_subscription_policy_exemption_subscription_policy_exemption_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubscriptionPolicyExemption(
    String name, {
    SubscriptionPolicyExemptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/subscriptionPolicyExemption:SubscriptionPolicyExemption',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    exemptionCategory = registerOutput<String>('exemptionCategory');
    expiresOn = registerOutput<String?>('expiresOn');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    policyAssignmentId = registerOutput<String>('policyAssignmentId');
    policyDefinitionReferenceIds = registerOutput<List<String>?>('policyDefinitionReferenceIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    subscriptionId = registerOutput<String>('subscriptionId');
  }

  /// Gets an existing [SubscriptionPolicyExemption] resource's state with the given [name] and [id].
  static SubscriptionPolicyExemption get(
    String name,
    pulumi.Input<String> id, {
    SubscriptionPolicyExemptionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SubscriptionPolicyExemption._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SubscriptionPolicyExemption._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/subscriptionPolicyExemption:SubscriptionPolicyExemption',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    exemptionCategory = registerOutput<String>('exemptionCategory');
    expiresOn = registerOutput<String?>('expiresOn');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    policyAssignmentId = registerOutput<String>('policyAssignmentId');
    policyDefinitionReferenceIds = registerOutput<List<String>?>('policyDefinitionReferenceIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    subscriptionId = registerOutput<String>('subscriptionId');
  }

  /// Creates a typed reference to an existing [SubscriptionPolicyExemption] resource.
  SubscriptionPolicyExemption.reference(String urn)
    : super(
        'azure:core/subscriptionPolicyExemption:SubscriptionPolicyExemption',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    exemptionCategory = registerOutput<String>('exemptionCategory');
    expiresOn = registerOutput<String?>('expiresOn');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    policyAssignmentId = registerOutput<String>('policyAssignmentId');
    policyDefinitionReferenceIds = registerOutput<List<String>?>('policyDefinitionReferenceIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    subscriptionId = registerOutput<String>('subscriptionId');
  }
}
