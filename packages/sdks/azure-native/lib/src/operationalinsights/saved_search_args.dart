// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag.dart';

/// {@template pulumi_operationalinsights_saved_search_args_doc}
/// The set of arguments for SavedSearch.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_saved_search_args_doc}
class SavedSearchArgs {
  /// The category of the saved search. This helps the user to find a saved search faster.
  final pulumi.Input<String> category;

  /// Saved search display name.
  final pulumi.Input<String> displayName;

  /// The function alias if query serves as a function.
  final pulumi.Input<String>? functionAlias;

  /// The optional function parameters if query serves as a function. Value should be in the following format: 'param-name1:type1 = default_value1, param-name2:type2 = default_value2'. For more examples and proper syntax please refer to https://docs.microsoft.com/en-us/azure/kusto/query/functions/user-defined-functions.
  final pulumi.Input<String>? functionParameters;

  /// The query expression for the saved search.
  final pulumi.Input<String> query;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The id of the saved search.
  final pulumi.Input<String>? savedSearchId;

  /// The tags attached to the saved search.
  final pulumi.Input<List<Tag>>? tags;

  /// The version number of the query language. The current version is 2 and is the default.
  final pulumi.Input<double>? version;

  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [SavedSearchArgs].
  /// [category] The category of the saved search. This helps the user to find a saved search faster.
  /// [displayName] Saved search display name.
  /// [functionAlias] The function alias if query serves as a function.
  /// [functionParameters] The optional function parameters if query serves as a function. Value should be in the following format: 'param-name1:type1 = default_value1, param-name2:type2 = default_value2'. For more examples and proper syntax please refer to https://docs.microsoft.com/en-us/azure/kusto/query/functions/user-defined-functions.
  /// [query] The query expression for the saved search.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [savedSearchId] The id of the saved search.
  /// [tags] The tags attached to the saved search.
  /// [version] The version number of the query language. The current version is 2 and is the default.
  /// [workspaceName] The name of the workspace.
  SavedSearchArgs({
    required this.category,
    required this.displayName,
    this.functionAlias,
    this.functionParameters,
    required this.query,
    required this.resourceGroupName,
    this.savedSearchId,
    this.tags,
    this.version,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'displayName': displayName,
      'functionAlias': ?functionAlias,
      'functionParameters': ?functionParameters,
      'query': query,
      'resourceGroupName': resourceGroupName,
      'savedSearchId': ?savedSearchId,
      'tags':
          ?pulumi.Input.mapOptionalInputValue<
            List<Tag>,
            List<Map<String, dynamic>>
          >(
            tags,
            (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'version': ?version,
      'workspaceName': workspaceName,
    };
  }

  factory SavedSearchArgs.fromMap(Map<String, dynamic> map) {
    return SavedSearchArgs(
      category: pulumi.Input.fromValue(map['category'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      functionAlias: (() {
        final guardedValue = map['functionAlias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      functionParameters: (() {
        final guardedValue = map['functionParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      query: pulumi.Input.fromValue(map['query'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      savedSearchId: (() {
        final guardedValue = map['savedSearchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Tag>(
            guardedValue,
            (value) => Tag.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
