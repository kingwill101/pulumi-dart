import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_remediation_args.dart';
import 'resource_policy_remediation_state.dart';

/// Manages an Azure Resource Policy Remediation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "resourcegroup1",
///     location: "West US",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "vnet1",
///     resourceGroupName: example.name,
///     location: example.location,
///     addressSpaces: ["10.0.0.0/16"],
/// });
/// const exampleDefinition = new azure.policy.Definition("example", {
///     name: "only-deploy-in-westeurope",
///     policyType: "Custom",
///     mode: "All",
///     displayName: "my-policy-definition",
/// });
/// const exampleResourcePolicyAssignment = new azure.core.ResourcePolicyAssignment("example", {
///     name: "assignment1",
///     resourceId: exampleVirtualNetwork.id,
///     policyDefinitionId: exampleDefinition.id,
///     parameters: pulumi.jsonStringify({
///         listOfAllowedLocations: {
///             value: [
///                 example.location,
///                 "East US",
///             ],
///         },
///     }),
/// });
/// const exampleResourceGroupPolicyAssignment = new azure.core.ResourceGroupPolicyAssignment("example", {
///     name: "example",
///     resourceGroupId: example.id,
///     policyDefinitionId: exampleDefinition.id,
/// });
/// const exampleResourcePolicyRemediation = new azure.core.ResourcePolicyRemediation("example", {
///     name: "remediation1",
///     resourceId: exampleVirtualNetwork.id,
///     policyAssignmentId: exampleResourceGroupPolicyAssignment.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="resourcegroup1",
///     location="West US")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="vnet1",
///     resource_group_name=example.name,
///     location=example.location,
///     address_spaces=["10.0.0.0/16"])
/// example_definition = azure.policy.Definition("example",
///     name="only-deploy-in-westeurope",
///     policy_type="Custom",
///     mode="All",
///     display_name="my-policy-definition")
/// example_resource_policy_assignment = azure.core.ResourcePolicyAssignment("example",
///     name="assignment1",
///     resource_id=example_virtual_network.id,
///     policy_definition_id=example_definition.id,
///     parameters=pulumi.Output.json_dumps({
///         "listOfAllowedLocations": {
///             "value": [
///                 example.location,
///                 "East US",
///             ],
///         },
///     }))
/// example_resource_group_policy_assignment = azure.core.ResourceGroupPolicyAssignment("example",
///     name="example",
///     resource_group_id=example.id,
///     policy_definition_id=example_definition.id)
/// example_resource_policy_remediation = azure.core.ResourcePolicyRemediation("example",
///     name="remediation1",
///     resource_id=example_virtual_network.id,
///     policy_assignment_id=example_resource_group_policy_assignment.id)
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
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "resourcegroup1",
///         Location = "West US",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "vnet1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///     });
///
///     var exampleDefinition = new Azure.Policy.Definition("example", new()
///     {
///         Name = "only-deploy-in-westeurope",
///         PolicyType = "Custom",
///         Mode = "All",
///         DisplayName = "my-policy-definition",
///     });
///
///     var exampleResourcePolicyAssignment = new Azure.Core.ResourcePolicyAssignment("example", new()
///     {
///         Name = "assignment1",
///         ResourceId = exampleVirtualNetwork.Id,
///         PolicyDefinitionId = exampleDefinition.Id,
///         Parameters = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["listOfAllowedLocations"] = new Dictionary<string, object?>
///             {
///                 ["value"] = new object?[]
///                 {
///                     example.Location,
///                     "East US",
///                 },
///             },
///         })),
///     });
///
///     var exampleResourceGroupPolicyAssignment = new Azure.Core.ResourceGroupPolicyAssignment("example", new()
///     {
///         Name = "example",
///         ResourceGroupId = example.Id,
///         PolicyDefinitionId = exampleDefinition.Id,
///     });
///
///     var exampleResourcePolicyRemediation = new Azure.Core.ResourcePolicyRemediation("example", new()
///     {
///         Name = "remediation1",
///         ResourceId = exampleVirtualNetwork.Id,
///         PolicyAssignmentId = exampleResourceGroupPolicyAssignment.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/policy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("resourcegroup1"),
/// 			Location: pulumi.String("West US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("vnet1"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDefinition, err := policy.NewDefinition(ctx, "example", &policy.DefinitionArgs{
/// 			Name:        pulumi.String("only-deploy-in-westeurope"),
/// 			PolicyType:  pulumi.String("Custom"),
/// 			Mode:        pulumi.String("All"),
/// 			DisplayName: pulumi.String("my-policy-definition"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.NewResourcePolicyAssignment(ctx, "example", &core.ResourcePolicyAssignmentArgs{
/// 			Name:               pulumi.String("assignment1"),
/// 			ResourceId:         exampleVirtualNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			PolicyDefinitionId: exampleDefinition.ID().ToIDOutput().ToStringOutput(),
/// 			Parameters: example.Location.ApplyT(func(location string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON0, err := json.Marshal(map[string]map[string][]string{
/// 					"listOfAllowedLocations": map[string][]string{
/// 						"value": []string{
/// 							location,
/// 							"East US",
/// 						},
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json0 := string(tmpJSON0)
/// 				return pulumi.String(json0), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleResourceGroupPolicyAssignment, err := core.NewResourceGroupPolicyAssignment(ctx, "example", &core.ResourceGroupPolicyAssignmentArgs{
/// 			Name:               pulumi.String("example"),
/// 			ResourceGroupId:    example.ID().ToIDOutput().ToStringOutput(),
/// 			PolicyDefinitionId: exampleDefinition.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.NewResourcePolicyRemediation(ctx, "example", &core.ResourcePolicyRemediationArgs{
/// 			Name:               pulumi.String("remediation1"),
/// 			ResourceId:         exampleVirtualNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			PolicyAssignmentId: exampleResourceGroupPolicyAssignment.ID().ToIDOutput().ToStringOutput(),
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
///   name     = "resourcegroup1"
///   location = "West US"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "vnet1"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   address_spaces      = ["10.0.0.0/16"]
/// }
/// resource "azure_policy_definition" "example" {
///   name         = "only-deploy-in-westeurope"
///   policy_type  = "Custom"
///   mode         = "All"
///   display_name = "my-policy-definition"
/// }
/// resource "azure_core_resourcepolicyassignment" "example" {
///   name                 = "assignment1"
///   resource_id          = azure_network_virtualnetwork.example.id
///   policy_definition_id = azure_policy_definition.example.id
///   parameters = jsonencode({
///     "listOfAllowedLocations" = {
///       "value" = [azure_core_resourcegroup.example.location, "East US"]
///     }
///   })
/// }
/// resource "azure_core_resourcegrouppolicyassignment" "example" {
///   name                 = "example"
///   resource_group_id    = azure_core_resourcegroup.example.id
///   policy_definition_id = azure_policy_definition.example.id
/// }
/// resource "azure_core_resourcepolicyremediation" "example" {
///   name                 = "remediation1"
///   resource_id          = azure_network_virtualnetwork.example.id
///   policy_assignment_id = azure_core_resourcegrouppolicyassignment.example.id
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
/// import com.pulumi.azure.policy.Definition;
/// import com.pulumi.azure.policy.DefinitionArgs;
/// import com.pulumi.azure.core.ResourcePolicyAssignment;
/// import com.pulumi.azure.core.ResourcePolicyAssignmentArgs;
/// import com.pulumi.azure.core.ResourceGroupPolicyAssignment;
/// import com.pulumi.azure.core.ResourceGroupPolicyAssignmentArgs;
/// import com.pulumi.azure.core.ResourcePolicyRemediation;
/// import com.pulumi.azure.core.ResourcePolicyRemediationArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("resourcegroup1")
///             .location("West US")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("vnet1")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .addressSpaces("10.0.0.0/16")
///             .build());
///
///         var exampleDefinition = new Definition("exampleDefinition", DefinitionArgs.builder()
///             .name("only-deploy-in-westeurope")
///             .policyType("Custom")
///             .mode("All")
///             .displayName("my-policy-definition")
///             .build());
///
///         var exampleResourcePolicyAssignment = new ResourcePolicyAssignment("exampleResourcePolicyAssignment", ResourcePolicyAssignmentArgs.builder()
///             .name("assignment1")
///             .resourceId(exampleVirtualNetwork.id())
///             .policyDefinitionId(exampleDefinition.id())
///             .parameters(example.location().applyValue(_location -> serializeJson(
///                 jsonObject(
///                     jsonProperty("listOfAllowedLocations", jsonObject(
///                         jsonProperty("value", jsonArray(
///                             _location,
///                             "East US"
///                         ))
///                     ))
///                 ))))
///             .build());
///
///         var exampleResourceGroupPolicyAssignment = new ResourceGroupPolicyAssignment("exampleResourceGroupPolicyAssignment", ResourceGroupPolicyAssignmentArgs.builder()
///             .name("example")
///             .resourceGroupId(example.id())
///             .policyDefinitionId(exampleDefinition.id())
///             .build());
///
///         var exampleResourcePolicyRemediation = new ResourcePolicyRemediation("exampleResourcePolicyRemediation", ResourcePolicyRemediationArgs.builder()
///             .name("remediation1")
///             .resourceId(exampleVirtualNetwork.id())
///             .policyAssignmentId(exampleResourceGroupPolicyAssignment.id())
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
///       name: resourcegroup1
///       location: West US
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: vnet1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       addressSpaces:
///         - 10.0.0.0/16
///   exampleDefinition:
///     type: azure:policy:Definition
///     name: example
///     properties:
///       name: only-deploy-in-westeurope
///       policyType: Custom
///       mode: All
///       displayName: my-policy-definition
///   exampleResourcePolicyAssignment:
///     type: azure:core:ResourcePolicyAssignment
///     name: example
///     properties:
///       name: assignment1
///       resourceId: ${exampleVirtualNetwork.id}
///       policyDefinitionId: ${exampleDefinition.id}
///       parameters:
///         fn::toJSON:
///           listOfAllowedLocations:
///             value:
///               - ${example.location}
///               - East US
///   exampleResourceGroupPolicyAssignment:
///     type: azure:core:ResourceGroupPolicyAssignment
///     name: example
///     properties:
///       name: example
///       resourceGroupId: ${example.id}
///       policyDefinitionId: ${exampleDefinition.id}
///   exampleResourcePolicyRemediation:
///     type: azure:core:ResourcePolicyRemediation
///     name: example
///     properties:
///       name: remediation1
///       resourceId: ${exampleVirtualNetwork.id}
///       policyAssignmentId: ${exampleResourceGroupPolicyAssignment.id}
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
/// $ pulumi import azure:core/resourcePolicyRemediation:ResourcePolicyRemediation example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Compute/virtualMachines/vm1/providers/Microsoft.PolicyInsights/remediations/remediation1
/// ```
class ResourcePolicyRemediation extends pulumi.CustomResource {
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
  /// The Resource ID at which the Policy Remediation should be applied. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceId;

  /// Creates a new [ResourcePolicyRemediation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourcePolicyRemediation]. {@macro pulumi_core_resource_policy_remediation_resource_policy_remediation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourcePolicyRemediation(
    String name, {
    ResourcePolicyRemediationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/resourcePolicyRemediation:ResourcePolicyRemediation',
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
    resourceId = registerOutput<String>('resourceId');
  }

  /// Gets an existing [ResourcePolicyRemediation] resource's state with the given [name] and [id].
  static ResourcePolicyRemediation get(
    String name,
    pulumi.Input<String> id, {
    ResourcePolicyRemediationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResourcePolicyRemediation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResourcePolicyRemediation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/resourcePolicyRemediation:ResourcePolicyRemediation',
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
    resourceId = registerOutput<String>('resourceId');
  }

  /// Creates a typed reference to an existing [ResourcePolicyRemediation] resource.
  ResourcePolicyRemediation.reference(String urn)
    : super(
        'azure:core/resourcePolicyRemediation:ResourcePolicyRemediation',
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
    resourceId = registerOutput<String>('resourceId');
  }
}
