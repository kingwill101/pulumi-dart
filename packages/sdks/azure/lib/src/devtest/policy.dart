import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';
import 'policy_state.dart';

/// Manages a Policy within a Dev Test Policy Set.
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
/// const exampleLab = new azure.devtest.Lab("example", {
///     name: "example-devtestlab",
///     location: example.location,
///     resourceGroupName: example.name,
///     tags: {
///         Sydney: "Australia",
///     },
/// });
/// const examplePolicy = new azure.devtest.Policy("example", {
///     name: "LabVmCount",
///     policySetName: "default",
///     labName: exampleLab.name,
///     resourceGroupName: example.name,
///     factData: "",
///     threshold: "999",
///     evaluatorType: "MaxValuePolicy",
///     tags: {
///         Acceptance: "Test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_lab = azure.devtest.Lab("example",
///     name="example-devtestlab",
///     location=example.location,
///     resource_group_name=example.name,
///     tags={
///         "Sydney": "Australia",
///     })
/// example_policy = azure.devtest.Policy("example",
///     name="LabVmCount",
///     policy_set_name="default",
///     lab_name=example_lab.name,
///     resource_group_name=example.name,
///     fact_data="",
///     threshold="999",
///     evaluator_type="MaxValuePolicy",
///     tags={
///         "Acceptance": "Test",
///     })
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
///     var exampleLab = new Azure.DevTest.Lab("example", new()
///     {
///         Name = "example-devtestlab",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Tags =
///         {
///             { "Sydney", "Australia" },
///         },
///     });
///
///     var examplePolicy = new Azure.DevTest.Policy("example", new()
///     {
///         Name = "LabVmCount",
///         PolicySetName = "default",
///         LabName = exampleLab.Name,
///         ResourceGroupName = example.Name,
///         FactData = "",
///         Threshold = "999",
///         EvaluatorType = "MaxValuePolicy",
///         Tags =
///         {
///             { "Acceptance", "Test" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devtest"
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
/// 		exampleLab, err := devtest.NewLab(ctx, "example", &devtest.LabArgs{
/// 			Name:              pulumi.String("example-devtestlab"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Tags: pulumi.StringMap{
/// 				"Sydney": pulumi.String("Australia"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = devtest.NewPolicy(ctx, "example", &devtest.PolicyArgs{
/// 			Name:              pulumi.String("LabVmCount"),
/// 			PolicySetName:     pulumi.String("default"),
/// 			LabName:           exampleLab.Name,
/// 			ResourceGroupName: example.Name,
/// 			FactData:          pulumi.String(""),
/// 			Threshold:         pulumi.String("999"),
/// 			EvaluatorType:     pulumi.String("MaxValuePolicy"),
/// 			Tags: pulumi.StringMap{
/// 				"Acceptance": pulumi.String("Test"),
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
/// import com.pulumi.azure.devtest.Lab;
/// import com.pulumi.azure.devtest.LabArgs;
/// import com.pulumi.azure.devtest.Policy;
/// import com.pulumi.azure.devtest.PolicyArgs;
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
///         var exampleLab = new Lab("exampleLab", LabArgs.builder()
///             .name("example-devtestlab")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tags(Map.of("Sydney", "Australia"))
///             .build());
///
///         var examplePolicy = new Policy("examplePolicy", PolicyArgs.builder()
///             .name("LabVmCount")
///             .policySetName("default")
///             .labName(exampleLab.name())
///             .resourceGroupName(example.name())
///             .factData("")
///             .threshold("999")
///             .evaluatorType("MaxValuePolicy")
///             .tags(Map.of("Acceptance", "Test"))
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
///   exampleLab:
///     type: azure:devtest:Lab
///     name: example
///     properties:
///       name: example-devtestlab
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tags:
///         Sydney: Australia
///   examplePolicy:
///     type: azure:devtest:Policy
///     name: example
///     properties:
///       name: LabVmCount
///       policySetName: default
///       labName: ${exampleLab.name}
///       resourceGroupName: ${example.name}
///       factData: ""
///       threshold: '999'
///       evaluatorType: MaxValuePolicy
///       tags:
///         Acceptance: Test
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DevTestLab` - 2018-09-15
///
/// ## Import
///
/// Dev Test Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:devtest/policy:Policy policy1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DevTestLab/labs/lab1/policySets/default/policies/policy1
/// ```
class Policy extends pulumi.CustomResource {
  /// A description for the Policy.
  late final pulumi.Output<String?> description;

  /// The Evaluation Type used for this Policy. Possible values include: 'AllowedValuesPolicy', 'MaxValuePolicy'. Changing this forces a new resource to be created.
  late final pulumi.Output<String> evaluatorType;

  /// The Fact Data for this Policy.
  late final pulumi.Output<String?> factData;

  /// Specifies the name of the Dev Test Lab in which the Policy should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> labName;

  /// Specifies the name of the Dev Test Policy. Possible values are `GalleryImage`, `LabPremiumVmCount`, `LabTargetCost`, `LabVmCount`, `LabVmSize`, `UserOwnedLabPremiumVmCount`, `UserOwnedLabVmCount` and `UserOwnedLabVmCountInSubnet`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Specifies the name of the Policy Set within the Dev Test Lab where this policy should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> policySetName;

  /// The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The Threshold for this Policy.
  late final pulumi.Output<String> threshold;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_devtest_policy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(String name, {PolicyArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure:devtest/policy:Policy',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    description = registerOutput<String?>('description');
    evaluatorType = registerOutput<String>('evaluatorType');
    factData = registerOutput<String?>('factData');
    labName = registerOutput<String>('labName');
    this.name = registerOutput<String>('name');
    policySetName = registerOutput<String>('policySetName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    threshold = registerOutput<String>('threshold');
  }

  /// Gets an existing [Policy] resource's state with the given [name] and [id].
  static Policy get(
    String name,
    pulumi.Input<String> id, {
    PolicyState? state,
  }) {
    return Policy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Policy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:devtest/policy:Policy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    evaluatorType = registerOutput<String>('evaluatorType');
    factData = registerOutput<String?>('factData');
    labName = registerOutput<String>('labName');
    this.name = registerOutput<String>('name');
    policySetName = registerOutput<String>('policySetName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    threshold = registerOutput<String>('threshold');
  }
}
