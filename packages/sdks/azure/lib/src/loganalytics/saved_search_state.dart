// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SavedSearch resources.
class SavedSearchState {
  /// The category that the Saved Search will be listed under. Changing this forces a new resource to be created.
  final pulumi.Input<String>? category;
  /// The name that Saved Search will be displayed as. Changing this forces a new resource to be created.
  final pulumi.Input<String>? displayName;
  /// The function alias if the query serves as a function. Changing this forces a new resource to be created.
  final pulumi.Input<String>? functionAlias;
  /// The function parameters if the query serves as a function. Changing this forces a new resource to be created. For more examples and proper syntax please refer to [this document](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/functions/user-defined-functions).
  final pulumi.Input<List<String>>? functionParameters;
  /// Specifies the ID of the Log Analytics Workspace that the Saved Search will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  /// Specifies the name of the Log Analytics Saved Search. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The query expression for the saved search. Changing this forces a new resource to be created.
  final pulumi.Input<String>? query;
  /// A mapping of tags which should be assigned to the Logs Analytics Saved Search. Changing this forces a new resource to be created.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SavedSearchState].
  /// [category] The category that the Saved Search will be listed under. Changing this forces a new resource to be created.
  /// [displayName] The name that Saved Search will be displayed as. Changing this forces a new resource to be created.
  /// [functionAlias] The function alias if the query serves as a function. Changing this forces a new resource to be created.
  /// [functionParameters] The function parameters if the query serves as a function. Changing this forces a new resource to be created. For more examples and proper syntax please refer to [this document](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/functions/user-defined-functions).
  /// [logAnalyticsWorkspaceId] Specifies the ID of the Log Analytics Workspace that the Saved Search will be associated with. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Log Analytics Saved Search. Changing this forces a new resource to be created.
  /// [query] The query expression for the saved search. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Logs Analytics Saved Search. Changing this forces a new resource to be created.
  SavedSearchState({
    pulumi.Output<String>? category,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? functionAlias,
    pulumi.Output<List<String>>? functionParameters,
    pulumi.Output<String>? logAnalyticsWorkspaceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? query,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      category = pulumi.Input.asOptionalInput<String>(category),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      functionAlias = pulumi.Input.asOptionalInput<String>(functionAlias),
      functionParameters = pulumi.Input.asOptionalInput<List<String>>(functionParameters),
      logAnalyticsWorkspaceId = pulumi.Input.asOptionalInput<String>(logAnalyticsWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      query = pulumi.Input.asOptionalInput<String>(query),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'displayName': ?displayName,
      'functionAlias': ?functionAlias,
      'functionParameters': ?functionParameters,
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'name': ?name,
      'query': ?query,
      'tags': ?tags,
    };
  }

  factory SavedSearchState.fromMap(Map<String, dynamic> map) {
    return SavedSearchState(
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      functionAlias: map['functionAlias'] == null ? null : pulumi.Output.create<String>(map['functionAlias'] as String),
      functionParameters: map['functionParameters'] == null ? null : pulumi.Output.create<List<String>>((map['functionParameters'] as List).cast<String>()),
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['logAnalyticsWorkspaceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      query: map['query'] == null ? null : pulumi.Output.create<String>(map['query'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

