import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_provider_microsoft_args.dart';
import 'identity_provider_microsoft_state.dart';

/// Manages an API Management Microsoft Identity Provider.
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
/// const exampleIdentityProviderMicrosoft = new azure.apimanagement.IdentityProviderMicrosoft("example", {
///     resourceGroupName: example.name,
///     apiManagementName: exampleService.name,
///     clientId: "00000000-0000-0000-0000-000000000000",
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
/// example_identity_provider_microsoft = azure.apimanagement.IdentityProviderMicrosoft("example",
///     resource_group_name=example.name,
///     api_management_name=example_service.name,
///     client_id="00000000-0000-0000-0000-000000000000",
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
///     var exampleIdentityProviderMicrosoft = new Azure.ApiManagement.IdentityProviderMicrosoft("example", new()
///     {
///         ResourceGroupName = example.Name,
///         ApiManagementName = exampleService.Name,
///         ClientId = "00000000-0000-0000-0000-000000000000",
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
/// 		_, err = apimanagement.NewIdentityProviderMicrosoft(ctx, "example", &apimanagement.IdentityProviderMicrosoftArgs{
/// 			ResourceGroupName: example.Name,
/// 			ApiManagementName: exampleService.Name,
/// 			ClientId:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			ClientSecret:      pulumi.String("00000000000000000000000000000000"),
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
/// import com.pulumi.azure.apimanagement.IdentityProviderMicrosoft;
/// import com.pulumi.azure.apimanagement.IdentityProviderMicrosoftArgs;
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
///         var exampleIdentityProviderMicrosoft = new IdentityProviderMicrosoft("exampleIdentityProviderMicrosoft", IdentityProviderMicrosoftArgs.builder()
///             .resourceGroupName(example.name())
///             .apiManagementName(exampleService.name())
///             .clientId("00000000-0000-0000-0000-000000000000")
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
///   exampleIdentityProviderMicrosoft:
///     type: azure:apimanagement:IdentityProviderMicrosoft
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       apiManagementName: ${exampleService.name}
///       clientId: 00000000-0000-0000-0000-000000000000
///       clientSecret: '00000000000000000000000000000000'
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
/// API Management Microsoft Identity Provider can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/identityProviderMicrosoft:IdentityProviderMicrosoft example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ApiManagement/service/instance1/identityProviders/microsoft
/// ```
class IdentityProviderMicrosoft extends pulumi.CustomResource {
  /// The Name of the API Management Service where this Microsoft Identity Provider should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// Client Id of the Azure AD Application.
  late final pulumi.Output<String> clientId;
  /// Client secret of the Azure AD Application.
  late final pulumi.Output<String> clientSecret;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [IdentityProviderMicrosoft].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IdentityProviderMicrosoft]. {@macro pulumi_apimanagement_identity_provider_microsoft_identity_provider_microsoft_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IdentityProviderMicrosoft(
    String name, {
    IdentityProviderMicrosoftArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/identityProviderMicrosoft:IdentityProviderMicrosoft',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementName = registerOutput<String>('apiManagementName');
    this.clientId = registerOutput<String>('clientId');
    this.clientSecret = registerOutput<String>('clientSecret');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [IdentityProviderMicrosoft] resource's state with the given [name] and [id].
  static IdentityProviderMicrosoft get(
    String name,
    pulumi.Input<String> id, {
    IdentityProviderMicrosoftState? state,
  }) {
    return IdentityProviderMicrosoft._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IdentityProviderMicrosoft._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/identityProviderMicrosoft:IdentityProviderMicrosoft',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementName = registerOutput<String>('apiManagementName');
    this.clientId = registerOutput<String>('clientId');
    this.clientSecret = registerOutput<String>('clientSecret');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
