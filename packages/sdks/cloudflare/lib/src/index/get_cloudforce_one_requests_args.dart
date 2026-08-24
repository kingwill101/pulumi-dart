// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_cloudforce_one_requests_get_cloudforce_one_requests_args_doc}
/// Arguments for getCloudforceOneRequests.
/// {@endtemplate}
/// {@macro pulumi_index_get_cloudforce_one_requests_get_cloudforce_one_requests_args_doc}
class GetCloudforceOneRequestsArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Retrieve requests completed after this time.
  final pulumi.Input<String?>? completedAfter;
  /// Retrieve requests completed before this time.
  final pulumi.Input<String?>? completedBefore;
  /// Retrieve requests created after this time.
  final pulumi.Input<String?>? createdAfter;
  /// Retrieve requests created before this time.
  final pulumi.Input<String?>? createdBefore;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Page number of results.
  final pulumi.Input<int> page;
  /// Number of results per page.
  final pulumi.Input<int> perPage;
  /// Requested information from request.
  final pulumi.Input<String?>? requestType;
  /// Field to sort results by.
  final pulumi.Input<String?>? sortBy;
  /// Sort order (asc or desc).
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? sortOrder;
  /// Request Status.
  /// Available values: "open", "accepted", "reported", "approved", "completed", "declined".
  final pulumi.Input<String?>? status;

  /// Creates a new [GetCloudforceOneRequestsArgs].
  /// [accountId] Identifier.
  /// [completedAfter] Retrieve requests completed after this time.
  /// [completedBefore] Retrieve requests completed before this time.
  /// [createdAfter] Retrieve requests created after this time.
  /// [createdBefore] Retrieve requests created before this time.
  /// [maxItems] Max items to fetch, default: 1000
  /// [page] Page number of results.
  /// [perPage] Number of results per page.
  /// [requestType] Requested information from request.
  /// [sortBy] Field to sort results by.
  /// [sortOrder] Sort order (asc or desc).
  /// [status] Request Status.
  const GetCloudforceOneRequestsArgs({
    this.accountId,
    this.completedAfter,
    this.completedBefore,
    this.createdAfter,
    this.createdBefore,
    this.maxItems,
    required this.page,
    required this.perPage,
    this.requestType,
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
      'page': page,
      'perPage': perPage,
      'requestType': ?requestType,
      'sortBy': ?sortBy,
      'sortOrder': ?sortOrder,
      'status': ?status,
    };
  }

  factory GetCloudforceOneRequestsArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudforceOneRequestsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      completedAfter: (() { final guardedValue = map['completedAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      completedBefore: (() { final guardedValue = map['completedBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAfter: (() { final guardedValue = map['createdAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBefore: (() { final guardedValue = map['createdBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      page: pulumi.Input.fromValue((map['page'] as num).toInt()),
      perPage: pulumi.Input.fromValue((map['perPage'] as num).toInt()),
      requestType: (() { final guardedValue = map['requestType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sortBy: (() { final guardedValue = map['sortBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sortOrder: (() { final guardedValue = map['sortOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
