import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_policy_remediation_args.dart';
import 'group_policy_remediation_state.dart';

/// Manages an Azure Management Group Policy Remediation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleGroup = new azure.management.Group("example", {displayName: "Example Management Group"});
/// const example = azure.policy.getPolicyDefintion({
///     displayName: "Allowed locations",
/// });
/// const exampleGroupPolicyAssignment = new azure.management.GroupPolicyAssignment("example", {
///     name: "exampleAssignment",
///     managementGroupId: exampleGroup.id,
///     policyDefinitionId: example.then(example => example.id),
///     parameters: JSON.stringify({
///         listOfAllowedLocations: {
///             value: ["East US"],
///         },
///     }),
/// });
/// const exampleGroupPolicyRemediation = new azure.management.GroupPolicyRemediation("example", {
///     name: "example",
///     managementGroupId: exampleGroup.id,
///     policyAssignmentId: exampleGroupPolicyAssignment.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_azure as azure
///
/// example_group = azure.management.Group("example", display_name="Example Management Group")
/// example = azure.policy.get_policy_defintion(display_name="Allowed locations")
/// example_group_policy_assignment = azure.management.GroupPolicyAssignment("example",
///     name="exampleAssignment",
///     management_group_id=example_group.id,
///     policy_definition_id=example.id,
///     parameters=json.dumps({
///         "listOfAllowedLocations": {
///             "value": ["East US"],
///         },
///     }))
/// example_group_policy_remediation = azure.management.GroupPolicyRemediation("example",
///     name="example",
///     management_group_id=example_group.id,
///     policy_assignment_id=example_group_policy_assignment.id)
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
///     var exampleGroup = new Azure.Management.Group("example", new()
///     {
///         DisplayName = "Example Management Group",
///     });
///
///     var example = Azure.Policy.GetPolicyDefintion.Invoke(new()
///     {
///         DisplayName = "Allowed locations",
///     });
///
///     var exampleGroupPolicyAssignment = new Azure.Management.GroupPolicyAssignment("example", new()
///     {
///         Name = "exampleAssignment",
///         ManagementGroupId = exampleGroup.Id,
///         PolicyDefinitionId = example.Apply(getPolicyDefintionResult => getPolicyDefintionResult.Id),
///         Parameters = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["listOfAllowedLocations"] = new Dictionary<string, object?>
///             {
///                 ["value"] = new[]
///                 {
///                     "East US",
///                 },
///             },
///         }),
///     });
///
///     var exampleGroupPolicyRemediation = new Azure.Management.GroupPolicyRemediation("example", new()
///     {
///         Name = "example",
///         ManagementGroupId = exampleGroup.Id,
///         PolicyAssignmentId = exampleGroupPolicyAssignment.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/management"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/policy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleGroup, err := management.NewGroup(ctx, "example", &management.GroupArgs{
/// 			DisplayName: pulumi.String("Example Management Group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := policy.GetPolicyDefintion(ctx, &policy.GetPolicyDefintionArgs{
/// 			DisplayName: pulumi.StringRef("Allowed locations"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]map[string][]string{
/// 			"listOfAllowedLocations": map[string][]string{
/// 				"value": []string{
/// 					"East US",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		exampleGroupPolicyAssignment, err := management.NewGroupPolicyAssignment(ctx, "example", &management.GroupPolicyAssignmentArgs{
/// 			Name:               pulumi.String("exampleAssignment"),
/// 			ManagementGroupId:  exampleGroup.ID().ToIDOutput().ToStringOutput(),
/// 			PolicyDefinitionId: pulumi.String(example.Id),
/// 			Parameters:         pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = management.NewGroupPolicyRemediation(ctx, "example", &management.GroupPolicyRemediationArgs{
/// 			Name:               pulumi.String("example"),
/// 			ManagementGroupId:  exampleGroup.ID().ToIDOutput().ToStringOutput(),
/// 			PolicyAssignmentId: exampleGroupPolicyAssignment.ID().ToIDOutput().ToStringOutput(),
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
/// data "azure_policy_getpolicydefintion" "example" {
///   display_name = "Allowed locations"
/// }
///
/// resource "azure_management_group" "example" {
///   display_name = "Example Management Group"
/// }
/// resource "azure_management_grouppolicyassignment" "example" {
///   name                 = "exampleAssignment"
///   management_group_id  = azure_management_group.example.id
///   policy_definition_id = data.azure_policy_getpolicydefintion.example.id
///   parameters = jsonencode({
///     "listOfAllowedLocations" = {
///       "value" = ["East US"]
///     }
///   })
/// }
/// resource "azure_management_grouppolicyremediation" "example" {
///   name                 = "example"
///   management_group_id  = azure_management_group.example.id
///   policy_assignment_id = azure_management_grouppolicyassignment.example.id
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
/// import com.pulumi.azure.policy.inputs.GetPolicyDefintionArgs;
/// import com.pulumi.azure.management.GroupPolicyAssignment;
/// import com.pulumi.azure.management.GroupPolicyAssignmentArgs;
/// import com.pulumi.azure.management.GroupPolicyRemediation;
/// import com.pulumi.azure.management.GroupPolicyRemediationArgs;
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
///         var exampleGroup = new Group("exampleGroup", GroupArgs.builder()
///             .displayName("Example Management Group")
///             .build());
///
///         final var example = PolicyFunctions.getPolicyDefintion(GetPolicyDefintionArgs.builder()
///             .displayName("Allowed locations")
///             .build());
///
///         var exampleGroupPolicyAssignment = new GroupPolicyAssignment("exampleGroupPolicyAssignment", GroupPolicyAssignmentArgs.builder()
///             .name("exampleAssignment")
///             .managementGroupId(exampleGroup.id())
///             .policyDefinitionId(example.id())
///             .parameters(serializeJson(
///                 jsonObject(
///                     jsonProperty("listOfAllowedLocations", jsonObject(
///                         jsonProperty("value", jsonArray("East US"))
///                     ))
///                 )))
///             .build());
///
///         var exampleGroupPolicyRemediation = new GroupPolicyRemediation("exampleGroupPolicyRemediation", GroupPolicyRemediationArgs.builder()
///             .name("example")
///             .managementGroupId(exampleGroup.id())
///             .policyAssignmentId(exampleGroupPolicyAssignment.id())
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
///       displayName: Example Management Group
///   exampleGroupPolicyAssignment:
///     type: azure:management:GroupPolicyAssignment
///     name: example
///     properties:
///       name: exampleAssignment
///       managementGroupId: ${exampleGroup.id}
///       policyDefinitionId: ${example.id}
///       parameters:
///         fn::toJSON:
///           listOfAllowedLocations:
///             value:
///               - East US
///   exampleGroupPolicyRemediation:
///     type: azure:management:GroupPolicyRemediation
///     name: example
///     properties:
///       name: example
///       managementGroupId: ${exampleGroup.id}
///       policyAssignmentId: ${exampleGroupPolicyAssignment.id}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:policy:getPolicyDefintion
///       arguments:
///         displayName: Allowed locations
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Management` - 2021-10-01
///
/// ## Import
///
/// Policy Remediations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:management/groupPolicyRemediation:GroupPolicyRemediation example /providers/Microsoft.Management/managementGroups/my-mgmt-group-id/providers/Microsoft.PolicyInsights/remediations/remediation1
/// ```
class GroupPolicyRemediation extends pulumi.CustomResource {
  /// The percentage failure threshold. Possible values range between `0.0` and `1.0`. The remediation will fail if the percentage of failed remediation operations (i.e. failed deployments) exceeds this threshold.
  late final pulumi.Output<double?> failurePercentage;
  /// A list of the resource locations that will be remediated.
  late final pulumi.Output<List<String>?> locationFilters;
  /// The Management Group ID at which the Policy Remediation should be applied. Changing this forces a new resource to be created.
  late final pulumi.Output<String> managementGroupId;
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

  /// Creates a new [GroupPolicyRemediation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupPolicyRemediation]. {@macro pulumi_management_group_policy_remediation_group_policy_remediation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupPolicyRemediation(
    String name, {
    GroupPolicyRemediationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:management/groupPolicyRemediation:GroupPolicyRemediation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    failurePercentage = registerOutput<double?>('failurePercentage');
    locationFilters = registerOutput<List<String>?>('locationFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    managementGroupId = registerOutput<String>('managementGroupId');
    this.name = registerOutput<String>('name');
    parallelDeployments = registerOutput<int?>('parallelDeployments');
    policyAssignmentId = registerOutput<String>('policyAssignmentId');
    policyDefinitionReferenceId = registerOutput<String?>('policyDefinitionReferenceId');
    resourceCount = registerOutput<int?>('resourceCount');
  }

  /// Gets an existing [GroupPolicyRemediation] resource's state with the given [name] and [id].
  static GroupPolicyRemediation get(
    String name,
    pulumi.Input<String> id, {
    GroupPolicyRemediationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GroupPolicyRemediation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GroupPolicyRemediation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:management/groupPolicyRemediation:GroupPolicyRemediation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    failurePercentage = registerOutput<double?>('failurePercentage');
    locationFilters = registerOutput<List<String>?>('locationFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    managementGroupId = registerOutput<String>('managementGroupId');
    this.name = registerOutput<String>('name');
    parallelDeployments = registerOutput<int?>('parallelDeployments');
    policyAssignmentId = registerOutput<String>('policyAssignmentId');
    policyDefinitionReferenceId = registerOutput<String?>('policyDefinitionReferenceId');
    resourceCount = registerOutput<int?>('resourceCount');
  }

  /// Creates a typed reference to an existing [GroupPolicyRemediation] resource.
  GroupPolicyRemediation.reference(String urn)
    : super(
        'azure:management/groupPolicyRemediation:GroupPolicyRemediation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    failurePercentage = registerOutput<double?>('failurePercentage');
    locationFilters = registerOutput<List<String>?>('locationFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    managementGroupId = registerOutput<String>('managementGroupId');
    this.name = registerOutput<String>('name');
    parallelDeployments = registerOutput<int?>('parallelDeployments');
    policyAssignmentId = registerOutput<String>('policyAssignmentId');
    policyDefinitionReferenceId = registerOutput<String?>('policyDefinitionReferenceId');
    resourceCount = registerOutput<int?>('resourceCount');
  }
}
