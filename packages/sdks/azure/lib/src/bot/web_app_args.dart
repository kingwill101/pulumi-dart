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
    pulumi.Output<String>? developerAppInsightsApiKey,
    pulumi.Output<String>? developerAppInsightsApplicationId,
    pulumi.Output<String>? developerAppInsightsKey,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? location,
    pulumi.Output<List<String>>? luisAppIds,
    pulumi.Output<String>? luisKey,
    required pulumi.Output<String> microsoftAppId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      developerAppInsightsApiKey = pulumi.Input.asOptionalInput<String>(developerAppInsightsApiKey),
      developerAppInsightsApplicationId = pulumi.Input.asOptionalInput<String>(developerAppInsightsApplicationId),
      developerAppInsightsKey = pulumi.Input.asOptionalInput<String>(developerAppInsightsKey),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      location = pulumi.Input.asOptionalInput<String>(location),
      luisAppIds = pulumi.Input.asOptionalInput<List<String>>(luisAppIds),
      luisKey = pulumi.Input.asOptionalInput<String>(luisKey),
      microsoftAppId = pulumi.Input.asInput<String>(microsoftAppId),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asInput<String>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      developerAppInsightsApiKey: map['developerAppInsightsApiKey'] == null ? null : pulumi.Output.create<String>(map['developerAppInsightsApiKey'] as String),
      developerAppInsightsApplicationId: map['developerAppInsightsApplicationId'] == null ? null : pulumi.Output.create<String>(map['developerAppInsightsApplicationId'] as String),
      developerAppInsightsKey: map['developerAppInsightsKey'] == null ? null : pulumi.Output.create<String>(map['developerAppInsightsKey'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      luisAppIds: map['luisAppIds'] == null ? null : pulumi.Output.create<List<String>>((map['luisAppIds'] as List).cast<String>()),
      luisKey: map['luisKey'] == null ? null : pulumi.Output.create<String>(map['luisKey'] as String),
      microsoftAppId: pulumi.Output.create<String>(map['microsoftAppId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: pulumi.Output.create<String>(map['sku'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

