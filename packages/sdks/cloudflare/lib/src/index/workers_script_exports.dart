// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workers_script_exports_cache.dart';

class WorkersScriptExports {
  /// Per-entrypoint cache override. When present, this overrides the top-level `cacheOptions` for this specific entrypoint.
  final pulumi.Input<WorkersScriptExportsCache?>? cache;
  /// The kind of entrypoint. A `type: worker` entry overrides the top-level `cacheOptions` for this specific entrypoint.
  final pulumi.Input<String> type;

  /// Creates a new [WorkersScriptExports].
  /// [cache] Per-entrypoint cache override. When present, this overrides the top-level `cacheOptions` for this specific entrypoint.
  /// [type] The kind of entrypoint. A `type: worker` entry overrides the top-level `cacheOptions` for this specific entrypoint.
  const WorkersScriptExports({
    this.cache,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cache': ?pulumi.Input.mapOptionalInputValue<WorkersScriptExportsCache, Map<String, dynamic>>(cache, (value) => value.toMap()),
      'type': type,
    };
  }

  factory WorkersScriptExports.fromMap(Map<String, dynamic> map) {
    return WorkersScriptExports(
      cache: (() { final guardedValue = map['cache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkersScriptExportsCache.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
