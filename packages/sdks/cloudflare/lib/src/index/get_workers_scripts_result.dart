// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workers_scripts_result_cache_options.dart';
import 'get_workers_scripts_result_exports.dart';
import 'get_workers_scripts_result_named_handler.dart';
import 'get_workers_scripts_result_observability.dart';
import 'get_workers_scripts_result_placement.dart';
import 'get_workers_scripts_result_route.dart';
import 'get_workers_scripts_result_tail_consumer.dart';

class GetWorkersScriptsResult {
  /// Global CacheW configuration for the Worker. When caching is on,
  /// the platform provisions a `cloudflare.app` zone for the Worker.
  /// A `type: worker` entry in the `exports` map can override this
  /// value for a single entrypoint.
  final pulumi.Input<GetWorkersScriptsResultCacheOptions> cacheOptions;
  /// Date indicating targeted support in the Workers runtime. Backwards incompatible fixes to the runtime following this date will not affect this Worker.
  final pulumi.Input<String> compatibilityDate;
  /// Flags that enable or disable certain features in the Workers runtime. Used to enable upcoming features or opt in or out of specific changes not included in a `compatibilityDate`.
  final pulumi.Input<List<String>> compatibilityFlags;
  /// When the script was created.
  final pulumi.Input<String> createdOn;
  /// Hashed script content, can be used in a If-None-Match header when updating.
  final pulumi.Input<String> etag;
  /// Declarative exports for the Worker's most recent version,
  /// including Durable Object classes (with their `storage`
  /// backend) and named Worker entrypoints. Tombstoned lifecycle
  /// entries are omitted, so only live exports (`created` and
  /// `expecting-transfer`) are returned.
  final pulumi.Input<Map<String, GetWorkersScriptsResultExports>> exports;
  /// The names of handlers exported as part of the default export.
  final pulumi.Input<List<String>> handlers;
  /// Whether a Worker contains assets.
  final pulumi.Input<bool> hasAssets;
  /// Whether a Worker contains modules.
  final pulumi.Input<bool> hasModules;
  /// The name used to identify the script.
  final pulumi.Input<String> id;
  /// The client most recently used to deploy this Worker.
  final pulumi.Input<String> lastDeployedFrom;
  /// Whether Logpush is turned on for the Worker.
  final pulumi.Input<bool> logpush;
  /// The tag of the Durable Object migration that was most recently applied for this Worker.
  final pulumi.Input<String> migrationTag;
  /// When the script was last modified.
  final pulumi.Input<String> modifiedOn;
  /// Named exports, such as Durable Object class implementations and named entrypoints.
  final pulumi.Input<List<GetWorkersScriptsResultNamedHandler>> namedHandlers;
  /// Observability settings for the Worker.
  final pulumi.Input<GetWorkersScriptsResultObservability> observability;
  /// Configuration for [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement). Specify mode='smart' for Smart Placement, or one of region/hostname/host.
  final pulumi.Input<GetWorkersScriptsResultPlacement> placement;
  /// Available values: "smart", "targeted".
  final pulumi.Input<String> placementMode;
  /// Available values: "SUCCESS", "UNSUPPORTED*APPLICATION", "INSUFFICIENT*INVOCATIONS".
  final pulumi.Input<String> placementStatus;
  /// Routes associated with the Worker.
  final pulumi.Input<List<GetWorkersScriptsResultRoute>> routes;
  /// The immutable ID of the script.
  final pulumi.Input<String> tag;
  /// Tags associated with the Worker.
  final pulumi.Input<List<String>> tags;
  /// List of Workers that will consume logs from the attached Worker.
  final pulumi.Input<List<GetWorkersScriptsResultTailConsumer>> tailConsumers;
  /// Usage model for the Worker invocations.
  /// Available values: "standard", "bundled", "unbound".
  final pulumi.Input<String> usageModel;

  /// Creates a new [GetWorkersScriptsResult].
  /// [cacheOptions] Global CacheW configuration for the Worker. When caching is on,
  /// [compatibilityDate] Date indicating targeted support in the Workers runtime. Backwards incompatible fixes to the runtime following this date will not affect this Worker.
  /// [compatibilityFlags] Flags that enable or disable certain features in the Workers runtime. Used to enable upcoming features or opt in or out of specific changes not included in a `compatibilityDate`.
  /// [createdOn] When the script was created.
  /// [etag] Hashed script content, can be used in a If-None-Match header when updating.
  /// [exports] Declarative exports for the Worker's most recent version,
  /// [handlers] The names of handlers exported as part of the default export.
  /// [hasAssets] Whether a Worker contains assets.
  /// [hasModules] Whether a Worker contains modules.
  /// [id] The name used to identify the script.
  /// [lastDeployedFrom] The client most recently used to deploy this Worker.
  /// [logpush] Whether Logpush is turned on for the Worker.
  /// [migrationTag] The tag of the Durable Object migration that was most recently applied for this Worker.
  /// [modifiedOn] When the script was last modified.
  /// [namedHandlers] Named exports, such as Durable Object class implementations and named entrypoints.
  /// [observability] Observability settings for the Worker.
  /// [placement] Configuration for [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement). Specify mode='smart' for Smart Placement, or one of region/hostname/host.
  /// [placementMode] Available values: "smart", "targeted".
  /// [placementStatus] Available values: "SUCCESS", "UNSUPPORTED*APPLICATION", "INSUFFICIENT*INVOCATIONS".
  /// [routes] Routes associated with the Worker.
  /// [tag] The immutable ID of the script.
  /// [tags] Tags associated with the Worker.
  /// [tailConsumers] List of Workers that will consume logs from the attached Worker.
  /// [usageModel] Usage model for the Worker invocations.
  const GetWorkersScriptsResult({
    required this.cacheOptions,
    required this.compatibilityDate,
    required this.compatibilityFlags,
    required this.createdOn,
    required this.etag,
    required this.exports,
    required this.handlers,
    required this.hasAssets,
    required this.hasModules,
    required this.id,
    required this.lastDeployedFrom,
    required this.logpush,
    required this.migrationTag,
    required this.modifiedOn,
    required this.namedHandlers,
    required this.observability,
    required this.placement,
    required this.placementMode,
    required this.placementStatus,
    required this.routes,
    required this.tag,
    required this.tags,
    required this.tailConsumers,
    required this.usageModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheOptions': pulumi.Input.mapInputValue<GetWorkersScriptsResultCacheOptions, Map<String, dynamic>>(cacheOptions, (value) => value.toMap()),
      'compatibilityDate': compatibilityDate,
      'compatibilityFlags': compatibilityFlags,
      'createdOn': createdOn,
      'etag': etag,
      'exports': pulumi.Input.mapInputValue<Map<String, GetWorkersScriptsResultExports>, Map<String, Map<String, dynamic>>>(exports, (value) => pulumi.Input.encodeMapValues<GetWorkersScriptsResultExports, Map<String, dynamic>>(value, (value) => value.toMap())),
      'handlers': handlers,
      'hasAssets': hasAssets,
      'hasModules': hasModules,
      'id': id,
      'lastDeployedFrom': lastDeployedFrom,
      'logpush': logpush,
      'migrationTag': migrationTag,
      'modifiedOn': modifiedOn,
      'namedHandlers': pulumi.Input.mapInputValue<List<GetWorkersScriptsResultNamedHandler>, List<Map<String, dynamic>>>(namedHandlers, (value) => pulumi.Input.encodeList<GetWorkersScriptsResultNamedHandler, Map<String, dynamic>>(value, (value) => value.toMap())),
      'observability': pulumi.Input.mapInputValue<GetWorkersScriptsResultObservability, Map<String, dynamic>>(observability, (value) => value.toMap()),
      'placement': pulumi.Input.mapInputValue<GetWorkersScriptsResultPlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'placementMode': placementMode,
      'placementStatus': placementStatus,
      'routes': pulumi.Input.mapInputValue<List<GetWorkersScriptsResultRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<GetWorkersScriptsResultRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tag': tag,
      'tags': tags,
      'tailConsumers': pulumi.Input.mapInputValue<List<GetWorkersScriptsResultTailConsumer>, List<Map<String, dynamic>>>(tailConsumers, (value) => pulumi.Input.encodeList<GetWorkersScriptsResultTailConsumer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'usageModel': usageModel,
    };
  }

  factory GetWorkersScriptsResult.fromMap(Map<String, dynamic> map) {
    return GetWorkersScriptsResult(
      cacheOptions: pulumi.Input.fromValue(GetWorkersScriptsResultCacheOptions.fromMap((map['cacheOptions']! as Map).cast<String, dynamic>())),
      compatibilityDate: pulumi.Input.fromValue(map['compatibilityDate'] as String),
      compatibilityFlags: pulumi.Input.fromValue((map['compatibilityFlags'] as List).cast<String>()),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      exports: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetWorkersScriptsResultExports>(map['exports']!, (value) => GetWorkersScriptsResultExports.fromMap((value as Map).cast<String, dynamic>()))),
      handlers: pulumi.Input.fromValue((map['handlers'] as List).cast<String>()),
      hasAssets: pulumi.Input.fromValue(map['hasAssets'] as bool),
      hasModules: pulumi.Input.fromValue(map['hasModules'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastDeployedFrom: pulumi.Input.fromValue(map['lastDeployedFrom'] as String),
      logpush: pulumi.Input.fromValue(map['logpush'] as bool),
      migrationTag: pulumi.Input.fromValue(map['migrationTag'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      namedHandlers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkersScriptsResultNamedHandler>(map['namedHandlers']!, (value) => GetWorkersScriptsResultNamedHandler.fromMap((value as Map).cast<String, dynamic>()))),
      observability: pulumi.Input.fromValue(GetWorkersScriptsResultObservability.fromMap((map['observability']! as Map).cast<String, dynamic>())),
      placement: pulumi.Input.fromValue(GetWorkersScriptsResultPlacement.fromMap((map['placement']! as Map).cast<String, dynamic>())),
      placementMode: pulumi.Input.fromValue(map['placementMode'] as String),
      placementStatus: pulumi.Input.fromValue(map['placementStatus'] as String),
      routes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkersScriptsResultRoute>(map['routes']!, (value) => GetWorkersScriptsResultRoute.fromMap((value as Map).cast<String, dynamic>()))),
      tag: pulumi.Input.fromValue(map['tag'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      tailConsumers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkersScriptsResultTailConsumer>(map['tailConsumers']!, (value) => GetWorkersScriptsResultTailConsumer.fromMap((value as Map).cast<String, dynamic>()))),
      usageModel: pulumi.Input.fromValue(map['usageModel'] as String),
    );
  }
}
