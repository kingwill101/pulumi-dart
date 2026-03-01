// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bot_channels_registration_channels_registration_args_doc}
/// The set of arguments for ChannelsRegistration.
/// {@endtemplate}
/// {@macro pulumi_bot_channels_registration_channels_registration_args_doc}
class ChannelsRegistrationArgs {
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
  final pulumi.Input<String> microsoftAppId;
  /// Specifies the name of the Bot Channels Registration. Changing this forces a new resource to be created. Must be globally unique.
  final pulumi.Input<String>? name;
  /// Is the Bot Channels Registration in an isolated network?
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the resource group in which to create the Bot Channels Registration. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU of the Bot Channels Registration. Valid values include `F0` or `S1`. Changing this forces a new resource to be created.
  final pulumi.Input<String> sku;
  /// Is the streaming endpoint enabled for the Bot Channels Registration. Defaults to `false`.
  final pulumi.Input<bool>? streamingEndpointEnabled;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ChannelsRegistrationArgs].
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
  ChannelsRegistrationArgs({
    pulumi.Output<String>? cmkKeyVaultUrl,
    pulumi.Output<String>? description,
    pulumi.Output<String>? developerAppInsightsApiKey,
    pulumi.Output<String>? developerAppInsightsApplicationId,
    pulumi.Output<String>? developerAppInsightsKey,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? iconUrl,
    pulumi.Output<String>? location,
    required pulumi.Output<String> microsoftAppId,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sku,
    pulumi.Output<bool>? streamingEndpointEnabled,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      cmkKeyVaultUrl = pulumi.Input.asOptionalInput<String>(cmkKeyVaultUrl),
      description = pulumi.Input.asOptionalInput<String>(description),
      developerAppInsightsApiKey = pulumi.Input.asOptionalInput<String>(developerAppInsightsApiKey),
      developerAppInsightsApplicationId = pulumi.Input.asOptionalInput<String>(developerAppInsightsApplicationId),
      developerAppInsightsKey = pulumi.Input.asOptionalInput<String>(developerAppInsightsKey),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      iconUrl = pulumi.Input.asOptionalInput<String>(iconUrl),
      location = pulumi.Input.asOptionalInput<String>(location),
      microsoftAppId = pulumi.Input.asInput<String>(microsoftAppId),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asInput<String>(sku),
      streamingEndpointEnabled = pulumi.Input.asOptionalInput<bool>(streamingEndpointEnabled),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      'microsoftAppId': microsoftAppId,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'streamingEndpointEnabled': ?streamingEndpointEnabled,
      'tags': ?tags,
    };
  }

  factory ChannelsRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return ChannelsRegistrationArgs(
      cmkKeyVaultUrl: map['cmkKeyVaultUrl'] == null ? null : pulumi.Output.create<String>(map['cmkKeyVaultUrl'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      developerAppInsightsApiKey: map['developerAppInsightsApiKey'] == null ? null : pulumi.Output.create<String>(map['developerAppInsightsApiKey'] as String),
      developerAppInsightsApplicationId: map['developerAppInsightsApplicationId'] == null ? null : pulumi.Output.create<String>(map['developerAppInsightsApplicationId'] as String),
      developerAppInsightsKey: map['developerAppInsightsKey'] == null ? null : pulumi.Output.create<String>(map['developerAppInsightsKey'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      iconUrl: map['iconUrl'] == null ? null : pulumi.Output.create<String>(map['iconUrl'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      microsoftAppId: pulumi.Output.create<String>(map['microsoftAppId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: pulumi.Output.create<String>(map['sku'] as String),
      streamingEndpointEnabled: map['streamingEndpointEnabled'] == null ? null : pulumi.Output.create<bool>(map['streamingEndpointEnabled'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

