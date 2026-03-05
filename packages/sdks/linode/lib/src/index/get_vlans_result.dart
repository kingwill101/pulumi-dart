// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vlans_filter.dart';
import 'get_vlans_vlan.dart';

/// Result data returned by getVlans.
class GetVlansResult {
  final List<GetVlansFilter>? filters;
  final String id;
  final String? order;
  final String? orderBy;
  final List<GetVlansVlan> vlans;

  /// Creates a new [GetVlansResult].
  /// [filters] Optional.
  /// [id] Required.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [vlans] Required.
  GetVlansResult({
    this.filters,
    required this.id,
    this.order,
    this.orderBy,
    required this.vlans,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVlansFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'order': ?order,
      'orderBy': ?orderBy,
      'vlans': pulumi.Input.encodeList<GetVlansVlan, Map<String, dynamic>>(vlans, (value) => value.toMap()),
    };
  }

  factory GetVlansResult.fromMap(Map<String, dynamic> map) {
    return GetVlansResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVlansFilter>(guardedValue, (value) => GetVlansFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vlans: pulumi.Input.decodeList<GetVlansVlan>(map['vlans']!, (value) => GetVlansVlan.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

