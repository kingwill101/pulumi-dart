// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_records_filter.dart';
import 'get_records_record.dart';
import 'get_records_sort.dart';

/// Result data returned by getRecords.
class GetRecordsResult {
  /// Domain of the DNS record.
  final String domain;
  final List<GetRecordsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetRecordsRecord> records;
  final List<GetRecordsSort>? sorts;

  /// Creates a new [GetRecordsResult].
  /// [domain] Domain of the DNS record.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [records] Required.
  /// [sorts] Optional.
  const GetRecordsResult({
    required this.domain,
    this.filters,
    required this.id,
    required this.records,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRecordsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'records': pulumi.Input.encodeList<GetRecordsRecord, Map<String, dynamic>>(records, (value) => value.toMap()),
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRecordsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetRecordsResult.fromMap(Map<String, dynamic> map) {
    return GetRecordsResult(
      domain: map['domain'] as String,
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRecordsFilter>(guardedValue, (value) => GetRecordsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      records: pulumi.Input.decodeList<GetRecordsRecord>(map['records']!, (value) => GetRecordsRecord.fromMap((value as Map).cast<String, dynamic>())),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRecordsSort>(guardedValue, (value) => GetRecordsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
