import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_args.dart';
import 'product_state.dart';

/// Manages an API Management Product.
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
///     publisherEmail: "company@exmaple.com",
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
///     publisher_email="company@exmaple.com",
///     sku_name="Developer_1")
/// example_product = azure.apimanagement.Product("example",
///     product_id="test-product",
///     api_management_name=example_service.name,
///     resource_group_name=example.name,
///     display_name="Test Product",
///     subscription_required=True,
///     approval_required=True,
///     published=True)
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
///         PublisherEmail = "company@exmaple.com",
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
/// 			PublisherEmail:    pulumi.String("company@exmaple.com"),
/// 			SkuName:           pulumi.String("Developer_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewProduct(ctx, "example", &apimanagement.ProductArgs{
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
///   publisher_email     = "company@exmaple.com"
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
///             .publisherEmail("company@exmaple.com")
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
///       publisherEmail: company@exmaple.com
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
/// $ pulumi import azure:apimanagement/product:Product example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ApiManagement/service/instance1/products/myproduct
/// ```
class Product extends pulumi.CustomResource {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// Do subscribers need to be approved prior to being able to use the Product?
  ///
  /// &gt; **Note:** `approvalRequired` can only be set when `subscriptionRequired` is set to `true`.
  late final pulumi.Output<bool?> approvalRequired;
  /// A description of this Product, which may include HTML formatting tags.
  late final pulumi.Output<String?> description;
  /// The Display Name for this API Management Product.
  late final pulumi.Output<String> displayName;
  /// The Identifier for this Product, which must be unique within the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> productId;
  /// Is this Product Published?
  late final pulumi.Output<bool> published;
  /// The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Is a Subscription required to access API's included in this Product? Defaults to `true`.
  late final pulumi.Output<bool?> subscriptionRequired;
  /// The number of subscriptions a user can have to this Product at the same time.
  ///
  /// &gt; **Note:** `subscriptionsLimit` can only be set when `subscriptionRequired` is set to `true`.
  late final pulumi.Output<int?> subscriptionsLimit;
  /// The Terms and Conditions for this Product, which must be accepted by Developers before they can begin the Subscription process.
  late final pulumi.Output<String?> terms;

  /// Creates a new [Product].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Product]. {@macro pulumi_apimanagement_product_product_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Product(
    String name, {
    ProductArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/product:Product',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    approvalRequired = registerOutput<bool?>('approvalRequired');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    productId = registerOutput<String>('productId');
    published = registerOutput<bool>('published');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subscriptionRequired = registerOutput<bool?>('subscriptionRequired');
    subscriptionsLimit = registerOutput<int?>('subscriptionsLimit');
    terms = registerOutput<String?>('terms');
  }

  /// Gets an existing [Product] resource's state with the given [name] and [id].
  static Product get(
    String name,
    pulumi.Input<String> id, {
    ProductState? state,
  }) {
    return Product._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Product._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/product:Product',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    approvalRequired = registerOutput<bool?>('approvalRequired');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    productId = registerOutput<String>('productId');
    published = registerOutput<bool>('published');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subscriptionRequired = registerOutput<bool?>('subscriptionRequired');
    subscriptionsLimit = registerOutput<int?>('subscriptionsLimit');
    terms = registerOutput<String?>('terms');
  }
}
