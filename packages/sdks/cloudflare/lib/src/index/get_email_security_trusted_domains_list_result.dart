// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailSecurityTrustedDomainsListResult {
  final pulumi.Input<String> comments;
  final pulumi.Input<String> createdAt;
  /// Trusted domain identifier
  final pulumi.Input<String> id;
  /// Select to prevent recently registered domains from triggering a Suspicious or Malicious disposition.
  final pulumi.Input<bool> isRecent;
  final pulumi.Input<bool> isRegex;
  /// Select for partner or other approved domains that have similar spelling to your connected domains. Prevents listed domains from triggering a Spoof disposition.
  final pulumi.Input<bool> isSimilarity;
  /// Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  final pulumi.Input<String> lastModified;
  final pulumi.Input<String> modifiedAt;
  final pulumi.Input<String> pattern;

  /// Creates a new [GetEmailSecurityTrustedDomainsListResult].
  /// [comments] Required.
  /// [createdAt] Required.
  /// [id] Trusted domain identifier
  /// [isRecent] Select to prevent recently registered domains from triggering a Suspicious or Malicious disposition.
  /// [isRegex] Required.
  /// [isSimilarity] Select for partner or other approved domains that have similar spelling to your connected domains. Prevents listed domains from triggering a Spoof disposition.
  /// [lastModified] Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  /// [modifiedAt] Required.
  /// [pattern] Required.
  const GetEmailSecurityTrustedDomainsListResult({
    required this.comments,
    required this.createdAt,
    required this.id,
    required this.isRecent,
    required this.isRegex,
    required this.isSimilarity,
    required this.lastModified,
    required this.modifiedAt,
    required this.pattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comments': comments,
      'createdAt': createdAt,
      'id': id,
      'isRecent': isRecent,
      'isRegex': isRegex,
      'isSimilarity': isSimilarity,
      'lastModified': lastModified,
      'modifiedAt': modifiedAt,
      'pattern': pattern,
    };
  }

  factory GetEmailSecurityTrustedDomainsListResult.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityTrustedDomainsListResult(
      comments: pulumi.Input.fromValue(map['comments'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isRecent: pulumi.Input.fromValue(map['isRecent'] as bool),
      isRegex: pulumi.Input.fromValue(map['isRegex'] as bool),
      isSimilarity: pulumi.Input.fromValue(map['isSimilarity'] as bool),
      lastModified: pulumi.Input.fromValue(map['lastModified'] as String),
      modifiedAt: pulumi.Input.fromValue(map['modifiedAt'] as String),
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
    );
  }
}
