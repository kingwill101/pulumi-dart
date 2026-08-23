// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_mode.dart';

/// Recommended for use with GitHub Actions workflows.
///
/// An action like `crazy-max/ghaction-github-runtime` is recommended to expose
/// appropriate credentials to your GitHub workflow.
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

  /// Creates a new [CacheToGitHubActions].
  /// [ignoreError] Ignore errors caused by failed cache exports.
  /// [mode] The cache mode to use. Defaults to `min`.
  /// [scope] The scope to use for cache keys. Defaults to `buildkit`.
  const CacheToGitHubActions({
    this.ignoreError,
    this.mode,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreError': ?ignoreError,
      'mode': ?pulumi.Input.mapOptionalInputValue<CacheMode, String>(mode, (value) => value.wireValue),
      'scope': ?scope,
    };
  }

  factory CacheToGitHubActions.fromMap(Map<String, dynamic> map) {
    return CacheToGitHubActions(
      ignoreError: (() { final guardedValue = map['ignoreError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheMode.fromValue(guardedValue as String)); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
