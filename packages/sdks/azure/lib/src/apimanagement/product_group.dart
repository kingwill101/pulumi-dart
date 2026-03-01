import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_group_args.dart';
import 'product_group_state.dart';

/// Manages an API Management Product Assignment to a Group.
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
/// const exampleGetProduct = Promise.all([example, example]).then(([example, example1]) => azure.apimanagement.getProduct({
///     productId: "my-product",
///     apiManagementName: example.name,
///     resourceGroupName: example1.resourceGroupName,
/// }));
/// const exampleGetGroup = Promise.all([example, example]).then(([example, example1]) => azure.apimanagement.getGroup({
///     name: "my-group",
///     apiManagementName: example.name,
///     resourceGroupName: example1.resourceGroupName,
/// }));
/// const exampleProductGroup = new azure.apimanagement.ProductGroup("example", {
///     productId: exampleGetProduct.then(exampleGetProduct => exampleGetProduct.productId),
///     groupName: exampleGetGroup.then(exampleGetGroup => exampleGetGroup.name),
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
/// example_get_product = azure.apimanagement.get_product(product_id="my-product",
///     api_management_name=example.name,
///     resource_group_name=example.resource_group_name)
/// example_get_group = azure.apimanagement.get_group(name="my-group",
///     api_management_name=example.name,
///     resource_group_name=example.resource_group_name)
/// example_product_group = azure.apimanagement.ProductGroup("example",
///     product_id=example_get_product.product_id,
///     group_name=example_get_group.name,
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
///     var exampleGetProduct = Azure.ApiManagement.GetProduct.Invoke(new()
///     {
///         ProductId = "my-product",
///         ApiManagementName = example.Apply(getServiceResult => getServiceResult.Name),
///         ResourceGroupName = example.Apply(getServiceResult => getServiceResult.ResourceGroupName),
///     });
///
///     var exampleGetGroup = Azure.ApiManagement.GetGroup.Invoke(new()
///     {
///         Name = "my-group",
///         ApiManagementName = example.Apply(getServiceResult => getServiceResult.Name),
///         ResourceGroupName = example.Apply(getServiceResult => getServiceResult.ResourceGroupName),
///     });
///
///     var exampleProductGroup = new Azure.ApiManagement.ProductGroup("example", new()
///     {
///         ProductId = exampleGetProduct.Apply(getProductResult => getProductResult.ProductId),
///         GroupName = exampleGetGroup.Apply(getGroupResult => getGroupResult.Name),
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
/// 		exampleGetProduct, err := apimanagement.LookupProduct(ctx, &apimanagement.LookupProductArgs{
/// 			ProductId:         "my-product",
/// 			ApiManagementName: example.Name,
/// 			ResourceGroupName: example.ResourceGroupName,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetGroup, err := apimanagement.LookupGroup(ctx, &apimanagement.LookupGroupArgs{
/// 			Name:              "my-group",
/// 			ApiManagementName: example.Name,
/// 			ResourceGroupName: example.ResourceGroupName,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewProductGroup(ctx, "example", &apimanagement.ProductGroupArgs{
/// 			ProductId:         pulumi.String(exampleGetProduct.ProductId),
/// 			GroupName:         pulumi.String(exampleGetGroup.Name),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.apimanagement.ApimanagementFunctions;
/// import com.pulumi.azure.apimanagement.inputs.GetServiceArgs;
/// import com.pulumi.azure.apimanagement.inputs.GetProductArgs;
/// import com.pulumi.azure.apimanagement.inputs.GetGroupArgs;
/// import com.pulumi.azure.apimanagement.ProductGroup;
/// import com.pulumi.azure.apimanagement.ProductGroupArgs;
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
///         final var example = ApimanagementFunctions.getService(GetServiceArgs.builder()
///             .name("example-api")
///             .resourceGroupName("example-resources")
///             .build());
///
///         final var exampleGetProduct = ApimanagementFunctions.getProduct(GetProductArgs.builder()
///             .productId("my-product")
///             .apiManagementName(example.name())
///             .resourceGroupName(example.resourceGroupName())
///             .build());
///
///         final var exampleGetGroup = ApimanagementFunctions.getGroup(GetGroupArgs.builder()
///             .name("my-group")
///             .apiManagementName(example.name())
///             .resourceGroupName(example.resourceGroupName())
///             .build());
///
///         var exampleProductGroup = new ProductGroup("exampleProductGroup", ProductGroupArgs.builder()
///             .productId(exampleGetProduct.productId())
///             .groupName(exampleGetGroup.name())
///             .apiManagementName(example.name())
///             .resourceGroupName(example.resourceGroupName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleProductGroup:
///     type: azure:apimanagement:ProductGroup
///     name: example
///     properties:
///       productId: ${exampleGetProduct.productId}
///       groupName: ${exampleGetGroup.name}
///       apiManagementName: ${example.name}
///       resourceGroupName: ${example.resourceGroupName}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:apimanagement:getService
///       arguments:
///         name: example-api
///         resourceGroupName: example-resources
///   exampleGetProduct:
///     fn::invoke:
///       function: azure:apimanagement:getProduct
///       arguments:
///         productId: my-product
///         apiManagementName: ${example.name}
///         resourceGroupName: ${example.resourceGroupName}
///   exampleGetGroup:
///     fn::invoke:
///       function: azure:apimanagement:getGroup
///       arguments:
///         name: my-group
///         apiManagementName: ${example.name}
///         resourceGroupName: ${example.resourceGroupName}
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
/// API Management Product Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/productGroup:ProductGroup example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/service1/products/exampleId/groups/groupId
/// ```
class ProductGroup extends pulumi.CustomResource {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// The Name of the API Management Group within the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> groupName;
  /// The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> productId;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [ProductGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProductGroup]. {@macro pulumi_apimanagement_product_group_product_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProductGroup(
    String name, {
    ProductGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/productGroup:ProductGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementName = registerOutput<String>('apiManagementName');
    this.groupName = registerOutput<String>('groupName');
    this.productId = registerOutput<String>('productId');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [ProductGroup] resource's state with the given [name] and [id].
  static ProductGroup get(
    String name,
    pulumi.Input<String> id, {
    ProductGroupState? state,
  }) {
    return ProductGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProductGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/productGroup:ProductGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementName = registerOutput<String>('apiManagementName');
    this.groupName = registerOutput<String>('groupName');
    this.productId = registerOutput<String>('productId');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
