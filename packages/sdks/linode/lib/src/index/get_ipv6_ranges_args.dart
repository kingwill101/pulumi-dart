// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipv6_ranges_filter.dart';

/// {@template pulumi_index_get_ipv6_ranges_get_ipv6_ranges_args_doc}
/// Arguments for getIpv6Ranges.
/// {@endtemplate}
/// {@macro pulumi_index_get_ipv6_ranges_get_ipv6_ranges_args_doc}
class GetIpv6RangesArgs {
  final pulumi.Input<List<GetIpv6RangesFilter>>? filters;

  /// Creates a new [GetIpv6RangesArgs].
  /// [filters] Optional.
  const GetIpv6RangesArgs({
    this.filters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetIpv6RangesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetIpv6RangesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetIpv6RangesArgs.fromMap(Map<String, dynamic> map) {
    return GetIpv6RangesArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetIpv6RangesFilter>(guardedValue, (value) => GetIpv6RangesFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

