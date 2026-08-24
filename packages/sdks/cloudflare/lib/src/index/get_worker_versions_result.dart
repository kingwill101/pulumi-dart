// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_versions_result_annotations.dart';
import 'get_worker_versions_result_assets.dart';
import 'get_worker_versions_result_binding.dart';
import 'get_worker_versions_result_cache_options.dart';
import 'get_worker_versions_result_container.dart';
import 'get_worker_versions_result_exports.dart';
import 'get_worker_versions_result_limits.dart';
import 'get_worker_versions_result_migrations.dart';
import 'get_worker_versions_result_module.dart';
import 'get_worker_versions_result_package_dependency.dart';
import 'get_worker_versions_result_placement.dart';

class GetWorkerVersionsResult {
  /// Metadata about the version.
  final pulumi.Input<GetWorkerVersionsResultAnnotations> annotations;
  /// Configuration for assets within a Worker.
  final pulumi.Input<GetWorkerVersionsResultAssets> assets;
  /// List of bindings attached to a Worker. You can find more about bindings on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/#bindings.
  final pulumi.Input<List<GetWorkerVersionsResultBinding>> bindings;
  /// Global CacheW configuration for the Worker. When caching is on,
  /// the platform provisions a `cloudflare.app` zone for the Worker.
  /// A `type: worker` entry in the `exports` map can override this
  /// value for a single entrypoint.
  final pulumi.Input<GetWorkerVersionsResultCacheOptions> cacheOptions;
  /// Date indicating targeted support in the Workers runtime. Backwards incompatible fixes to the runtime following this date will not affect this Worker.
  final pulumi.Input<String> compatibilityDate;
  /// Flags that enable or disable certain features in the Workers runtime. Used to enable upcoming features or opt in or out of specific changes not included in a `compatibilityDate`.
  final pulumi.Input<List<String>> compatibilityFlags;
  /// List of containers attached to a Worker. Containers can only be attached to Durable Object classes of this Worker script.
  final pulumi.Input<List<GetWorkerVersionsResultContainer>> containers;
  /// When the version was created.
  final pulumi.Input<String> createdOn;
  /// Declarative exports for the version, including Durable Object
  /// classes (with their `storage` backend) and named Worker
  /// entrypoints. On reads, tombstoned lifecycle entries are
  /// omitted, so only live exports (`created` and
  /// `expecting-transfer`) are returned. `exports` and `migrations`
  /// are mutually exclusive on upload.
  final pulumi.Input<Map<String, GetWorkerVersionsResultExports>> exports;
  /// Version identifier.
  final pulumi.Input<String> id;
  /// Resource limits enforced at runtime.
  final pulumi.Input<GetWorkerVersionsResultLimits> limits;
  /// The name of the main module in the `modules` array (e.g. the name of the module that exports a `fetch` handler).
  final pulumi.Input<String> mainModule;
  /// The base64-encoded main script content. This is only returned for service worker syntax workers (not ES modules).
  final pulumi.Input<String> mainScriptBase64;
  /// Durable Object migration tag. Set when the version is deployed. Omitted if the version has not been deployed or the Worker does not use Durable Objects.
  final pulumi.Input<String> migrationTag;
  /// Migrations for Durable Objects associated with the version. Migrations are applied when the version is deployed.
  final pulumi.Input<GetWorkerVersionsResultMigrations> migrations;
  /// Code, sourcemaps, and other content used at runtime.
  ///
  /// This includes [`_headers`](https://developers.cloudflare.com/workers/static-assets/headers/#custom-headers) and
  /// [`_redirects`](https://developers.cloudflare.com/workers/static-assets/redirects/) files used to configure
  /// [Static Assets](https://developers.cloudflare.com/workers/static-assets/). `_headers` and `_redirects` files should be
  /// included as modules named `_headers` and `_redirects` with content type `text/plain`.
  final pulumi.Input<List<GetWorkerVersionsResultModule>> modules;
  /// The integer version number, starting from one.
  final pulumi.Input<int> number;
  /// The list of npm packages that were installed and used when this Worker
  /// version was built.
  final pulumi.Input<List<GetWorkerVersionsResultPackageDependency>> packageDependencies;
  /// Configuration for [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement). Specify mode='smart' for Smart Placement, or one of region/hostname/host.
  final pulumi.Input<GetWorkerVersionsResultPlacement> placement;
  /// The client used to create the version.
  final pulumi.Input<String> source;
  /// Time in milliseconds spent on [Worker startup](https://developers.cloudflare.com/workers/platform/limits/#worker-startup-time).
  final pulumi.Input<int> startupTimeMs;
  /// All routable URLs that always point to this version. Does not include alias URLs, since aliases can be updated to point to a different version.
  final pulumi.Input<List<String>> urls;
  /// Usage model for the version.
  /// Available values: "standard", "bundled", "unbound".
  final pulumi.Input<String> usageModel;

  /// Creates a new [GetWorkerVersionsResult].
  /// [annotations] Metadata about the version.
  /// [assets] Configuration for assets within a Worker.
  /// [bindings] List of bindings attached to a Worker. You can find more about bindings on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/#bindings.
  /// [cacheOptions] Global CacheW configuration for the Worker. When caching is on,
  /// [compatibilityDate] Date indicating targeted support in the Workers runtime. Backwards incompatible fixes to the runtime following this date will not affect this Worker.
  /// [compatibilityFlags] Flags that enable or disable certain features in the Workers runtime. Used to enable upcoming features or opt in or out of specific changes not included in a `compatibilityDate`.
  /// [containers] List of containers attached to a Worker. Containers can only be attached to Durable Object classes of this Worker script.
  /// [createdOn] When the version was created.
  /// [exports] Declarative exports for the version, including Durable Object
  /// [id] Version identifier.
  /// [limits] Resource limits enforced at runtime.
  /// [mainModule] The name of the main module in the `modules` array (e.g. the name of the module that exports a `fetch` handler).
  /// [mainScriptBase64] The base64-encoded main script content. This is only returned for service worker syntax workers (not ES modules).
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
  const GetWorkerVersionsResult({
    required this.annotations,
    required this.assets,
    required this.bindings,
    required this.cacheOptions,
    required this.compatibilityDate,
    required this.compatibilityFlags,
    required this.containers,
    required this.createdOn,
    required this.exports,
    required this.id,
    required this.limits,
    required this.mainModule,
    required this.mainScriptBase64,
    required this.migrationTag,
    required this.migrations,
    required this.modules,
    required this.number,
    required this.packageDependencies,
    required this.placement,
    required this.source,
    required this.startupTimeMs,
    required this.urls,
    required this.usageModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': pulumi.Input.mapInputValue<GetWorkerVersionsResultAnnotations, Map<String, dynamic>>(annotations, (value) => value.toMap()),
      'assets': pulumi.Input.mapInputValue<GetWorkerVersionsResultAssets, Map<String, dynamic>>(assets, (value) => value.toMap()),
      'bindings': pulumi.Input.mapInputValue<List<GetWorkerVersionsResultBinding>, List<Map<String, dynamic>>>(bindings, (value) => pulumi.Input.encodeList<GetWorkerVersionsResultBinding, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cacheOptions': pulumi.Input.mapInputValue<GetWorkerVersionsResultCacheOptions, Map<String, dynamic>>(cacheOptions, (value) => value.toMap()),
      'compatibilityDate': compatibilityDate,
      'compatibilityFlags': compatibilityFlags,
      'containers': pulumi.Input.mapInputValue<List<GetWorkerVersionsResultContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<GetWorkerVersionsResultContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdOn': createdOn,
      'exports': pulumi.Input.mapInputValue<Map<String, GetWorkerVersionsResultExports>, Map<String, Map<String, dynamic>>>(exports, (value) => pulumi.Input.encodeMapValues<GetWorkerVersionsResultExports, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'limits': pulumi.Input.mapInputValue<GetWorkerVersionsResultLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'mainModule': mainModule,
      'mainScriptBase64': mainScriptBase64,
      'migrationTag': migrationTag,
      'migrations': pulumi.Input.mapInputValue<GetWorkerVersionsResultMigrations, Map<String, dynamic>>(migrations, (value) => value.toMap()),
      'modules': pulumi.Input.mapInputValue<List<GetWorkerVersionsResultModule>, List<Map<String, dynamic>>>(modules, (value) => pulumi.Input.encodeList<GetWorkerVersionsResultModule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'number': number,
      'packageDependencies': pulumi.Input.mapInputValue<List<GetWorkerVersionsResultPackageDependency>, List<Map<String, dynamic>>>(packageDependencies, (value) => pulumi.Input.encodeList<GetWorkerVersionsResultPackageDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placement': pulumi.Input.mapInputValue<GetWorkerVersionsResultPlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'source': source,
      'startupTimeMs': startupTimeMs,
      'urls': urls,
      'usageModel': usageModel,
    };
  }

  factory GetWorkerVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionsResult(
      annotations: pulumi.Input.fromValue(GetWorkerVersionsResultAnnotations.fromMap((map['annotations']! as Map).cast<String, dynamic>())),
      assets: pulumi.Input.fromValue(GetWorkerVersionsResultAssets.fromMap((map['assets']! as Map).cast<String, dynamic>())),
      bindings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerVersionsResultBinding>(map['bindings']!, (value) => GetWorkerVersionsResultBinding.fromMap((value as Map).cast<String, dynamic>()))),
      cacheOptions: pulumi.Input.fromValue(GetWorkerVersionsResultCacheOptions.fromMap((map['cacheOptions']! as Map).cast<String, dynamic>())),
      compatibilityDate: pulumi.Input.fromValue(map['compatibilityDate'] as String),
      compatibilityFlags: pulumi.Input.fromValue((map['compatibilityFlags'] as List).cast<String>()),
      containers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerVersionsResultContainer>(map['containers']!, (value) => GetWorkerVersionsResultContainer.fromMap((value as Map).cast<String, dynamic>()))),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      exports: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetWorkerVersionsResultExports>(map['exports']!, (value) => GetWorkerVersionsResultExports.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      limits: pulumi.Input.fromValue(GetWorkerVersionsResultLimits.fromMap((map['limits']! as Map).cast<String, dynamic>())),
      mainModule: pulumi.Input.fromValue(map['mainModule'] as String),
      mainScriptBase64: pulumi.Input.fromValue(map['mainScriptBase64'] as String),
      migrationTag: pulumi.Input.fromValue(map['migrationTag'] as String),
      migrations: pulumi.Input.fromValue(GetWorkerVersionsResultMigrations.fromMap((map['migrations']! as Map).cast<String, dynamic>())),
      modules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerVersionsResultModule>(map['modules']!, (value) => GetWorkerVersionsResultModule.fromMap((value as Map).cast<String, dynamic>()))),
      number: pulumi.Input.fromValue((map['number'] as num).toInt()),
      packageDependencies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerVersionsResultPackageDependency>(map['packageDependencies']!, (value) => GetWorkerVersionsResultPackageDependency.fromMap((value as Map).cast<String, dynamic>()))),
      placement: pulumi.Input.fromValue(GetWorkerVersionsResultPlacement.fromMap((map['placement']! as Map).cast<String, dynamic>())),
      source: pulumi.Input.fromValue(map['source'] as String),
      startupTimeMs: pulumi.Input.fromValue((map['startupTimeMs'] as num).toInt()),
      urls: pulumi.Input.fromValue((map['urls'] as List).cast<String>()),
      usageModel: pulumi.Input.fromValue(map['usageModel'] as String),
    );
  }
}
