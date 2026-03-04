// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_records_filter.dart';
import 'get_records_sort.dart';

/// {@template pulumi_index_get_records_get_records_args_doc}
/// Arguments for getRecords.
/// {@endtemplate}
/// {@macro pulumi_index_get_records_get_records_args_doc}
class GetRecordsArgs {
  /// The domain name to search for DNS records
  final pulumi.Input<String> domain;

  /// Filter the results.
  /// The `filter` block is documented below.
  final pulumi.Input<List<GetRecordsFilter>>? filters;

  /// Sort the results.
  /// The `sort` block is documented below.
  final pulumi.Input<List<GetRecordsSort>>? sorts;

  /// Creates a new [GetRecordsArgs].
  /// [domain] The domain name to search for DNS records
  /// [filters] Filter the results.
  /// [sorts] Sort the results.
  GetRecordsArgs({required this.domain, this.filters, this.sorts});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetRecordsFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<GetRecordsFilter, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'sorts':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetRecordsSort>,
            List<Map<String, dynamic>>
          >(
            sorts,
            (value) =>
                pulumi.Input.encodeList<GetRecordsSort, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory GetRecordsArgs.fromMap(Map<String, dynamic> map) {
    return GetRecordsArgs(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetRecordsFilter>(
            guardedValue,
            (value) => GetRecordsFilter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      sorts: (() {
        final guardedValue = map['sorts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetRecordsSort>(
            guardedValue,
            (value) =>
                GetRecordsSort.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
