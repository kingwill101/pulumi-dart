// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceAzureBot resources.
class ServiceAzureBotState {
  /// The CMK Key Vault Key URL that will be used to encrypt the Bot with the Customer Managed Encryption Key.
  ///
  /// > **Note:** In order to utilize CMEK, you must add the `Key Vault Crypto Service Encryption User` role to the Azure-defined `Bot Service CMEK Prod` Service Principal. You must also enable `soft_delete_enabled` and `purge_protection_enabled` on the `azure.keyvault.KeyVault` that `cmk_key_vault_key_url` refers to. [See Azure Documentation](https://learn.microsoft.com/en-us/azure/bot-service/bot-service-encryption?view=azure-bot-service-4.0#how-to-configure-your-azure-key-vault-instance)
  final pulumi.Input<String>? cmkKeyVaultKeyUrl;
  /// The Application Insights API Key to associate with this Azure Bot Service.
  final pulumi.Input<String>? developerAppInsightsApiKey;
  /// The resource ID of the Application Insights instance to associate with this Azure Bot Service.
  final pulumi.Input<String>? developerAppInsightsApplicationId;
  /// The Application Insight Key to associate with this Azure Bot Service.
  final pulumi.Input<String>? developerAppInsightsKey;
  /// The name that the Azure Bot Service will be displayed as. This defaults to the value set for `name` if not specified.
  final pulumi.Input<String>? displayName;
  /// The Azure Bot Service endpoint.
  final pulumi.Input<String>? endpoint;
  /// The Icon Url of the Azure Bot Service. Defaults to `https://docs.botframework.com/static/devportal/client/images/bot-framework-default.png`.
  final pulumi.Input<String>? iconUrl;
  /// Is local authentication enabled? Defaults to `true`.
  final pulumi.Input<bool>? localAuthenticationEnabled;
  /// The supported Azure location where the Azure Bot Service should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A list of LUIS App IDs to associate with this Azure Bot Service.
  final pulumi.Input<List<String>>? luisAppIds;
  /// The LUIS key to associate with this Azure Bot Service.
  final pulumi.Input<String>? luisKey;
  /// The Microsoft Application ID for the Azure Bot Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? microsoftAppId;
  /// The ID of the Microsoft App Managed Identity for this Azure Bot Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? microsoftAppMsiId;
  /// The Tenant ID of the Microsoft App for this Azure Bot Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? microsoftAppTenantId;
  /// The Microsoft App Type for this Azure Bot Service. Possible values are `MultiTenant`, `SingleTenant` and `UserAssignedMSI`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? microsoftAppType;
  /// The name which should be used for this Azure Bot Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Whether public network access is enabled. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the Resource Group where the Azure Bot Service should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The SKU of the Azure Bot Service. Accepted values are `F0` or `S1`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sku;
  /// Is the streaming endpoint enabled for this Azure Bot Service. Defaults to `false`.
  final pulumi.Input<bool>? streamingEndpointEnabled;
  /// A mapping of tags which should be assigned to this Azure Bot Service.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServiceAzureBotState].
  /// [cmkKeyVaultKeyUrl] The CMK Key Vault Key URL that will be used to encrypt the Bot with the Customer Managed Encryption Key.
  /// [developerAppInsightsApiKey] The Application Insights API Key to associate with this Azure Bot Service.
  /// [developerAppInsightsApplicationId] The resource ID of the Application Insights instance to associate with this Azure Bot Service.
  /// [developerAppInsightsKey] The Application Insight Key to associate with this Azure Bot Service.
  /// [displayName] The name that the Azure Bot Service will be displayed as. This defaults to the value set for `name` if not specified.
  /// [endpoint] The Azure Bot Service endpoint.
  /// [iconUrl] The Icon Url of the Azure Bot Service. Defaults to `https://docs.botframework.com/static/devportal/client/images/bot-framework-default.png`.
  /// [localAuthenticationEnabled] Is local authentication enabled? Defaults to `true`.
  /// [location] The supported Azure location where the Azure Bot Service should exist. Changing this forces a new resource to be created.
  /// [luisAppIds] A list of LUIS App IDs to associate with this Azure Bot Service.
  /// [luisKey] The LUIS key to associate with this Azure Bot Service.
  /// [microsoftAppId] The Microsoft Application ID for the Azure Bot Service. Changing this forces a new resource to be created.
  /// [microsoftAppMsiId] The ID of the Microsoft App Managed Identity for this Azure Bot Service. Changing this forces a new resource to be created.
  /// [microsoftAppTenantId] The Tenant ID of the Microsoft App for this Azure Bot Service. Changing this forces a new resource to be created.
  /// [microsoftAppType] The Microsoft App Type for this Azure Bot Service. Possible values are `MultiTenant`, `SingleTenant` and `UserAssignedMSI`. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Azure Bot Service. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether public network access is enabled. Defaults to `true`.
  /// [resourceGroupName] The name of the Resource Group where the Azure Bot Service should exist. Changing this forces a new resource to be created.
  /// [sku] The SKU of the Azure Bot Service. Accepted values are `F0` or `S1`. Changing this forces a new resource to be created.
  /// [streamingEndpointEnabled] Is the streaming endpoint enabled for this Azure Bot Service. Defaults to `false`.
  /// [tags] A mapping of tags which should be assigned to this Azure Bot Service.
  ServiceAzureBotState({
    pulumi.Output<String>? cmkKeyVaultKeyUrl,
    pulumi.Output<String>? developerAppInsightsApiKey,
    pulumi.Output<String>? developerAppInsightsApplicationId,
    pulumi.Output<String>? developerAppInsightsKey,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? iconUrl,
    pulumi.Output<bool>? localAuthenticationEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<List<String>>? luisAppIds,
    pulumi.Output<String>? luisKey,
    pulumi.Output<String>? microsoftAppId,
    pulumi.Output<String>? microsoftAppMsiId,
    pulumi.Output<String>? microsoftAppTenantId,
    pulumi.Output<String>? microsoftAppType,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? sku,
    pulumi.Output<bool>? streamingEndpointEnabled,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      cmkKeyVaultKeyUrl = pulumi.Input.asOptionalInput<String>(cmkKeyVaultKeyUrl),
      developerAppInsightsApiKey = pulumi.Input.asOptionalInput<String>(developerAppInsightsApiKey),
      developerAppInsightsApplicationId = pulumi.Input.asOptionalInput<String>(developerAppInsightsApplicationId),
      developerAppInsightsKey = pulumi.Input.asOptionalInput<String>(developerAppInsightsKey),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      iconUrl = pulumi.Input.asOptionalInput<String>(iconUrl),
      localAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(localAuthenticationEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      luisAppIds = pulumi.Input.asOptionalInput<List<String>>(luisAppIds),
      luisKey = pulumi.Input.asOptionalInput<String>(luisKey),
      microsoftAppId = pulumi.Input.asOptionalInput<String>(microsoftAppId),
      microsoftAppMsiId = pulumi.Input.asOptionalInput<String>(microsoftAppMsiId),
      microsoftAppTenantId = pulumi.Input.asOptionalInput<String>(microsoftAppTenantId),
      microsoftAppType = pulumi.Input.asOptionalInput<String>(microsoftAppType),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      streamingEndpointEnabled = pulumi.Input.asOptionalInput<bool>(streamingEndpointEnabled),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cmkKeyVaultKeyUrl': ?cmkKeyVaultKeyUrl,
      'developerAppInsightsApiKey': ?developerAppInsightsApiKey,
      'developerAppInsightsApplicationId': ?developerAppInsightsApplicationId,
      'developerAppInsightsKey': ?developerAppInsightsKey,
      'displayName': ?displayName,
      'endpoint': ?endpoint,
      'iconUrl': ?iconUrl,
      'localAuthenticationEnabled': ?localAuthenticationEnabled,
      'location': ?location,
      'luisAppIds': ?luisAppIds,
      'luisKey': ?luisKey,
      'microsoftAppId': ?microsoftAppId,
      'microsoftAppMsiId': ?microsoftAppMsiId,
      'microsoftAppTenantId': ?microsoftAppTenantId,
      'microsoftAppType': ?microsoftAppType,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'streamingEndpointEnabled': ?streamingEndpointEnabled,
      'tags': ?tags,
    };
  }

  factory ServiceAzureBotState.fromMap(Map<String, dynamic> map) {
    return ServiceAzureBotState(
      cmkKeyVaultKeyUrl: map['cmkKeyVaultKeyUrl'] == null ? null : pulumi.Output.create<String>(map['cmkKeyVaultKeyUrl'] as String),
      developerAppInsightsApiKey: map['developerAppInsightsApiKey'] == null ? null : pulumi.Output.create<String>(map['developerAppInsightsApiKey'] as String),
      developerAppInsightsApplicationId: map['developerAppInsightsApplicationId'] == null ? null : pulumi.Output.create<String>(map['developerAppInsightsApplicationId'] as String),
      developerAppInsightsKey: map['developerAppInsightsKey'] == null ? null : pulumi.Output.create<String>(map['developerAppInsightsKey'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      iconUrl: map['iconUrl'] == null ? null : pulumi.Output.create<String>(map['iconUrl'] as String),
      localAuthenticationEnabled: map['localAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['localAuthenticationEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      luisAppIds: map['luisAppIds'] == null ? null : pulumi.Output.create<List<String>>((map['luisAppIds'] as List).cast<String>()),
      luisKey: map['luisKey'] == null ? null : pulumi.Output.create<String>(map['luisKey'] as String),
      microsoftAppId: map['microsoftAppId'] == null ? null : pulumi.Output.create<String>(map['microsoftAppId'] as String),
      microsoftAppMsiId: map['microsoftAppMsiId'] == null ? null : pulumi.Output.create<String>(map['microsoftAppMsiId'] as String),
      microsoftAppTenantId: map['microsoftAppTenantId'] == null ? null : pulumi.Output.create<String>(map['microsoftAppTenantId'] as String),
      microsoftAppType: map['microsoftAppType'] == null ? null : pulumi.Output.create<String>(map['microsoftAppType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      streamingEndpointEnabled: map['streamingEndpointEnabled'] == null ? null : pulumi.Output.create<bool>(map['streamingEndpointEnabled'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

