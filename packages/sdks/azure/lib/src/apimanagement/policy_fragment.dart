import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_fragment_args.dart';
import 'policy_fragment_state.dart';

/// Manages an Api Management Policy Fragment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleService = new azure.apimanagement.Service("example", {
///     name: "example-apim",
///     location: example.location,
///     resourceGroupName: example.name,
///     publisherName: "pub1",
///     publisherEmail: "pub1@email.com",
///     skuName: "Developer_1",
/// });
/// const examplePolicyFragment = new azure.apimanagement.PolicyFragment("example", {
///     apiManagementId: exampleService.id,
///     name: "example-policy-fragment",
///     format: "xml",
///     value: std.file({
///         input: "policy-fragment-1.xml",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.apimanagement.Service("example",
///     name="example-apim",
///     location=example.location,
///     resource_group_name=example.name,
///     publisher_name="pub1",
///     publisher_email="pub1@email.com",
///     sku_name="Developer_1")
/// example_policy_fragment = azure.apimanagement.PolicyFragment("example",
///     api_management_id=example_service.id,
///     name="example-policy-fragment",
///     format="xml",
///     value=std.file(input="policy-fragment-1.xml").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleService = new Azure.ApiManagement.Service("example", new()
///     {
///         Name = "example-apim",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         PublisherName = "pub1",
///         PublisherEmail = "pub1@email.com",
///         SkuName = "Developer_1",
///     });
///
///     var examplePolicyFragment = new Azure.ApiManagement.PolicyFragment("example", new()
///     {
///         ApiManagementId = exampleService.Id,
///         Name = "example-policy-fragment",
///         Format = "xml",
///         Value = Std.File.Invoke(new()
///         {
///             Input = "policy-fragment-1.xml",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		exampleService, err := apimanagement.NewService(ctx, "example", &apimanagement.ServiceArgs{
/// 			Name:              pulumi.String("example-apim"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			PublisherName:     pulumi.String("pub1"),
/// 			PublisherEmail:    pulumi.String("pub1@email.com"),
/// 			SkuName:           pulumi.String("Developer_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "policy-fragment-1.xml",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewPolicyFragment(ctx, "example", &apimanagement.PolicyFragmentArgs{
/// 			ApiManagementId: exampleService.ID(),
/// 			Name:            pulumi.String("example-policy-fragment"),
/// 			Format:          pulumi.String("xml"),
/// 			Value:           pulumi.String(invokeFile.Result),
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
/// import com.pulumi.azure.apimanagement.Service;
/// import com.pulumi.azure.apimanagement.ServiceArgs;
/// import com.pulumi.azure.apimanagement.PolicyFragment;
/// import com.pulumi.azure.apimanagement.PolicyFragmentArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-apim")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .publisherName("pub1")
///             .publisherEmail("pub1@email.com")
///             .skuName("Developer_1")
///             .build());
///
///         var examplePolicyFragment = new PolicyFragment("examplePolicyFragment", PolicyFragmentArgs.builder()
///             .apiManagementId(exampleService.id())
///             .name("example-policy-fragment")
///             .format("xml")
///             .value(StdFunctions.file(FileArgs.builder()
///                 .input("policy-fragment-1.xml")
///                 .build()).result())
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
///   exampleService:
///     type: azure:apimanagement:Service
///     name: example
///     properties:
///       name: example-apim
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       publisherName: pub1
///       publisherEmail: pub1@email.com
///       skuName: Developer_1
///   examplePolicyFragment:
///     type: azure:apimanagement:PolicyFragment
///     name: example
///     properties:
///       apiManagementId: ${exampleService.id}
///       name: example-policy-fragment
///       format: xml
///       value:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: policy-fragment-1.xml
///           return: result
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
///
/// ## Import
///
/// Api Management Policy Fragments can be imported using the `resource id`, e.g.
///
/// &gt; **Note:** Due to the behaviour of the API, Api Management Policy Fragments can only be imported as `xml`, but can be updated to the desired format after importing.
///
/// ```sh
/// $ pulumi import azure:apimanagement/policyFragment:PolicyFragment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/instance1/policyFragments/policyFragment1
/// ```
class PolicyFragment extends pulumi.CustomResource {
  /// The id of the API Management Service. Changing this forces a new Api Management Policy Fragment to be created.
  late final pulumi.Output<String> apiManagementId;
  /// The description for the Policy Fragment.
  late final pulumi.Output<String?> description;
  /// The format of the Policy Fragment. Possible values are `xml` or `rawxml`. Default is `xml`.
  ///
  /// &gt; **Note:** The `value` property will be updated to reflect the corresponding format when `format` is updated.
  late final pulumi.Output<String?> format;
  /// The name which should be used for this Api Management Policy Fragment. Changing this forces a new Api Management Policy Fragment to be created.
  late final pulumi.Output<String> name;
  /// The value of the Policy Fragment.
  ///
  /// &gt; **Note:** Be aware of the two format possibilities. If the `value` is not applied and continues to cause a diff the format could be wrong.
  late final pulumi.Output<String> value;

  /// Creates a new [PolicyFragment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyFragment]. {@macro pulumi_apimanagement_policy_fragment_policy_fragment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyFragment(
    String name, {
    PolicyFragmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/policyFragment:PolicyFragment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementId = registerOutput<String>('apiManagementId');
    description = registerOutput<String?>('description');
    format = registerOutput<String?>('format');
    this.name = registerOutput<String>('name');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [PolicyFragment] resource's state with the given [name] and [id].
  static PolicyFragment get(
    String name,
    pulumi.Input<String> id, {
    PolicyFragmentState? state,
  }) {
    return PolicyFragment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PolicyFragment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/policyFragment:PolicyFragment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementId = registerOutput<String>('apiManagementId');
    description = registerOutput<String?>('description');
    format = registerOutput<String?>('format');
    this.name = registerOutput<String>('name');
    value = registerOutput<String>('value');
  }
}
