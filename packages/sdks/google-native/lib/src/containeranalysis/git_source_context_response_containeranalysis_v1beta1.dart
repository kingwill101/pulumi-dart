// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A GitSourceContext denotes a particular revision in a third party Git repository (e.g., GitHub).
class GitSourceContextResponseContaineranalysisV1beta1 {
  /// Git commit hash.
  final pulumi.Input<String> revisionId;
  /// Git repository URL.
  final pulumi.Input<String> url;

  /// Creates a new [GitSourceContextResponseContaineranalysisV1beta1].
  /// [revisionId] Git commit hash.
  /// [url] Git repository URL.
  const GitSourceContextResponseContaineranalysisV1beta1({
    required this.revisionId,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revisionId': revisionId,
      'url': url,
    };
  }

  factory GitSourceContextResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return GitSourceContextResponseContaineranalysisV1beta1(
      revisionId: pulumi.Input.fromValue(map['revisionId'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
