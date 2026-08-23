// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryUri {
  /// (Output)
  /// API is the URI for API access.
  final pulumi.Input<String>? api;
  /// (Output)
  /// gitHttps is the git HTTPS URI for git operations.
  final pulumi.Input<String>? gitHttps;
  /// (Output)
  /// HTML is the URI for the user to view the repository in a browser.
  final pulumi.Input<String>? html;

  /// Creates a new [RepositoryUri].
  /// [api] (Output)
  /// [gitHttps] (Output)
  /// [html] (Output)
  const RepositoryUri({
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
      api: (() { final guardedValue = map['api']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitHttps: (() { final guardedValue = map['gitHttps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      html: (() { final guardedValue = map['html']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
