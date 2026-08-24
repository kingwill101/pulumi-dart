// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zone_filter_account.dart';

class GetZoneFilter {
  final pulumi.Input<GetZoneFilterAccount?>? account;
  /// Direction to order zones.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Whether to match all search requirements or at least one (any).
  /// Available values: "any", "all".
  final pulumi.Input<String> match;
  /// A domain name. Optional filter operators can be provided to extend refine the search:
  /// * `equal` (default)
  /// * `notEqual`
  /// * `startsWith`
  /// * `endsWith`
  /// * `contains`
  /// * `startsWithCaseSensitive`
  /// * `endsWithCaseSensitive`
  /// * `containsCaseSensitive`
  final pulumi.Input<String?>? name;
  /// Field to order zones by.
  /// Available values: "name", "status", "account.id", "account.name", "plan.id".
  final pulumi.Input<String?>? order;
  /// Specify a zone status to filter by.
  /// Available values: "initializing", "pending", "active", "moved".
  final pulumi.Input<String?>? status;
  /// Zone types to filter by. Multiple types can be specified as a comma-separated list (e.g., ?type=full,partial,secondary). When this parameter is not provided, zones with type "internal" are excluded from the results.
  final pulumi.Input<List<String>?>? types;

  /// Creates a new [GetZoneFilter].
  /// [account] Optional.
  /// [direction] Direction to order zones.
  /// [match] Whether to match all search requirements or at least one (any).
  /// [name] A domain name. Optional filter operators can be provided to extend refine the search:
  /// [order] Field to order zones by.
  /// [status] Specify a zone status to filter by.
  /// [types] Zone types to filter by. Multiple types can be specified as a comma-separated list (e.g., ?type=full,partial,secondary). When this parameter is not provided, zones with type "internal" are excluded from the results.
  const GetZoneFilter({
    this.account,
    this.direction,
    required this.match,
    this.name,
    this.order,
    this.status,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': ?pulumi.Input.mapOptionalInputValue<GetZoneFilterAccount, Map<String, dynamic>>(account, (value) => value.toMap()),
      'direction': ?direction,
      'match': match,
      'name': ?name,
      'order': ?order,
      'status': ?status,
      'types': ?types,
    };
  }

  factory GetZoneFilter.fromMap(Map<String, dynamic> map) {
    return GetZoneFilter(
      account: (() { final guardedValue = map['account']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZoneFilterAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      match: pulumi.Input.fromValue(map['match'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
