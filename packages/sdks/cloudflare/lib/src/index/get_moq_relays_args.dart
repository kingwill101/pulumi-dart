// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_moq_relays_get_moq_relays_args_doc}
/// Arguments for getMoqRelays.
/// {@endtemplate}
/// {@macro pulumi_index_get_moq_relays_get_moq_relays_args_doc}
class GetMoqRelaysArgs {
  /// Cloudflare account identifier.
  final pulumi.Input<String> accountId;
  /// Sort order by `created`. When true, results are returned oldest-first
  /// (ascending); otherwise newest-first (descending, the default).
  final pulumi.Input<bool?>? asc;
  /// Cursor for pagination. Returns relays created strictly after this
  /// RFC 3339 timestamp (typically the `created` value of the last item
  /// on the current page, to fetch the next page).
  final pulumi.Input<String?>? createdAfter;
  /// Cursor for pagination. Returns relays created strictly before this
  /// RFC 3339 timestamp (typically the `created` value of the first item
  /// on the current page, to fetch the previous page).
  final pulumi.Input<String?>? createdBefore;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Maximum number of relays to return per page. Values above the maximum are
  /// clamped to it rather than rejected.
  final pulumi.Input<int?>? perPage;

  /// Creates a new [GetMoqRelaysArgs].
  /// [accountId] Cloudflare account identifier.
  /// [asc] Sort order by `created`. When true, results are returned oldest-first
  /// [createdAfter] Cursor for pagination. Returns relays created strictly after this
  /// [createdBefore] Cursor for pagination. Returns relays created strictly before this
  /// [maxItems] Max items to fetch, default: 1000
  /// [perPage] Maximum number of relays to return per page. Values above the maximum are
  const GetMoqRelaysArgs({
    required this.accountId,
    this.asc,
    this.createdAfter,
    this.createdBefore,
    this.maxItems,
    this.perPage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'asc': ?asc,
      'createdAfter': ?createdAfter,
      'createdBefore': ?createdBefore,
      'maxItems': ?maxItems,
      'perPage': ?perPage,
    };
  }

  factory GetMoqRelaysArgs.fromMap(Map<String, dynamic> map) {
    return GetMoqRelaysArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      asc: (() { final guardedValue = map['asc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createdAfter: (() { final guardedValue = map['createdAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBefore: (() { final guardedValue = map['createdBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      perPage: (() { final guardedValue = map['perPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
