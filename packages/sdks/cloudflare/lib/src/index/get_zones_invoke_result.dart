// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_account.dart';
import 'get_zones_result.dart';

/// Result data returned by getZones.
class GetZonesInvokeResult {
  final GetZonesAccount? account;
  final String? direction;
  final String? match;
  final int? maxItems;
  final String? name;
  final String? order;
  final List<GetZonesResult>? results;
  final String? status;
  final List<String>? types;

  /// Creates a new [GetZonesInvokeResult].
  /// [account] Optional.
  /// [direction] Optional.
  /// [match] Optional.
  /// [maxItems] Optional.
  /// [name] Optional.
  /// [order] Optional.
  /// [results] Optional.
  /// [status] Optional.
  /// [types] Optional.
  const GetZonesInvokeResult({
    this.account,
    this.direction,
    this.match,
    this.maxItems,
    this.name,
    this.order,
    this.results,
    this.status,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': ?account?.toMap(),
      'direction': ?direction,
      'match': ?match,
      'maxItems': ?maxItems,
      'name': ?name,
      'order': ?order,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZonesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'types': ?types,
    };
  }

  factory GetZonesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZonesInvokeResult(
      account: (() { final guardedValue = map['account']; if (guardedValue == null) return null; return GetZonesAccount.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZonesResult>(guardedValue, (value) => GetZonesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
