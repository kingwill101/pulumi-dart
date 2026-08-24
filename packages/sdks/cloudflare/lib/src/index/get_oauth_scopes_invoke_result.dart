// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_oauth_scopes_result.dart';

/// Result data returned by getOauthScopes.
class GetOauthScopesInvokeResult {
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetOauthScopesResult>? results;

  /// Creates a new [GetOauthScopesInvokeResult].
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetOauthScopesInvokeResult({
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOauthScopesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetOauthScopesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetOauthScopesInvokeResult(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOauthScopesResult>(guardedValue, (value) => GetOauthScopesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
