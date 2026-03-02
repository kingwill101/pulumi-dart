// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ChannelsRegistration resources.
class ChannelsRegistrationState {
  /// The CMK Key Vault Key URL to encrypt the Bot Channels Registration with the Customer Managed Encryption Key.
  ///
  /// > **Note:** It has to add the Key Vault Access Policy for the `Bot Service CMEK Prod` Service Principal and the `soft_delete_enabled` and the `purge_protection_enabled` is enabled on the `azure.keyvault.KeyVault` resource while using `cmk_key_vault_url`.
  ///
  /// > **Note:** It has to turn off the CMK feature before revoking Key Vault Access Policy. For more information, please refer to [Revoke access to customer-managed keys](https://docs.microsoft.com/azure/bot-service/bot-service-encryption?view=azure-bot-service-4.0&WT.mc_id=Portal-Microsoft_Azure_BotService#revoke-access-to-customer-managed-keys).
  final pulumi.Input<String>? cmkKeyVaultUrl;
  /// The description of the Bot Channels Registration.
  final pulumi.Input<String>? description;
  /// The Application Insights API Key to associate with the Bot Channels Registration.
  final pulumi.Input<String>? developerAppInsightsApiKey;
  /// The Application Insights Application ID to associate with the Bot Channels Registration.
  final pulumi.Input<String>? developerAppInsightsApplicationId;
  /// The Application Insights Key to associate with the Bot Channels Registration.
  final pulumi.Input<String>? developerAppInsightsKey;
  /// The name of the Bot Channels Registration will be displayed as. This defaults to `name` if not specified.
  final pulumi.Input<String>? displayName;
  /// The Bot Channels Registration endpoint.
  final pulumi.Input<String>? endpoint;
  /// The icon URL to visually identify the Bot Channels Registration. Defaults to `https://docs.botframework.com/static/devportal/client/images/bot-framework-default.png`.
  final pulumi.Input<String>? iconUrl;
  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The Microsoft Application ID for the Bot Channels Registration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? microsoftAppId;
  /// Specifies the name of the Bot Channels Registration. Changing this forces a new resource to be created. Must be globally unique.
  final pulumi.Input<String>? name;
  /// Is the Bot Channels Registration in an isolated network?
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the resource group in which to create the Bot Channels Registration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The SKU of the Bot Channels Registration. Valid values include `F0` or `S1`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sku;
  /// Is the streaming endpoint enabled for the Bot Channels Registration. Defaults to `false`.
  final pulumi.Input<bool>? streamingEndpointEnabled;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ChannelsRegistrationState].
  /// [cmkKeyVaultUrl] The CMK Key Vault Key URL to encrypt the Bot Channels Registration with the Customer Managed Encryption Key.
  /// [description] The description of the Bot Channels Registration.
  /// [developerAppInsightsApiKey] The Application Insights API Key to associate with the Bot Channels Registration.
  /// [developerAppInsightsApplicationId] The Application Insights Application ID to associate with the Bot Channels Registration.
  /// [developerAppInsightsKey] The Application Insights Key to associate with the Bot Channels Registration.
  /// [displayName] The name of the Bot Channels Registration will be displayed as. This defaults to `name` if not specified.
  /// [endpoint] The Bot Channels Registration endpoint.
  /// [iconUrl] The icon URL to visually identify the Bot Channels Registration. Defaults to `https://docs.botframework.com/static/devportal/client/images/bot-framework-default.png`.
  /// [location] The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [microsoftAppId] The Microsoft Application ID for the Bot Channels Registration. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Bot Channels Registration. Changing this forces a new resource to be created. Must be globally unique.
  /// [publicNetworkAccessEnabled] Is the Bot Channels Registration in an isolated network?
  /// [resourceGroupName] The name of the resource group in which to create the Bot Channels Registration. Changing this forces a new resource to be created.
  /// [sku] The SKU of the Bot Channels Registration. Valid values include `F0` or `S1`. Changing this forces a new resource to be created.
  /// [streamingEndpointEnabled] Is the streaming endpoint enabled for the Bot Channels Registration. Defaults to `false`.
  /// [tags] A mapping of tags to assign to the resource.
  ChannelsRegistrationState({
    this.cmkKeyVaultUrl,
    this.description,
    this.developerAppInsightsApiKey,
    this.developerAppInsightsApplicationId,
    this.developerAppInsightsKey,
    this.displayName,
    this.endpoint,
    this.iconUrl,
    this.location,
    this.microsoftAppId,
    this.name,
    this.publicNetworkAccessEnabled,
    this.resourceGroupName,
    this.sku,
    this.streamingEndpointEnabled,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cmkKeyVaultUrl': ?cmkKeyVaultUrl,
      'description': ?description,
      'developerAppInsightsApiKey': ?developerAppInsightsApiKey,
      'developerAppInsightsApplicationId': ?developerAppInsightsApplicationId,
      'developerAppInsightsKey': ?developerAppInsightsKey,
      'displayName': ?displayName,
      'endpoint': ?endpoint,
      'iconUrl': ?iconUrl,
      'location': ?location,
      'microsoftAppId': ?microsoftAppId,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'streamingEndpointEnabled': ?streamingEndpointEnabled,
      'tags': ?tags,
    };
  }

  factory ChannelsRegistrationState.fromMap(Map<String, dynamic> map) {
    return ChannelsRegistrationState(
      cmkKeyVaultUrl: map['cmkKeyVaultUrl'] == null ? null : (map['cmkKeyVaultUrl'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      developerAppInsightsApiKey: map['developerAppInsightsApiKey'] == null ? null : (map['developerAppInsightsApiKey'] as String).input(),
      developerAppInsightsApplicationId: map['developerAppInsightsApplicationId'] == null ? null : (map['developerAppInsightsApplicationId'] as String).input(),
      developerAppInsightsKey: map['developerAppInsightsKey'] == null ? null : (map['developerAppInsightsKey'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      iconUrl: map['iconUrl'] == null ? null : (map['iconUrl'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      microsoftAppId: map['microsoftAppId'] == null ? null : (map['microsoftAppId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled'] as bool).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (map['sku'] as String).input(),
      streamingEndpointEnabled: map['streamingEndpointEnabled'] == null ? null : (map['streamingEndpointEnabled'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

