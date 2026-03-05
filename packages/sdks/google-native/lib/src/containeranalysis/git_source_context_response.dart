// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A GitSourceContext denotes a particular revision in a third party Git repository (e.g., GitHub).
class GitSourceContextResponse {
  /// Git commit hash.
  final pulumi.Input<String> revisionId;
  /// Git repository URL.
  final pulumi.Input<String> url;

  /// Creates a new [GitSourceContextResponse].
  /// [revisionId] Git commit hash.
  /// [url] Git repository URL.
  GitSourceContextResponse({
    required this.revisionId,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revisionId': revisionId,
      'url': url,
    };
  }

  factory GitSourceContextResponse.fromMap(Map<String, dynamic> map) {
    return GitSourceContextResponse(
      revisionId: pulumi.Input.fromValue(map['revisionId'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

