import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_policy_args.dart';
import 'api_policy_state.dart';

/// Manages an API Management API Policy
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.apimanagement.getApi({
///     name: "my-api",
///     apiManagementName: "example-apim",
///     resourceGroupName: "search-service",
///     revision: "2",
/// });
/// const exampleApiPolicy = new azure.apimanagement.ApiPolicy("example", {
///     apiName: example.then(example => example.name),
///     apiManagementName: example.then(example => example.apiManagementName),
///     resourceGroupName: example.then(example => example.resourceGroupName),
///     xmlContent: `<policies>
///   <inbound>
///     <find-and-replace from=\\"xyz\\" to=\\"abc\\" />
///   </inbound>
/// </policies>
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.apimanagement.get_api(name="my-api",
///     api_management_name="example-apim",
///     resource_group_name="search-service",
///     revision="2")
/// example_api_policy = azure.apimanagement.ApiPolicy("example",
///     api_name=example.name,
///     api_management_name=example.api_management_name,
///     resource_group_name=example.resource_group_name,
///     xml_content="""<policies>
///   <inbound>
///     <find-and-replace from=\"xyz\" to=\"abc\" />
///   </inbound>
/// </policies>
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
///     var example = Azure.ApiManagement.GetApi.Invoke(new()
///     {
///         Name = "my-api",
///         ApiManagementName = "example-apim",
///         ResourceGroupName = "search-service",
///         Revision = "2",
///     });
///
///     var exampleApiPolicy = new Azure.ApiManagement.ApiPolicy("example", new()
///     {
///         ApiName = example.Apply(getApiResult => getApiResult.Name),
///         ApiManagementName = example.Apply(getApiResult => getApiResult.ApiManagementName),
///         ResourceGroupName = example.Apply(getApiResult => getApiResult.ResourceGroupName),
///         XmlContent = @"<policies>
///   <inbound>
///     <find-and-replace from=\""xyz\"" to=\""abc\"" />
///   </inbound>
/// </policies>
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := apimanagement.LookupApi(ctx, &apimanagement.LookupApiArgs{
/// 			Name:              "my-api",
/// 			ApiManagementName: "example-apim",
/// 			ResourceGroupName: "search-service",
/// 			Revision:          "2",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewApiPolicy(ctx, "example", &apimanagement.ApiPolicyArgs{
/// 			ApiName:           pulumi.String(example.Name),
/// 			ApiManagementName: pulumi.String(example.ApiManagementName),
/// 			ResourceGroupName: pulumi.String(example.ResourceGroupName),
/// 			XmlContent: pulumi.String(`<policies>
///   <inbound>
///     <find-and-replace from=\"xyz\" to=\"abc\" />
///   </inbound>
/// </policies>
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
/// data "azure_apimanagement_getapi" "example" {
///   name                = "my-api"
///   api_management_name = "example-apim"
///   resource_group_name = "search-service"
///   revision            = "2"
/// }
///
/// resource "azure_apimanagement_apipolicy" "example" {
///   api_name            = data.azure_apimanagement_getapi.example.name
///   api_management_name = data.azure_apimanagement_getapi.example.api_management_name
///   resource_group_name = data.azure_apimanagement_getapi.example.resource_group_name
///   xml_content         = "<policies>\n  <inbound>\n    <find-and-replace from=\\\"xyz\\\" to=\\\"abc\\\" />\n  </inbound>\n</policies>\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.apimanagement.ApimanagementFunctions;
/// import com.pulumi.azure.apimanagement.inputs.GetApiArgs;
/// import com.pulumi.azure.apimanagement.ApiPolicy;
/// import com.pulumi.azure.apimanagement.ApiPolicyArgs;
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
///         final var example = ApimanagementFunctions.getApi(GetApiArgs.builder()
///             .name("my-api")
///             .apiManagementName("example-apim")
///             .resourceGroupName("search-service")
///             .revision("2")
///             .build());
///
///         var exampleApiPolicy = new ApiPolicy("exampleApiPolicy", ApiPolicyArgs.builder()
///             .apiName(example.name())
///             .apiManagementName(example.apiManagementName())
///             .resourceGroupName(example.resourceGroupName())
///             .xmlContent("""
/// <policies>
///   <inbound>
///     <find-and-replace from=\"xyz\" to=\"abc\" />
///   </inbound>
/// </policies>
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleApiPolicy:
///     type: azure:apimanagement:ApiPolicy
///     name: example
///     properties:
///       apiName: ${example.name}
///       apiManagementName: ${example.apiManagementName}
///       resourceGroupName: ${example.resourceGroupName}
///       xmlContent: |
///         <policies>
///           <inbound>
///             <find-and-replace from=\"xyz\" to=\"abc\" />
///           </inbound>
///         </policies>
/// variables:
///   example:
///     fn::invoke:
///       function: azure:apimanagement:getApi
///       arguments:
///         name: my-api
///         apiManagementName: example-apim
///         resourceGroupName: search-service
///         revision: '2'
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
/// API Management API Policy can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/apiPolicy:ApiPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/service1/apis/exampleId
/// ```
class ApiPolicy extends pulumi.CustomResource {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// The ID of the API Management API within the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiName;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The XML Content for this Policy as a string.
  late final pulumi.Output<String> xmlContent;
  /// A link to a Policy XML Document, which must be publicly available.
  late final pulumi.Output<String?> xmlLink;

  /// Creates a new [ApiPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiPolicy]. {@macro pulumi_apimanagement_api_policy_api_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiPolicy(
    String name, {
    ApiPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/apiPolicy:ApiPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    apiName = registerOutput<String>('apiName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    xmlContent = registerOutput<String>('xmlContent');
    xmlLink = registerOutput<String?>('xmlLink');
  }

  /// Gets an existing [ApiPolicy] resource's state with the given [name] and [id].
  static ApiPolicy get(
    String name,
    pulumi.Input<String> id, {
    ApiPolicyState? state,
  }) {
    return ApiPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApiPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/apiPolicy:ApiPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    apiName = registerOutput<String>('apiName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    xmlContent = registerOutput<String>('xmlContent');
    xmlLink = registerOutput<String?>('xmlLink');
  }
}
