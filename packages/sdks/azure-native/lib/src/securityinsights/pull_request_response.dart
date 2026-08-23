// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information regarding pull request for protected branches.
class PullRequestResponse {
  /// State of the pull request
  final pulumi.Input<String> state;
  /// URL of pull request
  final pulumi.Input<String> url;

  /// Creates a new [PullRequestResponse].
  /// [state] State of the pull request
  /// [url] URL of pull request
  const PullRequestResponse({
    required this.state,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
      'url': url,
    };
  }

  factory PullRequestResponse.fromMap(Map<String, dynamic> map) {
    return PullRequestResponse(
      state: pulumi.Input.fromValue(map['state'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
