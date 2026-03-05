// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CacheFromGitHubActions {
  /// The scope to use for cache keys. Defaults to `buildkit`.
  ///
  /// This should be set if building and caching multiple images in one
  /// workflow, otherwise caches will overwrite each other.
  final pulumi.Input<String>? scope;
  /// The GitHub Actions token to use. This is not a personal access tokens
  /// and is typically generated automatically as part of each job.
  ///
  /// Defaults to `$ACTIONS_RUNTIME_TOKEN`, although a separate action like
  /// `crazy-max/ghaction-github-runtime` is recommended to expose this
  /// environment variable to your jobs.
  final pulumi.Input<String>? token;
  /// The cache server URL to use for artifacts.
  ///
  /// Defaults to `$ACTIONS_CACHE_URL`, although a separate action like
  /// `crazy-max/ghaction-github-runtime` is recommended to expose this
  /// environment variable to your jobs.
  final pulumi.Input<String>? url;

  /// Creates a new [CacheFromGitHubActions].
  /// [scope] The scope to use for cache keys. Defaults to `buildkit`.
  /// [token] The GitHub Actions token to use. This is not a personal access tokens
  /// [url] The cache server URL to use for artifacts.
  CacheFromGitHubActions({
    this.scope,
    this.token,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?scope,
      'token': ?token,
      'url': ?url,
    };
  }

  factory CacheFromGitHubActions.fromMap(Map<String, dynamic> map) {
    return CacheFromGitHubActions(
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

