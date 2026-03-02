// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A GitSourceContext denotes a particular revision in a third party Git repository (e.g., GitHub).
class GitSourceContext {
  /// Git commit hash.
  final pulumi.Input<String>? revisionId;
  /// Git repository URL.
  final pulumi.Input<String>? url;

  /// Creates a new [GitSourceContext].
  /// [revisionId] Git commit hash.
  /// [url] Git repository URL.
  GitSourceContext({
    this.revisionId,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revisionId': ?revisionId,
      'url': ?url,
    };
  }

  factory GitSourceContext.fromMap(Map<String, dynamic> map) {
    return GitSourceContext(
      revisionId: map['revisionId'] == null ? null : (map['revisionId']! as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}

