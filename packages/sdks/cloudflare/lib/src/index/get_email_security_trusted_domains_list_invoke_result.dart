// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_security_trusted_domains_list_result.dart';

/// Result data returned by getEmailSecurityTrustedDomainsList.
class GetEmailSecurityTrustedDomainsListInvokeResult {
  /// Identifier.
  final String? accountId;
  /// The sorting direction.
  /// Available values: "asc", "desc".
  final String? direction;
  /// Filter to show only recently registered domains that are trusted to prevent triggering Suspicious or Malicious dispositions.
  final bool? isRecent;
  /// Filter to show only proximity domains (partner or approved domains with similar spelling to connected domains) that prevent Spoof dispositions.
  final bool? isSimilarity;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Field to sort by.
  /// Available values: "pattern", "createdAt".
  final String? order;
  final String? pattern;
  /// The items returned by the data source
  final List<GetEmailSecurityTrustedDomainsListResult>? results;
  /// Search term for filtering records. Behavior may change.
  final String? search;

  /// Creates a new [GetEmailSecurityTrustedDomainsListInvokeResult].
  /// [accountId] Identifier.
  /// [direction] The sorting direction.
  /// [isRecent] Filter to show only recently registered domains that are trusted to prevent triggering Suspicious or Malicious dispositions.
  /// [isSimilarity] Filter to show only proximity domains (partner or approved domains with similar spelling to connected domains) that prevent Spoof dispositions.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Field to sort by.
  /// [pattern] Optional.
  /// [results] The items returned by the data source
  /// [search] Search term for filtering records. Behavior may change.
  const GetEmailSecurityTrustedDomainsListInvokeResult({
    this.accountId,
    this.direction,
    this.isRecent,
    this.isSimilarity,
    this.maxItems,
    this.order,
    this.pattern,
    this.results,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'isRecent': ?isRecent,
      'isSimilarity': ?isSimilarity,
      'maxItems': ?maxItems,
      'order': ?order,
      'pattern': ?pattern,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEmailSecurityTrustedDomainsListResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'search': ?search,
    };
  }

  factory GetEmailSecurityTrustedDomainsListInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityTrustedDomainsListInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isRecent: (() { final guardedValue = map['isRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isSimilarity: (() { final guardedValue = map['isSimilarity']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEmailSecurityTrustedDomainsListResult>(guardedValue, (value) => GetEmailSecurityTrustedDomainsListResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
