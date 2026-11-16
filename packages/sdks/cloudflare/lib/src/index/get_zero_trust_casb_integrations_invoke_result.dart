// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_casb_integrations_result.dart';

/// Result data returned by getZeroTrustCasbIntegrations.
class GetZeroTrustCasbIntegrationsInvokeResult {
  final String? accountId;
  /// Filter by application/vendor (e.g., GOOGLE*WORKSPACE, MICROSOFT*INTERNAL).
  final String? application;
  /// Direction to order results.
  /// Available values: "asc", "desc".
  final String? direction;
  /// Filter by DLP enabled status (true/false).
  final bool? dlpEnabled;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Field to order results by.
  /// Available values: "application", "created", "name", "status".
  final String? order;
  /// Page number within the paginated result set.
  final int? page;
  /// Number of results per page.
  final int? pageSize;
  /// The items returned by the data source
  final List<GetZeroTrustCasbIntegrationsResult>? results;
  /// Search integrations by name or application.
  final String? search;
  /// Filter by integration status.
  /// Available values: "Healthy", "Initializing", "Offline", "Unhealthy".
  final String? status;
  /// Filter by one enabled use case (for example, casb or ces).
  final String? useCases;

  /// Creates a new [GetZeroTrustCasbIntegrationsInvokeResult].
  /// [accountId] Optional.
  /// [application] Filter by application/vendor (e.g., GOOGLE*WORKSPACE, MICROSOFT*INTERNAL).
  /// [direction] Direction to order results.
  /// [dlpEnabled] Filter by DLP enabled status (true/false).
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Field to order results by.
  /// [page] Page number within the paginated result set.
  /// [pageSize] Number of results per page.
  /// [results] The items returned by the data source
  /// [search] Search integrations by name or application.
  /// [status] Filter by integration status.
  /// [useCases] Filter by one enabled use case (for example, casb or ces).
  const GetZeroTrustCasbIntegrationsInvokeResult({
    this.accountId,
    this.application,
    this.direction,
    this.dlpEnabled,
    this.maxItems,
    this.order,
    this.page,
    this.pageSize,
    this.results,
    this.search,
    this.status,
    this.useCases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'application': ?application,
      'direction': ?direction,
      'dlpEnabled': ?dlpEnabled,
      'maxItems': ?maxItems,
      'order': ?order,
      'page': ?page,
      'pageSize': ?pageSize,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustCasbIntegrationsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'search': ?search,
      'status': ?status,
      'useCases': ?useCases,
    };
  }

  factory GetZeroTrustCasbIntegrationsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbIntegrationsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      application: (() { final guardedValue = map['application']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dlpEnabled: (() { final guardedValue = map['dlpEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      page: (() { final guardedValue = map['page']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustCasbIntegrationsResult>(guardedValue, (value) => GetZeroTrustCasbIntegrationsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      useCases: (() { final guardedValue = map['useCases']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
