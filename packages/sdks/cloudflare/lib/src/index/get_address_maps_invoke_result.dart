// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_maps_result.dart';

/// Result data returned by getAddressMaps.
class GetAddressMapsInvokeResult {
  /// Identifier of a Cloudflare account.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetAddressMapsResult>? results;

  /// Creates a new [GetAddressMapsInvokeResult].
  /// [accountId] Identifier of a Cloudflare account.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetAddressMapsInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAddressMapsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetAddressMapsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetAddressMapsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAddressMapsResult>(guardedValue, (value) => GetAddressMapsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
