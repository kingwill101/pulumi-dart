// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerVersionsResultCacheOptions {
  /// Whether cached responses are shared across Worker version
  /// uploads. This is independent of `enabled`. It can stay true
  /// while caching is off, so the preference survives turning
  /// caching off and back on.
  final pulumi.Input<bool> crossVersionCache;
  /// Whether caching is enabled for this Worker.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetWorkerVersionsResultCacheOptions].
  /// [crossVersionCache] Whether cached responses are shared across Worker version
  /// [enabled] Whether caching is enabled for this Worker.
  const GetWorkerVersionsResultCacheOptions({
    required this.crossVersionCache,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossVersionCache': crossVersionCache,
      'enabled': enabled,
    };
  }

  factory GetWorkerVersionsResultCacheOptions.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionsResultCacheOptions(
      crossVersionCache: pulumi.Input.fromValue(map['crossVersionCache'] as bool),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
