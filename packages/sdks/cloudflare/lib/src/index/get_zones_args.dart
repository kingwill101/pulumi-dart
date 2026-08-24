// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_account.dart';

/// {@template pulumi_index_get_zones_get_zones_args_doc}
/// Arguments for getZones.
/// {@endtemplate}
/// {@macro pulumi_index_get_zones_get_zones_args_doc}
class GetZonesArgs {
  final pulumi.Input<GetZonesAccount?>? account;
  final pulumi.Input<String?>? direction;
  final pulumi.Input<String?>? match;
  final pulumi.Input<int?>? maxItems;
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? order;
  final pulumi.Input<String?>? status;
  final pulumi.Input<List<String>?>? types;

  /// Creates a new [GetZonesArgs].
  /// [account] Optional.
  /// [direction] Optional.
  /// [match] Optional.
  /// [maxItems] Optional.
  /// [name] Optional.
  /// [order] Optional.
  /// [status] Optional.
  /// [types] Optional.
  const GetZonesArgs({
    this.account,
    this.direction,
    this.match,
    this.maxItems,
    this.name,
    this.order,
    this.status,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': ?pulumi.Input.mapOptionalInputValue<GetZonesAccount, Map<String, dynamic>>(account, (value) => value.toMap()),
      'direction': ?direction,
      'match': ?match,
      'maxItems': ?maxItems,
      'name': ?name,
      'order': ?order,
      'status': ?status,
      'types': ?types,
    };
  }

  factory GetZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetZonesArgs(
      account: (() { final guardedValue = map['account']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZonesAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
