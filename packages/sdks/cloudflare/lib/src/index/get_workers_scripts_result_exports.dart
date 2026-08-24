// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workers_scripts_result_exports_cache.dart';

class GetWorkersScriptsResultExports {
  /// Cache override for this entrypoint. It applies only to
  /// `type: worker` entries and overrides the Worker's global
  /// `cache_options.enabled` for that entrypoint.
  final pulumi.Input<GetWorkersScriptsResultExportsCache> cache;
  /// Destination class name for a `state: renamed` tombstone. The
  /// target must appear as a live (`created`) entry in the same
  /// `exports` map. Write-only: never present in GET responses.
  final pulumi.Input<String> renamedTo;
  /// Lifecycle state of the export entry. Defaults to `created`
  /// (a normal, live export) when omitted.
  final pulumi.Input<String> state;
  /// Storage backend for a `type: durable-object` export. Required
  /// for live Durable Object entries (`created` and
  /// `expecting-transfer`). `sqlite` selects SQLite-backed storage;
  /// `legacy-kv` selects the legacy key-value storage.
  /// Available values: "sqlite", "legacy-kv".
  final pulumi.Input<String> storage;
  /// Source script for a `state: expecting-transfer` entry. The
  /// namespace on this script is materialised from the source
  /// script's data via the pending-transfer flow. Present on reads
  /// for `expecting-transfer` entries.
  final pulumi.Input<String> transferFrom;
  /// Destination script for a `state: transferred` tombstone. Must
  /// reference a script in the same account; cross-dispatch-namespace
  /// transfers are rejected. Write-only: never present in GET
  /// responses.
  final pulumi.Input<String> transferredTo;
  /// The kind of export.
  /// Available values: "worker", "durable-object".
  final pulumi.Input<String> type;

  /// Creates a new [GetWorkersScriptsResultExports].
  /// [cache] Cache override for this entrypoint. It applies only to
  /// [renamedTo] Destination class name for a `state: renamed` tombstone. The
  /// [state] Lifecycle state of the export entry. Defaults to `created`
  /// [storage] Storage backend for a `type: durable-object` export. Required
  /// [transferFrom] Source script for a `state: expecting-transfer` entry. The
  /// [transferredTo] Destination script for a `state: transferred` tombstone. Must
  /// [type] The kind of export.
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
