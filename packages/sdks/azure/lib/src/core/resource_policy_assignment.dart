import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_assignment_args.dart';
import 'resource_policy_assignment_identity.dart';
import 'resource_policy_assignment_state.dart';

/// Manages a Policy Assignment to a Resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getVirtualNetwork({
///     name: "production",
///     resourceGroupName: "networking",
/// });
/// const exampleDefinition = new azure.policy.Definition("example", {
///     name: "only-deploy-in-westeurope",
///     policyType: "Custom",
///     mode: "All",
///     displayName: "my-policy-definition",
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
/// const exampleResourcePolicyAssignment = new azure.core.ResourcePolicyAssignment("example", {
///     name: "example-policy-assignment",
///     resourceId: example.then(example => example.id),
///     policyDefinitionId: exampleDefinition.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_virtual_network(name="production",
///     resource_group_name="networking")
/// example_definition = azure.policy.Definition("example",
///     name="only-deploy-in-westeurope",
///     policy_type="Custom",
///     mode="All",
///     display_name="my-policy-definition",
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
/// example_resource_policy_assignment = azure.core.ResourcePolicyAssignment("example",
///     name="example-policy-assignment",
///     resource_id=example.id,
///     policy_definition_id=example_definition.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetVirtualNetwork.Invoke(new()
///     {
///         Name = "production",
///         ResourceGroupName = "networking",
///     });
///
///     var exampleDefinition = new Azure.Policy.Definition("example", new()
///     {
///         Name = "only-deploy-in-westeurope",
///         PolicyType = "Custom",
///         Mode = "All",
///         DisplayName = "my-policy-definition",
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
///     var exampleResourcePolicyAssignment = new Azure.Core.ResourcePolicyAssignment("example", new()
///     {
///         Name = "example-policy-assignment",
///         ResourceId = example.Apply(getVirtualNetworkResult => getVirtualNetworkResult.Id),
///         PolicyDefinitionId = exampleDefinition.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/policy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupVirtualNetwork(ctx, &network.LookupVirtualNetworkArgs{
/// 			Name:              "production",
/// 			ResourceGroupName: "networking",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDefinition, err := policy.NewDefinition(ctx, "example", &policy.DefinitionArgs{
/// 			Name:        pulumi.String("only-deploy-in-westeurope"),
/// 			PolicyType:  pulumi.String("Custom"),
/// 			Mode:        pulumi.String("All"),
/// 			DisplayName: pulumi.String("my-policy-definition"),
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
/// 		_, err = core.NewResourcePolicyAssignment(ctx, "example", &core.ResourcePolicyAssignmentArgs{
/// 			Name:               pulumi.String("example-policy-assignment"),
/// 			ResourceId:         pulumi.String(example.Id),
/// 			PolicyDefinitionId: exampleDefinition.ID(),
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetVirtualNetworkArgs;
/// import com.pulumi.azure.policy.Definition;
/// import com.pulumi.azure.policy.DefinitionArgs;
/// import com.pulumi.azure.core.ResourcePolicyAssignment;
/// import com.pulumi.azure.core.ResourcePolicyAssignmentArgs;
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
///         final var example = NetworkFunctions.getVirtualNetwork(GetVirtualNetworkArgs.builder()
///             .name("production")
///             .resourceGroupName("networking")
///             .build());
///
///         var exampleDefinition = new Definition("exampleDefinition", DefinitionArgs.builder()
///             .name("only-deploy-in-westeurope")
///             .policyType("Custom")
///             .mode("All")
///             .displayName("my-policy-definition")
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
///         var exampleResourcePolicyAssignment = new ResourcePolicyAssignment("exampleResourcePolicyAssignment", ResourcePolicyAssignmentArgs.builder()
///             .name("example-policy-assignment")
///             .resourceId(example.id())
///             .policyDefinitionId(exampleDefinition.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDefinition:
///     type: azure:policy:Definition
///     name: example
///     properties:
///       name: only-deploy-in-westeurope
///       policyType: Custom
///       mode: All
///       displayName: my-policy-definition
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
///   exampleResourcePolicyAssignment:
///     type: azure:core:ResourcePolicyAssignment
///     name: example
///     properties:
///       name: example-policy-assignment
///       resourceId: ${example.id}
///       policyDefinitionId: ${exampleDefinition.id}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getVirtualNetwork
///       arguments:
///         name: production
///         resourceGroupName: networking
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Authorization` - 2022-06-01
///
/// ## Import
///
/// Resource Policy Assignments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:core/resourcePolicyAssignment:ResourcePolicyAssignment example "{resource}/providers/Microsoft.Authorization/policyAssignments/assignment1"
/// ```
///
/// where `{resource}` is a Resource ID in the form `/subscriptions/00000000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/virtualNetworks/network1`.
class ResourcePolicyAssignment extends pulumi.CustomResource {
  /// A description which should be used for this Policy Assignment.
  late final pulumi.Output<String?> description;

  /// The Display Name for this Policy Assignment.
  late final pulumi.Output<String?> displayName;

  /// Specifies if this Policy should be enforced or not? Defaults to `true`.
  late final pulumi.Output<bool?> enforce;

  /// An `identity` block as defined below.
  ///
  /// &gt; **Note:** The `location` field must also be specified when `identity` is specified.
  late final pulumi.Output<ResourcePolicyAssignmentIdentity?> identity;

  /// The Azure Region where the Policy Assignment should exist. Changing this forces a new Policy Assignment to be created.
  late final pulumi.Output<String> location;

  /// A JSON mapping of any Metadata for this Policy.
  late final pulumi.Output<String> metadata;

  /// The name which should be used for this Policy Assignment. Changing this forces a new Resource Policy Assignment to be created. Cannot exceed 64 characters in length.
  late final pulumi.Output<String> name;

  /// One or more `non_compliance_message` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> nonComplianceMessages;

  /// Specifies a list of Resource Scopes (for example a Subscription, or a Resource Group) within this Management Group which are excluded from this Policy.
  late final pulumi.Output<List<String>?> notScopes;

  /// One or more `overrides` blocks as defined below. More detail about `overrides` and `resource_selectors` see [policy assignment structure](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure)
  late final pulumi.Output<List<Map<String, dynamic>>?> overrides;

  /// A JSON mapping of any Parameters for this Policy.
  late final pulumi.Output<String?> parameters;

  /// The ID of the Policy Definition or Policy Definition Set. Changing this forces a new Policy Assignment to be created.
  late final pulumi.Output<String> policyDefinitionId;

  /// The ID of the Resource (or Resource Scope) where this should be applied. Changing this forces a new Resource Policy Assignment to be created.
  ///
  /// &gt; **Note:** To create a Policy Assignment at a Management Group use the `azure.management.GroupPolicyAssignment` resource, for a Resource Group use the `azure.core.ResourceGroupPolicyAssignment` and for a Subscription use the `azure.core.SubscriptionPolicyAssignment` resource.
  late final pulumi.Output<String> resourceId;

  /// One or more `resource_selectors` blocks as defined below to filter polices by resource properties.
  late final pulumi.Output<List<Map<String, dynamic>>?> resourceSelectors;

  /// Creates a new [ResourcePolicyAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourcePolicyAssignment]. {@macro pulumi_core_resource_policy_assignment_resource_policy_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourcePolicyAssignment(
    String name, {
    ResourcePolicyAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:core/resourcePolicyAssignment:ResourcePolicyAssignment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    enforce = registerOutput<bool?>('enforce');
    identity = registerOutput<ResourcePolicyAssignmentIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ResourcePolicyAssignmentIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    nonComplianceMessages = registerOutput<List<Map<String, dynamic>>?>(
      'nonComplianceMessages',
    );
    notScopes = registerOutput<List<String>?>('notScopes');
    overrides = registerOutput<List<Map<String, dynamic>>?>('overrides');
    parameters = registerOutput<String?>('parameters');
    policyDefinitionId = registerOutput<String>('policyDefinitionId');
    resourceId = registerOutput<String>('resourceId');
    resourceSelectors = registerOutput<List<Map<String, dynamic>>?>(
      'resourceSelectors',
    );
  }

  /// Gets an existing [ResourcePolicyAssignment] resource's state with the given [name] and [id].
  static ResourcePolicyAssignment get(
    String name,
    pulumi.Input<String> id, {
    ResourcePolicyAssignmentState? state,
  }) {
    return ResourcePolicyAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResourcePolicyAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:core/resourcePolicyAssignment:ResourcePolicyAssignment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    enforce = registerOutput<bool?>('enforce');
    identity = registerOutput<ResourcePolicyAssignmentIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ResourcePolicyAssignmentIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    nonComplianceMessages = registerOutput<List<Map<String, dynamic>>?>(
      'nonComplianceMessages',
    );
    notScopes = registerOutput<List<String>?>('notScopes');
    overrides = registerOutput<List<Map<String, dynamic>>?>('overrides');
    parameters = registerOutput<String?>('parameters');
    policyDefinitionId = registerOutput<String>('policyDefinitionId');
    resourceId = registerOutput<String>('resourceId');
    resourceSelectors = registerOutput<List<Map<String, dynamic>>?>(
      'resourceSelectors',
    );
  }
}
