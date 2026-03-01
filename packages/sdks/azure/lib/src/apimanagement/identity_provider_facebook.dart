import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_provider_facebook_args.dart';
import 'identity_provider_facebook_state.dart';

/// Manages an API Management Facebook Identity Provider.
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
/// const exampleIdentityProviderFacebook = new azure.apimanagement.IdentityProviderFacebook("example", {
///     resourceGroupName: example.name,
///     apiManagementName: exampleService.name,
///     appId: "00000000000000000000000000000000",
///     appSecret: "00000000000000000000000000000000",
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
/// example_identity_provider_facebook = azure.apimanagement.IdentityProviderFacebook("example",
///     resource_group_name=example.name,
///     api_management_name=example_service.name,
///     app_id="00000000000000000000000000000000",
///     app_secret="00000000000000000000000000000000")
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
///     var exampleIdentityProviderFacebook = new Azure.ApiManagement.IdentityProviderFacebook("example", new()
///     {
///         ResourceGroupName = example.Name,
///         ApiManagementName = exampleService.Name,
///         AppId = "00000000000000000000000000000000",
///         AppSecret = "00000000000000000000000000000000",
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
/// 		_, err = apimanagement.NewIdentityProviderFacebook(ctx, "example", &apimanagement.IdentityProviderFacebookArgs{
/// 			ResourceGroupName: example.Name,
/// 			ApiManagementName: exampleService.Name,
/// 			AppId:             pulumi.String("00000000000000000000000000000000"),
/// 			AppSecret:         pulumi.String("00000000000000000000000000000000"),
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
/// import com.pulumi.azure.apimanagement.IdentityProviderFacebook;
/// import com.pulumi.azure.apimanagement.IdentityProviderFacebookArgs;
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
///         var exampleIdentityProviderFacebook = new IdentityProviderFacebook("exampleIdentityProviderFacebook", IdentityProviderFacebookArgs.builder()
///             .resourceGroupName(example.name())
///             .apiManagementName(exampleService.name())
///             .appId("00000000000000000000000000000000")
///             .appSecret("00000000000000000000000000000000")
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
///   exampleIdentityProviderFacebook:
///     type: azure:apimanagement:IdentityProviderFacebook
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       apiManagementName: ${exampleService.name}
///       appId: '00000000000000000000000000000000'
///       appSecret: '00000000000000000000000000000000'
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
/// API Management Facebook Identity Provider can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/identityProviderFacebook:IdentityProviderFacebook example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ApiManagement/service/instance1/identityProviders/facebook
/// ```
class IdentityProviderFacebook extends pulumi.CustomResource {
  /// The Name of the API Management Service where this Facebook Identity Provider should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// App ID for Facebook.
  late final pulumi.Output<String> appId;
  /// App Secret for Facebook.
  late final pulumi.Output<String> appSecret;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [IdentityProviderFacebook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IdentityProviderFacebook]. {@macro pulumi_apimanagement_identity_provider_facebook_identity_provider_facebook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IdentityProviderFacebook(
    String name, {
    IdentityProviderFacebookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/identityProviderFacebook:IdentityProviderFacebook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementName = registerOutput<String>('apiManagementName');
    this.appId = registerOutput<String>('appId');
    this.appSecret = registerOutput<String>('appSecret');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [IdentityProviderFacebook] resource's state with the given [name] and [id].
  static IdentityProviderFacebook get(
    String name,
    pulumi.Input<String> id, {
    IdentityProviderFacebookState? state,
  }) {
    return IdentityProviderFacebook._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IdentityProviderFacebook._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/identityProviderFacebook:IdentityProviderFacebook',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementName = registerOutput<String>('apiManagementName');
    this.appId = registerOutput<String>('appId');
    this.appSecret = registerOutput<String>('appSecret');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
