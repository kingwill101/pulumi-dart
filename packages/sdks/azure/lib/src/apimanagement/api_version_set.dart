import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_version_set_args.dart';
import 'api_version_set_state.dart';

/// Manages an API Version Set within an API Management Service.
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
///     publisherName: "pub1",
///     publisherEmail: "pub1@email.com",
///     skuName: "Developer_1",
/// });
/// const exampleApiVersionSet = new azure.apimanagement.ApiVersionSet("example", {
///     name: "example-apimapi-1_0_0",
///     resourceGroupName: example.name,
///     apiManagementName: exampleService.name,
///     displayName: "ExampleAPIVersionSet",
///     versioningScheme: "Segment",
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
///     publisher_name="pub1",
///     publisher_email="pub1@email.com",
///     sku_name="Developer_1")
/// example_api_version_set = azure.apimanagement.ApiVersionSet("example",
///     name="example-apimapi-1_0_0",
///     resource_group_name=example.name,
///     api_management_name=example_service.name,
///     display_name="ExampleAPIVersionSet",
///     versioning_scheme="Segment")
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
///         PublisherName = "pub1",
///         PublisherEmail = "pub1@email.com",
///         SkuName = "Developer_1",
///     });
///
///     var exampleApiVersionSet = new Azure.ApiManagement.ApiVersionSet("example", new()
///     {
///         Name = "example-apimapi-1_0_0",
///         ResourceGroupName = example.Name,
///         ApiManagementName = exampleService.Name,
///         DisplayName = "ExampleAPIVersionSet",
///         VersioningScheme = "Segment",
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
/// 			PublisherName:     pulumi.String("pub1"),
/// 			PublisherEmail:    pulumi.String("pub1@email.com"),
/// 			SkuName:           pulumi.String("Developer_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewApiVersionSet(ctx, "example", &apimanagement.ApiVersionSetArgs{
/// 			Name:              pulumi.String("example-apimapi-1_0_0"),
/// 			ResourceGroupName: example.Name,
/// 			ApiManagementName: exampleService.Name,
/// 			DisplayName:       pulumi.String("ExampleAPIVersionSet"),
/// 			VersioningScheme:  pulumi.String("Segment"),
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
///   publisher_name      = "pub1"
///   publisher_email     = "pub1@email.com"
///   sku_name            = "Developer_1"
/// }
/// resource "azure_apimanagement_apiversionset" "example" {
///   name                = "example-apimapi-1_0_0"
///   resource_group_name = azure_core_resourcegroup.example.name
///   api_management_name = azure_apimanagement_service.example.name
///   display_name        = "ExampleAPIVersionSet"
///   versioning_scheme   = "Segment"
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
/// import com.pulumi.azure.apimanagement.ApiVersionSet;
/// import com.pulumi.azure.apimanagement.ApiVersionSetArgs;
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
///             .publisherName("pub1")
///             .publisherEmail("pub1@email.com")
///             .skuName("Developer_1")
///             .build());
///
///         var exampleApiVersionSet = new ApiVersionSet("exampleApiVersionSet", ApiVersionSetArgs.builder()
///             .name("example-apimapi-1_0_0")
///             .resourceGroupName(example.name())
///             .apiManagementName(exampleService.name())
///             .displayName("ExampleAPIVersionSet")
///             .versioningScheme("Segment")
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
///   exampleApiVersionSet:
///     type: azure:apimanagement:ApiVersionSet
///     name: example
///     properties:
///       name: example-apimapi-1_0_0
///       resourceGroupName: ${example.name}
///       apiManagementName: ${exampleService.name}
///       displayName: ExampleAPIVersionSet
///       versioningScheme: Segment
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
/// API Version Set can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/apiVersionSet:ApiVersionSet example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/service1/apiVersionSets/set1
/// ```
class ApiVersionSet extends pulumi.CustomResource {
  /// The name of the API Management Service in which the API Version Set should exist. May only contain alphanumeric characters and dashes up to 50 characters in length. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// The description of API Version Set.
  late final pulumi.Output<String?> description;
  /// The display name of this API Version Set.
  late final pulumi.Output<String> displayName;
  /// The name of the API Version Set. May only contain alphanumeric characters and dashes up to 80 characters in length. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group in which the parent API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The name of the Header which should be read from Inbound Requests which defines the API Version.
  ///
  /// &gt; **Note:** This must be specified when `versioningScheme` is set to `Header`.
  late final pulumi.Output<String?> versionHeaderName;
  /// The name of the Query String which should be read from Inbound Requests which defines the API Version.
  ///
  /// &gt; **Note:** This must be specified when `versioningScheme` is set to `Query`.
  late final pulumi.Output<String?> versionQueryName;
  /// Specifies where in an Inbound HTTP Request that the API Version should be read from. Possible values are `Header`, `Query` and `Segment`.
  late final pulumi.Output<String> versioningScheme;

  /// Creates a new [ApiVersionSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiVersionSet]. {@macro pulumi_apimanagement_api_version_set_api_version_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiVersionSet(
    String name, {
    ApiVersionSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/apiVersionSet:ApiVersionSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    versionHeaderName = registerOutput<String?>('versionHeaderName');
    versionQueryName = registerOutput<String?>('versionQueryName');
    versioningScheme = registerOutput<String>('versioningScheme');
  }

  /// Gets an existing [ApiVersionSet] resource's state with the given [name] and [id].
  static ApiVersionSet get(
    String name,
    pulumi.Input<String> id, {
    ApiVersionSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ApiVersionSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ApiVersionSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/apiVersionSet:ApiVersionSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    versionHeaderName = registerOutput<String?>('versionHeaderName');
    versionQueryName = registerOutput<String?>('versionQueryName');
    versioningScheme = registerOutput<String>('versioningScheme');
  }

  /// Creates a typed reference to an existing [ApiVersionSet] resource.
  ApiVersionSet.reference(String urn)
    : super(
        'azure:apimanagement/apiVersionSet:ApiVersionSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    versionHeaderName = registerOutput<String?>('versionHeaderName');
    versionQueryName = registerOutput<String?>('versionQueryName');
    versioningScheme = registerOutput<String>('versioningScheme');
  }
}
