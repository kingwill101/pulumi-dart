import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_group_policy_assignment_args.dart';
import 'resource_group_policy_assignment_identity.dart';
import 'resource_group_policy_assignment_state.dart';

/// Manages a Resource Group Policy Assignment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
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
/// const exampleResourceGroupPolicyAssignment = new azure.core.ResourceGroupPolicyAssignment("example", {
///     name: "example",
///     resourceGroupId: example.id,
///     policyDefinitionId: exampleDefinition.id,
///     parameters: `    {
///       \\"tagName\\": {
///         \\"value\\": \\"Business Unit\\"
///       },
///       \\"tagValue\\": {
///         \\"value\\": \\"BU\\"
///       }
///     }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
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
/// example_resource_group_policy_assignment = azure.core.ResourceGroupPolicyAssignment("example",
///     name="example",
///     resource_group_id=example.id,
///     policy_definition_id=example_definition.id,
///     parameters="""    {
///       \"tagName\": {
///         \"value\": \"Business Unit\"
///       },
///       \"tagValue\": {
///         \"value\": \"BU\"
///       }
///     }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
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
///     var exampleResourceGroupPolicyAssignment = new Azure.Core.ResourceGroupPolicyAssignment("example", new()
///     {
///         Name = "example",
///         ResourceGroupId = example.Id,
///         PolicyDefinitionId = exampleDefinition.Id,
///         Parameters = @"    {
///       \""tagName\"": {
///         \""value\"": \""Business Unit\""
///       },
///       \""tagValue\"": {
///         \""value\"": \""BU\""
///       }
///     }
/// ",
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
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
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
/// 		_, err = core.NewResourceGroupPolicyAssignment(ctx, "example", &core.ResourceGroupPolicyAssignmentArgs{
/// 			Name:               pulumi.String("example"),
/// 			ResourceGroupId:    example.ID(),
/// 			PolicyDefinitionId: exampleDefinition.ID(),
/// 			Parameters: pulumi.String(`    {
///       \"tagName\": {
///         \"value\": \"Business Unit\"
///       },
///       \"tagValue\": {
///         \"value\": \"BU\"
///       }
///     }
/// `),
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_policy_definition" "example" {
///   name         = "only-deploy-in-westeurope"
///   policy_type  = "Custom"
///   mode         = "All"
///   display_name = "my-policy-definition"
///   policy_rule  = " {\n    \"if\": {\n      \"not\": {\n        \"field\": \"location\",\n        \"equals\": \"westeurope\"\n      }\n    },\n    \"then\": {\n      \"effect\": \"Deny\"\n    }\n  }\n"
/// }
/// resource "azure_core_resourcegrouppolicyassignment" "example" {
///   name                 = "example"
///   resource_group_id    = azure_core_resourcegroup.example.id
///   policy_definition_id = azure_policy_definition.example.id
///   parameters           = "    {\n      \\\"tagName\\\": {\n        \\\"value\\\": \\\"Business Unit\\\"\n      },\n      \\\"tagValue\\\": {\n        \\\"value\\\": \\\"BU\\\"\n      }\n    }\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.policy.Definition;
/// import com.pulumi.azure.policy.DefinitionArgs;
/// import com.pulumi.azure.core.ResourceGroupPolicyAssignment;
/// import com.pulumi.azure.core.ResourceGroupPolicyAssignmentArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
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
///         var exampleResourceGroupPolicyAssignment = new ResourceGroupPolicyAssignment("exampleResourceGroupPolicyAssignment", ResourceGroupPolicyAssignmentArgs.builder()
///             .name("example")
///             .resourceGroupId(example.id())
///             .policyDefinitionId(exampleDefinition.id())
///             .parameters("""
///     {
///       \"tagName\": {
///         \"value\": \"Business Unit\"
///       },
///       \"tagValue\": {
///         \"value\": \"BU\"
///       }
///     }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
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
///   exampleResourceGroupPolicyAssignment:
///     type: azure:core:ResourceGroupPolicyAssignment
///     name: example
///     properties:
///       name: example
///       resourceGroupId: ${example.id}
///       policyDefinitionId: ${exampleDefinition.id}
///       parameters: |2
///             {
///               \"tagName\": {
///                 \"value\": \"Business Unit\"
///               },
///               \"tagValue\": {
///                 \"value\": \"BU\"
///               }
///             }
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
/// Resource Group Policy Assignments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:core/resourceGroupPolicyAssignment:ResourceGroupPolicyAssignment example /subscriptions/00000000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Authorization/policyAssignments/assignment1
/// ```
class ResourceGroupPolicyAssignment extends pulumi.CustomResource {
  /// A description which should be used for this Policy Assignment.
  late final pulumi.Output<String?> description;
  /// The Display Name for this Policy Assignment.
  late final pulumi.Output<String?> displayName;
  /// Specifies if this Policy should be enforced or not? Defaults to `true`.
  late final pulumi.Output<bool?> enforce;
  /// An `identity` block as defined below.
  ///
  /// &gt; **Note:** The `location` field must also be specified when `identity` is specified.
  late final pulumi.Output<ResourceGroupPolicyAssignmentIdentity?> identity;
  /// The Azure Region where the Policy Assignment should exist. Changing this forces a new Policy Assignment to be created.
  late final pulumi.Output<String> location;
  /// A JSON mapping of any Metadata for this Policy.
  late final pulumi.Output<String> metadata;
  /// The name which should be used for this Policy Assignment. Changing this forces a new Policy Assignment to be created. Cannot exceed 64 characters in length.
  late final pulumi.Output<String> name;
  /// One or more `nonComplianceMessage` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> nonComplianceMessages;
  /// Specifies a list of Resource Scopes (for example a Subscription, or a Resource Group) within this Management Group which are excluded from this Policy.
  late final pulumi.Output<List<String>?> notScopes;
  /// One or more `overrides` blocks as defined below. More detail about `overrides` and `resourceSelectors` see [policy assignment structure](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure)
  late final pulumi.Output<List<Map<String, dynamic>>?> overrides;
  /// A JSON mapping of any Parameters for this Policy.
  late final pulumi.Output<String?> parameters;
  /// The ID of the Policy Definition or Policy Definition Set. Changing this forces a new Policy Assignment to be created.
  late final pulumi.Output<String> policyDefinitionId;
  /// The ID of the Resource Group where this Policy Assignment should be created. Changing this forces a new Policy Assignment to be created.
  late final pulumi.Output<String> resourceGroupId;
  /// One or more `resourceSelectors` blocks as defined below to filter polices by resource properties.
  late final pulumi.Output<List<Map<String, dynamic>>?> resourceSelectors;

  /// Creates a new [ResourceGroupPolicyAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceGroupPolicyAssignment]. {@macro pulumi_core_resource_group_policy_assignment_resource_group_policy_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceGroupPolicyAssignment(
    String name, {
    ResourceGroupPolicyAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/resourceGroupPolicyAssignment:ResourceGroupPolicyAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    enforce = registerOutput<bool?>('enforce');
    identity = registerOutput<ResourceGroupPolicyAssignmentIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceGroupPolicyAssignmentIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    nonComplianceMessages = registerOutput<List<Map<String, dynamic>>?>('nonComplianceMessages');
    notScopes = registerOutput<List<String>?>('notScopes');
    overrides = registerOutput<List<Map<String, dynamic>>?>('overrides');
    parameters = registerOutput<String?>('parameters');
    policyDefinitionId = registerOutput<String>('policyDefinitionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    resourceSelectors = registerOutput<List<Map<String, dynamic>>?>('resourceSelectors');
  }

  /// Gets an existing [ResourceGroupPolicyAssignment] resource's state with the given [name] and [id].
  static ResourceGroupPolicyAssignment get(
    String name,
    pulumi.Input<String> id, {
    ResourceGroupPolicyAssignmentState? state,
  }) {
    return ResourceGroupPolicyAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResourceGroupPolicyAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/resourceGroupPolicyAssignment:ResourceGroupPolicyAssignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    enforce = registerOutput<bool?>('enforce');
    identity = registerOutput<ResourceGroupPolicyAssignmentIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceGroupPolicyAssignmentIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    nonComplianceMessages = registerOutput<List<Map<String, dynamic>>?>('nonComplianceMessages');
    notScopes = registerOutput<List<String>?>('notScopes');
    overrides = registerOutput<List<Map<String, dynamic>>?>('overrides');
    parameters = registerOutput<String?>('parameters');
    policyDefinitionId = registerOutput<String>('policyDefinitionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    resourceSelectors = registerOutput<List<Map<String, dynamic>>?>('resourceSelectors');
  }
}
