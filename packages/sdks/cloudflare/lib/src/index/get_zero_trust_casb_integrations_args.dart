// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_casb_integrations_get_zero_trust_casb_integrations_args_doc}
/// Arguments for getZeroTrustCasbIntegrations.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_casb_integrations_get_zero_trust_casb_integrations_args_doc}
class GetZeroTrustCasbIntegrationsArgs {
  final pulumi.Input<String> accountId;
  /// Filter by application/vendor (e.g., GOOGLE*WORKSPACE, MICROSOFT*INTERNAL).
  final pulumi.Input<String?>? application;
  /// Direction to order results.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Filter by DLP enabled status (true/false).
  final pulumi.Input<bool?>? dlpEnabled;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Field to order results by.
  /// Available values: "application", "created", "name", "status".
  final pulumi.Input<String?>? order;
  /// Page number within the paginated result set.
  final pulumi.Input<int?>? page;
  /// Number of results per page.
  final pulumi.Input<int?>? pageSize;
  /// Search integrations by name or application.
  final pulumi.Input<String?>? search;
  /// Filter by integration status.
  /// Available values: "Healthy", "Initializing", "Offline", "Unhealthy".
  final pulumi.Input<String?>? status;
  /// Filter by one enabled use case (for example, casb or ces).
  final pulumi.Input<String?>? useCases;

  /// Creates a new [GetZeroTrustCasbIntegrationsArgs].
  /// [accountId] Required.
  /// [application] Filter by application/vendor (e.g., GOOGLE*WORKSPACE, MICROSOFT*INTERNAL).
  /// [direction] Direction to order results.
  /// [dlpEnabled] Filter by DLP enabled status (true/false).
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Field to order results by.
  /// [page] Page number within the paginated result set.
  /// [pageSize] Number of results per page.
  /// [search] Search integrations by name or application.
  /// [status] Filter by integration status.
  /// [useCases] Filter by one enabled use case (for example, casb or ces).
  const GetZeroTrustCasbIntegrationsArgs({
    required this.accountId,
    this.application,
    this.direction,
    this.dlpEnabled,
    this.maxItems,
    this.order,
    this.page,
    this.pageSize,
    this.search,
    this.status,
    this.useCases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'application': ?application,
      'direction': ?direction,
      'dlpEnabled': ?dlpEnabled,
      'maxItems': ?maxItems,
      'order': ?order,
      'page': ?page,
      'pageSize': ?pageSize,
      'search': ?search,
      'status': ?status,
      'useCases': ?useCases,
    };
  }

  factory GetZeroTrustCasbIntegrationsArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbIntegrationsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      application: (() { final guardedValue = map['application']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dlpEnabled: (() { final guardedValue = map['dlpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      page: (() { final guardedValue = map['page']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useCases: (() { final guardedValue = map['useCases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
