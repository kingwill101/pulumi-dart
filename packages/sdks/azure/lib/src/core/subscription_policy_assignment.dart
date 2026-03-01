import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_policy_assignment_args.dart';
import 'subscription_policy_assignment_identity.dart';
import 'subscription_policy_assignment_non_compliance_message.dart';
import 'subscription_policy_assignment_override.dart';
import 'subscription_policy_assignment_resource_selector.dart';
import 'subscription_policy_assignment_state.dart';

/// Manages a Subscription Policy Assignment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getSubscription({});
/// const example = new azure.policy.Definition("example", {
///     name: "only-deploy-in-westeurope",
///     policyType: "Custom",
///     mode: "All",
///     displayName: "Allowed resource types",
///     policyRule: ` {
///     "if": {
///       "not": {
///         "field": "location",
///         "equals": "westeurope"
///       }
///     },
///     "then": {
///       "effect": "Deny"
///     }
///   }
/// `,
/// });
/// const exampleSubscriptionPolicyAssignment = new azure.core.SubscriptionPolicyAssignment("example", {
///     name: "example",
///     policyDefinitionId: example.id,
///     subscriptionId: current.then(current => current.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_subscription()
/// example = azure.policy.Definition("example",
///     name="only-deploy-in-westeurope",
///     policy_type="Custom",
///     mode="All",
///     display_name="Allowed resource types",
///     policy_rule=""" {
///     "if": {
///       "not": {
///         "field": "location",
///         "equals": "westeurope"
///       }
///     },
///     "then": {
///       "effect": "Deny"
///     }
///   }
/// """)
/// example_subscription_policy_assignment = azure.core.SubscriptionPolicyAssignment("example",
///     name="example",
///     policy_definition_id=example.id,
///     subscription_id=current.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetSubscription.Invoke();
///
///     var example = new Azure.Policy.Definition("example", new()
///     {
///         Name = "only-deploy-in-westeurope",
///         PolicyType = "Custom",
///         Mode = "All",
///         DisplayName = "Allowed resource types",
///         PolicyRule = @" {
///     ""if"": {
///       ""not"": {
///         ""field"": ""location"",
///         ""equals"": ""westeurope""
///       }
///     },
///     ""then"": {
///       ""effect"": ""Deny""
///     }
///   }
/// ",
///     });
///
///     var exampleSubscriptionPolicyAssignment = new Azure.Core.SubscriptionPolicyAssignment("example", new()
///     {
///         Name = "example",
///         PolicyDefinitionId = example.Id,
///         SubscriptionId = current.Apply(getSubscriptionResult => getSubscriptionResult.Id),
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
/// 		current, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := policy.NewDefinition(ctx, "example", &policy.DefinitionArgs{
/// 			Name:        pulumi.String("only-deploy-in-westeurope"),
/// 			PolicyType:  pulumi.String("Custom"),
/// 			Mode:        pulumi.String("All"),
/// 			DisplayName: pulumi.String("Allowed resource types"),
/// 			PolicyRule: pulumi.String(` {
///     "if": {
///       "not": {
///         "field": "location",
///         "equals": "westeurope"
///       }
///     },
///     "then": {
///       "effect": "Deny"
///     }
///   }
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.NewSubscriptionPolicyAssignment(ctx, "example", &core.SubscriptionPolicyAssignmentArgs{
/// 			Name:               pulumi.String("example"),
/// 			PolicyDefinitionId: example.ID(),
/// 			SubscriptionId:     pulumi.String(current.Id),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.policy.Definition;
/// import com.pulumi.azure.policy.DefinitionArgs;
/// import com.pulumi.azure.core.SubscriptionPolicyAssignment;
/// import com.pulumi.azure.core.SubscriptionPolicyAssignmentArgs;
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
///         final var current = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         var example = new Definition("example", DefinitionArgs.builder()
///             .name("only-deploy-in-westeurope")
///             .policyType("Custom")
///             .mode("All")
///             .displayName("Allowed resource types")
///             .policyRule("""
///  {
///     "if": {
///       "not": {
///         "field": "location",
///         "equals": "westeurope"
///       }
///     },
///     "then": {
///       "effect": "Deny"
///     }
///   }
///             """)
///             .build());
///
///         var exampleSubscriptionPolicyAssignment = new SubscriptionPolicyAssignment("exampleSubscriptionPolicyAssignment", SubscriptionPolicyAssignmentArgs.builder()
///             .name("example")
///             .policyDefinitionId(example.id())
///             .subscriptionId(current.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:policy:Definition
///     properties:
///       name: only-deploy-in-westeurope
///       policyType: Custom
///       mode: All
///       displayName: Allowed resource types
///       policyRule: |2
///          {
///             "if": {
///               "not": {
///                 "field": "location",
///                 "equals": "westeurope"
///               }
///             },
///             "then": {
///               "effect": "Deny"
///             }
///           }
///   exampleSubscriptionPolicyAssignment:
///     type: azure:core:SubscriptionPolicyAssignment
///     name: example
///     properties:
///       name: example
///       policyDefinitionId: ${example.id}
///       subscriptionId: ${current.id}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Authorization` - 2022-06-01
///
/// ## Import
///
/// Subscription Policy Assignments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:core/subscriptionPolicyAssignment:SubscriptionPolicyAssignment example /subscriptions/00000000-0000-0000-000000000000/providers/Microsoft.Authorization/policyAssignments/assignment1
/// ```
class SubscriptionPolicyAssignment extends pulumi.CustomResource {
  /// A description which should be used for this Policy Assignment.
  late final pulumi.Output<String?> description;
  /// The Display Name for this Policy Assignment.
  late final pulumi.Output<String?> displayName;
  /// Specifies if this Policy should be enforced or not? Defaults to `true`.
  late final pulumi.Output<bool?> enforce;
  /// An `identity` block as defined below.
  ///
  /// > **Note:** The `location` field must also be specified when `identity` is specified.
  late final pulumi.Output<SubscriptionPolicyAssignmentIdentity?> identity;
  /// The Azure Region where the Policy Assignment should exist. Changing this forces a new Policy Assignment to be created.
  late final pulumi.Output<String> location;
  /// A JSON mapping of any Metadata for this Policy.
  late final pulumi.Output<String> metadata;
  /// The name which should be used for this Policy Assignment. Changing this forces a new Policy Assignment to be created. Cannot exceed 64 characters in length.
  late final pulumi.Output<String> name;
  /// One or more `non_compliance_message` blocks as defined below.
  late final pulumi.Output<List<SubscriptionPolicyAssignmentNonComplianceMessage>?> nonComplianceMessages;
  /// Specifies a list of Resource Scopes (for example a Subscription, or a Resource Group) within this Management Group which are excluded from this Policy.
  late final pulumi.Output<List<String>?> notScopes;
  /// One or more `overrides` blocks as defined below. More detail about `overrides` and `resource_selectors` see [policy assignment structure](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure)
  late final pulumi.Output<List<SubscriptionPolicyAssignmentOverride>?> overrides;
  /// A JSON mapping of any Parameters for this Policy.
  late final pulumi.Output<String?> parameters;
  /// The ID of the Policy Definition or Policy Definition Set. Changing this forces a new Policy Assignment to be created.
  late final pulumi.Output<String> policyDefinitionId;
  /// One or more `resource_selectors` blocks as defined below to filter polices by resource properties.
  late final pulumi.Output<List<SubscriptionPolicyAssignmentResourceSelector>?> resourceSelectors;
  /// The ID of the Subscription where this Policy Assignment should be created. Changing this forces a new Policy Assignment to be created.
  late final pulumi.Output<String> subscriptionId;

  /// Creates a new [SubscriptionPolicyAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubscriptionPolicyAssignment]. {@macro pulumi_core_subscription_policy_assignment_subscription_policy_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubscriptionPolicyAssignment(
    String name, {
    SubscriptionPolicyAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/subscriptionPolicyAssignment:SubscriptionPolicyAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.enforce = registerOutput<bool?>('enforce');
    this.identity = registerOutput<SubscriptionPolicyAssignmentIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    this.nonComplianceMessages = registerOutput<List<SubscriptionPolicyAssignmentNonComplianceMessage>?>('nonComplianceMessages');
    this.notScopes = registerOutput<List<String>?>('notScopes');
    this.overrides = registerOutput<List<SubscriptionPolicyAssignmentOverride>?>('overrides');
    this.parameters = registerOutput<String?>('parameters');
    this.policyDefinitionId = registerOutput<String>('policyDefinitionId');
    this.resourceSelectors = registerOutput<List<SubscriptionPolicyAssignmentResourceSelector>?>('resourceSelectors');
    this.subscriptionId = registerOutput<String>('subscriptionId');
  }

  /// Gets an existing [SubscriptionPolicyAssignment] resource's state with the given [name] and [id].
  static SubscriptionPolicyAssignment get(
    String name,
    pulumi.Input<String> id, {
    SubscriptionPolicyAssignmentState? state,
  }) {
    return SubscriptionPolicyAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SubscriptionPolicyAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/subscriptionPolicyAssignment:SubscriptionPolicyAssignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.enforce = registerOutput<bool?>('enforce');
    this.identity = registerOutput<SubscriptionPolicyAssignmentIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    this.nonComplianceMessages = registerOutput<List<SubscriptionPolicyAssignmentNonComplianceMessage>?>('nonComplianceMessages');
    this.notScopes = registerOutput<List<String>?>('notScopes');
    this.overrides = registerOutput<List<SubscriptionPolicyAssignmentOverride>?>('overrides');
    this.parameters = registerOutput<String?>('parameters');
    this.policyDefinitionId = registerOutput<String>('policyDefinitionId');
    this.resourceSelectors = registerOutput<List<SubscriptionPolicyAssignmentResourceSelector>?>('resourceSelectors');
    this.subscriptionId = registerOutput<String>('subscriptionId');
  }
}
