// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A GitSourceContext denotes a particular revision in a third party Git repository (e.g., GitHub).
class GoogleDevtoolsContaineranalysisV1alpha1GitSourceContextResponse {
  /// Git commit hash.
  final pulumi.Input<String> revisionId;
  /// Git repository URL.
  final pulumi.Input<String> url;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1GitSourceContextResponse].
  /// [revisionId] Git commit hash.
  /// [url] Git repository URL.
  const GoogleDevtoolsContaineranalysisV1alpha1GitSourceContextResponse({
    required this.revisionId,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revisionId': revisionId,
      'url': url,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1GitSourceContextResponse.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1GitSourceContextResponse(
      revisionId: pulumi.Input.fromValue(map['revisionId'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
