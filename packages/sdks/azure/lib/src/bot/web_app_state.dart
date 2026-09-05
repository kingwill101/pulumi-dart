// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WebApp resources.
class WebAppState {
  /// The Application Insights API Key to associate with the Web App Bot.
  final pulumi.Input<String?>? developerAppInsightsApiKey;
  /// The Application Insights Application ID to associate with the Web App Bot.
  final pulumi.Input<String?>? developerAppInsightsApplicationId;
  /// The Application Insights Key to associate with the Web App Bot.
  final pulumi.Input<String?>? developerAppInsightsKey;
  /// The name of the Web App Bot will be displayed as. This defaults to `name` if not specified.
  final pulumi.Input<String?>? displayName;
  /// The Web App Bot endpoint.
  final pulumi.Input<String?>? endpoint;
  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// A list of LUIS App IDs to associate with the Web App Bot.
  final pulumi.Input<List<String>?>? luisAppIds;
  /// The LUIS key to associate with the Web App Bot.
  final pulumi.Input<String?>? luisKey;
  /// The Microsoft Application ID for the Web App Bot. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? microsoftAppId;
  /// The Microsoft Application Tenant ID for the Bot Channels Registration. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? microsoftAppTenantId;
  /// The Microsoft Application Type for the Bot Channels Registration. Possible values are `MultiTenant`, `SingleTenant` and `UserAssignedMSI`. Defaults to `MultiTenant`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Creation of `azure.bot.WebApp` resources using the `MultiTenant` type is no longer supported by Azure, existing resources can continue using this type.
  final pulumi.Input<String?>? microsoftAppType;
  /// The ID of Microsoft Application User Assigned Identity for the Bot Channels Registration. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? microsoftAppUserAssignedIdentityId;
  /// Specifies the name of the Web App Bot. Changing this forces a new resource to be created. Must be globally unique.
  final pulumi.Input<String?>? name;
  /// The name of the resource group in which to create the Web App Bot. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The SKU of the Web App Bot. Valid values include `F0` or `S1`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [WebAppState].
  /// [developerAppInsightsApiKey] The Application Insights API Key to associate with the Web App Bot.
  /// [developerAppInsightsApplicationId] The Application Insights Application ID to associate with the Web App Bot.
  /// [developerAppInsightsKey] The Application Insights Key to associate with the Web App Bot.
  /// [displayName] The name of the Web App Bot will be displayed as. This defaults to `name` if not specified.
  /// [endpoint] The Web App Bot endpoint.
  /// [location] The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [luisAppIds] A list of LUIS App IDs to associate with the Web App Bot.
  /// [luisKey] The LUIS key to associate with the Web App Bot.
  /// [microsoftAppId] The Microsoft Application ID for the Web App Bot. Changing this forces a new resource to be created.
  /// [microsoftAppTenantId] The Microsoft Application Tenant ID for the Bot Channels Registration. Changing this forces a new resource to be created.
  /// [microsoftAppType] The Microsoft Application Type for the Bot Channels Registration. Possible values are `MultiTenant`, `SingleTenant` and `UserAssignedMSI`. Defaults to `MultiTenant`. Changing this forces a new resource to be created.
  /// [microsoftAppUserAssignedIdentityId] The ID of Microsoft Application User Assigned Identity for the Bot Channels Registration. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Web App Bot. Changing this forces a new resource to be created. Must be globally unique.
  /// [resourceGroupName] The name of the resource group in which to create the Web App Bot. Changing this forces a new resource to be created.
  /// [sku] The SKU of the Web App Bot. Valid values include `F0` or `S1`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  const WebAppState({
    this.developerAppInsightsApiKey,
    this.developerAppInsightsApplicationId,
    this.developerAppInsightsKey,
    this.displayName,
    this.endpoint,
    this.location,
    this.luisAppIds,
    this.luisKey,
    this.microsoftAppId,
    this.microsoftAppTenantId,
    this.microsoftAppType,
    this.microsoftAppUserAssignedIdentityId,
    this.name,
    this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'developerAppInsightsApiKey': ?developerAppInsightsApiKey,
      'developerAppInsightsApplicationId': ?developerAppInsightsApplicationId,
      'developerAppInsightsKey': ?developerAppInsightsKey,
      'displayName': ?displayName,
      'endpoint': ?endpoint,
      'location': ?location,
      'luisAppIds': ?luisAppIds,
      'luisKey': ?luisKey,
      'microsoftAppId': ?microsoftAppId,
      'microsoftAppTenantId': ?microsoftAppTenantId,
      'microsoftAppType': ?microsoftAppType,
      'microsoftAppUserAssignedIdentityId': ?microsoftAppUserAssignedIdentityId,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
    };
  }

  factory WebAppState.fromMap(Map<String, dynamic> map) {
    return WebAppState(
      developerAppInsightsApiKey: (() { final guardedValue = map['developerAppInsightsApiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      developerAppInsightsApplicationId: (() { final guardedValue = map['developerAppInsightsApplicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      developerAppInsightsKey: (() { final guardedValue = map['developerAppInsightsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      luisAppIds: (() { final guardedValue = map['luisAppIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      luisKey: (() { final guardedValue = map['luisKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      microsoftAppId: (() { final guardedValue = map['microsoftAppId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      microsoftAppTenantId: (() { final guardedValue = map['microsoftAppTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      microsoftAppType: (() { final guardedValue = map['microsoftAppType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      microsoftAppUserAssignedIdentityId: (() { final guardedValue = map['microsoftAppUserAssignedIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
