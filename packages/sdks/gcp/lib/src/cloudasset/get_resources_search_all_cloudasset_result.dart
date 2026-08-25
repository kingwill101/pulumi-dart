// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resources_search_all_result.dart';

/// Result data returned by getResourcesSearchAll.
class GetResourcesSearchAllCloudassetResult {
  final List<String>? assetTypes;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? query;
  /// A list of search results based on provided inputs. Structure is defined below.
  final List<GetResourcesSearchAllResult>? results;
  final String? scope;

  /// Creates a new [GetResourcesSearchAllCloudassetResult].
  /// [assetTypes] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [query] Optional.
  /// [results] A list of search results based on provided inputs. Structure is defined below.
  /// [scope] Optional.
  const GetResourcesSearchAllCloudassetResult({
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
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResourcesSearchAllResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scope': ?scope,
    };
  }

  factory GetResourcesSearchAllCloudassetResult.fromMap(Map<String, dynamic> map) {
    return GetResourcesSearchAllCloudassetResult(
      assetTypes: (() { final guardedValue = map['assetTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResourcesSearchAllResult>(guardedValue, (value) => GetResourcesSearchAllResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
