// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloudforce_one_requests_result.dart';

/// Result data returned by getCloudforceOneRequests.
class GetCloudforceOneRequestsInvokeResult {
  /// Identifier.
  final String? accountId;
  /// Retrieve requests completed after this time.
  final String? completedAfter;
  /// Retrieve requests completed before this time.
  final String? completedBefore;
  /// Retrieve requests created after this time.
  final String? createdAfter;
  /// Retrieve requests created before this time.
  final String? createdBefore;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Page number of results.
  final int? page;
  /// Number of results per page.
  final int? perPage;
  /// Requested information from request.
  final String? requestType;
  /// The items returned by the data source
  final List<GetCloudforceOneRequestsResult>? results;
  /// Field to sort results by.
  final String? sortBy;
  /// Sort order (asc or desc).
  /// Available values: "asc", "desc".
  final String? sortOrder;
  /// Request Status.
  /// Available values: "open", "accepted", "reported", "approved", "completed", "declined".
  final String? status;

  /// Creates a new [GetCloudforceOneRequestsInvokeResult].
  /// [accountId] Identifier.
  /// [completedAfter] Retrieve requests completed after this time.
  /// [completedBefore] Retrieve requests completed before this time.
  /// [createdAfter] Retrieve requests created after this time.
  /// [createdBefore] Retrieve requests created before this time.
  /// [maxItems] Max items to fetch, default: 1000
  /// [page] Page number of results.
  /// [perPage] Number of results per page.
  /// [requestType] Requested information from request.
  /// [results] The items returned by the data source
  /// [sortBy] Field to sort results by.
  /// [sortOrder] Sort order (asc or desc).
  /// [status] Request Status.
  const GetCloudforceOneRequestsInvokeResult({
    this.accountId,
    this.completedAfter,
    this.completedBefore,
    this.createdAfter,
    this.createdBefore,
    this.maxItems,
    this.page,
    this.perPage,
    this.requestType,
    this.results,
    this.sortBy,
    this.sortOrder,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'completedAfter': ?completedAfter,
      'completedBefore': ?completedBefore,
      'createdAfter': ?createdAfter,
      'createdBefore': ?createdBefore,
      'maxItems': ?maxItems,
      'page': ?page,
      'perPage': ?perPage,
      'requestType': ?requestType,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCloudforceOneRequestsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sortBy': ?sortBy,
      'sortOrder': ?sortOrder,
      'status': ?status,
    };
  }

  factory GetCloudforceOneRequestsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetCloudforceOneRequestsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      completedAfter: (() { final guardedValue = map['completedAfter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      completedBefore: (() { final guardedValue = map['completedBefore']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAfter: (() { final guardedValue = map['createdAfter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBefore: (() { final guardedValue = map['createdBefore']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      page: (() { final guardedValue = map['page']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      perPage: (() { final guardedValue = map['perPage']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      requestType: (() { final guardedValue = map['requestType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCloudforceOneRequestsResult>(guardedValue, (value) => GetCloudforceOneRequestsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      sortBy: (() { final guardedValue = map['sortBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sortOrder: (() { final guardedValue = map['sortOrder']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
