// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceAzureBot resources.
class ServiceAzureBotState {
  /// The CMK Key Vault Key URL that will be used to encrypt the Bot with the Customer Managed Encryption Key.
  ///
  /// &gt; **Note:** In order to utilize CMEK, you must add the `Key Vault Crypto Service Encryption User` role to the Azure-defined `Bot Service CMEK Prod` Service Principal. You must also enable `soft_delete_enabled` and `purge_protection_enabled` on the `azure.keyvault.KeyVault` that `cmk_key_vault_key_url` refers to. [See Azure Documentation](https://learn.microsoft.com/en-us/azure/bot-service/bot-service-encryption?view=azure-bot-service-4.0#how-to-configure-your-azure-key-vault-instance)
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
  const ServiceAzureBotState({
    this.cmkKeyVaultKeyUrl,
    this.developerAppInsightsApiKey,
    this.developerAppInsightsApplicationId,
    this.developerAppInsightsKey,
    this.displayName,
    this.endpoint,
    this.iconUrl,
    this.localAuthenticationEnabled,
    this.location,
    this.luisAppIds,
    this.luisKey,
    this.microsoftAppId,
    this.microsoftAppMsiId,
    this.microsoftAppTenantId,
    this.microsoftAppType,
    this.name,
    this.publicNetworkAccessEnabled,
    this.resourceGroupName,
    this.sku,
    this.streamingEndpointEnabled,
    this.tags,
  });

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
      cmkKeyVaultKeyUrl: (() { final guardedValue = map['cmkKeyVaultKeyUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      developerAppInsightsApiKey: (() { final guardedValue = map['developerAppInsightsApiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      developerAppInsightsApplicationId: (() { final guardedValue = map['developerAppInsightsApplicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      developerAppInsightsKey: (() { final guardedValue = map['developerAppInsightsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iconUrl: (() { final guardedValue = map['iconUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localAuthenticationEnabled: (() { final guardedValue = map['localAuthenticationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      luisAppIds: (() { final guardedValue = map['luisAppIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      luisKey: (() { final guardedValue = map['luisKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      microsoftAppId: (() { final guardedValue = map['microsoftAppId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      microsoftAppMsiId: (() { final guardedValue = map['microsoftAppMsiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      microsoftAppTenantId: (() { final guardedValue = map['microsoftAppTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      microsoftAppType: (() { final guardedValue = map['microsoftAppType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamingEndpointEnabled: (() { final guardedValue = map['streamingEndpointEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

