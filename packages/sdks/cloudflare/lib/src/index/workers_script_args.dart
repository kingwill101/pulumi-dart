// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workers_script_annotations.dart';
import 'workers_script_assets.dart';
import 'workers_script_binding.dart';
import 'workers_script_cache_options.dart';
import 'workers_script_exports.dart';
import 'workers_script_limits.dart';
import 'workers_script_migrations.dart';
import 'workers_script_observability.dart';
import 'workers_script_package_dependency.dart';
import 'workers_script_placement.dart';
import 'workers_script_tail_consumer.dart';

/// {@template pulumi_index_workers_script_workers_script_args_doc}
/// The set of arguments for WorkersScript.
/// {@endtemplate}
/// {@macro pulumi_index_workers_script_workers_script_args_doc}
class WorkersScriptArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Annotations for the version created by this upload.
  final pulumi.Input<WorkersScriptAnnotations?>? annotations;
  /// Configuration for assets within a Worker.
  final pulumi.Input<WorkersScriptAssets?>? assets;
  /// List of bindings attached to a Worker. You can find more about bindings on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/#bindings.
  final pulumi.Input<List<WorkersScriptBinding>?>? bindings;
  /// Name of the uploaded file that contains the script (e.g. the file adding a listener to the `fetch` event). Indicates a `service worker syntax` Worker.
  final pulumi.Input<String?>? bodyPart;
  /// Global CacheW configuration for the Worker. When caching is on,
  /// the platform provisions a `cloudflare.app` zone for the Worker.
  /// A `type: worker` entry in the `exports` map can override this
  /// value for a single entrypoint.
  final pulumi.Input<WorkersScriptCacheOptions?>? cacheOptions;
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
  /// Per-entrypoint export configuration. Keys are the export names; values describe the entrypoint's kind and per-entrypoint cache behavior.
  final pulumi.Input<Map<String, WorkersScriptExports>?>? exports;
  /// Retain assets which exist for a previously uploaded Worker version; used in lieu of providing a completion token. An explicit `assets` upload takes precedence over `keepAssets`.
  final pulumi.Input<bool?>? keepAssets;
  /// List of binding types to keep from previous_upload.
  final pulumi.Input<List<String>?>? keepBindings;
  /// Limits to apply for this Worker.
  final pulumi.Input<WorkersScriptLimits?>? limits;
  /// Whether Logpush is turned on for the Worker.
  final pulumi.Input<bool?>? logpush;
  /// Name of the uploaded file that contains the main module (e.g. the file exporting a `fetch` handler). Indicates a `module syntax` Worker.
  final pulumi.Input<String?>? mainModule;
  /// Migrations to apply for Durable Objects associated with this Worker.
  final pulumi.Input<WorkersScriptMigrations?>? migrations;
  /// Observability settings for the Worker.
  final pulumi.Input<WorkersScriptObservability?>? observability;
  /// The list of npm packages that were installed and used when this Worker was built.
  final pulumi.Input<List<WorkersScriptPackageDependency>?>? packageDependencies;
  /// Configuration for [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement). Specify mode='smart' for Smart Placement, or one of region/hostname/host.
  final pulumi.Input<WorkersScriptPlacement?>? placement;
  /// Name of the script, used in URLs and route configuration.
  final pulumi.Input<String> scriptName;
  /// List of Workers that will consume logs from the attached Worker.
  final pulumi.Input<List<WorkersScriptTailConsumer>?>? tailConsumers;
  /// Usage model for the Worker invocations.
  /// Available values: "standard", "bundled", "unbound".
  final pulumi.Input<String?>? usageModel;

  /// Creates a new [WorkersScriptArgs].
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
  /// [exports] Per-entrypoint export configuration. Keys are the export names; values describe the entrypoint's kind and per-entrypoint cache behavior.
  /// [keepAssets] Retain assets which exist for a previously uploaded Worker version; used in lieu of providing a completion token. An explicit `assets` upload takes precedence over `keepAssets`.
  /// [keepBindings] List of binding types to keep from previous_upload.
  /// [limits] Limits to apply for this Worker.
  /// [logpush] Whether Logpush is turned on for the Worker.
  /// [mainModule] Name of the uploaded file that contains the main module (e.g. the file exporting a `fetch` handler). Indicates a `module syntax` Worker.
  /// [migrations] Migrations to apply for Durable Objects associated with this Worker.
  /// [observability] Observability settings for the Worker.
  /// [packageDependencies] The list of npm packages that were installed and used when this Worker was built.
  /// [placement] Configuration for [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement). Specify mode='smart' for Smart Placement, or one of region/hostname/host.
  /// [scriptName] Name of the script, used in URLs and route configuration.
  /// [tailConsumers] List of Workers that will consume logs from the attached Worker.
  /// [usageModel] Usage model for the Worker invocations.
  const WorkersScriptArgs({
    required this.accountId,
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
    this.exports,
    this.keepAssets,
    this.keepBindings,
    this.limits,
    this.logpush,
    this.mainModule,
    this.migrations,
    this.observability,
    this.packageDependencies,
    this.placement,
    required this.scriptName,
    this.tailConsumers,
    this.usageModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'annotations': ?pulumi.Input.mapOptionalInputValue<WorkersScriptAnnotations, Map<String, dynamic>>(annotations, (value) => value.toMap()),
      'assets': ?pulumi.Input.mapOptionalInputValue<WorkersScriptAssets, Map<String, dynamic>>(assets, (value) => value.toMap()),
      'bindings': ?pulumi.Input.mapOptionalInputValue<List<WorkersScriptBinding>, List<Map<String, dynamic>>>(bindings, (value) => pulumi.Input.encodeList<WorkersScriptBinding, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bodyPart': ?bodyPart,
      'cacheOptions': ?pulumi.Input.mapOptionalInputValue<WorkersScriptCacheOptions, Map<String, dynamic>>(cacheOptions, (value) => value.toMap()),
      'compatibilityDate': ?compatibilityDate,
      'compatibilityFlags': ?compatibilityFlags,
      'content': ?content,
      'contentFile': ?contentFile,
      'contentSha256': ?contentSha256,
      'contentType': ?contentType,
      'exports': ?pulumi.Input.mapOptionalInputValue<Map<String, WorkersScriptExports>, Map<String, Map<String, dynamic>>>(exports, (value) => pulumi.Input.encodeMapValues<WorkersScriptExports, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keepAssets': ?keepAssets,
      'keepBindings': ?keepBindings,
      'limits': ?pulumi.Input.mapOptionalInputValue<WorkersScriptLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'logpush': ?logpush,
      'mainModule': ?mainModule,
      'migrations': ?pulumi.Input.mapOptionalInputValue<WorkersScriptMigrations, Map<String, dynamic>>(migrations, (value) => value.toMap()),
      'observability': ?pulumi.Input.mapOptionalInputValue<WorkersScriptObservability, Map<String, dynamic>>(observability, (value) => value.toMap()),
      'packageDependencies': ?pulumi.Input.mapOptionalInputValue<List<WorkersScriptPackageDependency>, List<Map<String, dynamic>>>(packageDependencies, (value) => pulumi.Input.encodeList<WorkersScriptPackageDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placement': ?pulumi.Input.mapOptionalInputValue<WorkersScriptPlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'scriptName': scriptName,
      'tailConsumers': ?pulumi.Input.mapOptionalInputValue<List<WorkersScriptTailConsumer>, List<Map<String, dynamic>>>(tailConsumers, (value) => pulumi.Input.encodeList<WorkersScriptTailConsumer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'usageModel': ?usageModel,
    };
  }

  factory WorkersScriptArgs.fromMap(Map<String, dynamic> map) {
    return WorkersScriptArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkersScriptAnnotations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      assets: (() { final guardedValue = map['assets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkersScriptAssets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bindings: (() { final guardedValue = map['bindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkersScriptBinding>(guardedValue, (value) => WorkersScriptBinding.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bodyPart: (() { final guardedValue = map['bodyPart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheOptions: (() { final guardedValue = map['cacheOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkersScriptCacheOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      compatibilityDate: (() { final guardedValue = map['compatibilityDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compatibilityFlags: (() { final guardedValue = map['compatibilityFlags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentFile: (() { final guardedValue = map['contentFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentSha256: (() { final guardedValue = map['contentSha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exports: (() { final guardedValue = map['exports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<WorkersScriptExports>(guardedValue, (value) => WorkersScriptExports.fromMap((value as Map).cast<String, dynamic>()))); })(),
      keepAssets: (() { final guardedValue = map['keepAssets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keepBindings: (() { final guardedValue = map['keepBindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkersScriptLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logpush: (() { final guardedValue = map['logpush']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mainModule: (() { final guardedValue = map['mainModule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrations: (() { final guardedValue = map['migrations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkersScriptMigrations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      observability: (() { final guardedValue = map['observability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkersScriptObservability.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      packageDependencies: (() { final guardedValue = map['packageDependencies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkersScriptPackageDependency>(guardedValue, (value) => WorkersScriptPackageDependency.fromMap((value as Map).cast<String, dynamic>()))); })(),
      placement: (() { final guardedValue = map['placement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkersScriptPlacement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scriptName: pulumi.Input.fromValue(map['scriptName'] as String),
      tailConsumers: (() { final guardedValue = map['tailConsumers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkersScriptTailConsumer>(guardedValue, (value) => WorkersScriptTailConsumer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      usageModel: (() { final guardedValue = map['usageModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
