import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_policy_exemption_args.dart';
import 'group_policy_exemption_state.dart';

/// Manages a Management Group Policy Exemption.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleGroup = new azure.management.Group("example", {displayName: "Example MgmtGroup"});
/// const example = azure.policy.getPolicySetDefinition({
///     displayName: "Audit machines with insecure password security settings",
/// });
/// const exampleGroupPolicyAssignment = new azure.management.GroupPolicyAssignment("example", {
///     name: "assignment1",
///     managementGroupId: exampleGroup.id,
///     policyDefinitionId: example.then(example => example.id),
///     location: "westus",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleGroupPolicyExemption = new azure.management.GroupPolicyExemption("example", {
///     name: "exemption1",
///     managementGroupId: exampleGroup.id,
///     policyAssignmentId: exampleGroupPolicyAssignment.id,
///     exemptionCategory: "Mitigated",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_group = azure.management.Group("example", display_name="Example MgmtGroup")
/// example = azure.policy.get_policy_set_definition(display_name="Audit machines with insecure password security settings")
/// example_group_policy_assignment = azure.management.GroupPolicyAssignment("example",
///     name="assignment1",
///     management_group_id=example_group.id,
///     policy_definition_id=example.id,
///     location="westus",
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_group_policy_exemption = azure.management.GroupPolicyExemption("example",
///     name="exemption1",
///     management_group_id=example_group.id,
///     policy_assignment_id=example_group_policy_assignment.id,
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
///     var exampleGroup = new Azure.Management.Group("example", new()
///     {
///         DisplayName = "Example MgmtGroup",
///     });
///
///     var example = Azure.Policy.GetPolicySetDefinition.Invoke(new()
///     {
///         DisplayName = "Audit machines with insecure password security settings",
///     });
///
///     var exampleGroupPolicyAssignment = new Azure.Management.GroupPolicyAssignment("example", new()
///     {
///         Name = "assignment1",
///         ManagementGroupId = exampleGroup.Id,
///         PolicyDefinitionId = example.Apply(getPolicySetDefinitionResult => getPolicySetDefinitionResult.Id),
///         Location = "westus",
///         Identity = new Azure.Management.Inputs.GroupPolicyAssignmentIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleGroupPolicyExemption = new Azure.Management.GroupPolicyExemption("example", new()
///     {
///         Name = "exemption1",
///         ManagementGroupId = exampleGroup.Id,
///         PolicyAssignmentId = exampleGroupPolicyAssignment.Id,
///         ExemptionCategory = "Mitigated",
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
/// 		exampleGroup, err := management.NewGroup(ctx, "example", &management.GroupArgs{
/// 			DisplayName: pulumi.String("Example MgmtGroup"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := policy.LookupPolicySetDefinition(ctx, &policy.LookupPolicySetDefinitionArgs{
/// 			DisplayName: pulumi.StringRef("Audit machines with insecure password security settings"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGroupPolicyAssignment, err := management.NewGroupPolicyAssignment(ctx, "example", &management.GroupPolicyAssignmentArgs{
/// 			Name:               pulumi.String("assignment1"),
/// 			ManagementGroupId:  exampleGroup.ID(),
/// 			PolicyDefinitionId: pulumi.String(example.Id),
/// 			Location:           pulumi.String("westus"),
/// 			Identity: &management.GroupPolicyAssignmentIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = management.NewGroupPolicyExemption(ctx, "example", &management.GroupPolicyExemptionArgs{
/// 			Name:               pulumi.String("exemption1"),
/// 			ManagementGroupId:  exampleGroup.ID(),
/// 			PolicyAssignmentId: exampleGroupPolicyAssignment.ID(),
/// 			ExemptionCategory:  pulumi.String("Mitigated"),
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
/// import com.pulumi.azure.management.Group;
/// import com.pulumi.azure.management.GroupArgs;
/// import com.pulumi.azure.policy.PolicyFunctions;
/// import com.pulumi.azure.policy.inputs.GetPolicySetDefinitionArgs;
/// import com.pulumi.azure.management.GroupPolicyAssignment;
/// import com.pulumi.azure.management.GroupPolicyAssignmentArgs;
/// import com.pulumi.azure.management.inputs.GroupPolicyAssignmentIdentityArgs;
/// import com.pulumi.azure.management.GroupPolicyExemption;
/// import com.pulumi.azure.management.GroupPolicyExemptionArgs;
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
///         var exampleGroup = new Group("exampleGroup", GroupArgs.builder()
///             .displayName("Example MgmtGroup")
///             .build());
///
///         final var example = PolicyFunctions.getPolicySetDefinition(GetPolicySetDefinitionArgs.builder()
///             .displayName("Audit machines with insecure password security settings")
///             .build());
///
///         var exampleGroupPolicyAssignment = new GroupPolicyAssignment("exampleGroupPolicyAssignment", GroupPolicyAssignmentArgs.builder()
///             .name("assignment1")
///             .managementGroupId(exampleGroup.id())
///             .policyDefinitionId(example.id())
///             .location("westus")
///             .identity(GroupPolicyAssignmentIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleGroupPolicyExemption = new GroupPolicyExemption("exampleGroupPolicyExemption", GroupPolicyExemptionArgs.builder()
///             .name("exemption1")
///             .managementGroupId(exampleGroup.id())
///             .policyAssignmentId(exampleGroupPolicyAssignment.id())
///             .exemptionCategory("Mitigated")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleGroup:
///     type: azure:management:Group
///     name: example
///     properties:
///       displayName: Example MgmtGroup
///   exampleGroupPolicyAssignment:
///     type: azure:management:GroupPolicyAssignment
///     name: example
///     properties:
///       name: assignment1
///       managementGroupId: ${exampleGroup.id}
///       policyDefinitionId: ${example.id}
///       location: westus
///       identity:
///         type: SystemAssigned
///   exampleGroupPolicyExemption:
///     type: azure:management:GroupPolicyExemption
///     name: example
///     properties:
///       name: exemption1
///       managementGroupId: ${exampleGroup.id}
///       policyAssignmentId: ${exampleGroupPolicyAssignment.id}
///       exemptionCategory: Mitigated
/// variables:
///   example:
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
/// $ pulumi import azure:management/groupPolicyExemption:GroupPolicyExemption exemption1 /providers/Microsoft.Management/managementGroups/group1/providers/Microsoft.Authorization/policyExemptions/exemption1
/// ```
class GroupPolicyExemption extends pulumi.CustomResource {
  /// A description to use for this Policy Exemption.
  late final pulumi.Output<String?> description;
  /// A friendly display name to use for this Policy Exemption.
  late final pulumi.Output<String?> displayName;
  /// The category of this policy exemption. Possible values are `Waiver` and `Mitigated`.
  late final pulumi.Output<String> exemptionCategory;
  /// The expiration date and time in UTC ISO 8601 format of this policy exemption.
  late final pulumi.Output<String?> expiresOn;
  /// The Management Group ID where the Policy Exemption should be applied. Changing this forces a new resource to be created.
  late final pulumi.Output<String> managementGroupId;
  /// The metadata for this policy exemption. This is a JSON string representing additional metadata that should be stored with the policy exemption.
  late final pulumi.Output<String> metadata;
  /// The name of the Policy Exemption. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Policy Assignment to be exempted at the specified Scope.
  late final pulumi.Output<String> policyAssignmentId;
  /// The policy definition reference ID list when the associated policy assignment is an assignment of a policy set definition.
  late final pulumi.Output<List<String>?> policyDefinitionReferenceIds;

  /// Creates a new [GroupPolicyExemption].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupPolicyExemption]. {@macro pulumi_management_group_policy_exemption_group_policy_exemption_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupPolicyExemption(
    String name, {
    GroupPolicyExemptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:management/groupPolicyExemption:GroupPolicyExemption',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    exemptionCategory = registerOutput<String>('exemptionCategory');
    expiresOn = registerOutput<String?>('expiresOn');
    managementGroupId = registerOutput<String>('managementGroupId');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    policyAssignmentId = registerOutput<String>('policyAssignmentId');
    policyDefinitionReferenceIds = registerOutput<List<String>?>('policyDefinitionReferenceIds');
  }

  /// Gets an existing [GroupPolicyExemption] resource's state with the given [name] and [id].
  static GroupPolicyExemption get(
    String name,
    pulumi.Input<String> id, {
    GroupPolicyExemptionState? state,
  }) {
    return GroupPolicyExemption._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GroupPolicyExemption._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:management/groupPolicyExemption:GroupPolicyExemption',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    exemptionCategory = registerOutput<String>('exemptionCategory');
    expiresOn = registerOutput<String?>('expiresOn');
    managementGroupId = registerOutput<String>('managementGroupId');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    policyAssignmentId = registerOutput<String>('policyAssignmentId');
    policyDefinitionReferenceIds = registerOutput<List<String>?>('policyDefinitionReferenceIds');
  }
}
