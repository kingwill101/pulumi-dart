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
    pulumi.Output<String>? applicationInsightsId,
    pulumi.Output<String>? content,
    pulumi.Output<String>? functionAlias,
    pulumi.Output<String>? name,
    pulumi.Output<String>? scope,
    pulumi.Output<String>? timeCreated,
    pulumi.Output<String>? timeModified,
    pulumi.Output<String>? type,
    pulumi.Output<String>? version,
  }) :
      applicationInsightsId = pulumi.Input.asOptionalInput<String>(applicationInsightsId),
      content = pulumi.Input.asOptionalInput<String>(content),
      functionAlias = pulumi.Input.asOptionalInput<String>(functionAlias),
      name = pulumi.Input.asOptionalInput<String>(name),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      timeCreated = pulumi.Input.asOptionalInput<String>(timeCreated),
      timeModified = pulumi.Input.asOptionalInput<String>(timeModified),
      type = pulumi.Input.asOptionalInput<String>(type),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      applicationInsightsId: map['applicationInsightsId'] == null ? null : pulumi.Output.create<String>(map['applicationInsightsId'] as String),
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      functionAlias: map['functionAlias'] == null ? null : pulumi.Output.create<String>(map['functionAlias'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      timeCreated: map['timeCreated'] == null ? null : pulumi.Output.create<String>(map['timeCreated'] as String),
      timeModified: map['timeModified'] == null ? null : pulumi.Output.create<String>(map['timeModified'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

