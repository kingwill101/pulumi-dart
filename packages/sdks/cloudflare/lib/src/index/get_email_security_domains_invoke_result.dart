// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_security_domains_result.dart';

/// Result data returned by getEmailSecurityDomains.
class GetEmailSecurityDomainsInvokeResult {
  /// Identifier.
  final String? accountId;
  /// Currently active delivery mode to filter by.
  /// Available values: "DIRECT", "BCC", "JOURNAL", "API", "RETRO_SCAN".
  final String? activeDeliveryMode;
  /// Delivery mode to filter by.
  /// Available values: "DIRECT", "BCC", "JOURNAL", "API", "RETRO_SCAN".
  final String? allowedDeliveryMode;
  /// The sorting direction.
  /// Available values: "asc", "desc".
  final String? direction;
  /// Domain names to filter by.
  final List<String>? domains;
  /// Integration ID to filter by.
  final String? integrationId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Field to sort by.
  /// Available values: "domain", "createdAt".
  final String? order;
  /// The items returned by the data source
  final List<GetEmailSecurityDomainsResult>? results;
  /// Search term for filtering records. Behavior may change.
  final String? search;
  /// Filters response to domains with the provided status.
  /// Available values: "PENDING", "ACTIVE", "FAILED", "TIMEOUT".
  final String? status;

  /// Creates a new [GetEmailSecurityDomainsInvokeResult].
  /// [accountId] Identifier.
  /// [activeDeliveryMode] Currently active delivery mode to filter by.
  /// [allowedDeliveryMode] Delivery mode to filter by.
  /// [direction] The sorting direction.
  /// [domains] Domain names to filter by.
  /// [integrationId] Integration ID to filter by.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Field to sort by.
  /// [results] The items returned by the data source
  /// [search] Search term for filtering records. Behavior may change.
  /// [status] Filters response to domains with the provided status.
  const GetEmailSecurityDomainsInvokeResult({
    this.accountId,
    this.activeDeliveryMode,
    this.allowedDeliveryMode,
    this.direction,
    this.domains,
    this.integrationId,
    this.maxItems,
    this.order,
    this.results,
    this.search,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'activeDeliveryMode': ?activeDeliveryMode,
      'allowedDeliveryMode': ?allowedDeliveryMode,
      'direction': ?direction,
      'domains': ?domains,
      'integrationId': ?integrationId,
      'maxItems': ?maxItems,
      'order': ?order,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEmailSecurityDomainsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'search': ?search,
      'status': ?status,
    };
  }

  factory GetEmailSecurityDomainsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityDomainsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      activeDeliveryMode: (() { final guardedValue = map['activeDeliveryMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      allowedDeliveryMode: (() { final guardedValue = map['allowedDeliveryMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      integrationId: (() { final guardedValue = map['integrationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEmailSecurityDomainsResult>(guardedValue, (value) => GetEmailSecurityDomainsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
