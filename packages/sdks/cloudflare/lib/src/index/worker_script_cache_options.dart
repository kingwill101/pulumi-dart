// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerScriptCacheOptions {
  /// Whether cached responses are shared across Worker version
  /// uploads. This is independent of `enabled`. It can stay true
  /// while caching is off, so the preference survives turning
  /// caching off and back on.
  final pulumi.Input<bool?>? crossVersionCache;
  /// Whether caching is enabled for this Worker.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [WorkerScriptCacheOptions].
  /// [crossVersionCache] Whether cached responses are shared across Worker version
  /// [enabled] Whether caching is enabled for this Worker.
  const WorkerScriptCacheOptions({
    this.crossVersionCache,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossVersionCache': ?crossVersionCache,
      'enabled': ?enabled,
    };
  }

  factory WorkerScriptCacheOptions.fromMap(Map<String, dynamic> map) {
    return WorkerScriptCacheOptions(
      crossVersionCache: (() { final guardedValue = map['crossVersionCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
