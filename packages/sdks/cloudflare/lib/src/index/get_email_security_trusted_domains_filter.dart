// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailSecurityTrustedDomainsFilter {
  /// The sorting direction.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Filter to show only recently registered domains that are trusted to prevent triggering Suspicious or Malicious dispositions.
  final pulumi.Input<bool?>? isRecent;
  /// Filter to show only proximity domains (partner or approved domains with similar spelling to connected domains) that prevent Spoof dispositions.
  final pulumi.Input<bool?>? isSimilarity;
  /// Field to sort by.
  /// Available values: "pattern", "createdAt".
  final pulumi.Input<String?>? order;
  final pulumi.Input<String?>? pattern;
  /// Search term for filtering records. Behavior may change.
  final pulumi.Input<String?>? search;

  /// Creates a new [GetEmailSecurityTrustedDomainsFilter].
  /// [direction] The sorting direction.
  /// [isRecent] Filter to show only recently registered domains that are trusted to prevent triggering Suspicious or Malicious dispositions.
  /// [isSimilarity] Filter to show only proximity domains (partner or approved domains with similar spelling to connected domains) that prevent Spoof dispositions.
  /// [order] Field to sort by.
  /// [pattern] Optional.
  /// [search] Search term for filtering records. Behavior may change.
  const GetEmailSecurityTrustedDomainsFilter({
    this.direction,
    this.isRecent,
    this.isSimilarity,
    this.order,
    this.pattern,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'isRecent': ?isRecent,
      'isSimilarity': ?isSimilarity,
      'order': ?order,
      'pattern': ?pattern,
      'search': ?search,
    };
  }

  factory GetEmailSecurityTrustedDomainsFilter.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityTrustedDomainsFilter(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isRecent: (() { final guardedValue = map['isRecent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isSimilarity: (() { final guardedValue = map['isSimilarity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
