import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_operation_policy_args.dart';
import 'api_operation_policy_state.dart';

/// Manages an API Management API Operation Policy
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
/// const exampleService = new azure.apimanagement.Service("example", {
///     name: "example-apim",
///     location: example.location,
///     resourceGroupName: example.name,
///     publisherName: "My Company",
///     publisherEmail: "company@terraform.io",
///     skuName: "Developer_1",
/// });
/// const exampleApi = new azure.apimanagement.Api("example", {
///     name: "example-api",
///     resourceGroupName: example.name,
///     apiManagementName: exampleService.name,
///     revision: "1",
/// });
/// const exampleApiOperation = new azure.apimanagement.ApiOperation("example", {
///     operationId: "acctest-operation",
///     apiName: exampleApi.name,
///     apiManagementName: exampleService.name,
///     resourceGroupName: example.name,
///     displayName: "DELETE Resource",
///     method: "DELETE",
///     urlTemplate: "/resource",
/// });
/// const exampleApiOperationPolicy = new azure.apimanagement.ApiOperationPolicy("example", {
///     apiName: exampleApiOperation.apiName,
///     apiManagementName: exampleApiOperation.apiManagementName,
///     resourceGroupName: exampleApiOperation.resourceGroupName,
///     operationId: exampleApiOperation.operationId,
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
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.apimanagement.Service("example",
///     name="example-apim",
///     location=example.location,
///     resource_group_name=example.name,
///     publisher_name="My Company",
///     publisher_email="company@terraform.io",
///     sku_name="Developer_1")
/// example_api = azure.apimanagement.Api("example",
///     name="example-api",
///     resource_group_name=example.name,
///     api_management_name=example_service.name,
///     revision="1")
/// example_api_operation = azure.apimanagement.ApiOperation("example",
///     operation_id="acctest-operation",
///     api_name=example_api.name,
///     api_management_name=example_service.name,
///     resource_group_name=example.name,
///     display_name="DELETE Resource",
///     method="DELETE",
///     url_template="/resource")
/// example_api_operation_policy = azure.apimanagement.ApiOperationPolicy("example",
///     api_name=example_api_operation.api_name,
///     api_management_name=example_api_operation.api_management_name,
///     resource_group_name=example_api_operation.resource_group_name,
///     operation_id=example_api_operation.operation_id,
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
///         PublisherName = "My Company",
///         PublisherEmail = "company@terraform.io",
///         SkuName = "Developer_1",
///     });
///
///     var exampleApi = new Azure.ApiManagement.Api("example", new()
///     {
///         Name = "example-api",
///         ResourceGroupName = example.Name,
///         ApiManagementName = exampleService.Name,
///         Revision = "1",
///     });
///
///     var exampleApiOperation = new Azure.ApiManagement.ApiOperation("example", new()
///     {
///         OperationId = "acctest-operation",
///         ApiName = exampleApi.Name,
///         ApiManagementName = exampleService.Name,
///         ResourceGroupName = example.Name,
///         DisplayName = "DELETE Resource",
///         Method = "DELETE",
///         UrlTemplate = "/resource",
///     });
///
///     var exampleApiOperationPolicy = new Azure.ApiManagement.ApiOperationPolicy("example", new()
///     {
///         ApiName = exampleApiOperation.ApiName,
///         ApiManagementName = exampleApiOperation.ApiManagementName,
///         ResourceGroupName = exampleApiOperation.ResourceGroupName,
///         OperationId = exampleApiOperation.OperationId,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
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
/// 			PublisherName:     pulumi.String("My Company"),
/// 			PublisherEmail:    pulumi.String("company@terraform.io"),
/// 			SkuName:           pulumi.String("Developer_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleApi, err := apimanagement.NewApi(ctx, "example", &apimanagement.ApiArgs{
/// 			Name:              pulumi.String("example-api"),
/// 			ResourceGroupName: example.Name,
/// 			ApiManagementName: exampleService.Name,
/// 			Revision:          pulumi.String("1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleApiOperation, err := apimanagement.NewApiOperation(ctx, "example", &apimanagement.ApiOperationArgs{
/// 			OperationId:       pulumi.String("acctest-operation"),
/// 			ApiName:           exampleApi.Name,
/// 			ApiManagementName: exampleService.Name,
/// 			ResourceGroupName: example.Name,
/// 			DisplayName:       pulumi.String("DELETE Resource"),
/// 			Method:            pulumi.String("DELETE"),
/// 			UrlTemplate:       pulumi.String("/resource"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewApiOperationPolicy(ctx, "example", &apimanagement.ApiOperationPolicyArgs{
/// 			ApiName:           exampleApiOperation.ApiName,
/// 			ApiManagementName: exampleApiOperation.ApiManagementName,
/// 			ResourceGroupName: exampleApiOperation.ResourceGroupName,
/// 			OperationId:       exampleApiOperation.OperationId,
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
/// import com.pulumi.azure.apimanagement.Api;
/// import com.pulumi.azure.apimanagement.ApiArgs;
/// import com.pulumi.azure.apimanagement.ApiOperation;
/// import com.pulumi.azure.apimanagement.ApiOperationArgs;
/// import com.pulumi.azure.apimanagement.ApiOperationPolicy;
/// import com.pulumi.azure.apimanagement.ApiOperationPolicyArgs;
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
///             .publisherName("My Company")
///             .publisherEmail("company@terraform.io")
///             .skuName("Developer_1")
///             .build());
///
///         var exampleApi = new Api("exampleApi", ApiArgs.builder()
///             .name("example-api")
///             .resourceGroupName(example.name())
///             .apiManagementName(exampleService.name())
///             .revision("1")
///             .build());
///
///         var exampleApiOperation = new ApiOperation("exampleApiOperation", ApiOperationArgs.builder()
///             .operationId("acctest-operation")
///             .apiName(exampleApi.name())
///             .apiManagementName(exampleService.name())
///             .resourceGroupName(example.name())
///             .displayName("DELETE Resource")
///             .method("DELETE")
///             .urlTemplate("/resource")
///             .build());
///
///         var exampleApiOperationPolicy = new ApiOperationPolicy("exampleApiOperationPolicy", ApiOperationPolicyArgs.builder()
///             .apiName(exampleApiOperation.apiName())
///             .apiManagementName(exampleApiOperation.apiManagementName())
///             .resourceGroupName(exampleApiOperation.resourceGroupName())
///             .operationId(exampleApiOperation.operationId())
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
///       publisherName: My Company
///       publisherEmail: company@terraform.io
///       skuName: Developer_1
///   exampleApi:
///     type: azure:apimanagement:Api
///     name: example
///     properties:
///       name: example-api
///       resourceGroupName: ${example.name}
///       apiManagementName: ${exampleService.name}
///       revision: '1'
///   exampleApiOperation:
///     type: azure:apimanagement:ApiOperation
///     name: example
///     properties:
///       operationId: acctest-operation
///       apiName: ${exampleApi.name}
///       apiManagementName: ${exampleService.name}
///       resourceGroupName: ${example.name}
///       displayName: DELETE Resource
///       method: DELETE
///       urlTemplate: /resource
///   exampleApiOperationPolicy:
///     type: azure:apimanagement:ApiOperationPolicy
///     name: example
///     properties:
///       apiName: ${exampleApiOperation.apiName}
///       apiManagementName: ${exampleApiOperation.apiManagementName}
///       resourceGroupName: ${exampleApiOperation.resourceGroupName}
///       operationId: ${exampleApiOperation.operationId}
///       xmlContent: |
///         <policies>
///           <inbound>
///             <find-and-replace from=\"xyz\" to=\"abc\" />
///           </inbound>
///         </policies>
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
/// API Management API Operation Policy can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/apiOperationPolicy:ApiOperationPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/instance1/apis/api1/operations/operation1
/// ```
class ApiOperationPolicy extends pulumi.CustomResource {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// The name of the API within the API Management Service where the Operation exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiName;
  /// The operation identifier within an API. Must be unique in the current API Management service instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String> operationId;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The XML Content for this Policy.
  late final pulumi.Output<String> xmlContent;
  /// A link to a Policy XML Document, which must be publicly available.
  late final pulumi.Output<String?> xmlLink;

  /// Creates a new [ApiOperationPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiOperationPolicy]. {@macro pulumi_apimanagement_api_operation_policy_api_operation_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiOperationPolicy(
    String name, {
    ApiOperationPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/apiOperationPolicy:ApiOperationPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    apiName = registerOutput<String>('apiName');
    operationId = registerOutput<String>('operationId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    xmlContent = registerOutput<String>('xmlContent');
    xmlLink = registerOutput<String?>('xmlLink');
  }

  /// Gets an existing [ApiOperationPolicy] resource's state with the given [name] and [id].
  static ApiOperationPolicy get(
    String name,
    pulumi.Input<String> id, {
    ApiOperationPolicyState? state,
  }) {
    return ApiOperationPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApiOperationPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/apiOperationPolicy:ApiOperationPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    apiName = registerOutput<String>('apiName');
    operationId = registerOutput<String>('operationId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    xmlContent = registerOutput<String>('xmlContent');
    xmlLink = registerOutput<String?>('xmlLink');
  }
}
