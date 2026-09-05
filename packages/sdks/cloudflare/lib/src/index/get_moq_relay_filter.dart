// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMoqRelayFilter {
  /// Sort order by `created`. When true, results are returned oldest-first
  /// (ascending); otherwise newest-first (descending, the default).
  final pulumi.Input<bool> asc;
  /// Cursor for pagination. Returns relays created strictly after this
  /// RFC 3339 timestamp (typically the `created` value of the last item
  /// on the current page, to fetch the next page).
  final pulumi.Input<String?>? createdAfter;
  /// Cursor for pagination. Returns relays created strictly before this
  /// RFC 3339 timestamp (typically the `created` value of the first item
  /// on the current page, to fetch the previous page).
  final pulumi.Input<String?>? createdBefore;
  /// Maximum number of relays to return per page. Values above the maximum are
  /// clamped to it rather than rejected.
  final pulumi.Input<int> perPage;

  /// Creates a new [GetMoqRelayFilter].
  /// [asc] Sort order by `created`. When true, results are returned oldest-first
  /// [createdAfter] Cursor for pagination. Returns relays created strictly after this
  /// [createdBefore] Cursor for pagination. Returns relays created strictly before this
  /// [perPage] Maximum number of relays to return per page. Values above the maximum are
  const GetMoqRelayFilter({
    required this.asc,
    this.createdAfter,
    this.createdBefore,
    required this.perPage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asc': asc,
      'createdAfter': ?createdAfter,
      'createdBefore': ?createdBefore,
      'perPage': perPage,
    };
  }

  factory GetMoqRelayFilter.fromMap(Map<String, dynamic> map) {
    return GetMoqRelayFilter(
      asc: pulumi.Input.fromValue(map['asc'] as bool),
      createdAfter: (() { final guardedValue = map['createdAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBefore: (() { final guardedValue = map['createdBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      perPage: pulumi.Input.fromValue((map['perPage'] as num).toInt()),
    );
  }
}
