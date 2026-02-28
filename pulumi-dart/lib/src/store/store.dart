// Copyright 2016-2022, Pulumi Corporation.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';
import 'dart:io';
import 'dart:convert';

import 'package:pulumi/src/callback_server.dart';
import 'package:pulumi/src/store/async_store.dart';

import '../deployment/stack.dart';

/// Placeholder abstraction for the resource monitor client.
abstract class IResourceMonitorClient {}

/// Placeholder abstraction for the engine client.
abstract class IEngineClient {}

/// Placeholder for resource module registration metadata.
class ResourceModule {}

/// Placeholder for resource package registration metadata.
class ResourcePackage {}

/// Environment variable keys used by the NodeJS compatibility runtime layer.
class NodeEnvKeys {
  static const String project = 'PULUMI_NODEJS_PROJECT';
  static const String stack = 'PULUMI_NODEJS_STACK';
  static const String dryRun = 'PULUMI_NODEJS_DRY_RUN';
  static const String queryMode = 'PULUMI_NODEJS_QUERY_MODE';
  static const String parallel = 'PULUMI_NODEJS_PARALLEL';
  static const String monitorAddr = 'PULUMI_NODEJS_MONITOR';
  static const String engineAddr = 'PULUMI_NODEJS_ENGINE';
  static const String syncDir = 'PULUMI_NODEJS_SYNC';
  static const String cacheDynamicProviders =
      'PULUMI_NODEJS_CACHE_DYNAMIC_PROVIDERS';
  static const String organization = 'PULUMI_NODEJS_ORGANIZATION';
}

/// Environment variable keys used by Pulumi runtime toggles.
class PulumiEnvKeys {
  static const String legacyApply = 'PULUMI_ENABLE_LEGACY_APPLY';
}

/// Mutable runtime options that can be overridden in tests.
class WriteableOptions {
  /// Project name.
  String? project;

  /// Stack name.
  String? stack;

  /// Parallelism level for resource operations.
  int? parallel;

  /// Engine gRPC address.
  String? engineAddr;

  /// Monitor gRPC address.
  String? monitorAddr;

  /// Whether preview/dry-run mode is enabled.
  bool? dryRun;

  /// Whether test mode is enabled.
  bool? testModeEnabled;

  /// Whether query mode is enabled.
  bool? queryMode;

  /// Whether legacy apply behavior is enabled.
  bool? legacyApply;

  /// Whether dynamic provider caching is enabled.
  bool? cacheDynamicProviders;

  /// Pulumi organization.
  String? organization;

  /// Max process listeners used by compatibility layers.
  int maximumProcessListeners;

  /// Directory used for sync invoke request/response files.
  String? syncDir;

  WriteableOptions({
    this.project,
    this.stack,
    this.parallel,
    this.engineAddr,
    this.monitorAddr,
    this.dryRun,
    this.testModeEnabled,
    this.queryMode,
    this.legacyApply,
    this.cacheDynamicProviders,
    this.organization,
    required this.maximumProcessListeners,
    this.syncDir,
  });
}

/// {@template pulumi.store.settings.summary}
/// Runtime settings container.
/// {@endtemplate}
///
class Settings {
  /// Mutable runtime options.
  WriteableOptions options;

  /// Resource monitor client.
  IResourceMonitorClient? monitor;

  /// Engine client.
  IEngineClient? engine;

  /// Completion future for outstanding RPCs.
  Future<void> rpcDone;

  /// Feature support map keyed by feature name.
  Map<String, bool> featureSupport;

  Settings({
    required this.options,
    this.monitor,
    this.engine,
    required this.rpcDone,
    required this.featureSupport,
  });

  factory Settings.fromEnvironment() {
    return Settings(
      options: WriteableOptions(
        organization: Platform.environment[NodeEnvKeys.organization],
        project: Platform.environment[NodeEnvKeys.project] ?? 'project',
        stack: Platform.environment[NodeEnvKeys.stack] ?? 'stack',
        dryRun: Platform.environment[NodeEnvKeys.dryRun] == 'true',
        queryMode: Platform.environment[NodeEnvKeys.queryMode] == 'true',
        monitorAddr: Platform.environment[NodeEnvKeys.monitorAddr],
        engineAddr: Platform.environment[NodeEnvKeys.engineAddr],
        syncDir: Platform.environment[NodeEnvKeys.syncDir],
        cacheDynamicProviders:
            Platform.environment[NodeEnvKeys.cacheDynamicProviders] != 'false',
        legacyApply: Platform.environment[PulumiEnvKeys.legacyApply] == 'true',
        maximumProcessListeners: 30,
      ),
      rpcDone: Completer<void>().future,
      featureSupport: {},
    );
  }
}

/// {@template pulumi.store.summary}
/// Global runtime state store.
///
/// This structure mirrors NodeJS runtime store concepts and is primarily used
/// by compatibility/runtime plumbing.
/// {@endtemplate}
///
class Store {
  /// Runtime settings.
  Settings settings;

  /// Serialized config env payloads.
  Map<String, String> config;

  /// Current stack root resource.
  Stack? stackResource;

  /// Futures tracked for leak diagnostics.
  Set<Future> leakCandidates;

  /// Number of error logs sent.
  int logErrorCount;

  /// Feature support flags.
  bool supportsSecrets;
  bool supportsResourceReferences;
  bool supportsOutputValues;
  bool supportsDeletedWith;
  bool supportsAliasSpecs;
  bool supportsTransforms;
  bool supportsInvokeTransforms;

  /// Callback server instance.
  ICallbackServer? callbacks;

  /// Registered resource package metadata.
  Map<String, List<ResourcePackage>> resourcePackages;

  /// Registered resource module metadata.
  Map<String, List<ResourceModule>> resourceModules;

  Store({
    required this.settings,
    required this.config,
    this.stackResource,
    required this.leakCandidates,
    required this.logErrorCount,
    required this.supportsSecrets,
    required this.supportsResourceReferences,
    required this.supportsOutputValues,
    required this.supportsDeletedWith,
    required this.supportsAliasSpecs,
    required this.supportsTransforms,
    required this.supportsInvokeTransforms,
    this.callbacks,
    required this.resourcePackages,
    required this.resourceModules,
  });
}

/// Default in-process [Store] implementation.
class LocalStore implements Store {
  @override
  Settings settings = Settings.fromEnvironment();

  @override
  Map<String, String> config = {
    configEnvKey: Platform.environment[configEnvKey] ?? '',
    configSecretKeysEnvKey: Platform.environment[configSecretKeysEnvKey] ?? '',
  };

  @override
  Stack? stackResource;

  @override
  Set<Future> leakCandidates = {};

  @override
  int logErrorCount = 0;

  @override
  bool supportsSecrets = false;

  @override
  bool supportsResourceReferences = false;

  @override
  bool supportsOutputValues = false;

  @override
  bool supportsDeletedWith = false;

  @override
  bool supportsAliasSpecs = false;

  @override
  bool supportsTransforms = false;

  @override
  bool supportsInvokeTransforms = false;

  @override
  ICallbackServer? callbacks;

  @override
  Map<String, List<ResourcePackage>> resourcePackages = {};

  @override
  Map<String, List<ResourceModule>> resourceModules = {};
}

// Global state management
Store? _globalStore;

/// Async-local store scope used to isolate concurrent runtime contexts.
AsyncLocalStorage<Store> asyncLocalStorage = AsyncLocalStorage<Store>();

/// Returns the current stack resource, if set.
Stack? getStackResource() {
  return getStore().stackResource;
}

/// Returns registered resource package metadata.
Map<String, List<ResourcePackage>> getResourcePackages() {
  final store = getGlobalStore();
  if (store.resourcePackages.isEmpty) {
    store.resourcePackages = {};
  }
  return store.resourcePackages;
}

/// Returns registered resource module metadata.
Map<String, List<ResourceModule>> getResourceModules() {
  final store = getGlobalStore();
  if (store.resourceModules.isEmpty) {
    store.resourceModules = {};
  }
  return store.resourceModules;
}

/// Sets the current stack resource in global and local store contexts.
void setStackResource(Stack? newStackResource) {
  final localStore = getStore();
  _globalStore?.stackResource = newStackResource;
  localStore.stackResource = newStackResource;
}

/// Returns the async-local store for the current zone.
Store? getLocalStore() {
  return asyncLocalStorage.getStore();
}

/// Returns the active store, preferring the async-local store when present.
Store getStore() {
  final localStore = getLocalStore();
  if (localStore == null) {
    return getGlobalStore();
  }
  return localStore;
}

/// Returns the global fallback store singleton.
Store getGlobalStore() {
  _globalStore ??= LocalStore();
  return _globalStore!;
}

// Configuration management

/// Environment key containing serialized config values.
const String configEnvKey = 'PULUMI_CONFIG';

/// Environment key containing serialized config secret key names.
const String configSecretKeysEnvKey = 'PULUMI_CONFIG_SECRET_KEYS';

/// Returns all parsed config values.
Map<String, String> allConfig() {
  final config = parseConfig();
  return Map<String, String>.from(config);
}

/// Replaces all config values and optional secret key names.
void setAllConfig(Map<String, String> c, [List<String>? secretKeys]) {
  final obj = <String, String>{};
  for (final k in c.keys) {
    obj[cleanKey(k)] = c[k]!;
  }
  persistConfig(obj, secretKeys);
}

/// Sets a single config key/value entry.
void setConfig(String k, String v) {
  final config = parseConfig();
  config[cleanKey(k)] = v;
  persistConfig(config, []);
}

/// Gets a single config value by key.
String? getConfig(String k) {
  final config = parseConfig();
  return config[k];
}

/// Returns whether [k] is marked as a secret config value.
bool isConfigSecret(String k) {
  final store = getStore();
  final envConfigSecretKeys = store.config[configSecretKeysEnvKey];
  if (envConfigSecretKeys != null) {
    try {
      final envConfigSecretArray =
          jsonDecode(envConfigSecretKeys) as List<dynamic>;
      final cleanedSecretKeys = envConfigSecretArray
          .map((key) => cleanKey(key.toString()))
          .toSet();
      return cleanedSecretKeys.contains(cleanKey(k));
    } catch (e) {
      print('Error decoding secret keys: $e');
    }
  }
  return false;
}

/// Parses config JSON into a normalized key/value map.
Map<String, String> parseConfig() {
  final store = getStore();
  final parsedConfig = <String, String>{};
  final envConfig = store.config[configEnvKey];
  if (envConfig != null) {
    try {
      final envObject = jsonDecode(envConfig) as Map<String, dynamic>;
      for (final k in envObject.keys) {
        parsedConfig[cleanKey(k)] = envObject[k] as String;
      }
    } catch (e) {
      print('Error decoding config: $e');
    }
  }
  return parsedConfig;
}

/// Persists config and secret keys into the in-memory store.
void persistConfig(Map<String, String> config, [List<String>? secretKeys]) {
  final store = getStore();
  final serializedConfig = jsonEncode(config);
  final serializedSecretKeys = secretKeys != null
      ? jsonEncode(secretKeys.map(cleanKey).toList(growable: false))
      : '[]';
  store.config[configEnvKey] = serializedConfig;
  store.config[configSecretKeysEnvKey] = serializedSecretKeys;
}

/// Normalizes legacy `config:` key prefixes into canonical key format.
String cleanKey(String key) {
  final idx = key.indexOf(':');
  if (idx > 0 && key.startsWith('config:', idx + 1)) {
    return '${key.substring(0, idx)}:${key.substring(idx + 1 + 'config:'.length)}';
  }
  return key;
}
