// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_resource_library_applications_result.dart';

/// Result data returned by getZeroTrustResourceLibraryApplications.
class GetZeroTrustResourceLibraryApplicationsInvokeResult {
  final String? accountId;
  /// Return only the listed properties on each application, as a comma-separated list.
  /// Use this to keep responses small when you only need part of each application, for
  /// example populating a picker with `fields=id,name` instead of downloading every
  /// hostname and IP subnet.
  final String? fields;
  final String? filter;
  final int? limit;
  final String? lookup;
  final int? maxItems;
  final int? offset;
  final String? orderBy;
  final List<GetZeroTrustResourceLibraryApplicationsResult>? results;
  final String? search;

  /// Creates a new [GetZeroTrustResourceLibraryApplicationsInvokeResult].
  /// [accountId] Optional.
  /// [fields] Return only the listed properties on each application, as a comma-separated list.
  /// [filter] Optional.
  /// [limit] Optional.
  /// [lookup] Optional.
  /// [maxItems] Optional.
  /// [offset] Optional.
  /// [orderBy] Optional.
  /// [results] Optional.
  /// [search] Optional.
  const GetZeroTrustResourceLibraryApplicationsInvokeResult({
    this.accountId,
    this.fields,
    this.filter,
    this.limit,
    this.lookup,
    this.maxItems,
    this.offset,
    this.orderBy,
    this.results,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'fields': ?fields,
      'filter': ?filter,
      'limit': ?limit,
      'lookup': ?lookup,
      'maxItems': ?maxItems,
      'offset': ?offset,
      'orderBy': ?orderBy,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustResourceLibraryApplicationsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'search': ?search,
    };
  }

  factory GetZeroTrustResourceLibraryApplicationsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustResourceLibraryApplicationsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      lookup: (() { final guardedValue = map['lookup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      offset: (() { final guardedValue = map['offset']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustResourceLibraryApplicationsResult>(guardedValue, (value) => GetZeroTrustResourceLibraryApplicationsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
