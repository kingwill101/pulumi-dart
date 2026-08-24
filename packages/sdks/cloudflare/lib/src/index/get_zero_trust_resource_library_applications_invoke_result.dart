// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_resource_library_applications_result.dart';

/// Result data returned by getZeroTrustResourceLibraryApplications.
class GetZeroTrustResourceLibraryApplicationsInvokeResult {
  final String? accountId;
  final String? filter;
  final int? limit;
  final int? maxItems;
  final int? offset;
  final String? orderBy;
  final List<GetZeroTrustResourceLibraryApplicationsResult>? results;
  final String? search;

  /// Creates a new [GetZeroTrustResourceLibraryApplicationsInvokeResult].
  /// [accountId] Optional.
  /// [filter] Optional.
  /// [limit] Optional.
  /// [maxItems] Optional.
  /// [offset] Optional.
  /// [orderBy] Optional.
  /// [results] Optional.
  /// [search] Optional.
  const GetZeroTrustResourceLibraryApplicationsInvokeResult({
    this.accountId,
    this.filter,
    this.limit,
    this.maxItems,
    this.offset,
    this.orderBy,
    this.results,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?filter,
      'limit': ?limit,
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
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      offset: (() { final guardedValue = map['offset']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustResourceLibraryApplicationsResult>(guardedValue, (value) => GetZeroTrustResourceLibraryApplicationsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
