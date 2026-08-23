import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_provider_google_args.dart';
import 'identity_provider_google_state.dart';

/// Manages an API Management Google Identity Provider.
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
///     publisherEmail: "company@mycompany.io",
///     skuName: "Developer_1",
/// });
/// const exampleIdentityProviderGoogle = new azure.apimanagement.IdentityProviderGoogle("example", {
///     resourceGroupName: example.name,
///     apiManagementName: exampleService.name,
///     clientId: "00000000.apps.googleusercontent.com",
///     clientSecret: "00000000000000000000000000000000",
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
///     publisher_email="company@mycompany.io",
///     sku_name="Developer_1")
/// example_identity_provider_google = azure.apimanagement.IdentityProviderGoogle("example",
///     resource_group_name=example.name,
///     api_management_name=example_service.name,
///     client_id="00000000.apps.googleusercontent.com",
///     client_secret="00000000000000000000000000000000")
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
///         PublisherEmail = "company@mycompany.io",
///         SkuName = "Developer_1",
///     });
///
///     var exampleIdentityProviderGoogle = new Azure.ApiManagement.IdentityProviderGoogle("example", new()
///     {
///         ResourceGroupName = example.Name,
///         ApiManagementName = exampleService.Name,
///         ClientId = "00000000.apps.googleusercontent.com",
///         ClientSecret = "00000000000000000000000000000000",
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
/// 			PublisherEmail:    pulumi.String("company@mycompany.io"),
/// 			SkuName:           pulumi.String("Developer_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewIdentityProviderGoogle(ctx, "example", &apimanagement.IdentityProviderGoogleArgs{
/// 			ResourceGroupName: example.Name,
/// 			ApiManagementName: exampleService.Name,
/// 			ClientId:          pulumi.String("00000000.apps.googleusercontent.com"),
/// 			ClientSecret:      pulumi.String("00000000000000000000000000000000"),
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
///   publisher_email     = "company@mycompany.io"
///   sku_name            = "Developer_1"
/// }
/// resource "azure_apimanagement_identityprovidergoogle" "example" {
///   resource_group_name = azure_core_resourcegroup.example.name
///   api_management_name = azure_apimanagement_service.example.name
///   client_id           = "00000000.apps.googleusercontent.com"
///   client_secret       = "00000000000000000000000000000000"
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
/// import com.pulumi.azure.apimanagement.IdentityProviderGoogle;
/// import com.pulumi.azure.apimanagement.IdentityProviderGoogleArgs;
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
///             .publisherEmail("company@mycompany.io")
///             .skuName("Developer_1")
///             .build());
///
///         var exampleIdentityProviderGoogle = new IdentityProviderGoogle("exampleIdentityProviderGoogle", IdentityProviderGoogleArgs.builder()
///             .resourceGroupName(example.name())
///             .apiManagementName(exampleService.name())
///             .clientId("00000000.apps.googleusercontent.com")
///             .clientSecret("00000000000000000000000000000000")
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
///       publisherEmail: company@mycompany.io
///       skuName: Developer_1
///   exampleIdentityProviderGoogle:
///     type: azure:apimanagement:IdentityProviderGoogle
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       apiManagementName: ${exampleService.name}
///       clientId: 00000000.apps.googleusercontent.com
///       clientSecret: '00000000000000000000000000000000'
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
/// API Management Google Identity Provider can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/identityProviderGoogle:IdentityProviderGoogle example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ApiManagement/service/instance1/identityProviders/google
/// ```
class IdentityProviderGoogle extends pulumi.CustomResource {
  /// The Name of the API Management Service where this Google Identity Provider should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// Client Id for Google Sign-in.
  late final pulumi.Output<String> clientId;
  /// Client secret for Google Sign-in.
  late final pulumi.Output<String> clientSecret;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [IdentityProviderGoogle].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IdentityProviderGoogle]. {@macro pulumi_apimanagement_identity_provider_google_identity_provider_google_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IdentityProviderGoogle(
    String name, {
    IdentityProviderGoogleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/identityProviderGoogle:IdentityProviderGoogle',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    clientId = registerOutput<String>('clientId');
    clientSecret = registerOutput<String>('clientSecret');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [IdentityProviderGoogle] resource's state with the given [name] and [id].
  static IdentityProviderGoogle get(
    String name,
    pulumi.Input<String> id, {
    IdentityProviderGoogleState? state,
  }) {
    return IdentityProviderGoogle._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IdentityProviderGoogle._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/identityProviderGoogle:IdentityProviderGoogle',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    clientId = registerOutput<String>('clientId');
    clientSecret = registerOutput<String>('clientSecret');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
