import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_args.dart';
import 'api_contact.dart';
import 'api_import.dart';
import 'api_license.dart';
import 'api_oauth2_authorization.dart';
import 'api_openid_authentication.dart';
import 'api_state.dart';
import 'api_subscription_key_parameter_names.dart';

/// Manages an API within an API Management Service.
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
///         contentValue: "https://raw.githubusercontent.com/hashicorp/terraform-provider-azurerm/refs/heads/main/internal/services/apimanagement/testdata/api_management_api_schema_swagger.json",
///     },
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
///         "content_value": "https://raw.githubusercontent.com/hashicorp/terraform-provider-azurerm/refs/heads/main/internal/services/apimanagement/testdata/api_management_api_schema_swagger.json",
///     })
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
///             ContentValue = "https://raw.githubusercontent.com/hashicorp/terraform-provider-azurerm/refs/heads/main/internal/services/apimanagement/testdata/api_management_api_schema_swagger.json",
///         },
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
/// 				ContentValue:  pulumi.String("https://raw.githubusercontent.com/hashicorp/terraform-provider-azurerm/refs/heads/main/internal/services/apimanagement/testdata/api_management_api_schema_swagger.json"),
/// 			},
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
///             .publisherEmail("company@exmaple.com")
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
///                 .contentValue("https://raw.githubusercontent.com/hashicorp/terraform-provider-azurerm/refs/heads/main/internal/services/apimanagement/testdata/api_management_api_schema_swagger.json")
///                 .build())
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
///         contentValue: https://raw.githubusercontent.com/hashicorp/terraform-provider-azurerm/refs/heads/main/internal/services/apimanagement/testdata/api_management_api_schema_swagger.json
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
/// API Management API's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/api:Api example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ApiManagement/service/instance1/apis/api1;rev=1
/// ```
class Api extends pulumi.CustomResource {
  /// The Name of the API Management Service where this API should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;

  /// Type of API. Possible values are `graphql`, `http`, `soap`, and `websocket`. Defaults to `http`.
  late final pulumi.Output<String> apiType;

  /// A `contact` block as documented below.
  late final pulumi.Output<ApiContact?> contact;

  /// A description of the API Management API, which may include HTML formatting tags.
  late final pulumi.Output<String?> description;

  /// The display name of the API.
  late final pulumi.Output<String> displayName;

  /// A `import` block as documented below.
  ///
  /// &gt; **Note:** The `display_name`, `description`, `contact`, and `license` fields can be imported by the `import` block, which might cause a drift if these fields are set along with the `import` block.
  late final pulumi.Output<ApiImport?> import;

  /// Is this the current API Revision?
  late final pulumi.Output<bool> isCurrent;

  /// Is this API Revision online/accessible via the Gateway?
  late final pulumi.Output<bool> isOnline;

  /// A `license` block as documented below.
  late final pulumi.Output<ApiLicense?> license;

  /// The name of the API Management API. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// An `oauth2_authorization` block as documented below.
  late final pulumi.Output<ApiOauth2Authorization?> oauth2Authorization;

  /// An `openid_authentication` block as documented below.
  late final pulumi.Output<ApiOpenidAuthentication?> openidAuthentication;

  /// The Path for this API Management API, which is a relative URL which uniquely identifies this API and all of its resource paths within the API Management Service.
  late final pulumi.Output<String> path;

  /// A list of protocols the operations in this API can be invoked. Possible values are `http`, `https`, `ws`, and `wss`.
  ///
  /// &gt; **Note:** `display_name`, `path` and `protocols` are required when `source_api_id` is not set.
  late final pulumi.Output<List<String>> protocols;

  /// The Name of the Resource Group where the API Management API exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The Revision which used for this API. Changing this forces a new resource to be created.
  late final pulumi.Output<String> revision;

  /// The description of the API Revision of the API Management API.
  late final pulumi.Output<String?> revisionDescription;

  /// Absolute URL of the backend service implementing this API.
  ///
  /// &gt; **Note:** The `service_url` is required when `api_type` is specified as `websocket`.
  late final pulumi.Output<String> serviceUrl;

  /// The API id of the source API, which could be in format `azurerm_api_management_api.example.id` or in format `azurerm_api_management_api.example.id;rev=1`
  late final pulumi.Output<String?> sourceApiId;

  /// A `subscription_key_parameter_names` block as documented below.
  late final pulumi.Output<ApiSubscriptionKeyParameterNames>
  subscriptionKeyParameterNames;

  /// Should this API require a subscription key? Defaults to `true`.
  late final pulumi.Output<bool?> subscriptionRequired;

  /// Absolute URL of the Terms of Service for the API.
  late final pulumi.Output<String?> termsOfServiceUrl;

  /// The Version number of this API, if this API is versioned.
  late final pulumi.Output<String> version;

  /// The description of the API Version of the API Management API.
  late final pulumi.Output<String?> versionDescription;

  /// The ID of the Version Set which this API is associated with.
  ///
  /// &gt; **Note:** When `version` is set, `version_set_id` must also be specified
  late final pulumi.Output<String> versionSetId;

  /// Creates a new [Api].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Api]. {@macro pulumi_apimanagement_api_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Api(String name, {ApiArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure:apimanagement/api:Api',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    apiType = registerOutput<String>('apiType');
    contact = registerOutput<ApiContact?>('contact');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    import = registerOutput<ApiImport?>('import');
    isCurrent = registerOutput<bool>('isCurrent');
    isOnline = registerOutput<bool>('isOnline');
    license = registerOutput<ApiLicense?>('license');
    this.name = registerOutput<String>('name');
    oauth2Authorization = registerOutput<ApiOauth2Authorization?>(
      'oauth2Authorization',
    );
    openidAuthentication = registerOutput<ApiOpenidAuthentication?>(
      'openidAuthentication',
    );
    path = registerOutput<String>('path');
    protocols = registerOutput<List<String>>('protocols');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    revision = registerOutput<String>('revision');
    revisionDescription = registerOutput<String?>('revisionDescription');
    serviceUrl = registerOutput<String>('serviceUrl');
    sourceApiId = registerOutput<String?>('sourceApiId');
    subscriptionKeyParameterNames =
        registerOutput<ApiSubscriptionKeyParameterNames>(
          'subscriptionKeyParameterNames',
        );
    subscriptionRequired = registerOutput<bool?>('subscriptionRequired');
    termsOfServiceUrl = registerOutput<String?>('termsOfServiceUrl');
    version = registerOutput<String>('version');
    versionDescription = registerOutput<String?>('versionDescription');
    versionSetId = registerOutput<String>('versionSetId');
  }

  /// Gets an existing [Api] resource's state with the given [name] and [id].
  static Api get(String name, pulumi.Input<String> id, {ApiState? state}) {
    return Api._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Api._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:apimanagement/api:Api',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    apiType = registerOutput<String>('apiType');
    contact = registerOutput<ApiContact?>('contact');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    import = registerOutput<ApiImport?>('import');
    isCurrent = registerOutput<bool>('isCurrent');
    isOnline = registerOutput<bool>('isOnline');
    license = registerOutput<ApiLicense?>('license');
    this.name = registerOutput<String>('name');
    oauth2Authorization = registerOutput<ApiOauth2Authorization?>(
      'oauth2Authorization',
    );
    openidAuthentication = registerOutput<ApiOpenidAuthentication?>(
      'openidAuthentication',
    );
    path = registerOutput<String>('path');
    protocols = registerOutput<List<String>>('protocols');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    revision = registerOutput<String>('revision');
    revisionDescription = registerOutput<String?>('revisionDescription');
    serviceUrl = registerOutput<String>('serviceUrl');
    sourceApiId = registerOutput<String?>('sourceApiId');
    subscriptionKeyParameterNames =
        registerOutput<ApiSubscriptionKeyParameterNames>(
          'subscriptionKeyParameterNames',
        );
    subscriptionRequired = registerOutput<bool?>('subscriptionRequired');
    termsOfServiceUrl = registerOutput<String?>('termsOfServiceUrl');
    version = registerOutput<String>('version');
    versionDescription = registerOutput<String?>('versionDescription');
    versionSetId = registerOutput<String>('versionSetId');
  }
}
