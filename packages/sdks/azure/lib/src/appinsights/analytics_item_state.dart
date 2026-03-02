// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AnalyticsItem resources.
class AnalyticsItemState {
  /// The ID of the Application Insights component on which the Analytics Item exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationInsightsId;
  /// The content for the Analytics Item, for example the query text if `type` is `query`.
  final pulumi.Input<String>? content;
  /// The alias to use for the function. Required when `type` is `function`.
  final pulumi.Input<String>? functionAlias;
  /// Specifies the name of the Application Insights Analytics Item. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The scope for the Analytics Item. Can be `shared` or `user`. Changing this forces a new resource to be created. Must be `shared` for functions.
  final pulumi.Input<String>? scope;
  /// A string containing the time the Analytics Item was created.
  final pulumi.Input<String>? timeCreated;
  /// A string containing the time the Analytics Item was last modified.
  final pulumi.Input<String>? timeModified;
  /// The type of Analytics Item to create. Can be one of `query`, `function`, `folder`, `recent`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? type;
  /// A string indicating the version of the query format
  final pulumi.Input<String>? version;

  /// Creates a new [AnalyticsItemState].
  /// [applicationInsightsId] The ID of the Application Insights component on which the Analytics Item exists. Changing this forces a new resource to be created.
  /// [content] The content for the Analytics Item, for example the query text if `type` is `query`.
  /// [functionAlias] The alias to use for the function. Required when `type` is `function`.
  /// [name] Specifies the name of the Application Insights Analytics Item. Changing this forces a new resource to be created.
  /// [scope] The scope for the Analytics Item. Can be `shared` or `user`. Changing this forces a new resource to be created. Must be `shared` for functions.
  /// [timeCreated] A string containing the time the Analytics Item was created.
  /// [timeModified] A string containing the time the Analytics Item was last modified.
  /// [type] The type of Analytics Item to create. Can be one of `query`, `function`, `folder`, `recent`. Changing this forces a new resource to be created.
  /// [version] A string indicating the version of the query format
  AnalyticsItemState({
    this.applicationInsightsId,
    this.content,
    this.functionAlias,
    this.name,
    this.scope,
    this.timeCreated,
    this.timeModified,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationInsightsId': ?applicationInsightsId,
      'content': ?content,
      'functionAlias': ?functionAlias,
      'name': ?name,
      'scope': ?scope,
      'timeCreated': ?timeCreated,
      'timeModified': ?timeModified,
      'type': ?type,
      'version': ?version,
    };
  }

  factory AnalyticsItemState.fromMap(Map<String, dynamic> map) {
    return AnalyticsItemState(
      applicationInsightsId: map['applicationInsightsId'] == null ? null : (map['applicationInsightsId']! as String).input(),
      content: map['content'] == null ? null : (map['content']! as String).input(),
      functionAlias: map['functionAlias'] == null ? null : (map['functionAlias']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
      timeCreated: map['timeCreated'] == null ? null : (map['timeCreated']! as String).input(),
      timeModified: map['timeModified'] == null ? null : (map['timeModified']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

