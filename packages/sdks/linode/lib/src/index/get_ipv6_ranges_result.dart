// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipv6_ranges_filter.dart';
import 'get_ipv6_ranges_range.dart';

/// Result data returned by getIpv6Ranges.
class GetIpv6RangesResult {
  final List<GetIpv6RangesFilter>? filters;
  final String id;
  final List<GetIpv6RangesRange> ranges;

  /// Creates a new [GetIpv6RangesResult].
  /// [filters] Optional.
  /// [id] Required.
  /// [ranges] Required.
  GetIpv6RangesResult({this.filters, required this.id, required this.ranges});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() {
        final guardedValue = filters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetIpv6RangesFilter,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'id': id,
      'ranges':
          pulumi.Input.encodeList<GetIpv6RangesRange, Map<String, dynamic>>(
            ranges,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetIpv6RangesResult.fromMap(Map<String, dynamic> map) {
    return GetIpv6RangesResult(
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetIpv6RangesFilter>(
          guardedValue,
          (value) => GetIpv6RangesFilter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      id: map['id'] as String,
      ranges: pulumi.Input.decodeList<GetIpv6RangesRange>(
        map['ranges']!,
        (value) =>
            GetIpv6RangesRange.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
