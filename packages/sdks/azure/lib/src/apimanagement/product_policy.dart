import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_policy_args.dart';
import 'product_policy_state.dart';

/// Manages an API Management Product Policy
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.apimanagement.getProduct({
///     productId: "my-product",
///     apiManagementName: "example-apim",
///     resourceGroupName: "search-service",
/// });
/// const exampleProductPolicy = new azure.apimanagement.ProductPolicy("example", {
///     productId: example.then(example => example.productId),
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
/// example = azure.apimanagement.get_product(product_id="my-product",
///     api_management_name="example-apim",
///     resource_group_name="search-service")
/// example_product_policy = azure.apimanagement.ProductPolicy("example",
///     product_id=example.product_id,
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
///     var example = Azure.ApiManagement.GetProduct.Invoke(new()
///     {
///         ProductId = "my-product",
///         ApiManagementName = "example-apim",
///         ResourceGroupName = "search-service",
///     });
///
///     var exampleProductPolicy = new Azure.ApiManagement.ProductPolicy("example", new()
///     {
///         ProductId = example.Apply(getProductResult => getProductResult.ProductId),
///         ApiManagementName = example.Apply(getProductResult => getProductResult.ApiManagementName),
///         ResourceGroupName = example.Apply(getProductResult => getProductResult.ResourceGroupName),
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
/// 		example, err := apimanagement.LookupProduct(ctx, &apimanagement.LookupProductArgs{
/// 			ProductId:         "my-product",
/// 			ApiManagementName: "example-apim",
/// 			ResourceGroupName: "search-service",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewProductPolicy(ctx, "example", &apimanagement.ProductPolicyArgs{
/// 			ProductId:         pulumi.String(example.ProductId),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.apimanagement.ApimanagementFunctions;
/// import com.pulumi.azure.apimanagement.inputs.GetProductArgs;
/// import com.pulumi.azure.apimanagement.ProductPolicy;
/// import com.pulumi.azure.apimanagement.ProductPolicyArgs;
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
///         final var example = ApimanagementFunctions.getProduct(GetProductArgs.builder()
///             .productId("my-product")
///             .apiManagementName("example-apim")
///             .resourceGroupName("search-service")
///             .build());
///
///         var exampleProductPolicy = new ProductPolicy("exampleProductPolicy", ProductPolicyArgs.builder()
///             .productId(example.productId())
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
///   exampleProductPolicy:
///     type: azure:apimanagement:ProductPolicy
///     name: example
///     properties:
///       productId: ${example.productId}
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
///       function: azure:apimanagement:getProduct
///       arguments:
///         productId: my-product
///         apiManagementName: example-apim
///         resourceGroupName: search-service
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
///
/// ## Import
///
/// API Management Product Policy can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/productPolicy:ProductPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/service1/products/product1
/// ```
class ProductPolicy extends pulumi.CustomResource {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> productId;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The XML Content for this Policy.
  late final pulumi.Output<String> xmlContent;
  /// A link to a Policy XML Document, which must be publicly available.
  late final pulumi.Output<String?> xmlLink;

  /// Creates a new [ProductPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProductPolicy]. {@macro pulumi_apimanagement_product_policy_product_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProductPolicy(
    String name, {
    ProductPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/productPolicy:ProductPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementName = registerOutput<String>('apiManagementName');
    this.productId = registerOutput<String>('productId');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.xmlContent = registerOutput<String>('xmlContent');
    this.xmlLink = registerOutput<String?>('xmlLink');
  }

  /// Gets an existing [ProductPolicy] resource's state with the given [name] and [id].
  static ProductPolicy get(
    String name,
    pulumi.Input<String> id, {
    ProductPolicyState? state,
  }) {
    return ProductPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProductPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/productPolicy:ProductPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementName = registerOutput<String>('apiManagementName');
    this.productId = registerOutput<String>('productId');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.xmlContent = registerOutput<String>('xmlContent');
    this.xmlLink = registerOutput<String?>('xmlLink');
  }
}
