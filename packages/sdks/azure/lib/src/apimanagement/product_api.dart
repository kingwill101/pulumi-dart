import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_api_args.dart';
import 'product_api_state.dart';

/// Manages an API Management API Assignment to a Product.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.apimanagement.getService({
///     name: "example-api",
///     resourceGroupName: "example-resources",
/// });
/// const exampleGetApi = example.then(example => azure.apimanagement.getApi({
///     name: "search-api",
///     apiManagementName: example.name,
///     resourceGroupName: example.resourceGroupName,
///     revision: "2",
/// }));
/// const exampleGetProduct = example.then(example => azure.apimanagement.getProduct({
///     productId: "my-product",
///     apiManagementName: example.name,
///     resourceGroupName: example.resourceGroupName,
/// }));
/// const exampleProductApi = new azure.apimanagement.ProductApi("example", {
///     apiName: exampleGetApi.then(exampleGetApi => exampleGetApi.name),
///     productId: exampleGetProduct.then(exampleGetProduct => exampleGetProduct.productId),
///     apiManagementName: example.then(example => example.name),
///     resourceGroupName: example.then(example => example.resourceGroupName),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.apimanagement.get_service(name="example-api",
///     resource_group_name="example-resources")
/// example_get_api = azure.apimanagement.get_api(name="search-api",
///     api_management_name=example.name,
///     resource_group_name=example.resource_group_name,
///     revision="2")
/// example_get_product = azure.apimanagement.get_product(product_id="my-product",
///     api_management_name=example.name,
///     resource_group_name=example.resource_group_name)
/// example_product_api = azure.apimanagement.ProductApi("example",
///     api_name=example_get_api.name,
///     product_id=example_get_product.product_id,
///     api_management_name=example.name,
///     resource_group_name=example.resource_group_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ApiManagement.GetService.Invoke(new()
///     {
///         Name = "example-api",
///         ResourceGroupName = "example-resources",
///     });
///
///     var exampleGetApi = Azure.ApiManagement.GetApi.Invoke(new()
///     {
///         Name = "search-api",
///         ApiManagementName = example.Apply(getServiceResult => getServiceResult.Name),
///         ResourceGroupName = example.Apply(getServiceResult => getServiceResult.ResourceGroupName),
///         Revision = "2",
///     });
///
///     var exampleGetProduct = Azure.ApiManagement.GetProduct.Invoke(new()
///     {
///         ProductId = "my-product",
///         ApiManagementName = example.Apply(getServiceResult => getServiceResult.Name),
///         ResourceGroupName = example.Apply(getServiceResult => getServiceResult.ResourceGroupName),
///     });
///
///     var exampleProductApi = new Azure.ApiManagement.ProductApi("example", new()
///     {
///         ApiName = exampleGetApi.Apply(getApiResult => getApiResult.Name),
///         ProductId = exampleGetProduct.Apply(getProductResult => getProductResult.ProductId),
///         ApiManagementName = example.Apply(getServiceResult => getServiceResult.Name),
///         ResourceGroupName = example.Apply(getServiceResult => getServiceResult.ResourceGroupName),
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
/// 		example, err := apimanagement.LookupService(ctx, &apimanagement.LookupServiceArgs{
/// 			Name:              "example-api",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetApi, err := apimanagement.LookupApi(ctx, &apimanagement.LookupApiArgs{
/// 			Name:              "search-api",
/// 			ApiManagementName: example.Name,
/// 			ResourceGroupName: example.ResourceGroupName,
/// 			Revision:          "2",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetProduct, err := apimanagement.LookupProduct(ctx, &apimanagement.LookupProductArgs{
/// 			ProductId:         "my-product",
/// 			ApiManagementName: example.Name,
/// 			ResourceGroupName: example.ResourceGroupName,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewProductApi(ctx, "example", &apimanagement.ProductApiArgs{
/// 			ApiName:           pulumi.String(exampleGetApi.Name),
/// 			ProductId:         pulumi.String(exampleGetProduct.ProductId),
/// 			ApiManagementName: pulumi.String(example.Name),
/// 			ResourceGroupName: pulumi.String(example.ResourceGroupName),
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
/// data "azure_apimanagement_getservice" "example" {
///   name                = "example-api"
///   resource_group_name = "example-resources"
/// }
/// data "azure_apimanagement_getapi" "exampleGetApi" {
///   name                = "search-api"
///   api_management_name = data.azure_apimanagement_getservice.example.name
///   resource_group_name = data.azure_apimanagement_getservice.example.resource_group_name
///   revision            = "2"
/// }
/// data "azure_apimanagement_getproduct" "exampleGetProduct" {
///   product_id          = "my-product"
///   api_management_name = data.azure_apimanagement_getservice.example.name
///   resource_group_name = data.azure_apimanagement_getservice.example.resource_group_name
/// }
///
/// resource "azure_apimanagement_productapi" "example" {
///   api_name            = data.azure_apimanagement_getapi.exampleGetApi.name
///   product_id          = data.azure_apimanagement_getproduct.exampleGetProduct.product_id
///   api_management_name = data.azure_apimanagement_getservice.example.name
///   resource_group_name = data.azure_apimanagement_getservice.example.resource_group_name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.apimanagement.ApimanagementFunctions;
/// import com.pulumi.azure.apimanagement.inputs.GetServiceArgs;
/// import com.pulumi.azure.apimanagement.inputs.GetApiArgs;
/// import com.pulumi.azure.apimanagement.inputs.GetProductArgs;
/// import com.pulumi.azure.apimanagement.ProductApi;
/// import com.pulumi.azure.apimanagement.ProductApiArgs;
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
///         final var example = ApimanagementFunctions.getService(GetServiceArgs.builder()
///             .name("example-api")
///             .resourceGroupName("example-resources")
///             .build());
///
///         final var exampleGetApi = ApimanagementFunctions.getApi(GetApiArgs.builder()
///             .name("search-api")
///             .apiManagementName(example.name())
///             .resourceGroupName(example.resourceGroupName())
///             .revision("2")
///             .build());
///
///         final var exampleGetProduct = ApimanagementFunctions.getProduct(GetProductArgs.builder()
///             .productId("my-product")
///             .apiManagementName(example.name())
///             .resourceGroupName(example.resourceGroupName())
///             .build());
///
///         var exampleProductApi = new ProductApi("exampleProductApi", ProductApiArgs.builder()
///             .apiName(exampleGetApi.name())
///             .productId(exampleGetProduct.productId())
///             .apiManagementName(example.name())
///             .resourceGroupName(example.resourceGroupName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleProductApi:
///     type: azure:apimanagement:ProductApi
///     name: example
///     properties:
///       apiName: ${exampleGetApi.name}
///       productId: ${exampleGetProduct.productId}
///       apiManagementName: ${example.name}
///       resourceGroupName: ${example.resourceGroupName}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:apimanagement:getService
///       arguments:
///         name: example-api
///         resourceGroupName: example-resources
///   exampleGetApi:
///     fn::invoke:
///       function: azure:apimanagement:getApi
///       arguments:
///         name: search-api
///         apiManagementName: ${example.name}
///         resourceGroupName: ${example.resourceGroupName}
///         revision: '2'
///   exampleGetProduct:
///     fn::invoke:
///       function: azure:apimanagement:getProduct
///       arguments:
///         productId: my-product
///         apiManagementName: ${example.name}
///         resourceGroupName: ${example.resourceGroupName}
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
/// API Management Product API's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/productApi:ProductApi example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/service1/products/exampleId/apis/apiId
/// ```
class ProductApi extends pulumi.CustomResource {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// The Name of the API Management API within the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiName;
  /// The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> productId;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [ProductApi].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProductApi]. {@macro pulumi_apimanagement_product_api_product_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProductApi(
    String name, {
    ProductApiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/productApi:ProductApi',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    apiName = registerOutput<String>('apiName');
    productId = registerOutput<String>('productId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [ProductApi] resource's state with the given [name] and [id].
  static ProductApi get(
    String name,
    pulumi.Input<String> id, {
    ProductApiState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ProductApi._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ProductApi._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/productApi:ProductApi',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    apiName = registerOutput<String>('apiName');
    productId = registerOutput<String>('productId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Creates a typed reference to an existing [ProductApi] resource.
  ProductApi.reference(String urn)
    : super(
        'azure:apimanagement/productApi:ProductApi',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    apiName = registerOutput<String>('apiName');
    productId = registerOutput<String>('productId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
