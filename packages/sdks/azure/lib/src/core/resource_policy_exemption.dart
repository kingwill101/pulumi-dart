import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_exemption_args.dart';
import 'resource_policy_exemption_state.dart';

/// Manages a Resource Policy Exemption.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "group1",
///     location: "westus",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "network1",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     addressSpaces: ["10.0.0.0/16"],
/// });
/// const example = azure.policy.getPolicySetDefinition({
///     displayName: "Audit machines with insecure password security settings",
/// });
/// const exampleResourcePolicyAssignment = new azure.core.ResourcePolicyAssignment("example", {
///     name: "assignment1",
///     resourceId: exampleVirtualNetwork.id,
///     policyDefinitionId: example.then(example => example.id),
///     location: exampleResourceGroup.location,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleResourcePolicyExemption = new azure.core.ResourcePolicyExemption("example", {
///     name: "exemption1",
///     resourceId: exampleResourcePolicyAssignment.resourceId,
///     policyAssignmentId: exampleResourcePolicyAssignment.id,
///     exemptionCategory: "Mitigated",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="group1",
///     location="westus")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="network1",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     address_spaces=["10.0.0.0/16"])
/// example = azure.policy.get_policy_set_definition(display_name="Audit machines with insecure password security settings")
/// example_resource_policy_assignment = azure.core.ResourcePolicyAssignment("example",
///     name="assignment1",
///     resource_id=example_virtual_network.id,
///     policy_definition_id=example.id,
///     location=example_resource_group.location,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_resource_policy_exemption = azure.core.ResourcePolicyExemption("example",
///     name="exemption1",
///     resource_id=example_resource_policy_assignment.resource_id,
///     policy_assignment_id=example_resource_policy_assignment.id,
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
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "group1",
///         Location = "westus",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "network1",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///     });
///
///     var example = Azure.Policy.GetPolicySetDefinition.Invoke(new()
///     {
///         DisplayName = "Audit machines with insecure password security settings",
///     });
///
///     var exampleResourcePolicyAssignment = new Azure.Core.ResourcePolicyAssignment("example", new()
///     {
///         Name = "assignment1",
///         ResourceId = exampleVirtualNetwork.Id,
///         PolicyDefinitionId = example.Apply(getPolicySetDefinitionResult => getPolicySetDefinitionResult.Id),
///         Location = exampleResourceGroup.Location,
///         Identity = new Azure.Core.Inputs.ResourcePolicyAssignmentIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleResourcePolicyExemption = new Azure.Core.ResourcePolicyExemption("example", new()
///     {
///         Name = "exemption1",
///         ResourceId = exampleResourcePolicyAssignment.ResourceId,
///         PolicyAssignmentId = exampleResourcePolicyAssignment.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/policy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("group1"),
/// 			Location: pulumi.String("westus"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("network1"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Location:          exampleResourceGroup.Location,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
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
/// 		exampleResourcePolicyAssignment, err := core.NewResourcePolicyAssignment(ctx, "example", &core.ResourcePolicyAssignmentArgs{
/// 			Name:               pulumi.String("assignment1"),
/// 			ResourceId:         exampleVirtualNetwork.ID(),
/// 			PolicyDefinitionId: pulumi.String(example.Id),
/// 			Location:           exampleResourceGroup.Location,
/// 			Identity: &core.ResourcePolicyAssignmentIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.NewResourcePolicyExemption(ctx, "example", &core.ResourcePolicyExemptionArgs{
/// 			Name:               pulumi.String("exemption1"),
/// 			ResourceId:         exampleResourcePolicyAssignment.ResourceId,
/// 			PolicyAssignmentId: exampleResourcePolicyAssignment.ID(),
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
/// data "azure_policy_getpolicysetdefinition" "example" {
///   display_name = "Audit machines with insecure password security settings"
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "group1"
///   location = "westus"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "network1"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   address_spaces      = ["10.0.0.0/16"]
/// }
/// resource "azure_core_resourcepolicyassignment" "example" {
///   name                 = "assignment1"
///   resource_id          = azure_network_virtualnetwork.example.id
///   policy_definition_id = data.azure_policy_getpolicysetdefinition.example.id
///   location             = azure_core_resourcegroup.example.location
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_core_resourcepolicyexemption" "example" {
///   name                 = "exemption1"
///   resource_id          = azure_core_resourcepolicyassignment.example.resource_id
///   policy_assignment_id = azure_core_resourcepolicyassignment.example.id
///   exemption_category   = "Mitigated"
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.policy.PolicyFunctions;
/// import com.pulumi.azure.policy.inputs.GetPolicySetDefinitionArgs;
/// import com.pulumi.azure.core.ResourcePolicyAssignment;
/// import com.pulumi.azure.core.ResourcePolicyAssignmentArgs;
/// import com.pulumi.azure.core.inputs.ResourcePolicyAssignmentIdentityArgs;
/// import com.pulumi.azure.core.ResourcePolicyExemption;
/// import com.pulumi.azure.core.ResourcePolicyExemptionArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("group1")
///             .location("westus")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("network1")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .addressSpaces("10.0.0.0/16")
///             .build());
///
///         final var example = PolicyFunctions.getPolicySetDefinition(GetPolicySetDefinitionArgs.builder()
///             .displayName("Audit machines with insecure password security settings")
///             .build());
///
///         var exampleResourcePolicyAssignment = new ResourcePolicyAssignment("exampleResourcePolicyAssignment", ResourcePolicyAssignmentArgs.builder()
///             .name("assignment1")
///             .resourceId(exampleVirtualNetwork.id())
///             .policyDefinitionId(example.id())
///             .location(exampleResourceGroup.location())
///             .identity(ResourcePolicyAssignmentIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleResourcePolicyExemption = new ResourcePolicyExemption("exampleResourcePolicyExemption", ResourcePolicyExemptionArgs.builder()
///             .name("exemption1")
///             .resourceId(exampleResourcePolicyAssignment.resourceId())
///             .policyAssignmentId(exampleResourcePolicyAssignment.id())
///             .exemptionCategory("Mitigated")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: group1
///       location: westus
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: network1
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       addressSpaces:
///         - 10.0.0.0/16
///   exampleResourcePolicyAssignment:
///     type: azure:core:ResourcePolicyAssignment
///     name: example
///     properties:
///       name: assignment1
///       resourceId: ${exampleVirtualNetwork.id}
///       policyDefinitionId: ${example.id}
///       location: ${exampleResourceGroup.location}
///       identity:
///         type: SystemAssigned
///   exampleResourcePolicyExemption:
///     type: azure:core:ResourcePolicyExemption
///     name: example
///     properties:
///       name: exemption1
///       resourceId: ${exampleResourcePolicyAssignment.resourceId}
///       policyAssignmentId: ${exampleResourcePolicyAssignment.id}
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
/// $ pulumi import azure:core/resourcePolicyExemption:ResourcePolicyExemption exemption1 /subscriptions/00000000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.Authorization/policyExemptions/exemption1
/// ```
class ResourcePolicyExemption extends pulumi.CustomResource {
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
  /// The Resource ID where the Policy Exemption should be applied. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceId;

  /// Creates a new [ResourcePolicyExemption].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourcePolicyExemption]. {@macro pulumi_core_resource_policy_exemption_resource_policy_exemption_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourcePolicyExemption(
    String name, {
    ResourcePolicyExemptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/resourcePolicyExemption:ResourcePolicyExemption',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    exemptionCategory = registerOutput<String>('exemptionCategory');
    expiresOn = registerOutput<String?>('expiresOn');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    policyAssignmentId = registerOutput<String>('policyAssignmentId');
    policyDefinitionReferenceIds = registerOutput<List<String>?>('policyDefinitionReferenceIds');
    resourceId = registerOutput<String>('resourceId');
  }

  /// Gets an existing [ResourcePolicyExemption] resource's state with the given [name] and [id].
  static ResourcePolicyExemption get(
    String name,
    pulumi.Input<String> id, {
    ResourcePolicyExemptionState? state,
  }) {
    return ResourcePolicyExemption._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResourcePolicyExemption._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/resourcePolicyExemption:ResourcePolicyExemption',
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
    policyDefinitionReferenceIds = registerOutput<List<String>?>('policyDefinitionReferenceIds');
    resourceId = registerOutput<String>('resourceId');
  }
}
