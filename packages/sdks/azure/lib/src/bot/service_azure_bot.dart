import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_azure_bot_args.dart';
import 'service_azure_bot_state.dart';

/// Manages an Azure Bot Service.
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
  /// &gt; **Note:** In order to utilize CMEK, you must add the `Key Vault Crypto Service Encryption User` role to the Azure-defined `Bot Service CMEK Prod` Service Principal. You must also enable `softDeleteEnabled` and `purgeProtectionEnabled` on the `azure.keyvault.KeyVault` that `cmkKeyVaultKeyUrl` refers to. [See Azure Documentation](https://learn.microsoft.com/en-us/azure/bot-service/bot-service-encryption?view=azure-bot-service-4.0#how-to-configure-your-azure-key-vault-instance)
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
  ///
  /// &gt; **Note:** Creation of `azure.bot.ServiceAzureBot` resources using the `MultiTenant` type is no longer supported by Azure, existing resources can continue using this type.
  late final pulumi.Output<String> microsoftAppType;
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
    developerAppInsightsApiKey = registerOutput<String?>('developerAppInsightsApiKey');
    developerAppInsightsApplicationId = registerOutput<String?>('developerAppInsightsApplicationId');
    developerAppInsightsKey = registerOutput<String?>('developerAppInsightsKey');
    displayName = registerOutput<String>('displayName');
    endpoint = registerOutput<String?>('endpoint');
    iconUrl = registerOutput<String?>('iconUrl');
    localAuthenticationEnabled = registerOutput<bool?>('localAuthenticationEnabled');
    location = registerOutput<String>('location');
    luisAppIds = registerOutput<List<String>?>('luisAppIds');
    luisKey = registerOutput<String?>('luisKey');
    microsoftAppId = registerOutput<String>('microsoftAppId');
    microsoftAppMsiId = registerOutput<String?>('microsoftAppMsiId');
    microsoftAppTenantId = registerOutput<String?>('microsoftAppTenantId');
    microsoftAppType = registerOutput<String>('microsoftAppType');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String>('sku');
    streamingEndpointEnabled = registerOutput<bool?>('streamingEndpointEnabled');
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
    developerAppInsightsApiKey = registerOutput<String?>('developerAppInsightsApiKey');
    developerAppInsightsApplicationId = registerOutput<String?>('developerAppInsightsApplicationId');
    developerAppInsightsKey = registerOutput<String?>('developerAppInsightsKey');
    displayName = registerOutput<String>('displayName');
    endpoint = registerOutput<String?>('endpoint');
    iconUrl = registerOutput<String?>('iconUrl');
    localAuthenticationEnabled = registerOutput<bool?>('localAuthenticationEnabled');
    location = registerOutput<String>('location');
    luisAppIds = registerOutput<List<String>?>('luisAppIds');
    luisKey = registerOutput<String?>('luisKey');
    microsoftAppId = registerOutput<String>('microsoftAppId');
    microsoftAppMsiId = registerOutput<String?>('microsoftAppMsiId');
    microsoftAppTenantId = registerOutput<String?>('microsoftAppTenantId');
    microsoftAppType = registerOutput<String>('microsoftAppType');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String>('sku');
    streamingEndpointEnabled = registerOutput<bool?>('streamingEndpointEnabled');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
