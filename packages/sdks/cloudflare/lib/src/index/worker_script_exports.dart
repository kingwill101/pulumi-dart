// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_script_exports_cache.dart';

class WorkerScriptExports {
  /// Per-entrypoint cache override. When present, this overrides the top-level `cacheOptions` for this specific entrypoint.
  final pulumi.Input<WorkerScriptExportsCache?>? cache;
  /// The kind of entrypoint. A `type: worker` entry overrides the top-level `cacheOptions` for this specific entrypoint.
  final pulumi.Input<String> type;

  /// Creates a new [WorkerScriptExports].
  /// [cache] Per-entrypoint cache override. When present, this overrides the top-level `cacheOptions` for this specific entrypoint.
  /// [type] The kind of entrypoint. A `type: worker` entry overrides the top-level `cacheOptions` for this specific entrypoint.
  const WorkerScriptExports({
    this.cache,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cache': ?pulumi.Input.mapOptionalInputValue<WorkerScriptExportsCache, Map<String, dynamic>>(cache, (value) => value.toMap()),
      'type': type,
    };
  }

  factory WorkerScriptExports.fromMap(Map<String, dynamic> map) {
    return WorkerScriptExports(
      cache: (() { final guardedValue = map['cache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerScriptExportsCache.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
