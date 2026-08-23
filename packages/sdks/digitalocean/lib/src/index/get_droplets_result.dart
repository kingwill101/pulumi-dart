// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_droplets_droplet.dart';
import 'get_droplets_filter.dart';
import 'get_droplets_sort.dart';

/// Result data returned by getDroplets.
class GetDropletsResult {
  /// A list of Droplets satisfying any `filter` and `sort` criteria. Each Droplet has the following attributes:
  final List<GetDropletsDroplet> droplets;
  final List<GetDropletsFilter>? filters;
  final bool? gpus;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetDropletsSort>? sorts;

  /// Creates a new [GetDropletsResult].
  /// [droplets] A list of Droplets satisfying any `filter` and `sort` criteria. Each Droplet has the following attributes:
  /// [filters] Optional.
  /// [gpus] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sorts] Optional.
  const GetDropletsResult({
    required this.droplets,
    this.filters,
    this.gpus,
    required this.id,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'droplets': pulumi.Input.encodeList<GetDropletsDroplet, Map<String, dynamic>>(droplets, (value) => value.toMap()),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDropletsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'gpus': ?gpus,
      'id': id,
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDropletsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetDropletsResult.fromMap(Map<String, dynamic> map) {
    return GetDropletsResult(
      droplets: pulumi.Input.decodeList<GetDropletsDroplet>(map['droplets']!, (value) => GetDropletsDroplet.fromMap((value as Map).cast<String, dynamic>())),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDropletsFilter>(guardedValue, (value) => GetDropletsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      gpus: (() { final guardedValue = map['gpus']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDropletsSort>(guardedValue, (value) => GetDropletsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
