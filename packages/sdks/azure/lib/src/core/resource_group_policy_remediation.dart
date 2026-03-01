import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_group_policy_remediation_args.dart';
import 'resource_group_policy_remediation_state.dart';

/// Manages an Azure Resource Group Policy Remediation.
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
///     name: "my-policy-definition",
///     policyType: "Custom",
///     mode: "All",
///     displayName: "my-policy-definition",
///     policyRule: `    {
///     "if": {
///       "not": {
///         "field": "location",
///         "in": "[parameters('allowedLocations')]"
///       }
///     },
///     "then": {
///       "effect": "audit"
///     }
///   }
/// `,
///     parameters: `    {
///     \\"allowedLocations\\": {
///       \\"type\\": \\"Array\\",
///       \\"metadata\\": {
///         \\"description\\": \\"The list of allowed locations for resources.\\",
///         \\"displayName\\": \\"Allowed locations\\",
///         \\"strongType\\": \\"location\\"
///       }
///     }
///   }
/// `,
/// });
/// const exampleResourceGroupPolicyAssignment = new azure.core.ResourceGroupPolicyAssignment("example", {
///     name: "example",
///     resourceGroupId: example.id,
///     policyDefinitionId: exampleDefinition.id,
/// });
/// const exampleResourceGroupPolicyRemediation = new azure.core.ResourceGroupPolicyRemediation("example", {
///     name: "example-policy-remediation",
///     resourceGroupId: example.id,
///     policyAssignmentId: exampleResourceGroupPolicyAssignment.id,
///     locationFilters: ["West Europe"],
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
///     name="my-policy-definition",
///     policy_type="Custom",
///     mode="All",
///     display_name="my-policy-definition",
///     policy_rule="""    {
///     "if": {
///       "not": {
///         "field": "location",
///         "in": "[parameters('allowedLocations')]"
///       }
///     },
///     "then": {
///       "effect": "audit"
///     }
///   }
/// """,
///     parameters="""    {
///     \"allowedLocations\": {
///       \"type\": \"Array\",
///       \"metadata\": {
///         \"description\": \"The list of allowed locations for resources.\",
///         \"displayName\": \"Allowed locations\",
///         \"strongType\": \"location\"
///       }
///     }
///   }
/// """)
/// example_resource_group_policy_assignment = azure.core.ResourceGroupPolicyAssignment("example",
///     name="example",
///     resource_group_id=example.id,
///     policy_definition_id=example_definition.id)
/// example_resource_group_policy_remediation = azure.core.ResourceGroupPolicyRemediation("example",
///     name="example-policy-remediation",
///     resource_group_id=example.id,
///     policy_assignment_id=example_resource_group_policy_assignment.id,
///     location_filters=["West Europe"])
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
///         Name = "my-policy-definition",
///         PolicyType = "Custom",
///         Mode = "All",
///         DisplayName = "my-policy-definition",
///         PolicyRule = @"    {
///     ""if"": {
///       ""not"": {
///         ""field"": ""location"",
///         ""in"": ""[parameters('allowedLocations')]""
///       }
///     },
///     ""then"": {
///       ""effect"": ""audit""
///     }
///   }
/// ",
///         Parameters = @"    {
///     \""allowedLocations\"": {
///       \""type\"": \""Array\"",
///       \""metadata\"": {
///         \""description\"": \""The list of allowed locations for resources.\"",
///         \""displayName\"": \""Allowed locations\"",
///         \""strongType\"": \""location\""
///       }
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
///     });
///
///     var exampleResourceGroupPolicyRemediation = new Azure.Core.ResourceGroupPolicyRemediation("example", new()
///     {
///         Name = "example-policy-remediation",
///         ResourceGroupId = example.Id,
///         PolicyAssignmentId = exampleResourceGroupPolicyAssignment.Id,
///         LocationFilters = new[]
///         {
///             "West Europe",
///         },
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
/// 			Name:        pulumi.String("my-policy-definition"),
/// 			PolicyType:  pulumi.String("Custom"),
/// 			Mode:        pulumi.String("All"),
/// 			DisplayName: pulumi.String("my-policy-definition"),
/// 			PolicyRule: pulumi.String(`    {
///     "if": {
///       "not": {
///         "field": "location",
///         "in": "[parameters('allowedLocations')]"
///       }
///     },
///     "then": {
///       "effect": "audit"
///     }
///   }
/// `),
/// 			Parameters: pulumi.String(`    {
///     \"allowedLocations\": {
///       \"type\": \"Array\",
///       \"metadata\": {
///         \"description\": \"The list of allowed locations for resources.\",
///         \"displayName\": \"Allowed locations\",
///         \"strongType\": \"location\"
///       }
///     }
///   }
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleResourceGroupPolicyAssignment, err := core.NewResourceGroupPolicyAssignment(ctx, "example", &core.ResourceGroupPolicyAssignmentArgs{
/// 			Name:               pulumi.String("example"),
/// 			ResourceGroupId:    example.ID(),
/// 			PolicyDefinitionId: exampleDefinition.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.NewResourceGroupPolicyRemediation(ctx, "example", &core.ResourceGroupPolicyRemediationArgs{
/// 			Name:               pulumi.String("example-policy-remediation"),
/// 			ResourceGroupId:    example.ID(),
/// 			PolicyAssignmentId: exampleResourceGroupPolicyAssignment.ID(),
/// 			LocationFilters: pulumi.StringArray{
/// 				pulumi.String("West Europe"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.policy.Definition;
/// import com.pulumi.azure.policy.DefinitionArgs;
/// import com.pulumi.azure.core.ResourceGroupPolicyAssignment;
/// import com.pulumi.azure.core.ResourceGroupPolicyAssignmentArgs;
/// import com.pulumi.azure.core.ResourceGroupPolicyRemediation;
/// import com.pulumi.azure.core.ResourceGroupPolicyRemediationArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleDefinition = new Definition("exampleDefinition", DefinitionArgs.builder()
///             .name("my-policy-definition")
///             .policyType("Custom")
///             .mode("All")
///             .displayName("my-policy-definition")
///             .policyRule("""
///     {
///     "if": {
///       "not": {
///         "field": "location",
///         "in": "[parameters('allowedLocations')]"
///       }
///     },
///     "then": {
///       "effect": "audit"
///     }
///   }
///             """)
///             .parameters("""
///     {
///     \"allowedLocations\": {
///       \"type\": \"Array\",
///       \"metadata\": {
///         \"description\": \"The list of allowed locations for resources.\",
///         \"displayName\": \"Allowed locations\",
///         \"strongType\": \"location\"
///       }
///     }
///   }
///             """)
///             .build());
///
///         var exampleResourceGroupPolicyAssignment = new ResourceGroupPolicyAssignment("exampleResourceGroupPolicyAssignment", ResourceGroupPolicyAssignmentArgs.builder()
///             .name("example")
///             .resourceGroupId(example.id())
///             .policyDefinitionId(exampleDefinition.id())
///             .build());
///
///         var exampleResourceGroupPolicyRemediation = new ResourceGroupPolicyRemediation("exampleResourceGroupPolicyRemediation", ResourceGroupPolicyRemediationArgs.builder()
///             .name("example-policy-remediation")
///             .resourceGroupId(example.id())
///             .policyAssignmentId(exampleResourceGroupPolicyAssignment.id())
///             .locationFilters("West Europe")
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
///       name: my-policy-definition
///       policyType: Custom
///       mode: All
///       displayName: my-policy-definition
///       policyRule: |2
///             {
///             "if": {
///               "not": {
///                 "field": "location",
///                 "in": "[parameters('allowedLocations')]"
///               }
///             },
///             "then": {
///               "effect": "audit"
///             }
///           }
///       parameters: |2
///             {
///             \"allowedLocations\": {
///               \"type\": \"Array\",
///               \"metadata\": {
///                 \"description\": \"The list of allowed locations for resources.\",
///                 \"displayName\": \"Allowed locations\",
///                 \"strongType\": \"location\"
///               }
///             }
///           }
///   exampleResourceGroupPolicyAssignment:
///     type: azure:core:ResourceGroupPolicyAssignment
///     name: example
///     properties:
///       name: example
///       resourceGroupId: ${example.id}
///       policyDefinitionId: ${exampleDefinition.id}
///   exampleResourceGroupPolicyRemediation:
///     type: azure:core:ResourceGroupPolicyRemediation
///     name: example
///     properties:
///       name: example-policy-remediation
///       resourceGroupId: ${example.id}
///       policyAssignmentId: ${exampleResourceGroupPolicyAssignment.id}
///       locationFilters:
///         - West Europe
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.PolicyInsights` - 2021-10-01
///
/// ## Import
///
/// Policy Remediations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:core/resourceGroupPolicyRemediation:ResourceGroupPolicyRemediation example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.PolicyInsights/remediations/remediation1
/// ```
class ResourceGroupPolicyRemediation extends pulumi.CustomResource {
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
  /// The Resource Group ID at which the Policy Remediation should be applied. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupId;

  /// Creates a new [ResourceGroupPolicyRemediation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceGroupPolicyRemediation]. {@macro pulumi_core_resource_group_policy_remediation_resource_group_policy_remediation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceGroupPolicyRemediation(
    String name, {
    ResourceGroupPolicyRemediationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/resourceGroupPolicyRemediation:ResourceGroupPolicyRemediation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.failurePercentage = registerOutput<double?>('failurePercentage');
    this.locationFilters = registerOutput<List<String>?>('locationFilters');
    this.name = registerOutput<String>('name');
    this.parallelDeployments = registerOutput<int?>('parallelDeployments');
    this.policyAssignmentId = registerOutput<String>('policyAssignmentId');
    this.policyDefinitionReferenceId = registerOutput<String?>('policyDefinitionReferenceId');
    this.resourceCount = registerOutput<int?>('resourceCount');
    this.resourceDiscoveryMode = registerOutput<String?>('resourceDiscoveryMode');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
  }

  /// Gets an existing [ResourceGroupPolicyRemediation] resource's state with the given [name] and [id].
  static ResourceGroupPolicyRemediation get(
    String name,
    pulumi.Input<String> id, {
    ResourceGroupPolicyRemediationState? state,
  }) {
    return ResourceGroupPolicyRemediation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResourceGroupPolicyRemediation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/resourceGroupPolicyRemediation:ResourceGroupPolicyRemediation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.failurePercentage = registerOutput<double?>('failurePercentage');
    this.locationFilters = registerOutput<List<String>?>('locationFilters');
    this.name = registerOutput<String>('name');
    this.parallelDeployments = registerOutput<int?>('parallelDeployments');
    this.policyAssignmentId = registerOutput<String>('policyAssignmentId');
    this.policyDefinitionReferenceId = registerOutput<String?>('policyDefinitionReferenceId');
    this.resourceCount = registerOutput<int?>('resourceCount');
    this.resourceDiscoveryMode = registerOutput<String?>('resourceDiscoveryMode');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
  }
}
