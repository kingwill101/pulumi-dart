import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_tag_args.dart';
import 'product_tag_state.dart';

/// Manages an API Management Product tag
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
/// const exampleProduct = new azure.apimanagement.Product("example", {
///     productId: "test-product",
///     apiManagementName: exampleService.name,
///     resourceGroupName: example.name,
///     displayName: "Test Product",
///     subscriptionRequired: true,
///     approvalRequired: true,
///     published: true,
/// });
/// const exampleTag = new azure.apimanagement.Tag("example", {
///     apiManagementId: exampleService.id,
///     name: "example-tag",
/// });
/// const exampleProductTag = new azure.apimanagement.ProductTag("example", {
///     apiManagementProductId: exampleProduct.productId,
///     apiManagementName: exampleService.name,
///     resourceGroupName: example.name,
///     name: exampleTag.name,
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
/// example_product = azure.apimanagement.Product("example",
///     product_id="test-product",
///     api_management_name=example_service.name,
///     resource_group_name=example.name,
///     display_name="Test Product",
///     subscription_required=True,
///     approval_required=True,
///     published=True)
/// example_tag = azure.apimanagement.Tag("example",
///     api_management_id=example_service.id,
///     name="example-tag")
/// example_product_tag = azure.apimanagement.ProductTag("example",
///     api_management_product_id=example_product.product_id,
///     api_management_name=example_service.name,
///     resource_group_name=example.name,
///     name=example_tag.name)
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
///     var exampleProduct = new Azure.ApiManagement.Product("example", new()
///     {
///         ProductId = "test-product",
///         ApiManagementName = exampleService.Name,
///         ResourceGroupName = example.Name,
///         DisplayName = "Test Product",
///         SubscriptionRequired = true,
///         ApprovalRequired = true,
///         Published = true,
///     });
///
///     var exampleTag = new Azure.ApiManagement.Tag("example", new()
///     {
///         ApiManagementId = exampleService.Id,
///         Name = "example-tag",
///     });
///
///     var exampleProductTag = new Azure.ApiManagement.ProductTag("example", new()
///     {
///         ApiManagementProductId = exampleProduct.ProductId,
///         ApiManagementName = exampleService.Name,
///         ResourceGroupName = example.Name,
///         Name = exampleTag.Name,
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
/// 		exampleProduct, err := apimanagement.NewProduct(ctx, "example", &apimanagement.ProductArgs{
/// 			ProductId:            pulumi.String("test-product"),
/// 			ApiManagementName:    exampleService.Name,
/// 			ResourceGroupName:    example.Name,
/// 			DisplayName:          pulumi.String("Test Product"),
/// 			SubscriptionRequired: pulumi.Bool(true),
/// 			ApprovalRequired:     pulumi.Bool(true),
/// 			Published:            pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTag, err := apimanagement.NewTag(ctx, "example", &apimanagement.TagArgs{
/// 			ApiManagementId: exampleService.ID(),
/// 			Name:            pulumi.String("example-tag"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewProductTag(ctx, "example", &apimanagement.ProductTagArgs{
/// 			ApiManagementProductId: exampleProduct.ProductId,
/// 			ApiManagementName:      exampleService.Name,
/// 			ResourceGroupName:      example.Name,
/// 			Name:                   exampleTag.Name,
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
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_apimanagement_service" "example" {
///   name                = "example-apim"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   publisher_name      = "My Company"
///   publisher_email     = "company@terraform.io"
///   sku_name            = "Developer_1"
/// }
/// resource "azure_apimanagement_product" "example" {
///   product_id            = "test-product"
///   api_management_name   = azure_apimanagement_service.example.name
///   resource_group_name   = azure_core_resourcegroup.example.name
///   display_name          = "Test Product"
///   subscription_required = true
///   approval_required     = true
///   published             = true
/// }
/// resource "azure_apimanagement_tag" "example" {
///   api_management_id = azure_apimanagement_service.example.id
///   name              = "example-tag"
/// }
/// resource "azure_apimanagement_producttag" "example" {
///   api_management_product_id = azure_apimanagement_product.example.product_id
///   api_management_name       = azure_apimanagement_service.example.name
///   resource_group_name       = azure_core_resourcegroup.example.name
///   name                      = azure_apimanagement_tag.example.name
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
/// import com.pulumi.azure.apimanagement.Product;
/// import com.pulumi.azure.apimanagement.ProductArgs;
/// import com.pulumi.azure.apimanagement.Tag;
/// import com.pulumi.azure.apimanagement.TagArgs;
/// import com.pulumi.azure.apimanagement.ProductTag;
/// import com.pulumi.azure.apimanagement.ProductTagArgs;
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
///         var exampleProduct = new Product("exampleProduct", ProductArgs.builder()
///             .productId("test-product")
///             .apiManagementName(exampleService.name())
///             .resourceGroupName(example.name())
///             .displayName("Test Product")
///             .subscriptionRequired(true)
///             .approvalRequired(true)
///             .published(true)
///             .build());
///
///         var exampleTag = new Tag("exampleTag", TagArgs.builder()
///             .apiManagementId(exampleService.id())
///             .name("example-tag")
///             .build());
///
///         var exampleProductTag = new ProductTag("exampleProductTag", ProductTagArgs.builder()
///             .apiManagementProductId(exampleProduct.productId())
///             .apiManagementName(exampleService.name())
///             .resourceGroupName(example.name())
///             .name(exampleTag.name())
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
///   exampleProduct:
///     type: azure:apimanagement:Product
///     name: example
///     properties:
///       productId: test-product
///       apiManagementName: ${exampleService.name}
///       resourceGroupName: ${example.name}
///       displayName: Test Product
///       subscriptionRequired: true
///       approvalRequired: true
///       published: true
///   exampleTag:
///     type: azure:apimanagement:Tag
///     name: example
///     properties:
///       apiManagementId: ${exampleService.id}
///       name: example-tag
///   exampleProductTag:
///     type: azure:apimanagement:ProductTag
///     name: example
///     properties:
///       apiManagementProductId: ${exampleProduct.productId}
///       apiManagementName: ${exampleService.name}
///       resourceGroupName: ${example.name}
///       name: ${exampleTag.name}
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
/// API Management Products can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/productTag:ProductTag example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ApiManagement/service/instance1/products/myproduct/tags/mytag
/// ```
class ProductTag extends pulumi.CustomResource {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// The name of the API Management product. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementProductId;
  /// The name which should be used for this API Management Tag. Changing this forces a new API Management Tag to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [ProductTag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProductTag]. {@macro pulumi_apimanagement_product_tag_product_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProductTag(
    String name, {
    ProductTagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/productTag:ProductTag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    apiManagementProductId = registerOutput<String>('apiManagementProductId');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [ProductTag] resource's state with the given [name] and [id].
  static ProductTag get(
    String name,
    pulumi.Input<String> id, {
    ProductTagState? state,
  }) {
    return ProductTag._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProductTag._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/productTag:ProductTag',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    apiManagementProductId = registerOutput<String>('apiManagementProductId');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
