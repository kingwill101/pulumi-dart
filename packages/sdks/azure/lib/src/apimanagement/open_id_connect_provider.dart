import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_id_connect_provider_args.dart';
import 'open_id_connect_provider_state.dart';

/// Manages an OpenID Connect Provider within a API Management Service.
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
/// const exampleOpenIdConnectProvider = new azure.apimanagement.OpenIdConnectProvider("example", {
///     name: "example-provider",
///     apiManagementName: exampleService.name,
///     resourceGroupName: example.name,
///     clientId: "00001111-2222-3333-4444-555566667777",
///     clientSecret: "00001111-423egvwdcsjx-00001111",
///     displayName: "Example Provider",
///     metadataEndpoint: "https://example.com/example",
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
/// example_open_id_connect_provider = azure.apimanagement.OpenIdConnectProvider("example",
///     name="example-provider",
///     api_management_name=example_service.name,
///     resource_group_name=example.name,
///     client_id="00001111-2222-3333-4444-555566667777",
///     client_secret="00001111-423egvwdcsjx-00001111",
///     display_name="Example Provider",
///     metadata_endpoint="https://example.com/example")
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
///     var exampleOpenIdConnectProvider = new Azure.ApiManagement.OpenIdConnectProvider("example", new()
///     {
///         Name = "example-provider",
///         ApiManagementName = exampleService.Name,
///         ResourceGroupName = example.Name,
///         ClientId = "00001111-2222-3333-4444-555566667777",
///         ClientSecret = "00001111-423egvwdcsjx-00001111",
///         DisplayName = "Example Provider",
///         MetadataEndpoint = "https://example.com/example",
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
/// 		_, err = apimanagement.NewOpenIdConnectProvider(ctx, "example", &apimanagement.OpenIdConnectProviderArgs{
/// 			Name:              pulumi.String("example-provider"),
/// 			ApiManagementName: exampleService.Name,
/// 			ResourceGroupName: example.Name,
/// 			ClientId:          pulumi.String("00001111-2222-3333-4444-555566667777"),
/// 			ClientSecret:      pulumi.String("00001111-423egvwdcsjx-00001111"),
/// 			DisplayName:       pulumi.String("Example Provider"),
/// 			MetadataEndpoint:  pulumi.String("https://example.com/example"),
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
/// resource "azure_apimanagement_openidconnectprovider" "example" {
///   name                = "example-provider"
///   api_management_name = azure_apimanagement_service.example.name
///   resource_group_name = azure_core_resourcegroup.example.name
///   client_id           = "00001111-2222-3333-4444-555566667777"
///   client_secret       = "00001111-423egvwdcsjx-00001111"
///   display_name        = "Example Provider"
///   metadata_endpoint   = "https://example.com/example"
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
/// import com.pulumi.azure.apimanagement.OpenIdConnectProvider;
/// import com.pulumi.azure.apimanagement.OpenIdConnectProviderArgs;
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
///         var exampleOpenIdConnectProvider = new OpenIdConnectProvider("exampleOpenIdConnectProvider", OpenIdConnectProviderArgs.builder()
///             .name("example-provider")
///             .apiManagementName(exampleService.name())
///             .resourceGroupName(example.name())
///             .clientId("00001111-2222-3333-4444-555566667777")
///             .clientSecret("00001111-423egvwdcsjx-00001111")
///             .displayName("Example Provider")
///             .metadataEndpoint("https://example.com/example")
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
///   exampleOpenIdConnectProvider:
///     type: azure:apimanagement:OpenIdConnectProvider
///     name: example
///     properties:
///       name: example-provider
///       apiManagementName: ${exampleService.name}
///       resourceGroupName: ${example.name}
///       clientId: 00001111-2222-3333-4444-555566667777
///       clientSecret: 00001111-423egvwdcsjx-00001111
///       displayName: Example Provider
///       metadataEndpoint: https://example.com/example
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
/// API Management OpenID Connect Providers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/openIdConnectProvider:OpenIdConnectProvider example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ApiManagement/service/instance1/openidConnectProviders/provider1
/// ```
class OpenIdConnectProvider extends pulumi.CustomResource {
  /// The name of the API Management Service in which this OpenID Connect Provider should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// The Client ID used for the Client Application.
  late final pulumi.Output<String> clientId;
  /// The Client Secret used for the Client Application.
  late final pulumi.Output<String> clientSecret;
  /// A description of this OpenID Connect Provider.
  late final pulumi.Output<String?> description;
  /// A user-friendly name for this OpenID Connect Provider.
  late final pulumi.Output<String> displayName;
  /// The URI of the Metadata endpoint.
  late final pulumi.Output<String> metadataEndpoint;
  /// the Name of the OpenID Connect Provider which should be created within the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [OpenIdConnectProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OpenIdConnectProvider]. {@macro pulumi_apimanagement_open_id_connect_provider_open_id_connect_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OpenIdConnectProvider(
    String name, {
    OpenIdConnectProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/openIdConnectProvider:OpenIdConnectProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['clientId', 'clientSecret'],
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    clientId = registerOutput<String>('clientId', isSecret: true);
    clientSecret = registerOutput<String>('clientSecret', isSecret: true);
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    metadataEndpoint = registerOutput<String>('metadataEndpoint');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [OpenIdConnectProvider] resource's state with the given [name] and [id].
  static OpenIdConnectProvider get(
    String name,
    pulumi.Input<String> id, {
    OpenIdConnectProviderState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OpenIdConnectProvider._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OpenIdConnectProvider._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/openIdConnectProvider:OpenIdConnectProvider',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    clientId = registerOutput<String>('clientId', isSecret: true);
    clientSecret = registerOutput<String>('clientSecret', isSecret: true);
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    metadataEndpoint = registerOutput<String>('metadataEndpoint');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Creates a typed reference to an existing [OpenIdConnectProvider] resource.
  OpenIdConnectProvider.reference(String urn)
    : super(
        'azure:apimanagement/openIdConnectProvider:OpenIdConnectProvider',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['clientId', 'clientSecret'],
        isResourceReference: true,
      ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    clientId = registerOutput<String>('clientId', isSecret: true);
    clientSecret = registerOutput<String>('clientSecret', isSecret: true);
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    metadataEndpoint = registerOutput<String>('metadataEndpoint');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
