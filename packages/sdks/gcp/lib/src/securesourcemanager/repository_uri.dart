// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryUri {
  /// (Output)
  /// API is the URI for API access.
  final pulumi.Input<String>? api;
  /// (Output)
  /// git_https is the git HTTPS URI for git operations.
  final pulumi.Input<String>? gitHttps;
  /// (Output)
  /// HTML is the URI for the user to view the repository in a browser.
  final pulumi.Input<String>? html;

  /// Creates a new [RepositoryUri].
  /// [api] (Output)
  /// [gitHttps] (Output)
  /// [html] (Output)
  RepositoryUri({
    this.api,
    this.gitHttps,
    this.html,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'api': ?api,
      'gitHttps': ?gitHttps,
      'html': ?html,
    };
  }

  factory RepositoryUri.fromMap(Map<String, dynamic> map) {
    return RepositoryUri(
      api: map['api'] == null ? null : (map['api']! as String).input(),
      gitHttps: map['gitHttps'] == null ? null : (map['gitHttps']! as String).input(),
      html: map['html'] == null ? null : (map['html']! as String).input(),
    );
  }
}

