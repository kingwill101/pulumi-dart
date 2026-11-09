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
  final pulumi.Input<bool> isRecent;
  /// Whether `pattern` is a regular expression instead of a literal domain.
  final pulumi.Input<bool> isRegex;
  /// Select for partner or other approved domains that have similar spelling to your connected domains. Prevents listed domains from triggering a Spoof disposition.
  final pulumi.Input<bool> isSimilarity;
  /// The domain pattern to trust, e.g. `example.com`.
  final pulumi.Input<String> pattern;

  /// Creates a new [EmailSecurityTrustedDomainsArgs].
  /// [accountId] Identifier.
  /// [comments] Optional.
  /// [isRecent] Select to prevent recently registered domains from triggering a Suspicious or Malicious disposition.
  /// [isRegex] Whether `pattern` is a regular expression instead of a literal domain.
  /// [isSimilarity] Select for partner or other approved domains that have similar spelling to your connected domains. Prevents listed domains from triggering a Spoof disposition.
  /// [pattern] The domain pattern to trust, e.g. `example.com`.
  const EmailSecurityTrustedDomainsArgs({
    required this.accountId,
    this.comments,
    required this.isRecent,
    required this.isRegex,
    required this.isSimilarity,
    required this.pattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'comments': ?comments,
      'isRecent': isRecent,
      'isRegex': isRegex,
      'isSimilarity': isSimilarity,
      'pattern': pattern,
    };
  }

  factory EmailSecurityTrustedDomainsArgs.fromMap(Map<String, dynamic> map) {
    return EmailSecurityTrustedDomainsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isRecent: pulumi.Input.fromValue(map['isRecent'] as bool),
      isRegex: pulumi.Input.fromValue(map['isRegex'] as bool),
      isSimilarity: pulumi.Input.fromValue(map['isSimilarity'] as bool),
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
    );
  }
}
