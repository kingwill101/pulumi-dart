// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_mode.dart';

class CacheToGitHubActions {
  /// Ignore errors caused by failed cache exports.
  final pulumi.Input<bool>? ignoreError;
  /// The cache mode to use. Defaults to `min`.
  final pulumi.Input<CacheMode>? mode;
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

  /// Creates a new [CacheToGitHubActions].
  /// [ignoreError] Ignore errors caused by failed cache exports.
  /// [mode] The cache mode to use. Defaults to `min`.
  /// [scope] The scope to use for cache keys. Defaults to `buildkit`.
  /// [token] The GitHub Actions token to use. This is not a personal access tokens
  /// [url] The cache server URL to use for artifacts.
  const CacheToGitHubActions({
    this.ignoreError,
    this.mode,
    this.scope,
    this.token,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreError': ?ignoreError,
      'mode': ?pulumi.Input.mapOptionalInputValue<CacheMode, String>(mode, (value) => value.wireValue),
      'scope': ?scope,
      'token': ?token,
      'url': ?url,
    };
  }

  factory CacheToGitHubActions.fromMap(Map<String, dynamic> map) {
    return CacheToGitHubActions(
      ignoreError: (() { final guardedValue = map['ignoreError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheMode.fromValue(guardedValue as String)); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

