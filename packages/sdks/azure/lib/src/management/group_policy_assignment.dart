import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_policy_assignment_args.dart';
import 'group_policy_assignment_identity.dart';
import 'group_policy_assignment_state.dart';

/// Manages a Policy Assignment to a Management Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.management.Group("example", {displayName: "Some Management Group"});
/// const exampleDefinition = new azure.policy.Definition("example", {
///     name: "only-deploy-in-westeurope",
///     policyType: "Custom",
///     mode: "All",
///     displayName: "my-policy-definition",
///     managementGroupId: example.id,
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
/// const exampleGroupPolicyAssignment = new azure.management.GroupPolicyAssignment("example", {
///     name: "example-policy",
///     policyDefinitionId: exampleDefinition.id,
///     managementGroupId: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.management.Group("example", display_name="Some Management Group")
/// example_definition = azure.policy.Definition("example",
///     name="only-deploy-in-westeurope",
///     policy_type="Custom",
///     mode="All",
///     display_name="my-policy-definition",
///     management_group_id=example.id,
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
/// example_group_policy_assignment = azure.management.GroupPolicyAssignment("example",
///     name="example-policy",
///     policy_definition_id=example_definition.id,
///     management_group_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Management.Group("example", new()
///     {
///         DisplayName = "Some Management Group",
///     });
///
///     var exampleDefinition = new Azure.Policy.Definition("example", new()
///     {
///         Name = "only-deploy-in-westeurope",
///         PolicyType = "Custom",
///         Mode = "All",
///         DisplayName = "my-policy-definition",
///         ManagementGroupId = example.Id,
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
///     var exampleGroupPolicyAssignment = new Azure.Management.GroupPolicyAssignment("example", new()
///     {
///         Name = "example-policy",
///         PolicyDefinitionId = exampleDefinition.Id,
///         ManagementGroupId = example.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/management"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/policy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := management.NewGroup(ctx, "example", &management.GroupArgs{
/// 			DisplayName: pulumi.String("Some Management Group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDefinition, err := policy.NewDefinition(ctx, "example", &policy.DefinitionArgs{
/// 			Name:              pulumi.String("only-deploy-in-westeurope"),
/// 			PolicyType:        pulumi.String("Custom"),
/// 			Mode:              pulumi.String("All"),
/// 			DisplayName:       pulumi.String("my-policy-definition"),
/// 			ManagementGroupId: example.ID(),
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
/// 		_, err = management.NewGroupPolicyAssignment(ctx, "example", &management.GroupPolicyAssignmentArgs{
/// 			Name:               pulumi.String("example-policy"),
/// 			PolicyDefinitionId: exampleDefinition.ID(),
/// 			ManagementGroupId:  example.ID(),
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
/// resource "azure_management_group" "example" {
///   display_name = "Some Management Group"
/// }
/// resource "azure_policy_definition" "example" {
///   name                = "only-deploy-in-westeurope"
///   policy_type         = "Custom"
///   mode                = "All"
///   display_name        = "my-policy-definition"
///   management_group_id = azure_management_group.example.id
///   policy_rule         = " {\n    \"if\": {\n      \"not\": {\n        \"field\": \"location\",\n        \"equals\": \"westeurope\"\n      }\n    },\n    \"then\": {\n      \"effect\": \"Deny\"\n    }\n  }\n"
/// }
/// resource "azure_management_grouppolicyassignment" "example" {
///   name                 = "example-policy"
///   policy_definition_id = azure_policy_definition.example.id
///   management_group_id  = azure_management_group.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.management.Group;
/// import com.pulumi.azure.management.GroupArgs;
/// import com.pulumi.azure.policy.Definition;
/// import com.pulumi.azure.policy.DefinitionArgs;
/// import com.pulumi.azure.management.GroupPolicyAssignment;
/// import com.pulumi.azure.management.GroupPolicyAssignmentArgs;
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
///         var example = new Group("example", GroupArgs.builder()
///             .displayName("Some Management Group")
///             .build());
///
///         var exampleDefinition = new Definition("exampleDefinition", DefinitionArgs.builder()
///             .name("only-deploy-in-westeurope")
///             .policyType("Custom")
///             .mode("All")
///             .displayName("my-policy-definition")
///             .managementGroupId(example.id())
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
///         var exampleGroupPolicyAssignment = new GroupPolicyAssignment("exampleGroupPolicyAssignment", GroupPolicyAssignmentArgs.builder()
///             .name("example-policy")
///             .policyDefinitionId(exampleDefinition.id())
///             .managementGroupId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:management:Group
///     properties:
///       displayName: Some Management Group
///   exampleDefinition:
///     type: azure:policy:Definition
///     name: example
///     properties:
///       name: only-deploy-in-westeurope
///       policyType: Custom
///       mode: All
///       displayName: my-policy-definition
///       managementGroupId: ${example.id}
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
///   exampleGroupPolicyAssignment:
///     type: azure:management:GroupPolicyAssignment
///     name: example
///     properties:
///       name: example-policy
///       policyDefinitionId: ${exampleDefinition.id}
///       managementGroupId: ${example.id}
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
/// Management Group Policy Assignments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:management/groupPolicyAssignment:GroupPolicyAssignment example /providers/Microsoft.Management/managementGroups/group1/providers/Microsoft.Authorization/policyAssignments/assignment1
/// ```
class GroupPolicyAssignment extends pulumi.CustomResource {
  /// A description which should be used for this Policy Assignment.
  late final pulumi.Output<String?> description;
  /// The Display Name for this Policy Assignment.
  late final pulumi.Output<String?> displayName;
  /// Specifies if this Policy should be enforced or not? Defaults to `true`.
  late final pulumi.Output<bool?> enforce;
  /// An `identity` block as defined below.
  ///
  /// &gt; **Note:** The `location` field must also be specified when `identity` is specified.
  late final pulumi.Output<GroupPolicyAssignmentIdentity?> identity;
  /// The Azure Region where the Policy Assignment should exist. Changing this forces a new Policy Assignment to be created.
  late final pulumi.Output<String> location;
  /// The ID of the Management Group. Changing this forces a new Policy Assignment to be created.
  late final pulumi.Output<String> managementGroupId;
  /// A JSON mapping of any Metadata for this Policy.
  late final pulumi.Output<String> metadata;
  /// The name which should be used for this Policy Assignment. Cannot exceed 24 characters in length. Changing this forces a new Policy Assignment to be created.
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
  /// One or more `resourceSelectors` blocks as defined below to filter polices by resource properties.
  late final pulumi.Output<List<Map<String, dynamic>>?> resourceSelectors;

  /// Creates a new [GroupPolicyAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupPolicyAssignment]. {@macro pulumi_management_group_policy_assignment_group_policy_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupPolicyAssignment(
    String name, {
    GroupPolicyAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:management/groupPolicyAssignment:GroupPolicyAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    enforce = registerOutput<bool?>('enforce');
    identity = registerOutput<GroupPolicyAssignmentIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupPolicyAssignmentIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    managementGroupId = registerOutput<String>('managementGroupId');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    nonComplianceMessages = registerOutput<List<Map<String, dynamic>>?>('nonComplianceMessages');
    notScopes = registerOutput<List<String>?>('notScopes');
    overrides = registerOutput<List<Map<String, dynamic>>?>('overrides');
    parameters = registerOutput<String?>('parameters');
    policyDefinitionId = registerOutput<String>('policyDefinitionId');
    resourceSelectors = registerOutput<List<Map<String, dynamic>>?>('resourceSelectors');
  }

  /// Gets an existing [GroupPolicyAssignment] resource's state with the given [name] and [id].
  static GroupPolicyAssignment get(
    String name,
    pulumi.Input<String> id, {
    GroupPolicyAssignmentState? state,
  }) {
    return GroupPolicyAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GroupPolicyAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:management/groupPolicyAssignment:GroupPolicyAssignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    enforce = registerOutput<bool?>('enforce');
    identity = registerOutput<GroupPolicyAssignmentIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupPolicyAssignmentIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    managementGroupId = registerOutput<String>('managementGroupId');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    nonComplianceMessages = registerOutput<List<Map<String, dynamic>>?>('nonComplianceMessages');
    notScopes = registerOutput<List<String>?>('notScopes');
    overrides = registerOutput<List<Map<String, dynamic>>?>('overrides');
    parameters = registerOutput<String?>('parameters');
    policyDefinitionId = registerOutput<String>('policyDefinitionId');
    resourceSelectors = registerOutput<List<Map<String, dynamic>>?>('resourceSelectors');
  }
}
