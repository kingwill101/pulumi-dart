// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_version_annotations.dart';
import 'worker_version_assets.dart';
import 'worker_version_binding.dart';
import 'worker_version_cache_options.dart';
import 'worker_version_container.dart';
import 'worker_version_exports.dart';
import 'worker_version_limits.dart';
import 'worker_version_migrations.dart';
import 'worker_version_module.dart';
import 'worker_version_package_dependency.dart';
import 'worker_version_placement.dart';

/// Input properties used for looking up and filtering WorkerVersion resources.
class WorkerVersionState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Metadata about the version.
  final pulumi.Input<WorkerVersionAnnotations?>? annotations;
  /// Configuration for assets within a Worker.
  final pulumi.Input<WorkerVersionAssets?>? assets;
  /// List of bindings attached to a Worker. You can find more about bindings on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/#bindings.
  final pulumi.Input<List<WorkerVersionBinding>?>? bindings;
  /// Global CacheW configuration for the Worker. When caching is on,
  /// the platform provisions a `cloudflare.app` zone for the Worker.
  /// A `type: worker` entry in the `exports` map can override this
  /// value for a single entrypoint.
  final pulumi.Input<WorkerVersionCacheOptions?>? cacheOptions;
  /// Date indicating targeted support in the Workers runtime. Backwards incompatible fixes to the runtime following this date will not affect this Worker.
  final pulumi.Input<String?>? compatibilityDate;
  /// Flags that enable or disable certain features in the Workers runtime. Used to enable upcoming features or opt in or out of specific changes not included in a `compatibilityDate`.
  final pulumi.Input<List<String>?>? compatibilityFlags;
  /// List of containers attached to a Worker. Containers can only be attached to Durable Object classes of this Worker script.
  final pulumi.Input<List<WorkerVersionContainer>?>? containers;
  /// When the version was created.
  final pulumi.Input<String?>? createdOn;
  /// Declarative exports for the version, including Durable Object
  /// classes (with their `storage` backend) and named Worker
  /// entrypoints. On reads, tombstoned lifecycle entries are
  /// omitted, so only live exports (`created` and
  /// `expecting-transfer`) are returned. `exports` and `migrations`
  /// are mutually exclusive on upload.
  final pulumi.Input<Map<String, WorkerVersionExports>?>? exports;
  /// Resource limits enforced at runtime.
  final pulumi.Input<WorkerVersionLimits?>? limits;
  /// The name of the main module in the `modules` array (e.g. the name of the module that exports a `fetch` handler).
  final pulumi.Input<String?>? mainModule;
  /// The base64-encoded main script content. This is only returned for service worker syntax workers (not ES modules). Used when importing existing workers that use the older service worker syntax.
  final pulumi.Input<String?>? mainScriptBase64;
  /// Durable Object migration tag. Set when the version is deployed. Omitted if the version has not been deployed or the Worker does not use Durable Objects.
  final pulumi.Input<String?>? migrationTag;
  /// Migrations for Durable Objects associated with the version. Migrations are applied when the version is deployed.
  final pulumi.Input<WorkerVersionMigrations?>? migrations;
  /// Code, sourcemaps, and other content used at runtime.
  ///
  /// This includes [`_headers`](https://developers.cloudflare.com/workers/static-assets/headers/#custom-headers) and
  /// [`_redirects`](https://developers.cloudflare.com/workers/static-assets/redirects/) files used to configure
  /// [Static Assets](https://developers.cloudflare.com/workers/static-assets/). `_headers` and `_redirects` files should be
  /// included as modules named `_headers` and `_redirects` with content type `text/plain`.
  final pulumi.Input<List<WorkerVersionModule>?>? modules;
  /// The integer version number, starting from one.
  final pulumi.Input<int?>? number;
  /// The list of npm packages that were installed and used when this Worker
  /// version was built.
  final pulumi.Input<List<WorkerVersionPackageDependency>?>? packageDependencies;
  /// Configuration for [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement). Specify mode='smart' for Smart Placement, or one of region/hostname/host.
  final pulumi.Input<WorkerVersionPlacement?>? placement;
  /// The client used to create the version.
  final pulumi.Input<String?>? source;
  /// Time in milliseconds spent on [Worker startup](https://developers.cloudflare.com/workers/platform/limits/#worker-startup-time).
  final pulumi.Input<int?>? startupTimeMs;
  /// All routable URLs that always point to this version. Does not include alias URLs, since aliases can be updated to point to a different version.
  final pulumi.Input<List<String>?>? urls;
  /// Usage model for the version.
  /// Available values: "standard", "bundled", "unbound".
  final pulumi.Input<String?>? usageModel;
  /// Identifier for the Worker, which can be ID or name.
  final pulumi.Input<String?>? workerId;

  /// Creates a new [WorkerVersionState].
  /// [accountId] Identifier.
  /// [annotations] Metadata about the version.
  /// [assets] Configuration for assets within a Worker.
  /// [bindings] List of bindings attached to a Worker. You can find more about bindings on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/#bindings.
  /// [cacheOptions] Global CacheW configuration for the Worker. When caching is on,
  /// [compatibilityDate] Date indicating targeted support in the Workers runtime. Backwards incompatible fixes to the runtime following this date will not affect this Worker.
  /// [compatibilityFlags] Flags that enable or disable certain features in the Workers runtime. Used to enable upcoming features or opt in or out of specific changes not included in a `compatibilityDate`.
  /// [containers] List of containers attached to a Worker. Containers can only be attached to Durable Object classes of this Worker script.
  /// [createdOn] When the version was created.
  /// [exports] Declarative exports for the version, including Durable Object
  /// [limits] Resource limits enforced at runtime.
  /// [mainModule] The name of the main module in the `modules` array (e.g. the name of the module that exports a `fetch` handler).
  /// [mainScriptBase64] The base64-encoded main script content. This is only returned for service worker syntax workers (not ES modules). Used when importing existing workers that use the older service worker syntax.
  /// [migrationTag] Durable Object migration tag. Set when the version is deployed. Omitted if the version has not been deployed or the Worker does not use Durable Objects.
  /// [migrations] Migrations for Durable Objects associated with the version. Migrations are applied when the version is deployed.
  /// [modules] Code, sourcemaps, and other content used at runtime.
  /// [number] The integer version number, starting from one.
  /// [packageDependencies] The list of npm packages that were installed and used when this Worker
  /// [placement] Configuration for [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement). Specify mode='smart' for Smart Placement, or one of region/hostname/host.
  /// [source] The client used to create the version.
  /// [startupTimeMs] Time in milliseconds spent on [Worker startup](https://developers.cloudflare.com/workers/platform/limits/#worker-startup-time).
  /// [urls] All routable URLs that always point to this version. Does not include alias URLs, since aliases can be updated to point to a different version.
  /// [usageModel] Usage model for the version.
  /// [workerId] Identifier for the Worker, which can be ID or name.
  const WorkerVersionState({
    this.accountId,
    this.annotations,
    this.assets,
    this.bindings,
    this.cacheOptions,
    this.compatibilityDate,
    this.compatibilityFlags,
    this.containers,
    this.createdOn,
    this.exports,
    this.limits,
    this.mainModule,
    this.mainScriptBase64,
    this.migrationTag,
    this.migrations,
    this.modules,
    this.number,
    this.packageDependencies,
    this.placement,
    this.source,
    this.startupTimeMs,
    this.urls,
    this.usageModel,
    this.workerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'annotations': ?pulumi.Input.mapOptionalInputValue<WorkerVersionAnnotations, Map<String, dynamic>>(annotations, (value) => value.toMap()),
      'assets': ?pulumi.Input.mapOptionalInputValue<WorkerVersionAssets, Map<String, dynamic>>(assets, (value) => value.toMap()),
      'bindings': ?pulumi.Input.mapOptionalInputValue<List<WorkerVersionBinding>, List<Map<String, dynamic>>>(bindings, (value) => pulumi.Input.encodeList<WorkerVersionBinding, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cacheOptions': ?pulumi.Input.mapOptionalInputValue<WorkerVersionCacheOptions, Map<String, dynamic>>(cacheOptions, (value) => value.toMap()),
      'compatibilityDate': ?compatibilityDate,
      'compatibilityFlags': ?compatibilityFlags,
      'containers': ?pulumi.Input.mapOptionalInputValue<List<WorkerVersionContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<WorkerVersionContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdOn': ?createdOn,
      'exports': ?pulumi.Input.mapOptionalInputValue<Map<String, WorkerVersionExports>, Map<String, Map<String, dynamic>>>(exports, (value) => pulumi.Input.encodeMapValues<WorkerVersionExports, Map<String, dynamic>>(value, (value) => value.toMap())),
      'limits': ?pulumi.Input.mapOptionalInputValue<WorkerVersionLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'mainModule': ?mainModule,
      'mainScriptBase64': ?mainScriptBase64,
      'migrationTag': ?migrationTag,
      'migrations': ?pulumi.Input.mapOptionalInputValue<WorkerVersionMigrations, Map<String, dynamic>>(migrations, (value) => value.toMap()),
      'modules': ?pulumi.Input.mapOptionalInputValue<List<WorkerVersionModule>, List<Map<String, dynamic>>>(modules, (value) => pulumi.Input.encodeList<WorkerVersionModule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'number': ?number,
      'packageDependencies': ?pulumi.Input.mapOptionalInputValue<List<WorkerVersionPackageDependency>, List<Map<String, dynamic>>>(packageDependencies, (value) => pulumi.Input.encodeList<WorkerVersionPackageDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placement': ?pulumi.Input.mapOptionalInputValue<WorkerVersionPlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'source': ?source,
      'startupTimeMs': ?startupTimeMs,
      'urls': ?urls,
      'usageModel': ?usageModel,
      'workerId': ?workerId,
    };
  }

  factory WorkerVersionState.fromMap(Map<String, dynamic> map) {
    return WorkerVersionState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerVersionAnnotations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      assets: (() { final guardedValue = map['assets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerVersionAssets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bindings: (() { final guardedValue = map['bindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerVersionBinding>(guardedValue, (value) => WorkerVersionBinding.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cacheOptions: (() { final guardedValue = map['cacheOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerVersionCacheOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      compatibilityDate: (() { final guardedValue = map['compatibilityDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compatibilityFlags: (() { final guardedValue = map['compatibilityFlags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerVersionContainer>(guardedValue, (value) => WorkerVersionContainer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exports: (() { final guardedValue = map['exports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<WorkerVersionExports>(guardedValue, (value) => WorkerVersionExports.fromMap((value as Map).cast<String, dynamic>()))); })(),
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerVersionLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mainModule: (() { final guardedValue = map['mainModule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mainScriptBase64: (() { final guardedValue = map['mainScriptBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrationTag: (() { final guardedValue = map['migrationTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrations: (() { final guardedValue = map['migrations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerVersionMigrations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modules: (() { final guardedValue = map['modules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerVersionModule>(guardedValue, (value) => WorkerVersionModule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      number: (() { final guardedValue = map['number']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      packageDependencies: (() { final guardedValue = map['packageDependencies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerVersionPackageDependency>(guardedValue, (value) => WorkerVersionPackageDependency.fromMap((value as Map).cast<String, dynamic>()))); })(),
      placement: (() { final guardedValue = map['placement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerVersionPlacement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startupTimeMs: (() { final guardedValue = map['startupTimeMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      urls: (() { final guardedValue = map['urls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      usageModel: (() { final guardedValue = map['usageModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerId: (() { final guardedValue = map['workerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
