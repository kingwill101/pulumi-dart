import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_tag_description_args.dart';
import 'api_tag_description_state.dart';

/// Manages an API Tag Description within an API Management Service.
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
///     displayName: "Example API",
///     path: "example",
///     protocols: ["https"],
///     "import": {
///         contentFormat: "swagger-link-json",
///         contentValue: "https://raw.githubusercontent.com/hashicorp/terraform-provider-azurerm/refs/heads/main/internal/services/apimanagement/testdata/api_management_api_swagger.json",
///     },
/// });
/// const exampleTag = new azure.apimanagement.Tag("example", {
///     apiManagementId: exampleService.id,
///     name: "example-Tag",
/// });
/// const exampleApiTagDescription = new azure.apimanagement.ApiTagDescription("example", {
///     apiTagId: exampleTag.id,
///     description: "This is an example description",
///     externalDocsUrl: "https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs",
///     externalDocsDescription: "This is an example external docs description",
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
///     revision="1",
///     display_name="Example API",
///     path="example",
///     protocols=["https"],
///     import_={
///         "content_format": "swagger-link-json",
///         "content_value": "https://raw.githubusercontent.com/hashicorp/terraform-provider-azurerm/refs/heads/main/internal/services/apimanagement/testdata/api_management_api_swagger.json",
///     })
/// example_tag = azure.apimanagement.Tag("example",
///     api_management_id=example_service.id,
///     name="example-Tag")
/// example_api_tag_description = azure.apimanagement.ApiTagDescription("example",
///     api_tag_id=example_tag.id,
///     description="This is an example description",
///     external_docs_url="https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs",
///     external_docs_description="This is an example external docs description")
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
///         DisplayName = "Example API",
///         Path = "example",
///         Protocols = new[]
///         {
///             "https",
///         },
///         Import = new Azure.ApiManagement.Inputs.ApiImportArgs
///         {
///             ContentFormat = "swagger-link-json",
///             ContentValue = "https://raw.githubusercontent.com/hashicorp/terraform-provider-azurerm/refs/heads/main/internal/services/apimanagement/testdata/api_management_api_swagger.json",
///         },
///     });
///
///     var exampleTag = new Azure.ApiManagement.Tag("example", new()
///     {
///         ApiManagementId = exampleService.Id,
///         Name = "example-Tag",
///     });
///
///     var exampleApiTagDescription = new Azure.ApiManagement.ApiTagDescription("example", new()
///     {
///         ApiTagId = exampleTag.Id,
///         Description = "This is an example description",
///         ExternalDocsUrl = "https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs",
///         ExternalDocsDescription = "This is an example external docs description",
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
/// 		_, err = apimanagement.NewApi(ctx, "example", &apimanagement.ApiArgs{
/// 			Name:              pulumi.String("example-api"),
/// 			ResourceGroupName: example.Name,
/// 			ApiManagementName: exampleService.Name,
/// 			Revision:          pulumi.String("1"),
/// 			DisplayName:       pulumi.String("Example API"),
/// 			Path:              pulumi.String("example"),
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String("https"),
/// 			},
/// 			Import: &apimanagement.ApiImportArgs{
/// 				ContentFormat: pulumi.String("swagger-link-json"),
/// 				ContentValue:  pulumi.String("https://raw.githubusercontent.com/hashicorp/terraform-provider-azurerm/refs/heads/main/internal/services/apimanagement/testdata/api_management_api_swagger.json"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTag, err := apimanagement.NewTag(ctx, "example", &apimanagement.TagArgs{
/// 			ApiManagementId: exampleService.ID().ToIDOutput().ToStringOutput(),
/// 			Name:            pulumi.String("example-Tag"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewApiTagDescription(ctx, "example", &apimanagement.ApiTagDescriptionArgs{
/// 			ApiTagId:                exampleTag.ID().ToIDOutput().ToStringOutput(),
/// 			Description:             pulumi.String("This is an example description"),
/// 			ExternalDocsUrl:         "https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs",
/// 			ExternalDocsDescription: "This is an example external docs description",
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
/// resource "azure_apimanagement_api" "example" {
///   name                = "example-api"
///   resource_group_name = azure_core_resourcegroup.example.name
///   api_management_name = azure_apimanagement_service.example.name
///   revision            = "1"
///   display_name        = "Example API"
///   path                = "example"
///   protocols           = ["https"]
///   import = {
///     content_format = "swagger-link-json"
///     content_value  = "https://raw.githubusercontent.com/hashicorp/terraform-provider-azurerm/refs/heads/main/internal/services/apimanagement/testdata/api_management_api_swagger.json"
///   }
/// }
/// resource "azure_apimanagement_tag" "example" {
///   api_management_id = azure_apimanagement_service.example.id
///   name              = "example-Tag"
/// }
/// resource "azure_apimanagement_apitagdescription" "example" {
///   api_tag_id                = azure_apimanagement_tag.example.id
///   description               = "This is an example description"
///   external_docs_url         = "https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs"
///   external_docs_description = "This is an example external docs description"
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
/// import com.pulumi.azure.apimanagement.inputs.ApiImportArgs;
/// import com.pulumi.azure.apimanagement.Tag;
/// import com.pulumi.azure.apimanagement.TagArgs;
/// import com.pulumi.azure.apimanagement.ApiTagDescription;
/// import com.pulumi.azure.apimanagement.ApiTagDescriptionArgs;
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
///         var exampleApi = new Api("exampleApi", ApiArgs.builder()
///             .name("example-api")
///             .resourceGroupName(example.name())
///             .apiManagementName(exampleService.name())
///             .revision("1")
///             .displayName("Example API")
///             .path("example")
///             .protocols("https")
///             .import_(ApiImportArgs.builder()
///                 .contentFormat("swagger-link-json")
///                 .contentValue("https://raw.githubusercontent.com/hashicorp/terraform-provider-azurerm/refs/heads/main/internal/services/apimanagement/testdata/api_management_api_swagger.json")
///                 .build())
///             .build());
///
///         var exampleTag = new Tag("exampleTag", TagArgs.builder()
///             .apiManagementId(exampleService.id())
///             .name("example-Tag")
///             .build());
///
///         var exampleApiTagDescription = new ApiTagDescription("exampleApiTagDescription", ApiTagDescriptionArgs.builder()
///             .apiTagId(exampleTag.id())
///             .description("This is an example description")
///             .externalDocsUrl("https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs")
///             .externalDocsDescription("This is an example external docs description")
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
///       displayName: Example API
///       path: example
///       protocols:
///         - https
///       import:
///         contentFormat: swagger-link-json
///         contentValue: https://raw.githubusercontent.com/hashicorp/terraform-provider-azurerm/refs/heads/main/internal/services/apimanagement/testdata/api_management_api_swagger.json
///   exampleTag:
///     type: azure:apimanagement:Tag
///     name: example
///     properties:
///       apiManagementId: ${exampleService.id}
///       name: example-Tag
///   exampleApiTagDescription:
///     type: azure:apimanagement:ApiTagDescription
///     name: example
///     properties:
///       apiTagId: ${exampleTag.id}
///       description: This is an example description
///       externalDocsUrl: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
///       externalDocsDescription: This is an example external docs description
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
/// API Management API Schema's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/apiTagDescription:ApiTagDescription example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ApiManagement/service/instance1/apis/api1/tagDescriptions/tagDescriptionId1
/// ```
class ApiTagDescription extends pulumi.CustomResource {
  /// The The ID of the API Management API Tag. Changing this forces a new API Management API Tag Description to be created.
  late final pulumi.Output<String> apiTagId;
  /// The description of the Tag.
  late final pulumi.Output<String?> description;
  /// The description of the external documentation resources describing the tag.
  late final pulumi.Output<String?> externalDocumentationDescription;
  /// The URL of external documentation resources describing the tag.
  late final pulumi.Output<String?> externalDocumentationUrl;

  /// Creates a new [ApiTagDescription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiTagDescription]. {@macro pulumi_apimanagement_api_tag_description_api_tag_description_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiTagDescription(
    String name, {
    ApiTagDescriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/apiTagDescription:ApiTagDescription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    apiTagId = registerOutput<String>('apiTagId');
    description = registerOutput<String?>('description');
    externalDocumentationDescription = registerOutput<String?>('externalDocumentationDescription');
    externalDocumentationUrl = registerOutput<String?>('externalDocumentationUrl');
  }

  /// Gets an existing [ApiTagDescription] resource's state with the given [name] and [id].
  static ApiTagDescription get(
    String name,
    pulumi.Input<String> id, {
    ApiTagDescriptionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ApiTagDescription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ApiTagDescription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/apiTagDescription:ApiTagDescription',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiTagId = registerOutput<String>('apiTagId');
    description = registerOutput<String?>('description');
    externalDocumentationDescription = registerOutput<String?>('externalDocumentationDescription');
    externalDocumentationUrl = registerOutput<String?>('externalDocumentationUrl');
  }

  /// Creates a typed reference to an existing [ApiTagDescription] resource.
  ApiTagDescription.reference(String urn)
    : super(
        'azure:apimanagement/apiTagDescription:ApiTagDescription',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiTagId = registerOutput<String>('apiTagId');
    description = registerOutput<String?>('description');
    externalDocumentationDescription = registerOutput<String?>('externalDocumentationDescription');
    externalDocumentationUrl = registerOutput<String?>('externalDocumentationUrl');
  }
}
