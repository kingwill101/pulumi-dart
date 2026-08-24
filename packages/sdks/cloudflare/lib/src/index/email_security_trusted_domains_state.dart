// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EmailSecurityTrustedDomains resources.
class EmailSecurityTrustedDomainsState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? comments;
  final pulumi.Input<String?>? createdAt;
  /// Select to prevent recently registered domains from triggering a Suspicious or Malicious disposition.
  final pulumi.Input<bool?>? isRecent;
  final pulumi.Input<bool?>? isRegex;
  /// Select for partner or other approved domains that have similar spelling to your connected domains. Prevents listed domains from triggering a Spoof disposition.
  final pulumi.Input<bool?>? isSimilarity;
  /// Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  final pulumi.Input<String?>? lastModified;
  final pulumi.Input<String?>? modifiedAt;
  final pulumi.Input<String?>? pattern;

  /// Creates a new [EmailSecurityTrustedDomainsState].
  /// [accountId] Identifier.
  /// [comments] Optional.
  /// [createdAt] Optional.
  /// [isRecent] Select to prevent recently registered domains from triggering a Suspicious or Malicious disposition.
  /// [isRegex] Optional.
  /// [isSimilarity] Select for partner or other approved domains that have similar spelling to your connected domains. Prevents listed domains from triggering a Spoof disposition.
  /// [lastModified] Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  /// [modifiedAt] Optional.
  /// [pattern] Optional.
  const EmailSecurityTrustedDomainsState({
    this.accountId,
    this.comments,
    this.createdAt,
    this.isRecent,
    this.isRegex,
    this.isSimilarity,
    this.lastModified,
    this.modifiedAt,
    this.pattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'comments': ?comments,
      'createdAt': ?createdAt,
      'isRecent': ?isRecent,
      'isRegex': ?isRegex,
      'isSimilarity': ?isSimilarity,
      'lastModified': ?lastModified,
      'modifiedAt': ?modifiedAt,
      'pattern': ?pattern,
    };
  }

  factory EmailSecurityTrustedDomainsState.fromMap(Map<String, dynamic> map) {
    return EmailSecurityTrustedDomainsState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isRecent: (() { final guardedValue = map['isRecent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isRegex: (() { final guardedValue = map['isRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isSimilarity: (() { final guardedValue = map['isSimilarity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
