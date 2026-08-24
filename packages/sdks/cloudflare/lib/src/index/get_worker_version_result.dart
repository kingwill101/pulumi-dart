// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_version_annotations.dart';
import 'get_worker_version_assets.dart';
import 'get_worker_version_binding.dart';
import 'get_worker_version_cache_options.dart';
import 'get_worker_version_container.dart';
import 'get_worker_version_exports.dart';
import 'get_worker_version_limits.dart';
import 'get_worker_version_migrations.dart';
import 'get_worker_version_module.dart';
import 'get_worker_version_package_dependency.dart';
import 'get_worker_version_placement.dart';

/// Result data returned by getWorkerVersion.
class GetWorkerVersionResult {
  /// Identifier.
  final String? accountId;
  /// Metadata about the version.
  final GetWorkerVersionAnnotations? annotations;
  /// Configuration for assets within a Worker.
  final GetWorkerVersionAssets? assets;
  final List<GetWorkerVersionBinding>? bindings;
  final GetWorkerVersionCacheOptions? cacheOptions;
  final String? compatibilityDate;
  final List<String>? compatibilityFlags;
  final List<GetWorkerVersionContainer>? containers;
  final String? createdOn;
  final Map<String, GetWorkerVersionExports>? exports;
  final String? id;
  /// Whether to include the `modules` property of the version in the response, which contains code and sourcemap content and may add several megabytes to the response size.
  /// Available values: "modules".
  final String? include;
  final GetWorkerVersionLimits? limits;
  final String? mainModule;
  final String? mainScriptBase64;
  final String? migrationTag;
  final GetWorkerVersionMigrations? migrations;
  final List<GetWorkerVersionModule>? modules;
  final int? number;
  final List<GetWorkerVersionPackageDependency>? packageDependencies;
  final GetWorkerVersionPlacement? placement;
  final String? source;
  final int? startupTimeMs;
  final List<String>? urls;
  final String? usageModel;
  /// Identifier for the version, which can be a UUID, a UUID prefix (minimum length 8), or the literal "latest" to operate on the most recently created version.
  final String? versionId;
  /// Identifier for the Worker, which can be ID or name.
  final String? workerId;

  /// Creates a new [GetWorkerVersionResult].
  /// [accountId] Identifier.
  /// [annotations] Metadata about the version.
  /// [assets] Configuration for assets within a Worker.
  /// [bindings] Optional.
  /// [cacheOptions] Optional.
  /// [compatibilityDate] Optional.
  /// [compatibilityFlags] Optional.
  /// [containers] Optional.
  /// [createdOn] Optional.
  /// [exports] Optional.
  /// [id] Optional.
  /// [include] Whether to include the `modules` property of the version in the response, which contains code and sourcemap content and may add several megabytes to the response size.
  /// [limits] Optional.
  /// [mainModule] Optional.
  /// [mainScriptBase64] Optional.
  /// [migrationTag] Optional.
  /// [migrations] Optional.
  /// [modules] Optional.
  /// [number] Optional.
  /// [packageDependencies] Optional.
  /// [placement] Optional.
  /// [source] Optional.
  /// [startupTimeMs] Optional.
  /// [urls] Optional.
  /// [usageModel] Optional.
  /// [versionId] Identifier for the version, which can be a UUID, a UUID prefix (minimum length 8), or the literal "latest" to operate on the most recently created version.
  /// [workerId] Identifier for the Worker, which can be ID or name.
  const GetWorkerVersionResult({
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
    this.id,
    this.include,
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
    this.versionId,
    this.workerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'annotations': ?annotations?.toMap(),
      'assets': ?assets?.toMap(),
      'bindings': ?(() { final guardedValue = bindings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkerVersionBinding, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'cacheOptions': ?cacheOptions?.toMap(),
      'compatibilityDate': ?compatibilityDate,
      'compatibilityFlags': ?compatibilityFlags,
      'containers': ?(() { final guardedValue = containers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkerVersionContainer, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createdOn': ?createdOn,
      'exports': ?(() { final guardedValue = exports; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<GetWorkerVersionExports, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'include': ?include,
      'limits': ?limits?.toMap(),
      'mainModule': ?mainModule,
      'mainScriptBase64': ?mainScriptBase64,
      'migrationTag': ?migrationTag,
      'migrations': ?migrations?.toMap(),
      'modules': ?(() { final guardedValue = modules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkerVersionModule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'number': ?number,
      'packageDependencies': ?(() { final guardedValue = packageDependencies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkerVersionPackageDependency, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'placement': ?placement?.toMap(),
      'source': ?source,
      'startupTimeMs': ?startupTimeMs,
      'urls': ?urls,
      'usageModel': ?usageModel,
      'versionId': ?versionId,
      'workerId': ?workerId,
    };
  }

  factory GetWorkerVersionResult.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return GetWorkerVersionAnnotations.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      assets: (() { final guardedValue = map['assets']; if (guardedValue == null) return null; return GetWorkerVersionAssets.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      bindings: (() { final guardedValue = map['bindings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkerVersionBinding>(guardedValue, (value) => GetWorkerVersionBinding.fromMap((value as Map).cast<String, dynamic>())); })(),
      cacheOptions: (() { final guardedValue = map['cacheOptions']; if (guardedValue == null) return null; return GetWorkerVersionCacheOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      compatibilityDate: (() { final guardedValue = map['compatibilityDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      compatibilityFlags: (() { final guardedValue = map['compatibilityFlags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkerVersionContainer>(guardedValue, (value) => GetWorkerVersionContainer.fromMap((value as Map).cast<String, dynamic>())); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      exports: (() { final guardedValue = map['exports']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<GetWorkerVersionExports>(guardedValue, (value) => GetWorkerVersionExports.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      include: (() { final guardedValue = map['include']; if (guardedValue == null) return null; return guardedValue as String; })(),
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return GetWorkerVersionLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      mainModule: (() { final guardedValue = map['mainModule']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mainScriptBase64: (() { final guardedValue = map['mainScriptBase64']; if (guardedValue == null) return null; return guardedValue as String; })(),
      migrationTag: (() { final guardedValue = map['migrationTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      migrations: (() { final guardedValue = map['migrations']; if (guardedValue == null) return null; return GetWorkerVersionMigrations.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      modules: (() { final guardedValue = map['modules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkerVersionModule>(guardedValue, (value) => GetWorkerVersionModule.fromMap((value as Map).cast<String, dynamic>())); })(),
      number: (() { final guardedValue = map['number']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      packageDependencies: (() { final guardedValue = map['packageDependencies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkerVersionPackageDependency>(guardedValue, (value) => GetWorkerVersionPackageDependency.fromMap((value as Map).cast<String, dynamic>())); })(),
      placement: (() { final guardedValue = map['placement']; if (guardedValue == null) return null; return GetWorkerVersionPlacement.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startupTimeMs: (() { final guardedValue = map['startupTimeMs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      urls: (() { final guardedValue = map['urls']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      usageModel: (() { final guardedValue = map['usageModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workerId: (() { final guardedValue = map['workerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
