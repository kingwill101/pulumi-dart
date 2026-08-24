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

/// {@template pulumi_index_worker_version_worker_version_args_doc}
/// The set of arguments for WorkerVersion.
/// {@endtemplate}
/// {@macro pulumi_index_worker_version_worker_version_args_doc}
class WorkerVersionArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
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
  /// Migrations for Durable Objects associated with the version. Migrations are applied when the version is deployed.
  final pulumi.Input<WorkerVersionMigrations?>? migrations;
  /// Code, sourcemaps, and other content used at runtime.
  ///
  /// This includes [`_headers`](https://developers.cloudflare.com/workers/static-assets/headers/#custom-headers) and
  /// [`_redirects`](https://developers.cloudflare.com/workers/static-assets/redirects/) files used to configure
  /// [Static Assets](https://developers.cloudflare.com/workers/static-assets/). `_headers` and `_redirects` files should be
  /// included as modules named `_headers` and `_redirects` with content type `text/plain`.
  final pulumi.Input<List<WorkerVersionModule>?>? modules;
  /// The list of npm packages that were installed and used when this Worker
  /// version was built.
  final pulumi.Input<List<WorkerVersionPackageDependency>?>? packageDependencies;
  /// Configuration for [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement). Specify mode='smart' for Smart Placement, or one of region/hostname/host.
  final pulumi.Input<WorkerVersionPlacement?>? placement;
  /// Usage model for the version.
  /// Available values: "standard", "bundled", "unbound".
  final pulumi.Input<String?>? usageModel;
  /// Identifier for the Worker, which can be ID or name.
  final pulumi.Input<String> workerId;

  /// Creates a new [WorkerVersionArgs].
  /// [accountId] Identifier.
  /// [annotations] Metadata about the version.
  /// [assets] Configuration for assets within a Worker.
  /// [bindings] List of bindings attached to a Worker. You can find more about bindings on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/#bindings.
  /// [cacheOptions] Global CacheW configuration for the Worker. When caching is on,
  /// [compatibilityDate] Date indicating targeted support in the Workers runtime. Backwards incompatible fixes to the runtime following this date will not affect this Worker.
  /// [compatibilityFlags] Flags that enable or disable certain features in the Workers runtime. Used to enable upcoming features or opt in or out of specific changes not included in a `compatibilityDate`.
  /// [containers] List of containers attached to a Worker. Containers can only be attached to Durable Object classes of this Worker script.
  /// [exports] Declarative exports for the version, including Durable Object
  /// [limits] Resource limits enforced at runtime.
  /// [mainModule] The name of the main module in the `modules` array (e.g. the name of the module that exports a `fetch` handler).
  /// [migrations] Migrations for Durable Objects associated with the version. Migrations are applied when the version is deployed.
  /// [modules] Code, sourcemaps, and other content used at runtime.
  /// [packageDependencies] The list of npm packages that were installed and used when this Worker
  /// [placement] Configuration for [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement). Specify mode='smart' for Smart Placement, or one of region/hostname/host.
  /// [usageModel] Usage model for the version.
  /// [workerId] Identifier for the Worker, which can be ID or name.
  const WorkerVersionArgs({
    required this.accountId,
    this.annotations,
    this.assets,
    this.bindings,
    this.cacheOptions,
    this.compatibilityDate,
    this.compatibilityFlags,
    this.containers,
    this.exports,
    this.limits,
    this.mainModule,
    this.migrations,
    this.modules,
    this.packageDependencies,
    this.placement,
    this.usageModel,
    required this.workerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'annotations': ?pulumi.Input.mapOptionalInputValue<WorkerVersionAnnotations, Map<String, dynamic>>(annotations, (value) => value.toMap()),
      'assets': ?pulumi.Input.mapOptionalInputValue<WorkerVersionAssets, Map<String, dynamic>>(assets, (value) => value.toMap()),
      'bindings': ?pulumi.Input.mapOptionalInputValue<List<WorkerVersionBinding>, List<Map<String, dynamic>>>(bindings, (value) => pulumi.Input.encodeList<WorkerVersionBinding, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cacheOptions': ?pulumi.Input.mapOptionalInputValue<WorkerVersionCacheOptions, Map<String, dynamic>>(cacheOptions, (value) => value.toMap()),
      'compatibilityDate': ?compatibilityDate,
      'compatibilityFlags': ?compatibilityFlags,
      'containers': ?pulumi.Input.mapOptionalInputValue<List<WorkerVersionContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<WorkerVersionContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'exports': ?pulumi.Input.mapOptionalInputValue<Map<String, WorkerVersionExports>, Map<String, Map<String, dynamic>>>(exports, (value) => pulumi.Input.encodeMapValues<WorkerVersionExports, Map<String, dynamic>>(value, (value) => value.toMap())),
      'limits': ?pulumi.Input.mapOptionalInputValue<WorkerVersionLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'mainModule': ?mainModule,
      'migrations': ?pulumi.Input.mapOptionalInputValue<WorkerVersionMigrations, Map<String, dynamic>>(migrations, (value) => value.toMap()),
      'modules': ?pulumi.Input.mapOptionalInputValue<List<WorkerVersionModule>, List<Map<String, dynamic>>>(modules, (value) => pulumi.Input.encodeList<WorkerVersionModule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'packageDependencies': ?pulumi.Input.mapOptionalInputValue<List<WorkerVersionPackageDependency>, List<Map<String, dynamic>>>(packageDependencies, (value) => pulumi.Input.encodeList<WorkerVersionPackageDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placement': ?pulumi.Input.mapOptionalInputValue<WorkerVersionPlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'usageModel': ?usageModel,
      'workerId': workerId,
    };
  }

  factory WorkerVersionArgs.fromMap(Map<String, dynamic> map) {
    return WorkerVersionArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerVersionAnnotations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      assets: (() { final guardedValue = map['assets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerVersionAssets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bindings: (() { final guardedValue = map['bindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerVersionBinding>(guardedValue, (value) => WorkerVersionBinding.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cacheOptions: (() { final guardedValue = map['cacheOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerVersionCacheOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      compatibilityDate: (() { final guardedValue = map['compatibilityDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compatibilityFlags: (() { final guardedValue = map['compatibilityFlags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerVersionContainer>(guardedValue, (value) => WorkerVersionContainer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      exports: (() { final guardedValue = map['exports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<WorkerVersionExports>(guardedValue, (value) => WorkerVersionExports.fromMap((value as Map).cast<String, dynamic>()))); })(),
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerVersionLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mainModule: (() { final guardedValue = map['mainModule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrations: (() { final guardedValue = map['migrations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerVersionMigrations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modules: (() { final guardedValue = map['modules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerVersionModule>(guardedValue, (value) => WorkerVersionModule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      packageDependencies: (() { final guardedValue = map['packageDependencies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerVersionPackageDependency>(guardedValue, (value) => WorkerVersionPackageDependency.fromMap((value as Map).cast<String, dynamic>()))); })(),
      placement: (() { final guardedValue = map['placement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerVersionPlacement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      usageModel: (() { final guardedValue = map['usageModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerId: pulumi.Input.fromValue(map['workerId'] as String),
    );
  }
}
