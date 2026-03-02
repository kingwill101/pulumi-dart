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
      developerAppInsightsApiKey: map['developerAppInsightsApiKey'] == null ? null : (map['developerAppInsightsApiKey']! as String).input(),
      developerAppInsightsApplicationId: map['developerAppInsightsApplicationId'] == null ? null : (map['developerAppInsightsApplicationId']! as String).input(),
      developerAppInsightsKey: map['developerAppInsightsKey'] == null ? null : (map['developerAppInsightsKey']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      luisAppIds: map['luisAppIds'] == null ? null : ((map['luisAppIds']! as List).cast<String>()).input(),
      luisKey: map['luisKey'] == null ? null : (map['luisKey']! as String).input(),
      microsoftAppId: (map['microsoftAppId'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: (map['sku'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

