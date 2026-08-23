// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Recommended for use with GitHub Actions workflows.
///
/// An action like `crazy-max/ghaction-github-runtime` is recommended to expose
/// appropriate credentials to your GitHub workflow.
class CacheFromGitHubActions {
  /// The scope to use for cache keys. Defaults to `buildkit`.
  ///
  /// This should be set if building and caching multiple images in one
  /// workflow, otherwise caches will overwrite each other.
  final pulumi.Input<String>? scope;

  /// Creates a new [CacheFromGitHubActions].
  /// [scope] The scope to use for cache keys. Defaults to `buildkit`.
  const CacheFromGitHubActions({
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?scope,
    };
  }

  factory CacheFromGitHubActions.fromMap(Map<String, dynamic> map) {
    return CacheFromGitHubActions(
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
