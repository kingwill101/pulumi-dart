import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';
import 'policy_state.dart';

/// Manages a API Management service Policy.
///
/// &gt; **Note:** This resource will, upon creation, **overwrite any existing policy in the API Management service**, as there is no feasible way to test whether the policy has been modified from the default. Similarly, when this resource is destroyed, the API Management service will revert to its default policy.
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
/// const exampleNamedValue = new azure.apimanagement.NamedValue("example", {
///     name: "example-apimg",
///     resourceGroupName: example.name,
///     apiManagementName: exampleService.name,
///     displayName: "ExampleProperty",
///     value: "Example Value",
/// });
/// const examplePolicy = new azure.apimanagement.Policy("example", {
///     apiManagementId: exampleService.id,
///     xmlContent: std.file({
///         input: "example.xml",
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
/// example_named_value = azure.apimanagement.NamedValue("example",
///     name="example-apimg",
///     resource_group_name=example.name,
///     api_management_name=example_service.name,
///     display_name="ExampleProperty",
///     value="Example Value")
/// example_policy = azure.apimanagement.Policy("example",
///     api_management_id=example_service.id,
///     xml_content=std.file(input="example.xml").result)
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
///     var exampleNamedValue = new Azure.ApiManagement.NamedValue("example", new()
///     {
///         Name = "example-apimg",
///         ResourceGroupName = example.Name,
///         ApiManagementName = exampleService.Name,
///         DisplayName = "ExampleProperty",
///         Value = "Example Value",
///     });
///
///     var examplePolicy = new Azure.ApiManagement.Policy("example", new()
///     {
///         ApiManagementId = exampleService.Id,
///         XmlContent = Std.File.Invoke(new()
///         {
///             Input = "example.xml",
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
/// 		_, err = apimanagement.NewNamedValue(ctx, "example", &apimanagement.NamedValueArgs{
/// 			Name:              pulumi.String("example-apimg"),
/// 			ResourceGroupName: example.Name,
/// 			ApiManagementName: exampleService.Name,
/// 			DisplayName:       pulumi.String("ExampleProperty"),
/// 			Value:             pulumi.String("Example Value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "example.xml",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewPolicy(ctx, "example", &apimanagement.PolicyArgs{
/// 			ApiManagementId: exampleService.ID(),
/// 			XmlContent:      pulumi.String(invokeFile.Result),
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
/// import com.pulumi.azure.apimanagement.NamedValue;
/// import com.pulumi.azure.apimanagement.NamedValueArgs;
/// import com.pulumi.azure.apimanagement.Policy;
/// import com.pulumi.azure.apimanagement.PolicyArgs;
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
///         var exampleNamedValue = new NamedValue("exampleNamedValue", NamedValueArgs.builder()
///             .name("example-apimg")
///             .resourceGroupName(example.name())
///             .apiManagementName(exampleService.name())
///             .displayName("ExampleProperty")
///             .value("Example Value")
///             .build());
///
///         var examplePolicy = new Policy("examplePolicy", PolicyArgs.builder()
///             .apiManagementId(exampleService.id())
///             .xmlContent(StdFunctions.file(FileArgs.builder()
///                 .input("example.xml")
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
///   exampleNamedValue:
///     type: azure:apimanagement:NamedValue
///     name: example
///     properties:
///       name: example-apimg
///       resourceGroupName: ${example.name}
///       apiManagementName: ${exampleService.name}
///       displayName: ExampleProperty
///       value: Example Value
///   examplePolicy:
///     type: azure:apimanagement:Policy
///     name: example
///     properties:
///       apiManagementId: ${exampleService.id}
///       xmlContent:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: example.xml
///           return: result
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2024-05-01, 2022-08-01
///
/// ## Import
///
/// API Management service Policys can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/policy:Policy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/service1
/// ```
class Policy extends pulumi.CustomResource {
  /// The ID of the API Management service. Changing this forces a new API Management service Policy to be created.
  late final pulumi.Output<String> apiManagementId;

  /// The XML Content for this Policy as a string. To integrate frontend and backend services in Azure API Management, utilize the [`set-backend-service`](https://learn.microsoft.com/azure/api-management/set-backend-service-policy) policy, specifying the `base-url` value. Typically, this value corresponds to the `url` property defined in the `Backend` resource configuration.
  late final pulumi.Output<String> xmlContent;

  /// A link to a Policy XML Document, which must be publicly available.
  late final pulumi.Output<String?> xmlLink;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_apimanagement_policy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(String name, {PolicyArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure:apimanagement/policy:Policy',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    apiManagementId = registerOutput<String>('apiManagementId');
    xmlContent = registerOutput<String>('xmlContent');
    xmlLink = registerOutput<String?>('xmlLink');
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
         'azure:apimanagement/policy:Policy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiManagementId = registerOutput<String>('apiManagementId');
    xmlContent = registerOutput<String>('xmlContent');
    xmlLink = registerOutput<String?>('xmlLink');
  }
}
