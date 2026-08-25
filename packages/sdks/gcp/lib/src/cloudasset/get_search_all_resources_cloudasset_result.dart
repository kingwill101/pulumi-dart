// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_search_all_resources_result.dart';

/// Result data returned by getSearchAllResources.
class GetSearchAllResourcesCloudassetResult {
  final List<String>? assetTypes;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? query;
  /// A list of search results based on provided inputs. Structure is defined below.
  final List<GetSearchAllResourcesResult>? results;
  final String? scope;

  /// Creates a new [GetSearchAllResourcesCloudassetResult].
  /// [assetTypes] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [query] Optional.
  /// [results] A list of search results based on provided inputs. Structure is defined below.
  /// [scope] Optional.
  const GetSearchAllResourcesCloudassetResult({
    this.assetTypes,
    this.id,
    this.query,
    this.results,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetTypes': ?assetTypes,
      'id': ?id,
      'query': ?query,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSearchAllResourcesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scope': ?scope,
    };
  }

  factory GetSearchAllResourcesCloudassetResult.fromMap(Map<String, dynamic> map) {
    return GetSearchAllResourcesCloudassetResult(
      assetTypes: (() { final guardedValue = map['assetTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSearchAllResourcesResult>(guardedValue, (value) => GetSearchAllResourcesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
