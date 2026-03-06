// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A GitSourceContext denotes a particular revision in a third party Git repository (e.g., GitHub).
class GitSourceContextContaineranalysisV1beta1 {
  /// Git commit hash.
  final pulumi.Input<String>? revisionId;
  /// Git repository URL.
  final pulumi.Input<String>? url;

  /// Creates a new [GitSourceContextContaineranalysisV1beta1].
  /// [revisionId] Git commit hash.
  /// [url] Git repository URL.
  const GitSourceContextContaineranalysisV1beta1({
    this.revisionId,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revisionId': ?revisionId,
      'url': ?url,
    };
  }

  factory GitSourceContextContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return GitSourceContextContaineranalysisV1beta1(
      revisionId: (() { final guardedValue = map['revisionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

