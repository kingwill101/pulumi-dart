// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SavedSearch resources.
class SavedSearchState {
  /// The category that the Saved Search will be listed under. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? category;
  /// The name that Saved Search will be displayed as. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? displayName;
  /// The function alias if the query serves as a function. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? functionAlias;
  /// The function parameters if the query serves as a function. Changing this forces a new resource to be created. For more examples and proper syntax please refer to [this document](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/functions/user-defined-functions).
  final pulumi.Input<List<String>?>? functionParameters;
  /// Specifies the ID of the Log Analytics Workspace that the Saved Search will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? logAnalyticsWorkspaceId;
  /// Specifies the name of the Log Analytics Saved Search. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The query expression for the saved search. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? query;
  /// A mapping of tags which should be assigned to the Logs Analytics Saved Search. Changing this forces a new resource to be created.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [SavedSearchState].
  /// [category] The category that the Saved Search will be listed under. Changing this forces a new resource to be created.
  /// [displayName] The name that Saved Search will be displayed as. Changing this forces a new resource to be created.
  /// [functionAlias] The function alias if the query serves as a function. Changing this forces a new resource to be created.
  /// [functionParameters] The function parameters if the query serves as a function. Changing this forces a new resource to be created. For more examples and proper syntax please refer to [this document](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/functions/user-defined-functions).
  /// [logAnalyticsWorkspaceId] Specifies the ID of the Log Analytics Workspace that the Saved Search will be associated with. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Log Analytics Saved Search. Changing this forces a new resource to be created.
  /// [query] The query expression for the saved search. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Logs Analytics Saved Search. Changing this forces a new resource to be created.
  const SavedSearchState({
    this.category,
    this.displayName,
    this.functionAlias,
    this.functionParameters,
    this.logAnalyticsWorkspaceId,
    this.name,
    this.query,
    this.tags,
  });

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
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionAlias: (() { final guardedValue = map['functionAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionParameters: (() { final guardedValue = map['functionParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      logAnalyticsWorkspaceId: (() { final guardedValue = map['logAnalyticsWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
