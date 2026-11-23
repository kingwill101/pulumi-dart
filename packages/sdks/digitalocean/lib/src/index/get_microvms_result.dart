// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_microvms_filter.dart';
import 'get_microvms_micro_vm.dart';
import 'get_microvms_sort.dart';

/// Result data returned by getMicrovms.
class GetMicrovmsResult {
  final List<GetMicrovmsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of MicroVMs satisfying any `filter` and `sort` criteria.
  /// Each MicroVM has the same attributes as the
  /// `digitalocean.Microvm` data source.
  final List<GetMicrovmsMicroVm>? microVms;
  final String? name;
  final String? region;
  final List<GetMicrovmsSort>? sorts;
  final String? tagName;

  /// Creates a new [GetMicrovmsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [microVms] A list of MicroVMs satisfying any `filter` and `sort` criteria.
  /// [name] Optional.
  /// [region] Optional.
  /// [sorts] Optional.
  /// [tagName] Optional.
  const GetMicrovmsResult({
    this.filters,
    this.id,
    this.microVms,
    this.name,
    this.region,
    this.sorts,
    this.tagName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMicrovmsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'microVms': ?(() { final guardedValue = microVms; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMicrovmsMicroVm, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'region': ?region,
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMicrovmsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tagName': ?tagName,
    };
  }

  factory GetMicrovmsResult.fromMap(Map<String, dynamic> map) {
    return GetMicrovmsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMicrovmsFilter>(guardedValue, (value) => GetMicrovmsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      microVms: (() { final guardedValue = map['microVms']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMicrovmsMicroVm>(guardedValue, (value) => GetMicrovmsMicroVm.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMicrovmsSort>(guardedValue, (value) => GetMicrovmsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
      tagName: (() { final guardedValue = map['tagName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
