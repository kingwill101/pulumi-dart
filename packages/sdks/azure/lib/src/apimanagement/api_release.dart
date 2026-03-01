import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_release_args.dart';
import 'api_release_state.dart';

/// Manages a API Management API Release.
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
/// const exampleApiRelease = new azure.apimanagement.ApiRelease("example", {
///     name: "example-Api-Release",
///     apiId: exampleApi.id,
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
/// example_api_release = azure.apimanagement.ApiRelease("example",
///     name="example-Api-Release",
///     api_id=example_api.id)
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
///     var exampleApiRelease = new Azure.ApiManagement.ApiRelease("example", new()
///     {
///         Name = "example-Api-Release",
///         ApiId = exampleApi.Id,
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
/// 		_, err = apimanagement.NewApiRelease(ctx, "example", &apimanagement.ApiReleaseArgs{
/// 			Name:  pulumi.String("example-Api-Release"),
/// 			ApiId: exampleApi.ID(),
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
/// import com.pulumi.azure.apimanagement.inputs.ApiImportArgs;
/// import com.pulumi.azure.apimanagement.ApiRelease;
/// import com.pulumi.azure.apimanagement.ApiReleaseArgs;
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
///             .displayName("Example API")
///             .path("example")
///             .protocols("https")
///             .import_(ApiImportArgs.builder()
///                 .contentFormat("swagger-link-json")
///                 .contentValue("https://raw.githubusercontent.com/hashicorp/terraform-provider-azurerm/refs/heads/main/internal/services/apimanagement/testdata/api_management_api_swagger.json")
///                 .build())
///             .build());
///
///         var exampleApiRelease = new ApiRelease("exampleApiRelease", ApiReleaseArgs.builder()
///             .name("example-Api-Release")
///             .apiId(exampleApi.id())
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
///   exampleApiRelease:
///     type: azure:apimanagement:ApiRelease
///     name: example
///     properties:
///       name: example-Api-Release
///       apiId: ${exampleApi.id}
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
/// API Management API Releases can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/apiRelease:ApiRelease example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/service1/apis/api1/releases/release1
/// ```
class ApiRelease extends pulumi.CustomResource {
  /// The ID of the API Management API. Changing this forces a new API Management API Release to be created.
  late final pulumi.Output<String> apiId;
  /// The name which should be used for this API Management API Release. Changing this forces a new API Management API Release to be created.
  late final pulumi.Output<String> name;
  /// The Release Notes.
  late final pulumi.Output<String?> notes;

  /// Creates a new [ApiRelease].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiRelease]. {@macro pulumi_apimanagement_api_release_api_release_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiRelease(
    String name, {
    ApiReleaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/apiRelease:ApiRelease',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.name = registerOutput<String>('name');
    this.notes = registerOutput<String?>('notes');
  }

  /// Gets an existing [ApiRelease] resource's state with the given [name] and [id].
  static ApiRelease get(
    String name,
    pulumi.Input<String> id, {
    ApiReleaseState? state,
  }) {
    return ApiRelease._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApiRelease._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/apiRelease:ApiRelease',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.name = registerOutput<String>('name');
    this.notes = registerOutput<String?>('notes');
  }
}
