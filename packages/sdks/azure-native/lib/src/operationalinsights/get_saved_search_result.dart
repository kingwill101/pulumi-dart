// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_response.dart';

/// Result data returned by getSavedSearch.
class GetSavedSearchResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The category of the saved search. This helps the user to find a saved search faster.
  final String category;
  /// Saved search display name.
  final String displayName;
  /// The ETag of the saved search. To override an existing saved search, use "*" or specify the current Etag
  final String? etag;
  /// The function alias if query serves as a function.
  final String? functionAlias;
  /// The optional function parameters if query serves as a function. Value should be in the following format: 'param-name1:type1 = default_value1, param-name2:type2 = default_value2'. For more examples and proper syntax please refer to https://docs.microsoft.com/en-us/azure/kusto/query/functions/user-defined-functions.
  final String? functionParameters;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The query expression for the saved search.
  final String query;
  /// The tags attached to the saved search.
  final List<TagResponse>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The version number of the query language. The current version is 2 and is the default.
  final double? version;

  /// Creates a new [GetSavedSearchResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [category] The category of the saved search. This helps the user to find a saved search faster.
  /// [displayName] Saved search display name.
  /// [etag] The ETag of the saved search. To override an existing saved search, use "*" or specify the current Etag
  /// [functionAlias] The function alias if query serves as a function.
  /// [functionParameters] The optional function parameters if query serves as a function. Value should be in the following format: 'param-name1:type1 = default_value1, param-name2:type2 = default_value2'. For more examples and proper syntax please refer to https://docs.microsoft.com/en-us/azure/kusto/query/functions/user-defined-functions.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [query] The query expression for the saved search.
  /// [tags] The tags attached to the saved search.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] The version number of the query language. The current version is 2 and is the default.
  GetSavedSearchResult({
    required this.azureApiVersion,
    required this.category,
    required this.displayName,
    this.etag,
    this.functionAlias,
    this.functionParameters,
    required this.id,
    required this.name,
    required this.query,
    this.tags,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'category': category,
      'displayName': displayName,
      'etag': ?etag,
      'functionAlias': ?functionAlias,
      'functionParameters': ?functionParameters,
      'id': id,
      'name': name,
      'query': query,
      'tags': ?(() { final guardedValue = tags; if (guardedValue == null) return null; return pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': type,
      'version': ?version,
    };
  }

  factory GetSavedSearchResult.fromMap(Map<String, dynamic> map) {
    return GetSavedSearchResult(
      azureApiVersion: map['azureApiVersion'] as String,
      category: map['category'] as String,
      displayName: map['displayName'] as String,
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      functionAlias: (() { final guardedValue = map['functionAlias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      functionParameters: (() { final guardedValue = map['functionParameters']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      query: map['query'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TagResponse>(guardedValue, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: map['type'] as String,
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as double; })(),
    );
  }
}

