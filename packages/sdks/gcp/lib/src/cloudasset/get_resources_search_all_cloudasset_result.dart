// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resources_search_all_result.dart';

/// Result data returned by getResourcesSearchAll.
class GetResourcesSearchAllCloudassetResult {
  final List<String>? assetTypes;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? query;
  /// A list of search results based on provided inputs. Structure is defined below.
  final List<GetResourcesSearchAllResult> results;
  final String scope;

  /// Creates a new [GetResourcesSearchAllCloudassetResult].
  /// [assetTypes] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [query] Optional.
  /// [results] A list of search results based on provided inputs. Structure is defined below.
  /// [scope] Required.
  GetResourcesSearchAllCloudassetResult({
    this.assetTypes,
    required this.id,
    this.query,
    required this.results,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetTypes': ?assetTypes,
      'id': id,
      'query': ?query,
      'results': pulumi.Input.encodeList<GetResourcesSearchAllResult, Map<String, dynamic>>(results, (value) => value.toMap()),
      'scope': scope,
    };
  }

  factory GetResourcesSearchAllCloudassetResult.fromMap(Map<String, dynamic> map) {
    return GetResourcesSearchAllCloudassetResult(
      assetTypes: (() { final guardedValue = map['assetTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: map['id'] as String,
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: pulumi.Input.decodeList<GetResourcesSearchAllResult>(map['results']!, (value) => GetResourcesSearchAllResult.fromMap((value as Map).cast<String, dynamic>())),
      scope: map['scope'] as String,
    );
  }
}

