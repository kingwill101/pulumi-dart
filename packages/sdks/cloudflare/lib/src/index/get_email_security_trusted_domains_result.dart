// ignore_for_file: unused_element, unnecessary_cast

import 'get_email_security_trusted_domains_filter.dart';

/// Result data returned by getEmailSecurityTrustedDomains.
class GetEmailSecurityTrustedDomainsResult {
  /// Identifier.
  final String? accountId;
  final String? comments;
  final String? createdAt;
  final GetEmailSecurityTrustedDomainsFilter? filter;
  /// Trusted domain identifier
  final String? id;
  /// Select to prevent recently registered domains from triggering a Suspicious or Malicious disposition.
  final bool? isRecent;
  final bool? isRegex;
  /// Select for partner or other approved domains that have similar spelling to your connected domains. Prevents listed domains from triggering a Spoof disposition.
  final bool? isSimilarity;
  /// Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  final String? lastModified;
  final String? modifiedAt;
  final String? pattern;
  /// Trusted domain identifier
  final String? trustedDomainId;

  /// Creates a new [GetEmailSecurityTrustedDomainsResult].
  /// [accountId] Identifier.
  /// [comments] Optional.
  /// [createdAt] Optional.
  /// [filter] Optional.
  /// [id] Trusted domain identifier
  /// [isRecent] Select to prevent recently registered domains from triggering a Suspicious or Malicious disposition.
  /// [isRegex] Optional.
  /// [isSimilarity] Select for partner or other approved domains that have similar spelling to your connected domains. Prevents listed domains from triggering a Spoof disposition.
  /// [lastModified] Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  /// [modifiedAt] Optional.
  /// [pattern] Optional.
  /// [trustedDomainId] Trusted domain identifier
  const GetEmailSecurityTrustedDomainsResult({
    this.accountId,
    this.comments,
    this.createdAt,
    this.filter,
    this.id,
    this.isRecent,
    this.isRegex,
    this.isSimilarity,
    this.lastModified,
    this.modifiedAt,
    this.pattern,
    this.trustedDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'comments': ?comments,
      'createdAt': ?createdAt,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'isRecent': ?isRecent,
      'isRegex': ?isRegex,
      'isSimilarity': ?isSimilarity,
      'lastModified': ?lastModified,
      'modifiedAt': ?modifiedAt,
      'pattern': ?pattern,
      'trustedDomainId': ?trustedDomainId,
    };
  }

  factory GetEmailSecurityTrustedDomainsResult.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityTrustedDomainsResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetEmailSecurityTrustedDomainsFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isRecent: (() { final guardedValue = map['isRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isRegex: (() { final guardedValue = map['isRegex']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isSimilarity: (() { final guardedValue = map['isSimilarity']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trustedDomainId: (() { final guardedValue = map['trustedDomainId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
