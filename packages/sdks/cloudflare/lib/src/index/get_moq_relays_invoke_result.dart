// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_moq_relays_result.dart';

/// Result data returned by getMoqRelays.
class GetMoqRelaysInvokeResult {
  /// Cloudflare account identifier.
  final String? accountId;
  /// Sort order by `created`. When true, results are returned oldest-first
  /// (ascending); otherwise newest-first (descending, the default).
  final bool? asc;
  /// Cursor for pagination. Returns relays created strictly after this
  /// RFC 3339 timestamp (typically the `created` value of the last item
  /// on the current page, to fetch the next page).
  final String? createdAfter;
  /// Cursor for pagination. Returns relays created strictly before this
  /// RFC 3339 timestamp (typically the `created` value of the first item
  /// on the current page, to fetch the previous page).
  final String? createdBefore;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Maximum number of relays to return per page. Values above the maximum are
  /// clamped to it rather than rejected.
  final int? perPage;
  /// The items returned by the data source
  final List<GetMoqRelaysResult>? results;

  /// Creates a new [GetMoqRelaysInvokeResult].
  /// [accountId] Cloudflare account identifier.
  /// [asc] Sort order by `created`. When true, results are returned oldest-first
  /// [createdAfter] Cursor for pagination. Returns relays created strictly after this
  /// [createdBefore] Cursor for pagination. Returns relays created strictly before this
  /// [maxItems] Max items to fetch, default: 1000
  /// [perPage] Maximum number of relays to return per page. Values above the maximum are
  /// [results] The items returned by the data source
  const GetMoqRelaysInvokeResult({
    this.accountId,
    this.asc,
    this.createdAfter,
    this.createdBefore,
    this.maxItems,
    this.perPage,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'asc': ?asc,
      'createdAfter': ?createdAfter,
      'createdBefore': ?createdBefore,
      'maxItems': ?maxItems,
      'perPage': ?perPage,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMoqRelaysResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetMoqRelaysInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetMoqRelaysInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      asc: (() { final guardedValue = map['asc']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      createdAfter: (() { final guardedValue = map['createdAfter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBefore: (() { final guardedValue = map['createdBefore']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      perPage: (() { final guardedValue = map['perPage']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMoqRelaysResult>(guardedValue, (value) => GetMoqRelaysResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
