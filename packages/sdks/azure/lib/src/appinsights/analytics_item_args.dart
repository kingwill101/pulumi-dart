// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appinsights_analytics_item_analytics_item_args_doc}
/// The set of arguments for AnalyticsItem.
/// {@endtemplate}
/// {@macro pulumi_appinsights_analytics_item_analytics_item_args_doc}
class AnalyticsItemArgs {
  /// The ID of the Application Insights component on which the Analytics Item exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> applicationInsightsId;

  /// The content for the Analytics Item, for example the query text if `type` is `query`.
  final pulumi.Input<String> content;

  /// The alias to use for the function. Required when `type` is `function`.
  final pulumi.Input<String>? functionAlias;

  /// Specifies the name of the Application Insights Analytics Item. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The scope for the Analytics Item. Can be `shared` or `user`. Changing this forces a new resource to be created. Must be `shared` for functions.
  final pulumi.Input<String> scope;

  /// The type of Analytics Item to create. Can be one of `query`, `function`, `folder`, `recent`. Changing this forces a new resource to be created.
  final pulumi.Input<String> type;

  /// Creates a new [AnalyticsItemArgs].
  /// [applicationInsightsId] The ID of the Application Insights component on which the Analytics Item exists. Changing this forces a new resource to be created.
  /// [content] The content for the Analytics Item, for example the query text if `type` is `query`.
  /// [functionAlias] The alias to use for the function. Required when `type` is `function`.
  /// [name] Specifies the name of the Application Insights Analytics Item. Changing this forces a new resource to be created.
  /// [scope] The scope for the Analytics Item. Can be `shared` or `user`. Changing this forces a new resource to be created. Must be `shared` for functions.
  /// [type] The type of Analytics Item to create. Can be one of `query`, `function`, `folder`, `recent`. Changing this forces a new resource to be created.
  AnalyticsItemArgs({
    required this.applicationInsightsId,
    required this.content,
    this.functionAlias,
    this.name,
    required this.scope,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationInsightsId': applicationInsightsId,
      'content': content,
      'functionAlias': ?functionAlias,
      'name': ?name,
      'scope': scope,
      'type': type,
    };
  }

  factory AnalyticsItemArgs.fromMap(Map<String, dynamic> map) {
    return AnalyticsItemArgs(
      applicationInsightsId: pulumi.Input.fromValue(
        map['applicationInsightsId'] as String,
      ),
      content: pulumi.Input.fromValue(map['content'] as String),
      functionAlias: (() {
        final guardedValue = map['functionAlias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
