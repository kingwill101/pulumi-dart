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
    required pulumi.Output<String> category,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? functionAlias,
    pulumi.Output<String>? functionParameters,
    required pulumi.Output<String> query,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? savedSearchId,
    pulumi.Output<List<Tag>>? tags,
    pulumi.Output<double>? version,
    required pulumi.Output<String> workspaceName,
  }) :
      category = pulumi.Input.asInput<String>(category),
      displayName = pulumi.Input.asInput<String>(displayName),
      functionAlias = pulumi.Input.asOptionalInput<String>(functionAlias),
      functionParameters = pulumi.Input.asOptionalInput<String>(functionParameters),
      query = pulumi.Input.asInput<String>(query),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      savedSearchId = pulumi.Input.asOptionalInput<String>(savedSearchId),
      tags = pulumi.Input.asOptionalInput<List<Tag>>(tags),
      version = pulumi.Input.asOptionalInput<double>(version),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'displayName': displayName,
      'functionAlias': ?functionAlias,
      'functionParameters': ?functionParameters,
      'query': query,
      'resourceGroupName': resourceGroupName,
      'savedSearchId': ?savedSearchId,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
      'workspaceName': workspaceName,
    };
  }

  factory SavedSearchArgs.fromMap(Map<String, dynamic> map) {
    return SavedSearchArgs(
      category: pulumi.Output.create<String>(map['category'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      functionAlias: map['functionAlias'] == null ? null : pulumi.Output.create<String>(map['functionAlias'] as String),
      functionParameters: map['functionParameters'] == null ? null : pulumi.Output.create<String>(map['functionParameters'] as String),
      query: pulumi.Output.create<String>(map['query'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      savedSearchId: map['savedSearchId'] == null ? null : pulumi.Output.create<String>(map['savedSearchId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<Tag>>(pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))),
      version: map['version'] == null ? null : pulumi.Output.create<double>(map['version'] as double),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

