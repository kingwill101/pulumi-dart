// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workers_scripts_result_exports_cache.dart';

class GetWorkersScriptsResultExports {
  /// For `type: worker`: Cache override for this entrypoint. Overrides the Worker's
  /// global `cache_options.enabled` for this entrypoint only.
  final pulumi.Input<GetWorkersScriptsResultExportsCache> cache;
  /// Destination class name for a `state: renamed` tombstone. The
  /// target must appear as a live (`created`) entry in the same
  /// `exports` map. Write-only: never present in GET responses.
  final pulumi.Input<String> renamedTo;
  /// For `state: created`: Live export. May be omitted; defaults to `created`.
  final pulumi.Input<String> state;
  /// For `type: durable-object` and `state: created`: Durable Object storage backend. `sqlite` is the recommended (and
  /// only) backend for new namespaces. `legacy-kv` is accepted only for
  /// a class whose namespace already exists as KV-backed; the `exports`
  /// flow never provisions a new `legacy-kv` namespace.
  ///
  /// For `type: durable-object` and `state: expecting-transfer`: Durable Object storage backend. `sqlite` is the recommended (and
  /// only) backend for new namespaces. `legacy-kv` is accepted only for
  /// a class whose namespace already exists as KV-backed; the `exports`
  /// flow never provisions a new `legacy-kv` namespace.
  /// Available values: "sqlite", "legacy-kv".
  final pulumi.Input<String> storage;
  /// For `state: expecting-transfer`: The source script name to receive the namespace from. Must be
  /// in the same account and dispatch-namespace context. Present on
  /// reads for `expecting-transfer` entries.
  final pulumi.Input<String> transferFrom;
  /// For `state: transferred`: The destination script name. Must be in the same account and
  /// the same dispatch-namespace context (or both non-dispatch).
  /// Cross-dispatch-namespace transfers are rejected. Write-only:
  /// never present in GET responses.
  final pulumi.Input<String> transferredTo;
  /// For `type: worker`: Marks this entry as a Worker entrypoint export.
  ///
  /// For `type: durable-object`: Marks this entry as a Durable Object export.
  /// Available values: "worker", "durable-object".
  final pulumi.Input<String> type;

  /// Creates a new [GetWorkersScriptsResultExports].
  /// [cache] For `type: worker`: Cache override for this entrypoint. Overrides the Worker's
  /// [renamedTo] Destination class name for a `state: renamed` tombstone. The
  /// [state] For `state: created`: Live export. May be omitted; defaults to `created`.
  /// [storage] For `type: durable-object` and `state: created`: Durable Object storage backend. `sqlite` is the recommended (and
  /// [transferFrom] For `state: expecting-transfer`: The source script name to receive the namespace from. Must be
  /// [transferredTo] For `state: transferred`: The destination script name. Must be in the same account and
  /// [type] For `type: worker`: Marks this entry as a Worker entrypoint export.
  const GetWorkersScriptsResultExports({
    required this.cache,
    required this.renamedTo,
    required this.state,
    required this.storage,
    required this.transferFrom,
    required this.transferredTo,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cache': pulumi.Input.mapInputValue<GetWorkersScriptsResultExportsCache, Map<String, dynamic>>(cache, (value) => value.toMap()),
      'renamedTo': renamedTo,
      'state': state,
      'storage': storage,
      'transferFrom': transferFrom,
      'transferredTo': transferredTo,
      'type': type,
    };
  }

  factory GetWorkersScriptsResultExports.fromMap(Map<String, dynamic> map) {
    return GetWorkersScriptsResultExports(
      cache: pulumi.Input.fromValue(GetWorkersScriptsResultExportsCache.fromMap((map['cache']! as Map).cast<String, dynamic>())),
      renamedTo: pulumi.Input.fromValue(map['renamedTo'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      storage: pulumi.Input.fromValue(map['storage'] as String),
      transferFrom: pulumi.Input.fromValue(map['transferFrom'] as String),
      transferredTo: pulumi.Input.fromValue(map['transferredTo'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
