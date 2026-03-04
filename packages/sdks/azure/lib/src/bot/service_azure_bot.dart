import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_azure_bot_args.dart';
import 'service_azure_bot_state.dart';

/// Manages an Azure Bot Service.
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
/// const exampleInsights = new azure.appinsights.Insights("example", {
///     name: "example-appinsights",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationType: "web",
/// });
/// const exampleApiKey = new azure.appinsights.ApiKey("example", {
///     name: "example-appinsightsapikey",
///     applicationInsightsId: exampleInsights.id,
///     readPermissions: [
///         "aggregate",
///         "api",
///         "draft",
///         "extendqueries",
///         "search",
///     ],
/// });
/// const current = azure.core.getClientConfig({});
/// const exampleServiceAzureBot = new azure.bot.ServiceAzureBot("example", {
///     name: "exampleazurebot",
///     resourceGroupName: example.name,
///     location: "global",
///     microsoftAppId: current.then(current => current.clientId),
///     sku: "F0",
///     endpoint: "https://example.com",
///     developerAppInsightsApiKey: exampleApiKey.apiKey,
///     developerAppInsightsApplicationId: exampleInsights.appId,
///     tags: {
///         environment: "test",
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
/// example_insights = azure.appinsights.Insights("example",
///     name="example-appinsights",
///     location=example.location,
///     resource_group_name=example.name,
///     application_type="web")
/// example_api_key = azure.appinsights.ApiKey("example",
///     name="example-appinsightsapikey",
///     application_insights_id=example_insights.id,
///     read_permissions=[
///         "aggregate",
///         "api",
///         "draft",
///         "extendqueries",
///         "search",
///     ])
/// current = azure.core.get_client_config()
/// example_service_azure_bot = azure.bot.ServiceAzureBot("example",
///     name="exampleazurebot",
///     resource_group_name=example.name,
///     location="global",
///     microsoft_app_id=current.client_id,
///     sku="F0",
///     endpoint="https://example.com",
///     developer_app_insights_api_key=example_api_key.api_key,
///     developer_app_insights_application_id=example_insights.app_id,
///     tags={
///         "environment": "test",
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
///     var exampleInsights = new Azure.AppInsights.Insights("example", new()
///     {
///         Name = "example-appinsights",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationType = "web",
///     });
///
///     var exampleApiKey = new Azure.AppInsights.ApiKey("example", new()
///     {
///         Name = "example-appinsightsapikey",
///         ApplicationInsightsId = exampleInsights.Id,
///         ReadPermissions = new[]
///         {
///             "aggregate",
///             "api",
///             "draft",
///             "extendqueries",
///             "search",
///         },
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleServiceAzureBot = new Azure.Bot.ServiceAzureBot("example", new()
///     {
///         Name = "exampleazurebot",
///         ResourceGroupName = example.Name,
///         Location = "global",
///         MicrosoftAppId = current.Apply(getClientConfigResult => getClientConfigResult.ClientId),
///         Sku = "F0",
///         Endpoint = "https://example.com",
///         DeveloperAppInsightsApiKey = exampleApiKey.ApiKey,
///         DeveloperAppInsightsApplicationId = exampleInsights.AppId,
///         Tags =
///         {
///             { "environment", "test" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/bot"
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
/// 		exampleInsights, err := appinsights.NewInsights(ctx, "example", &appinsights.InsightsArgs{
/// 			Name:              pulumi.String("example-appinsights"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ApplicationType:   pulumi.String("web"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleApiKey, err := appinsights.NewApiKey(ctx, "example", &appinsights.ApiKeyArgs{
/// 			Name:                  pulumi.String("example-appinsightsapikey"),
/// 			ApplicationInsightsId: exampleInsights.ID(),
/// 			ReadPermissions: pulumi.StringArray{
/// 				pulumi.String("aggregate"),
/// 				pulumi.String("api"),
/// 				pulumi.String("draft"),
/// 				pulumi.String("extendqueries"),
/// 				pulumi.String("search"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bot.NewServiceAzureBot(ctx, "example", &bot.ServiceAzureBotArgs{
/// 			Name:                              pulumi.String("exampleazurebot"),
/// 			ResourceGroupName:                 example.Name,
/// 			Location:                          pulumi.String("global"),
/// 			MicrosoftAppId:                    pulumi.String(current.ClientId),
/// 			Sku:                               pulumi.String("F0"),
/// 			Endpoint:                          pulumi.String("https://example.com"),
/// 			DeveloperAppInsightsApiKey:        exampleApiKey.ApiKey,
/// 			DeveloperAppInsightsApplicationId: exampleInsights.AppId,
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("test"),
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
/// import com.pulumi.azure.appinsights.Insights;
/// import com.pulumi.azure.appinsights.InsightsArgs;
/// import com.pulumi.azure.appinsights.ApiKey;
/// import com.pulumi.azure.appinsights.ApiKeyArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.bot.ServiceAzureBot;
/// import com.pulumi.azure.bot.ServiceAzureBotArgs;
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
///         var exampleInsights = new Insights("exampleInsights", InsightsArgs.builder()
///             .name("example-appinsights")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationType("web")
///             .build());
///
///         var exampleApiKey = new ApiKey("exampleApiKey", ApiKeyArgs.builder()
///             .name("example-appinsightsapikey")
///             .applicationInsightsId(exampleInsights.id())
///             .readPermissions(
///                 "aggregate",
///                 "api",
///                 "draft",
///                 "extendqueries",
///                 "search")
///             .build());
///
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleServiceAzureBot = new ServiceAzureBot("exampleServiceAzureBot", ServiceAzureBotArgs.builder()
///             .name("exampleazurebot")
///             .resourceGroupName(example.name())
///             .location("global")
///             .microsoftAppId(current.clientId())
///             .sku("F0")
///             .endpoint("https://example.com")
///             .developerAppInsightsApiKey(exampleApiKey.apiKey())
///             .developerAppInsightsApplicationId(exampleInsights.appId())
///             .tags(Map.of("environment", "test"))
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
///   exampleInsights:
///     type: azure:appinsights:Insights
///     name: example
///     properties:
///       name: example-appinsights
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationType: web
///   exampleApiKey:
///     type: azure:appinsights:ApiKey
///     name: example
///     properties:
///       name: example-appinsightsapikey
///       applicationInsightsId: ${exampleInsights.id}
///       readPermissions:
///         - aggregate
///         - api
///         - draft
///         - extendqueries
///         - search
///   exampleServiceAzureBot:
///     type: azure:bot:ServiceAzureBot
///     name: example
///     properties:
///       name: exampleazurebot
///       resourceGroupName: ${example.name}
///       location: global
///       microsoftAppId: ${current.clientId}
///       sku: F0
///       endpoint: https://example.com
///       developerAppInsightsApiKey: ${exampleApiKey.apiKey}
///       developerAppInsightsApplicationId: ${exampleInsights.appId}
///       tags:
///         environment: test
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Azure Bot Services can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:bot/serviceAzureBot:ServiceAzureBot example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.BotService/botServices/botService1
/// ```
class ServiceAzureBot extends pulumi.CustomResource {
  /// The CMK Key Vault Key URL that will be used to encrypt the Bot with the Customer Managed Encryption Key.
  ///
  /// &gt; **Note:** In order to utilize CMEK, you must add the `Key Vault Crypto Service Encryption User` role to the Azure-defined `Bot Service CMEK Prod` Service Principal. You must also enable `soft_delete_enabled` and `purge_protection_enabled` on the `azure.keyvault.KeyVault` that `cmk_key_vault_key_url` refers to. [See Azure Documentation](https://learn.microsoft.com/en-us/azure/bot-service/bot-service-encryption?view=azure-bot-service-4.0#how-to-configure-your-azure-key-vault-instance)
  late final pulumi.Output<String?> cmkKeyVaultKeyUrl;

  /// The Application Insights API Key to associate with this Azure Bot Service.
  late final pulumi.Output<String?> developerAppInsightsApiKey;

  /// The resource ID of the Application Insights instance to associate with this Azure Bot Service.
  late final pulumi.Output<String?> developerAppInsightsApplicationId;

  /// The Application Insight Key to associate with this Azure Bot Service.
  late final pulumi.Output<String?> developerAppInsightsKey;

  /// The name that the Azure Bot Service will be displayed as. This defaults to the value set for `name` if not specified.
  late final pulumi.Output<String> displayName;

  /// The Azure Bot Service endpoint.
  late final pulumi.Output<String?> endpoint;

  /// The Icon Url of the Azure Bot Service. Defaults to `https://docs.botframework.com/static/devportal/client/images/bot-framework-default.png`.
  late final pulumi.Output<String?> iconUrl;

  /// Is local authentication enabled? Defaults to `true`.
  late final pulumi.Output<bool?> localAuthenticationEnabled;

  /// The supported Azure location where the Azure Bot Service should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// A list of LUIS App IDs to associate with this Azure Bot Service.
  late final pulumi.Output<List<String>?> luisAppIds;

  /// The LUIS key to associate with this Azure Bot Service.
  late final pulumi.Output<String?> luisKey;

  /// The Microsoft Application ID for the Azure Bot Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> microsoftAppId;

  /// The ID of the Microsoft App Managed Identity for this Azure Bot Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> microsoftAppMsiId;

  /// The Tenant ID of the Microsoft App for this Azure Bot Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> microsoftAppTenantId;

  /// The Microsoft App Type for this Azure Bot Service. Possible values are `MultiTenant`, `SingleTenant` and `UserAssignedMSI`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> microsoftAppType;

  /// The name which should be used for this Azure Bot Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Whether public network access is enabled. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;

  /// The name of the Resource Group where the Azure Bot Service should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The SKU of the Azure Bot Service. Accepted values are `F0` or `S1`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sku;

  /// Is the streaming endpoint enabled for this Azure Bot Service. Defaults to `false`.
  late final pulumi.Output<bool?> streamingEndpointEnabled;

  /// A mapping of tags which should be assigned to this Azure Bot Service.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ServiceAzureBot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceAzureBot]. {@macro pulumi_bot_service_azure_bot_service_azure_bot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceAzureBot(
    String name, {
    ServiceAzureBotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:bot/serviceAzureBot:ServiceAzureBot',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cmkKeyVaultKeyUrl = registerOutput<String?>('cmkKeyVaultKeyUrl');
    developerAppInsightsApiKey = registerOutput<String?>(
      'developerAppInsightsApiKey',
    );
    developerAppInsightsApplicationId = registerOutput<String?>(
      'developerAppInsightsApplicationId',
    );
    developerAppInsightsKey = registerOutput<String?>(
      'developerAppInsightsKey',
    );
    displayName = registerOutput<String>('displayName');
    endpoint = registerOutput<String?>('endpoint');
    iconUrl = registerOutput<String?>('iconUrl');
    localAuthenticationEnabled = registerOutput<bool?>(
      'localAuthenticationEnabled',
    );
    location = registerOutput<String>('location');
    luisAppIds = registerOutput<List<String>?>('luisAppIds');
    luisKey = registerOutput<String?>('luisKey');
    microsoftAppId = registerOutput<String>('microsoftAppId');
    microsoftAppMsiId = registerOutput<String?>('microsoftAppMsiId');
    microsoftAppTenantId = registerOutput<String?>('microsoftAppTenantId');
    microsoftAppType = registerOutput<String?>('microsoftAppType');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>(
      'publicNetworkAccessEnabled',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String>('sku');
    streamingEndpointEnabled = registerOutput<bool?>(
      'streamingEndpointEnabled',
    );
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [ServiceAzureBot] resource's state with the given [name] and [id].
  static ServiceAzureBot get(
    String name,
    pulumi.Input<String> id, {
    ServiceAzureBotState? state,
  }) {
    return ServiceAzureBot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceAzureBot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:bot/serviceAzureBot:ServiceAzureBot',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cmkKeyVaultKeyUrl = registerOutput<String?>('cmkKeyVaultKeyUrl');
    developerAppInsightsApiKey = registerOutput<String?>(
      'developerAppInsightsApiKey',
    );
    developerAppInsightsApplicationId = registerOutput<String?>(
      'developerAppInsightsApplicationId',
    );
    developerAppInsightsKey = registerOutput<String?>(
      'developerAppInsightsKey',
    );
    displayName = registerOutput<String>('displayName');
    endpoint = registerOutput<String?>('endpoint');
    iconUrl = registerOutput<String?>('iconUrl');
    localAuthenticationEnabled = registerOutput<bool?>(
      'localAuthenticationEnabled',
    );
    location = registerOutput<String>('location');
    luisAppIds = registerOutput<List<String>?>('luisAppIds');
    luisKey = registerOutput<String?>('luisKey');
    microsoftAppId = registerOutput<String>('microsoftAppId');
    microsoftAppMsiId = registerOutput<String?>('microsoftAppMsiId');
    microsoftAppTenantId = registerOutput<String?>('microsoftAppTenantId');
    microsoftAppType = registerOutput<String?>('microsoftAppType');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>(
      'publicNetworkAccessEnabled',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String>('sku');
    streamingEndpointEnabled = registerOutput<bool?>(
      'streamingEndpointEnabled',
    );
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
