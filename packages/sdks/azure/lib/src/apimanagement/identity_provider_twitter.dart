import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_provider_twitter_args.dart';
import 'identity_provider_twitter_state.dart';

/// Manages an API Management Twitter Identity Provider.
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
/// const exampleIdentityProviderTwitter = new azure.apimanagement.IdentityProviderTwitter("example", {
///     resourceGroupName: example.name,
///     apiManagementName: exampleService.name,
///     apiKey: "00000000000000000000000000000000",
///     apiSecretKey: "00000000000000000000000000000000",
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
/// example_identity_provider_twitter = azure.apimanagement.IdentityProviderTwitter("example",
///     resource_group_name=example.name,
///     api_management_name=example_service.name,
///     api_key="00000000000000000000000000000000",
///     api_secret_key="00000000000000000000000000000000")
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
///     var exampleIdentityProviderTwitter = new Azure.ApiManagement.IdentityProviderTwitter("example", new()
///     {
///         ResourceGroupName = example.Name,
///         ApiManagementName = exampleService.Name,
///         ApiKey = "00000000000000000000000000000000",
///         ApiSecretKey = "00000000000000000000000000000000",
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
/// 		_, err = apimanagement.NewIdentityProviderTwitter(ctx, "example", &apimanagement.IdentityProviderTwitterArgs{
/// 			ResourceGroupName: example.Name,
/// 			ApiManagementName: exampleService.Name,
/// 			ApiKey:            pulumi.String("00000000000000000000000000000000"),
/// 			ApiSecretKey:      pulumi.String("00000000000000000000000000000000"),
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
/// import com.pulumi.azure.apimanagement.IdentityProviderTwitter;
/// import com.pulumi.azure.apimanagement.IdentityProviderTwitterArgs;
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
///             .publisherEmail("company@mycompany.io")
///             .skuName("Developer_1")
///             .build());
///
///         var exampleIdentityProviderTwitter = new IdentityProviderTwitter("exampleIdentityProviderTwitter", IdentityProviderTwitterArgs.builder()
///             .resourceGroupName(example.name())
///             .apiManagementName(exampleService.name())
///             .apiKey("00000000000000000000000000000000")
///             .apiSecretKey("00000000000000000000000000000000")
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
///   exampleIdentityProviderTwitter:
///     type: azure:apimanagement:IdentityProviderTwitter
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       apiManagementName: ${exampleService.name}
///       apiKey: '00000000000000000000000000000000'
///       apiSecretKey: '00000000000000000000000000000000'
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
/// API Management Twitter Identity Provider can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/identityProviderTwitter:IdentityProviderTwitter example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ApiManagement/service/instance1/identityProviders/twitter
/// ```
class IdentityProviderTwitter extends pulumi.CustomResource {
  /// App Consumer API key for Twitter.
  late final pulumi.Output<String> apiKey;
  /// The Name of the API Management Service where this Twitter Identity Provider should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// App Consumer API secret key for Twitter.
  late final pulumi.Output<String> apiSecretKey;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [IdentityProviderTwitter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IdentityProviderTwitter]. {@macro pulumi_apimanagement_identity_provider_twitter_identity_provider_twitter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IdentityProviderTwitter(
    String name, {
    IdentityProviderTwitterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/identityProviderTwitter:IdentityProviderTwitter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiKey = registerOutput<String>('apiKey');
    this.apiManagementName = registerOutput<String>('apiManagementName');
    this.apiSecretKey = registerOutput<String>('apiSecretKey');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [IdentityProviderTwitter] resource's state with the given [name] and [id].
  static IdentityProviderTwitter get(
    String name,
    pulumi.Input<String> id, {
    IdentityProviderTwitterState? state,
  }) {
    return IdentityProviderTwitter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IdentityProviderTwitter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/identityProviderTwitter:IdentityProviderTwitter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiKey = registerOutput<String>('apiKey');
    this.apiManagementName = registerOutput<String>('apiManagementName');
    this.apiSecretKey = registerOutput<String>('apiSecretKey');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
