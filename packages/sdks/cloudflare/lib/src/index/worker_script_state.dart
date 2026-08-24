// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_script_annotations.dart';
import 'worker_script_assets.dart';
import 'worker_script_binding.dart';
import 'worker_script_cache_options.dart';
import 'worker_script_exports.dart';
import 'worker_script_limits.dart';
import 'worker_script_migrations.dart';
import 'worker_script_named_handler.dart';
import 'worker_script_observability.dart';
import 'worker_script_package_dependency.dart';
import 'worker_script_placement.dart';
import 'worker_script_tail_consumer.dart';

/// Input properties used for looking up and filtering WorkerScript resources.
class WorkerScriptState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Annotations for the version created by this upload.
  final pulumi.Input<WorkerScriptAnnotations?>? annotations;
  /// Configuration for assets within a Worker.
  final pulumi.Input<WorkerScriptAssets?>? assets;
  /// List of bindings attached to a Worker. You can find more about bindings on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/#bindings.
  final pulumi.Input<List<WorkerScriptBinding>?>? bindings;
  /// Name of the uploaded file that contains the script (e.g. the file adding a listener to the `fetch` event). Indicates a `service worker syntax` Worker.
  final pulumi.Input<String?>? bodyPart;
  /// Global CacheW configuration for the Worker. When caching is on,
  /// the platform provisions a `cloudflare.app` zone for the Worker.
  /// A `type: worker` entry in the `exports` map can override this
  /// value for a single entrypoint.
  final pulumi.Input<WorkerScriptCacheOptions?>? cacheOptions;
  /// Date indicating targeted support in the Workers runtime. Backwards incompatible fixes to the runtime following this date will not affect this Worker.
  final pulumi.Input<String?>? compatibilityDate;
  /// Flags that enable or disable certain features in the Workers runtime. Used to enable upcoming features or opt in or out of specific changes not included in a `compatibilityDate`.
  final pulumi.Input<List<String>?>? compatibilityFlags;
  /// Module or Service Worker contents of the Worker. Conflicts with `contentFile`.
  final pulumi.Input<String?>? content;
  /// Path to a file containing the Module or Service Worker contents of the Worker. Conflicts with `content`. Must be paired with `contentSha256`.
  final pulumi.Input<String?>? contentFile;
  /// SHA-256 hash of the Worker contents. Used to trigger updates when source code changes. Must be provided when `contentFile` is specified.
  final pulumi.Input<String?>? contentSha256;
  /// Content-Type of the Worker. Required if uploading a non-JavaScript Worker (e.g. "text/x-python").
  final pulumi.Input<String?>? contentType;
  /// When the script was created.
  final pulumi.Input<String?>? createdOn;
  /// Hashed script content, can be used in a If-None-Match header when updating.
  final pulumi.Input<String?>? etag;
  /// Per-entrypoint export configuration. Keys are the export names; values describe the entrypoint's kind and per-entrypoint cache behavior.
  final pulumi.Input<Map<String, WorkerScriptExports>?>? exports;
  /// The names of handlers exported as part of the default export.
  final pulumi.Input<List<String>?>? handlers;
  /// Whether a Worker contains assets.
  final pulumi.Input<bool?>? hasAssets;
  /// Whether a Worker contains modules.
  final pulumi.Input<bool?>? hasModules;
  /// Retain assets which exist for a previously uploaded Worker version; used in lieu of providing a completion token. An explicit `assets` upload takes precedence over `keepAssets`.
  final pulumi.Input<bool?>? keepAssets;
  /// List of binding types to keep from previous_upload.
  final pulumi.Input<List<String>?>? keepBindings;
  /// The client most recently used to deploy this Worker.
  final pulumi.Input<String?>? lastDeployedFrom;
  /// Limits to apply for this Worker.
  final pulumi.Input<WorkerScriptLimits?>? limits;
  /// Whether Logpush is turned on for the Worker.
  final pulumi.Input<bool?>? logpush;
  /// Name of the uploaded file that contains the main module (e.g. the file exporting a `fetch` handler). Indicates a `module syntax` Worker.
  final pulumi.Input<String?>? mainModule;
  /// The tag of the Durable Object migration that was most recently applied for this Worker.
  final pulumi.Input<String?>? migrationTag;
  /// Migrations to apply for Durable Objects associated with this Worker.
  final pulumi.Input<WorkerScriptMigrations?>? migrations;
  /// When the script was last modified.
  final pulumi.Input<String?>? modifiedOn;
  /// Named exports, such as Durable Object class implementations and named entrypoints.
  final pulumi.Input<List<WorkerScriptNamedHandler>?>? namedHandlers;
  /// Observability settings for the Worker.
  final pulumi.Input<WorkerScriptObservability?>? observability;
  /// The list of npm packages that were installed and used when this Worker was built.
  final pulumi.Input<List<WorkerScriptPackageDependency>?>? packageDependencies;
  /// Configuration for [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement). Specify mode='smart' for Smart Placement, or one of region/hostname/host.
  final pulumi.Input<WorkerScriptPlacement?>? placement;
  /// Available values: "smart", "targeted".
  final pulumi.Input<String?>? placementMode;
  /// Available values: "SUCCESS", "UNSUPPORTED*APPLICATION", "INSUFFICIENT*INVOCATIONS".
  final pulumi.Input<String?>? placementStatus;
  /// Name of the script, used in URLs and route configuration.
  final pulumi.Input<String?>? scriptName;
  final pulumi.Input<int?>? startupTimeMs;
  /// List of Workers that will consume logs from the attached Worker.
  final pulumi.Input<List<WorkerScriptTailConsumer>?>? tailConsumers;
  /// Usage model for the Worker invocations.
  /// Available values: "standard", "bundled", "unbound".
  final pulumi.Input<String?>? usageModel;

  /// Creates a new [WorkerScriptState].
  /// [accountId] Identifier.
  /// [annotations] Annotations for the version created by this upload.
  /// [assets] Configuration for assets within a Worker.
  /// [bindings] List of bindings attached to a Worker. You can find more about bindings on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/#bindings.
  /// [bodyPart] Name of the uploaded file that contains the script (e.g. the file adding a listener to the `fetch` event). Indicates a `service worker syntax` Worker.
  /// [cacheOptions] Global CacheW configuration for the Worker. When caching is on,
  /// [compatibilityDate] Date indicating targeted support in the Workers runtime. Backwards incompatible fixes to the runtime following this date will not affect this Worker.
  /// [compatibilityFlags] Flags that enable or disable certain features in the Workers runtime. Used to enable upcoming features or opt in or out of specific changes not included in a `compatibilityDate`.
  /// [content] Module or Service Worker contents of the Worker. Conflicts with `contentFile`.
  /// [contentFile] Path to a file containing the Module or Service Worker contents of the Worker. Conflicts with `content`. Must be paired with `contentSha256`.
  /// [contentSha256] SHA-256 hash of the Worker contents. Used to trigger updates when source code changes. Must be provided when `contentFile` is specified.
  /// [contentType] Content-Type of the Worker. Required if uploading a non-JavaScript Worker (e.g. "text/x-python").
  /// [createdOn] When the script was created.
  /// [etag] Hashed script content, can be used in a If-None-Match header when updating.
  /// [exports] Per-entrypoint export configuration. Keys are the export names; values describe the entrypoint's kind and per-entrypoint cache behavior.
  /// [handlers] The names of handlers exported as part of the default export.
  /// [hasAssets] Whether a Worker contains assets.
  /// [hasModules] Whether a Worker contains modules.
  /// [keepAssets] Retain assets which exist for a previously uploaded Worker version; used in lieu of providing a completion token. An explicit `assets` upload takes precedence over `keepAssets`.
  /// [keepBindings] List of binding types to keep from previous_upload.
  /// [lastDeployedFrom] The client most recently used to deploy this Worker.
  /// [limits] Limits to apply for this Worker.
  /// [logpush] Whether Logpush is turned on for the Worker.
  /// [mainModule] Name of the uploaded file that contains the main module (e.g. the file exporting a `fetch` handler). Indicates a `module syntax` Worker.
  /// [migrationTag] The tag of the Durable Object migration that was most recently applied for this Worker.
  /// [migrations] Migrations to apply for Durable Objects associated with this Worker.
  /// [modifiedOn] When the script was last modified.
  /// [namedHandlers] Named exports, such as Durable Object class implementations and named entrypoints.
  /// [observability] Observability settings for the Worker.
  /// [packageDependencies] The list of npm packages that were installed and used when this Worker was built.
  /// [placement] Configuration for [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement). Specify mode='smart' for Smart Placement, or one of region/hostname/host.
  /// [placementMode] Available values: "smart", "targeted".
  /// [placementStatus] Available values: "SUCCESS", "UNSUPPORTED*APPLICATION", "INSUFFICIENT*INVOCATIONS".
  /// [scriptName] Name of the script, used in URLs and route configuration.
  /// [startupTimeMs] Optional.
  /// [tailConsumers] List of Workers that will consume logs from the attached Worker.
  /// [usageModel] Usage model for the Worker invocations.
  const WorkerScriptState({
    this.accountId,
    this.annotations,
    this.assets,
    this.bindings,
    this.bodyPart,
    this.cacheOptions,
    this.compatibilityDate,
    this.compatibilityFlags,
    this.content,
    this.contentFile,
    this.contentSha256,
    this.contentType,
    this.createdOn,
    this.etag,
    this.exports,
    this.handlers,
    this.hasAssets,
    this.hasModules,
    this.keepAssets,
    this.keepBindings,
    this.lastDeployedFrom,
    this.limits,
    this.logpush,
    this.mainModule,
    this.migrationTag,
    this.migrations,
    this.modifiedOn,
    this.namedHandlers,
    this.observability,
    this.packageDependencies,
    this.placement,
    this.placementMode,
    this.placementStatus,
    this.scriptName,
    this.startupTimeMs,
    this.tailConsumers,
    this.usageModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'annotations': ?pulumi.Input.mapOptionalInputValue<WorkerScriptAnnotations, Map<String, dynamic>>(annotations, (value) => value.toMap()),
      'assets': ?pulumi.Input.mapOptionalInputValue<WorkerScriptAssets, Map<String, dynamic>>(assets, (value) => value.toMap()),
      'bindings': ?pulumi.Input.mapOptionalInputValue<List<WorkerScriptBinding>, List<Map<String, dynamic>>>(bindings, (value) => pulumi.Input.encodeList<WorkerScriptBinding, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bodyPart': ?bodyPart,
      'cacheOptions': ?pulumi.Input.mapOptionalInputValue<WorkerScriptCacheOptions, Map<String, dynamic>>(cacheOptions, (value) => value.toMap()),
      'compatibilityDate': ?compatibilityDate,
      'compatibilityFlags': ?compatibilityFlags,
      'content': ?content,
      'contentFile': ?contentFile,
      'contentSha256': ?contentSha256,
      'contentType': ?contentType,
      'createdOn': ?createdOn,
      'etag': ?etag,
      'exports': ?pulumi.Input.mapOptionalInputValue<Map<String, WorkerScriptExports>, Map<String, Map<String, dynamic>>>(exports, (value) => pulumi.Input.encodeMapValues<WorkerScriptExports, Map<String, dynamic>>(value, (value) => value.toMap())),
      'handlers': ?handlers,
      'hasAssets': ?hasAssets,
      'hasModules': ?hasModules,
      'keepAssets': ?keepAssets,
      'keepBindings': ?keepBindings,
      'lastDeployedFrom': ?lastDeployedFrom,
      'limits': ?pulumi.Input.mapOptionalInputValue<WorkerScriptLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'logpush': ?logpush,
      'mainModule': ?mainModule,
      'migrationTag': ?migrationTag,
      'migrations': ?pulumi.Input.mapOptionalInputValue<WorkerScriptMigrations, Map<String, dynamic>>(migrations, (value) => value.toMap()),
      'modifiedOn': ?modifiedOn,
      'namedHandlers': ?pulumi.Input.mapOptionalInputValue<List<WorkerScriptNamedHandler>, List<Map<String, dynamic>>>(namedHandlers, (value) => pulumi.Input.encodeList<WorkerScriptNamedHandler, Map<String, dynamic>>(value, (value) => value.toMap())),
      'observability': ?pulumi.Input.mapOptionalInputValue<WorkerScriptObservability, Map<String, dynamic>>(observability, (value) => value.toMap()),
      'packageDependencies': ?pulumi.Input.mapOptionalInputValue<List<WorkerScriptPackageDependency>, List<Map<String, dynamic>>>(packageDependencies, (value) => pulumi.Input.encodeList<WorkerScriptPackageDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placement': ?pulumi.Input.mapOptionalInputValue<WorkerScriptPlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'placementMode': ?placementMode,
      'placementStatus': ?placementStatus,
      'scriptName': ?scriptName,
      'startupTimeMs': ?startupTimeMs,
      'tailConsumers': ?pulumi.Input.mapOptionalInputValue<List<WorkerScriptTailConsumer>, List<Map<String, dynamic>>>(tailConsumers, (value) => pulumi.Input.encodeList<WorkerScriptTailConsumer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'usageModel': ?usageModel,
    };
  }

  factory WorkerScriptState.fromMap(Map<String, dynamic> map) {
    return WorkerScriptState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerScriptAnnotations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      assets: (() { final guardedValue = map['assets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerScriptAssets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bindings: (() { final guardedValue = map['bindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerScriptBinding>(guardedValue, (value) => WorkerScriptBinding.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bodyPart: (() { final guardedValue = map['bodyPart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheOptions: (() { final guardedValue = map['cacheOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerScriptCacheOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      compatibilityDate: (() { final guardedValue = map['compatibilityDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compatibilityFlags: (() { final guardedValue = map['compatibilityFlags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentFile: (() { final guardedValue = map['contentFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentSha256: (() { final guardedValue = map['contentSha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exports: (() { final guardedValue = map['exports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<WorkerScriptExports>(guardedValue, (value) => WorkerScriptExports.fromMap((value as Map).cast<String, dynamic>()))); })(),
      handlers: (() { final guardedValue = map['handlers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      hasAssets: (() { final guardedValue = map['hasAssets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hasModules: (() { final guardedValue = map['hasModules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keepAssets: (() { final guardedValue = map['keepAssets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keepBindings: (() { final guardedValue = map['keepBindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lastDeployedFrom: (() { final guardedValue = map['lastDeployedFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerScriptLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logpush: (() { final guardedValue = map['logpush']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mainModule: (() { final guardedValue = map['mainModule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrationTag: (() { final guardedValue = map['migrationTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrations: (() { final guardedValue = map['migrations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerScriptMigrations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namedHandlers: (() { final guardedValue = map['namedHandlers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerScriptNamedHandler>(guardedValue, (value) => WorkerScriptNamedHandler.fromMap((value as Map).cast<String, dynamic>()))); })(),
      observability: (() { final guardedValue = map['observability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerScriptObservability.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      packageDependencies: (() { final guardedValue = map['packageDependencies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerScriptPackageDependency>(guardedValue, (value) => WorkerScriptPackageDependency.fromMap((value as Map).cast<String, dynamic>()))); })(),
      placement: (() { final guardedValue = map['placement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerScriptPlacement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      placementMode: (() { final guardedValue = map['placementMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placementStatus: (() { final guardedValue = map['placementStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startupTimeMs: (() { final guardedValue = map['startupTimeMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tailConsumers: (() { final guardedValue = map['tailConsumers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerScriptTailConsumer>(guardedValue, (value) => WorkerScriptTailConsumer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      usageModel: (() { final guardedValue = map['usageModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
