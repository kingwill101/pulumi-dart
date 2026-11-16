// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_version_exports_cache.dart';

class WorkerVersionExports {
  /// For `type: worker`: Cache override for this entrypoint. Overrides the Worker's
  /// global `cache_options.enabled` for this entrypoint only.
  final pulumi.Input<WorkerVersionExportsCache?>? cache;
  /// For `type: durable-object` and `state: created`: Name of the container (declared in the upload's
  /// `metadata.containers`) that backs this Durable Object. When
  /// set, the namespace is container-enabled. Valid only on live
  /// entries.
  ///
  /// For `state: expecting-transfer`: Name of the container (declared in the upload's
  /// `metadata.containers`) that backs this Durable Object once the
  /// transfer settles. Valid only on live entries.
  final pulumi.Input<String?>? container;
  /// For `state: renamed`: The destination class name. Must differ from the source class
  /// (the map key) and must be declared as a live (`created`) entry
  /// in the same `exports` map. Write-only: never present in GET
  /// responses.
  final pulumi.Input<String?>? renamedTo;
  /// For `state: created`: Live export. May be omitted; defaults to `created`.
  ///
  /// For `state: deleted`: Tombstone that deletes the namespace.
  ///
  /// For `state: renamed`: Tombstone that renames the namespace's class.
  ///
  /// For `state: transferred`: Tombstone that transfers the namespace to another script.
  ///
  /// For `state: expecting-transfer`: Target side of a two-phase transfer.
  /// Available values: "created", "deleted", "renamed", "transferred", "expecting-transfer".
  final pulumi.Input<String?>? state;
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
  final pulumi.Input<String?>? storage;
  /// For `state: expecting-transfer`: The source script name to receive the namespace from. Must be
  /// in the same account and dispatch-namespace context. Present on
  /// reads for `expecting-transfer` entries.
  final pulumi.Input<String?>? transferFrom;
  /// For `state: transferred`: The destination script name. Must be in the same account and
  /// the same dispatch-namespace context (or both non-dispatch).
  /// Cross-dispatch-namespace transfers are rejected. Write-only:
  /// never present in GET responses.
  final pulumi.Input<String?>? transferredTo;
  /// For `type: worker`: Marks this entry as a Worker entrypoint export.
  final pulumi.Input<String> type;

  /// Creates a new [WorkerVersionExports].
  /// [cache] For `type: worker`: Cache override for this entrypoint. Overrides the Worker's
  /// [container] For `type: durable-object` and `state: created`: Name of the container (declared in the upload's
  /// [renamedTo] For `state: renamed`: The destination class name. Must differ from the source class
  /// [state] For `state: created`: Live export. May be omitted; defaults to `created`.
  /// [storage] For `type: durable-object` and `state: created`: Durable Object storage backend. `sqlite` is the recommended (and
  /// [transferFrom] For `state: expecting-transfer`: The source script name to receive the namespace from. Must be
  /// [transferredTo] For `state: transferred`: The destination script name. Must be in the same account and
  /// [type] For `type: worker`: Marks this entry as a Worker entrypoint export.
  const WorkerVersionExports({
    this.cache,
    this.container,
    this.renamedTo,
    this.state,
    this.storage,
    this.transferFrom,
    this.transferredTo,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cache': ?pulumi.Input.mapOptionalInputValue<WorkerVersionExportsCache, Map<String, dynamic>>(cache, (value) => value.toMap()),
      'container': ?container,
      'renamedTo': ?renamedTo,
      'state': ?state,
      'storage': ?storage,
      'transferFrom': ?transferFrom,
      'transferredTo': ?transferredTo,
      'type': type,
    };
  }

  factory WorkerVersionExports.fromMap(Map<String, dynamic> map) {
    return WorkerVersionExports(
      cache: (() { final guardedValue = map['cache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerVersionExportsCache.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      container: (() { final guardedValue = map['container']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renamedTo: (() { final guardedValue = map['renamedTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transferFrom: (() { final guardedValue = map['transferFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transferredTo: (() { final guardedValue = map['transferredTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
