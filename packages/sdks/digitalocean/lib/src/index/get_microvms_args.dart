// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_microvms_filter.dart';
import 'get_microvms_sort.dart';

/// {@template pulumi_index_get_microvms_get_microvms_args_doc}
/// Arguments for getMicrovms.
/// {@endtemplate}
/// {@macro pulumi_index_get_microvms_get_microvms_args_doc}
class GetMicrovmsArgs {
  /// Filter the results.
  /// The `filter` block is documented below.
  final pulumi.Input<List<GetMicrovmsFilter>?>? filters;
  /// Only return MicroVMs with this exact name.
  final pulumi.Input<String?>? name;
  /// Only return MicroVMs in this region.
  final pulumi.Input<String?>? region;
  /// Sort the results.
  /// The `sort` block is documented below.
  final pulumi.Input<List<GetMicrovmsSort>?>? sorts;
  /// Only return MicroVMs that carry this tag.
  final pulumi.Input<String?>? tagName;

  /// Creates a new [GetMicrovmsArgs].
  /// [filters] Filter the results.
  /// [name] Only return MicroVMs with this exact name.
  /// [region] Only return MicroVMs in this region.
  /// [sorts] Sort the results.
  /// [tagName] Only return MicroVMs that carry this tag.
  const GetMicrovmsArgs({
    this.filters,
    this.name,
    this.region,
    this.sorts,
    this.tagName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetMicrovmsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetMicrovmsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetMicrovmsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetMicrovmsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tagName': ?tagName,
    };
  }

  factory GetMicrovmsArgs.fromMap(Map<String, dynamic> map) {
    return GetMicrovmsArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetMicrovmsFilter>(guardedValue, (value) => GetMicrovmsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetMicrovmsSort>(guardedValue, (value) => GetMicrovmsSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tagName: (() { final guardedValue = map['tagName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
