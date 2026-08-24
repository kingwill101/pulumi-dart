// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_email_security_trusted_domains_list_get_email_security_trusted_domains_list_args_doc}
/// Arguments for getEmailSecurityTrustedDomainsList.
/// {@endtemplate}
/// {@macro pulumi_index_get_email_security_trusted_domains_list_get_email_security_trusted_domains_list_args_doc}
class GetEmailSecurityTrustedDomainsListArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// The sorting direction.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Filter to show only recently registered domains that are trusted to prevent triggering Suspicious or Malicious dispositions.
  final pulumi.Input<bool?>? isRecent;
  /// Filter to show only proximity domains (partner or approved domains with similar spelling to connected domains) that prevent Spoof dispositions.
  final pulumi.Input<bool?>? isSimilarity;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Field to sort by.
  /// Available values: "pattern", "createdAt".
  final pulumi.Input<String?>? order;
  final pulumi.Input<String?>? pattern;
  /// Search term for filtering records. Behavior may change.
  final pulumi.Input<String?>? search;

  /// Creates a new [GetEmailSecurityTrustedDomainsListArgs].
  /// [accountId] Identifier.
  /// [direction] The sorting direction.
  /// [isRecent] Filter to show only recently registered domains that are trusted to prevent triggering Suspicious or Malicious dispositions.
  /// [isSimilarity] Filter to show only proximity domains (partner or approved domains with similar spelling to connected domains) that prevent Spoof dispositions.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Field to sort by.
  /// [pattern] Optional.
  /// [search] Search term for filtering records. Behavior may change.
  const GetEmailSecurityTrustedDomainsListArgs({
    this.accountId,
    this.direction,
    this.isRecent,
    this.isSimilarity,
    this.maxItems,
    this.order,
    this.pattern,
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
      'search': ?search,
    };
  }

  factory GetEmailSecurityTrustedDomainsListArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityTrustedDomainsListArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isRecent: (() { final guardedValue = map['isRecent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isSimilarity: (() { final guardedValue = map['isSimilarity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
