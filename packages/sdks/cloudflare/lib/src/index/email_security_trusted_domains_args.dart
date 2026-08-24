// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_email_security_trusted_domains_email_security_trusted_domains_args_doc}
/// The set of arguments for EmailSecurityTrustedDomains.
/// {@endtemplate}
/// {@macro pulumi_index_email_security_trusted_domains_email_security_trusted_domains_args_doc}
class EmailSecurityTrustedDomainsArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  final pulumi.Input<String?>? comments;
  /// Select to prevent recently registered domains from triggering a Suspicious or Malicious disposition.
  final pulumi.Input<bool?>? isRecent;
  final pulumi.Input<bool?>? isRegex;
  /// Select for partner or other approved domains that have similar spelling to your connected domains. Prevents listed domains from triggering a Spoof disposition.
  final pulumi.Input<bool?>? isSimilarity;
  final pulumi.Input<String> pattern;

  /// Creates a new [EmailSecurityTrustedDomainsArgs].
  /// [accountId] Identifier.
  /// [comments] Optional.
  /// [isRecent] Select to prevent recently registered domains from triggering a Suspicious or Malicious disposition.
  /// [isRegex] Optional.
  /// [isSimilarity] Select for partner or other approved domains that have similar spelling to your connected domains. Prevents listed domains from triggering a Spoof disposition.
  /// [pattern] Required.
  const EmailSecurityTrustedDomainsArgs({
    required this.accountId,
    this.comments,
    this.isRecent,
    this.isRegex,
    this.isSimilarity,
    required this.pattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'comments': ?comments,
      'isRecent': ?isRecent,
      'isRegex': ?isRegex,
      'isSimilarity': ?isSimilarity,
      'pattern': pattern,
    };
  }

  factory EmailSecurityTrustedDomainsArgs.fromMap(Map<String, dynamic> map) {
    return EmailSecurityTrustedDomainsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isRecent: (() { final guardedValue = map['isRecent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isRegex: (() { final guardedValue = map['isRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isSimilarity: (() { final guardedValue = map['isSimilarity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
    );
  }
}
