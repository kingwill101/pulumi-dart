import 'package:pulumi/pulumi.dart' as pulumi;
import 'workers_script_annotations.dart';
import 'workers_script_args.dart';
import 'workers_script_assets.dart';
import 'workers_script_binding.dart';
import 'workers_script_cache_options.dart';
import 'workers_script_exports.dart';
import 'workers_script_limits.dart';
import 'workers_script_migrations.dart';
import 'workers_script_named_handler.dart';
import 'workers_script_observability.dart';
import 'workers_script_package_dependency.dart';
import 'workers_script_placement.dart';
import 'workers_script_state.dart';
import 'workers_script_tail_consumer.dart';

/// Accepted Permissions
///
/// - `Workers Scripts Read`
/// - `Workers Scripts Write`
/// - `Workers Tail Read`
///
/// &gt; For more direct control over Workers resources, we recommend the beta `cloudflare.Worker`, `cloudflare.WorkerVersion`, and `cloudflare.WorkersDeployment` resources. See how to use them in the [developer documentation](https://developers.cloudflare.com/workers/platform/infrastructure-as-code/).
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/workersScript:WorkersScript example '<account_id>/<script_name>'
/// ```
class WorkersScript extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// Annotations for the version created by this upload.
  late final pulumi.Output<WorkersScriptAnnotations> annotations;
  /// Configuration for assets within a Worker.
  late final pulumi.Output<WorkersScriptAssets?> assets;
  /// List of bindings attached to a Worker. You can find more about bindings on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/#bindings.
  late final pulumi.Output<List<WorkersScriptBinding>> bindings;
  /// Name of the uploaded file that contains the script (e.g. the file adding a listener to the `fetch` event). Indicates a `service worker syntax` Worker.
  late final pulumi.Output<String?> bodyPart;
  /// Global CacheW configuration for the Worker. When caching is on,
  /// the platform provisions a `cloudflare.app` zone for the Worker.
  /// A `type: worker` entry in the `exports` map can override this
  /// value for a single entrypoint.
  late final pulumi.Output<WorkersScriptCacheOptions?> cacheOptions;
  /// Date indicating targeted support in the Workers runtime. Backwards incompatible fixes to the runtime following this date will not affect this Worker.
  late final pulumi.Output<String> compatibilityDate;
  /// Flags that enable or disable certain features in the Workers runtime. Used to enable upcoming features or opt in or out of specific changes not included in a `compatibilityDate`.
  late final pulumi.Output<List<String>> compatibilityFlags;
  /// Module or Service Worker contents of the Worker. Conflicts with `contentFile`.
  late final pulumi.Output<String?> content;
  /// Path to a file containing the Module or Service Worker contents of the Worker. Conflicts with `content`. Must be paired with `contentSha256`.
  late final pulumi.Output<String?> contentFile;
  /// SHA-256 hash of the Worker contents. Used to trigger updates when source code changes. Must be provided when `contentFile` is specified.
  late final pulumi.Output<String?> contentSha256;
  /// Content-Type of the Worker. Required if uploading a non-JavaScript Worker (e.g. "text/x-python").
  late final pulumi.Output<String?> contentType;
  /// When the script was created.
  late final pulumi.Output<String> createdOn;
  /// Hashed script content, can be used in a If-None-Match header when updating.
  late final pulumi.Output<String> etag;
  /// Per-entrypoint export configuration. Keys are the export names; values describe the entrypoint's kind and per-entrypoint cache behavior.
  late final pulumi.Output<Map<String, WorkersScriptExports>?> exports;
  /// The names of handlers exported as part of the default export.
  late final pulumi.Output<List<String>> handlers;
  /// Whether a Worker contains assets.
  late final pulumi.Output<bool> hasAssets;
  /// Whether a Worker contains modules.
  late final pulumi.Output<bool> hasModules;
  /// Retain assets which exist for a previously uploaded Worker version; used in lieu of providing a completion token. An explicit `assets` upload takes precedence over `keepAssets`.
  late final pulumi.Output<bool?> keepAssets;
  /// List of binding types to keep from previous_upload.
  late final pulumi.Output<List<String>?> keepBindings;
  /// The client most recently used to deploy this Worker.
  late final pulumi.Output<String> lastDeployedFrom;
  /// Limits to apply for this Worker.
  late final pulumi.Output<WorkersScriptLimits?> limits;
  /// Whether Logpush is turned on for the Worker.
  late final pulumi.Output<bool> logpush;
  /// Name of the uploaded file that contains the main module (e.g. the file exporting a `fetch` handler). Indicates a `module syntax` Worker.
  late final pulumi.Output<String?> mainModule;
  /// The tag of the Durable Object migration that was most recently applied for this Worker.
  late final pulumi.Output<String> migrationTag;
  /// Migrations to apply for Durable Objects associated with this Worker.
  late final pulumi.Output<WorkersScriptMigrations?> migrations;
  /// When the script was last modified.
  late final pulumi.Output<String> modifiedOn;
  /// Named exports, such as Durable Object class implementations and named entrypoints.
  late final pulumi.Output<List<WorkersScriptNamedHandler>> namedHandlers;
  /// Observability settings for the Worker.
  late final pulumi.Output<WorkersScriptObservability?> observability;
  /// The list of npm packages that were installed and used when this Worker was built.
  late final pulumi.Output<List<WorkersScriptPackageDependency>?> packageDependencies;
  /// Configuration for [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement). Specify mode='smart' for Smart Placement, or one of region/hostname/host.
  late final pulumi.Output<WorkersScriptPlacement> placement;
  /// Available values: "smart", "targeted".
  late final pulumi.Output<String> placementMode;
  /// Available values: "SUCCESS", "UNSUPPORTED*APPLICATION", "INSUFFICIENT*INVOCATIONS".
  late final pulumi.Output<String> placementStatus;
  /// Name of the script, used in URLs and route configuration.
  late final pulumi.Output<String> scriptName;
  late final pulumi.Output<int> startupTimeMs;
  /// List of Workers that will consume logs from the attached Worker.
  late final pulumi.Output<List<WorkersScriptTailConsumer>> tailConsumers;
  /// Usage model for the Worker invocations.
  /// Available values: "standard", "bundled", "unbound".
  late final pulumi.Output<String> usageModel;

  /// Creates a new [WorkersScript].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkersScript]. {@macro pulumi_index_workers_script_workers_script_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkersScript(
    String name, {
    WorkersScriptArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workersScript:WorkersScript',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    annotations = registerOutput<WorkersScriptAnnotations>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersScriptAnnotations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    assets = registerOutput<WorkersScriptAssets?>('assets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersScriptAssets.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bindings = registerOutput<List<WorkersScriptBinding>>('bindings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkersScriptBinding>(guardedValue, (value) => WorkersScriptBinding.fromMap((value as Map).cast<String, dynamic>())); });
    bodyPart = registerOutput<String?>('bodyPart');
    cacheOptions = registerOutput<WorkersScriptCacheOptions?>('cacheOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersScriptCacheOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    compatibilityDate = registerOutput<String>('compatibilityDate');
    compatibilityFlags = registerOutput<List<String>>('compatibilityFlags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    content = registerOutput<String?>('content');
    contentFile = registerOutput<String?>('contentFile');
    contentSha256 = registerOutput<String?>('contentSha256');
    contentType = registerOutput<String?>('contentType');
    createdOn = registerOutput<String>('createdOn');
    etag = registerOutput<String>('etag');
    exports = registerOutput<Map<String, WorkersScriptExports>?>('exports', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<WorkersScriptExports>(guardedValue, (value) => WorkersScriptExports.fromMap((value as Map).cast<String, dynamic>())); });
    handlers = registerOutput<List<String>>('handlers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    hasAssets = registerOutput<bool>('hasAssets');
    hasModules = registerOutput<bool>('hasModules');
    keepAssets = registerOutput<bool?>('keepAssets');
    keepBindings = registerOutput<List<String>?>('keepBindings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastDeployedFrom = registerOutput<String>('lastDeployedFrom');
    limits = registerOutput<WorkersScriptLimits?>('limits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersScriptLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logpush = registerOutput<bool>('logpush');
    mainModule = registerOutput<String?>('mainModule');
    migrationTag = registerOutput<String>('migrationTag');
    migrations = registerOutput<WorkersScriptMigrations?>('migrations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersScriptMigrations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    namedHandlers = registerOutput<List<WorkersScriptNamedHandler>>('namedHandlers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkersScriptNamedHandler>(guardedValue, (value) => WorkersScriptNamedHandler.fromMap((value as Map).cast<String, dynamic>())); });
    observability = registerOutput<WorkersScriptObservability?>('observability', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersScriptObservability.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    packageDependencies = registerOutput<List<WorkersScriptPackageDependency>?>('packageDependencies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkersScriptPackageDependency>(guardedValue, (value) => WorkersScriptPackageDependency.fromMap((value as Map).cast<String, dynamic>())); });
    placement = registerOutput<WorkersScriptPlacement>('placement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersScriptPlacement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    placementMode = registerOutput<String>('placementMode');
    placementStatus = registerOutput<String>('placementStatus');
    scriptName = registerOutput<String>('scriptName');
    startupTimeMs = registerOutput<int>('startupTimeMs');
    tailConsumers = registerOutput<List<WorkersScriptTailConsumer>>('tailConsumers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkersScriptTailConsumer>(guardedValue, (value) => WorkersScriptTailConsumer.fromMap((value as Map).cast<String, dynamic>())); });
    usageModel = registerOutput<String>('usageModel');
  }

  /// Gets an existing [WorkersScript] resource's state with the given [name] and [id].
  static WorkersScript get(
    String name,
    pulumi.Input<String> id, {
    WorkersScriptState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WorkersScript._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WorkersScript._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workersScript:WorkersScript',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    annotations = registerOutput<WorkersScriptAnnotations>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersScriptAnnotations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    assets = registerOutput<WorkersScriptAssets?>('assets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersScriptAssets.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bindings = registerOutput<List<WorkersScriptBinding>>('bindings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkersScriptBinding>(guardedValue, (value) => WorkersScriptBinding.fromMap((value as Map).cast<String, dynamic>())); });
    bodyPart = registerOutput<String?>('bodyPart');
    cacheOptions = registerOutput<WorkersScriptCacheOptions?>('cacheOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersScriptCacheOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    compatibilityDate = registerOutput<String>('compatibilityDate');
    compatibilityFlags = registerOutput<List<String>>('compatibilityFlags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    content = registerOutput<String?>('content');
    contentFile = registerOutput<String?>('contentFile');
    contentSha256 = registerOutput<String?>('contentSha256');
    contentType = registerOutput<String?>('contentType');
    createdOn = registerOutput<String>('createdOn');
    etag = registerOutput<String>('etag');
    exports = registerOutput<Map<String, WorkersScriptExports>?>('exports', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<WorkersScriptExports>(guardedValue, (value) => WorkersScriptExports.fromMap((value as Map).cast<String, dynamic>())); });
    handlers = registerOutput<List<String>>('handlers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    hasAssets = registerOutput<bool>('hasAssets');
    hasModules = registerOutput<bool>('hasModules');
    keepAssets = registerOutput<bool?>('keepAssets');
    keepBindings = registerOutput<List<String>?>('keepBindings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastDeployedFrom = registerOutput<String>('lastDeployedFrom');
    limits = registerOutput<WorkersScriptLimits?>('limits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersScriptLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logpush = registerOutput<bool>('logpush');
    mainModule = registerOutput<String?>('mainModule');
    migrationTag = registerOutput<String>('migrationTag');
    migrations = registerOutput<WorkersScriptMigrations?>('migrations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersScriptMigrations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    namedHandlers = registerOutput<List<WorkersScriptNamedHandler>>('namedHandlers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkersScriptNamedHandler>(guardedValue, (value) => WorkersScriptNamedHandler.fromMap((value as Map).cast<String, dynamic>())); });
    observability = registerOutput<WorkersScriptObservability?>('observability', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersScriptObservability.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    packageDependencies = registerOutput<List<WorkersScriptPackageDependency>?>('packageDependencies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkersScriptPackageDependency>(guardedValue, (value) => WorkersScriptPackageDependency.fromMap((value as Map).cast<String, dynamic>())); });
    placement = registerOutput<WorkersScriptPlacement>('placement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersScriptPlacement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    placementMode = registerOutput<String>('placementMode');
    placementStatus = registerOutput<String>('placementStatus');
    scriptName = registerOutput<String>('scriptName');
    startupTimeMs = registerOutput<int>('startupTimeMs');
    tailConsumers = registerOutput<List<WorkersScriptTailConsumer>>('tailConsumers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkersScriptTailConsumer>(guardedValue, (value) => WorkersScriptTailConsumer.fromMap((value as Map).cast<String, dynamic>())); });
    usageModel = registerOutput<String>('usageModel');
  }

  /// Creates a typed reference to an existing [WorkersScript] resource.
  WorkersScript.reference(String urn)
    : super(
        'cloudflare:index/workersScript:WorkersScript',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    annotations = registerOutput<WorkersScriptAnnotations>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersScriptAnnotations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    assets = registerOutput<WorkersScriptAssets?>('assets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersScriptAssets.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bindings = registerOutput<List<WorkersScriptBinding>>('bindings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkersScriptBinding>(guardedValue, (value) => WorkersScriptBinding.fromMap((value as Map).cast<String, dynamic>())); });
    bodyPart = registerOutput<String?>('bodyPart');
    cacheOptions = registerOutput<WorkersScriptCacheOptions?>('cacheOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersScriptCacheOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    compatibilityDate = registerOutput<String>('compatibilityDate');
    compatibilityFlags = registerOutput<List<String>>('compatibilityFlags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    content = registerOutput<String?>('content');
    contentFile = registerOutput<String?>('contentFile');
    contentSha256 = registerOutput<String?>('contentSha256');
    contentType = registerOutput<String?>('contentType');
    createdOn = registerOutput<String>('createdOn');
    etag = registerOutput<String>('etag');
    exports = registerOutput<Map<String, WorkersScriptExports>?>('exports', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<WorkersScriptExports>(guardedValue, (value) => WorkersScriptExports.fromMap((value as Map).cast<String, dynamic>())); });
    handlers = registerOutput<List<String>>('handlers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    hasAssets = registerOutput<bool>('hasAssets');
    hasModules = registerOutput<bool>('hasModules');
    keepAssets = registerOutput<bool?>('keepAssets');
    keepBindings = registerOutput<List<String>?>('keepBindings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastDeployedFrom = registerOutput<String>('lastDeployedFrom');
    limits = registerOutput<WorkersScriptLimits?>('limits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersScriptLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logpush = registerOutput<bool>('logpush');
    mainModule = registerOutput<String?>('mainModule');
    migrationTag = registerOutput<String>('migrationTag');
    migrations = registerOutput<WorkersScriptMigrations?>('migrations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersScriptMigrations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    namedHandlers = registerOutput<List<WorkersScriptNamedHandler>>('namedHandlers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkersScriptNamedHandler>(guardedValue, (value) => WorkersScriptNamedHandler.fromMap((value as Map).cast<String, dynamic>())); });
    observability = registerOutput<WorkersScriptObservability?>('observability', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersScriptObservability.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    packageDependencies = registerOutput<List<WorkersScriptPackageDependency>?>('packageDependencies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkersScriptPackageDependency>(guardedValue, (value) => WorkersScriptPackageDependency.fromMap((value as Map).cast<String, dynamic>())); });
    placement = registerOutput<WorkersScriptPlacement>('placement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersScriptPlacement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    placementMode = registerOutput<String>('placementMode');
    placementStatus = registerOutput<String>('placementStatus');
    scriptName = registerOutput<String>('scriptName');
    startupTimeMs = registerOutput<int>('startupTimeMs');
    tailConsumers = registerOutput<List<WorkersScriptTailConsumer>>('tailConsumers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkersScriptTailConsumer>(guardedValue, (value) => WorkersScriptTailConsumer.fromMap((value as Map).cast<String, dynamic>())); });
    usageModel = registerOutput<String>('usageModel');
  }
}
