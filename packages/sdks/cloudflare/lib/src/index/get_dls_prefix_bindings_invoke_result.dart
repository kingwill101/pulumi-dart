// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dls_prefix_bindings_result.dart';

/// Result data returned by getDlsPrefixBindings.
class GetDlsPrefixBindingsInvokeResult {
  /// Identifier of a Cloudflare account.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetDlsPrefixBindingsResult>? results;

  /// Creates a new [GetDlsPrefixBindingsInvokeResult].
  /// [accountId] Identifier of a Cloudflare account.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetDlsPrefixBindingsInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDlsPrefixBindingsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetDlsPrefixBindingsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetDlsPrefixBindingsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDlsPrefixBindingsResult>(guardedValue, (value) => GetDlsPrefixBindingsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
