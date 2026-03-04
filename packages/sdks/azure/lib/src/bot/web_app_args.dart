// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bot_web_app_web_app_args_doc}
/// The set of arguments for WebApp.
/// {@endtemplate}
/// {@macro pulumi_bot_web_app_web_app_args_doc}
class WebAppArgs {
  /// The Application Insights API Key to associate with the Web App Bot.
  final pulumi.Input<String>? developerAppInsightsApiKey;

  /// The Application Insights Application ID to associate with the Web App Bot.
  final pulumi.Input<String>? developerAppInsightsApplicationId;

  /// The Application Insights Key to associate with the Web App Bot.
  final pulumi.Input<String>? developerAppInsightsKey;

  /// The name of the Web App Bot will be displayed as. This defaults to `name` if not specified.
  final pulumi.Input<String>? displayName;

  /// The Web App Bot endpoint.
  final pulumi.Input<String>? endpoint;

  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;

  /// A list of LUIS App IDs to associate with the Web App Bot.
  final pulumi.Input<List<String>>? luisAppIds;

  /// The LUIS key to associate with the Web App Bot.
  final pulumi.Input<String>? luisKey;

  /// The Microsoft Application ID for the Web App Bot. Changing this forces a new resource to be created.
  final pulumi.Input<String> microsoftAppId;

  /// Specifies the name of the Web App Bot. Changing this forces a new resource to be created. Must be globally unique.
  final pulumi.Input<String>? name;

  /// The name of the resource group in which to create the Web App Bot. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// The SKU of the Web App Bot. Valid values include `F0` or `S1`. Changing this forces a new resource to be created.
  final pulumi.Input<String> sku;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [WebAppArgs].
  /// [developerAppInsightsApiKey] The Application Insights API Key to associate with the Web App Bot.
  /// [developerAppInsightsApplicationId] The Application Insights Application ID to associate with the Web App Bot.
  /// [developerAppInsightsKey] The Application Insights Key to associate with the Web App Bot.
  /// [displayName] The name of the Web App Bot will be displayed as. This defaults to `name` if not specified.
  /// [endpoint] The Web App Bot endpoint.
  /// [location] The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [luisAppIds] A list of LUIS App IDs to associate with the Web App Bot.
  /// [luisKey] The LUIS key to associate with the Web App Bot.
  /// [microsoftAppId] The Microsoft Application ID for the Web App Bot. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Web App Bot. Changing this forces a new resource to be created. Must be globally unique.
  /// [resourceGroupName] The name of the resource group in which to create the Web App Bot. Changing this forces a new resource to be created.
  /// [sku] The SKU of the Web App Bot. Valid values include `F0` or `S1`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  WebAppArgs({
    this.developerAppInsightsApiKey,
    this.developerAppInsightsApplicationId,
    this.developerAppInsightsKey,
    this.displayName,
    this.endpoint,
    this.location,
    this.luisAppIds,
    this.luisKey,
    required this.microsoftAppId,
    this.name,
    required this.resourceGroupName,
    required this.sku,
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
      'microsoftAppId': microsoftAppId,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'tags': ?tags,
    };
  }

  factory WebAppArgs.fromMap(Map<String, dynamic> map) {
    return WebAppArgs(
      developerAppInsightsApiKey: (() {
        final guardedValue = map['developerAppInsightsApiKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      developerAppInsightsApplicationId: (() {
        final guardedValue = map['developerAppInsightsApplicationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      developerAppInsightsKey: (() {
        final guardedValue = map['developerAppInsightsKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      luisAppIds: (() {
        final guardedValue = map['luisAppIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      luisKey: (() {
        final guardedValue = map['luisKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      microsoftAppId: pulumi.Input.fromValue(map['microsoftAppId'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sku: pulumi.Input.fromValue(map['sku'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
