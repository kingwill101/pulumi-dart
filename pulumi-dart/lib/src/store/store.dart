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

// Placeholder for gRPC client interfaces
abstract class IResourceMonitorClient {}

abstract class IEngineClient {}

// Placeholder for ResourceModule and ResourcePackage
class ResourceModule {}

class ResourcePackage {}


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

class PulumiEnvKeys {
  static const String legacyApply = 'PULUMI_ENABLE_LEGACY_APPLY';
}

class WriteableOptions {
  String? project;
  String? stack;
  int? parallel;
  String? engineAddr;
  String? monitorAddr;
  bool? dryRun;
  bool? testModeEnabled;
  bool? queryMode;
  bool? legacyApply;
  bool? cacheDynamicProviders;
  String? organization;
  int maximumProcessListeners;
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

class Settings {
  WriteableOptions options;
  IResourceMonitorClient? monitor;
  IEngineClient? engine;
  Future<void> rpcDone;
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

class Store {
  Settings settings;
  Map<String, String> config;
  Stack? stackResource;
  Set<Future> leakCandidates;
  int logErrorCount;
  bool supportsSecrets;
  bool supportsResourceReferences;
  bool supportsOutputValues;
  bool supportsDeletedWith;
  bool supportsAliasSpecs;
  bool supportsTransforms;
  bool supportsInvokeTransforms;
  ICallbackServer? callbacks;
  Map<String, List<ResourcePackage>> resourcePackages;
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

AsyncLocalStorage<Store> asyncLocalStorage = AsyncLocalStorage<Store>();

Stack? getStackResource() {
  return getStore().stackResource;
}

Map<String, List<ResourcePackage>> getResourcePackages() {
  final store = getGlobalStore();
  if (store.resourcePackages.isEmpty) {
    store.resourcePackages = {};
  }
  return store.resourcePackages;
}

Map<String, List<ResourceModule>> getResourceModules() {
  final store = getGlobalStore();
  if (store.resourceModules.isEmpty) {
    store.resourceModules = {};
  }
  return store.resourceModules;
}

void setStackResource(Stack? newStackResource) {
  final localStore = getStore();
  _globalStore?.stackResource = newStackResource;
  localStore.stackResource = newStackResource;
}

Store? getLocalStore() {
  return asyncLocalStorage.getStore();
}

Store getStore() {
  final localStore = getLocalStore();
  if (localStore == null) {
    return getGlobalStore();
  }
  return localStore;
}

Store getGlobalStore() {
  _globalStore ??= LocalStore();
  return _globalStore!;
}

// Configuration management

const String configEnvKey = 'PULUMI_CONFIG';
const String configSecretKeysEnvKey = 'PULUMI_CONFIG_SECRET_KEYS';

Map<String, String> allConfig() {
  final config = parseConfig();
  return Map<String, String>.from(config);
}

void setAllConfig(Map<String, String> c, [List<String>? secretKeys]) {
  final obj = <String, String>{};
  for (final k in c.keys) {
    obj[cleanKey(k)] = c[k]!;
  }
  persistConfig(obj, secretKeys);
}

void setConfig(String k, String v) {
  final config = parseConfig();
  config[cleanKey(k)] = v;
  persistConfig(config, []);
}

String? getConfig(String k) {
  final config = parseConfig();
  return config[k];
}

bool isConfigSecret(String k) {
  final store = getStore();
  final envConfigSecretKeys = store.config[configSecretKeysEnvKey];
  if (envConfigSecretKeys != null) {
    try {
      final envConfigSecretArray =
          jsonDecode(envConfigSecretKeys) as List<dynamic>;
      return envConfigSecretArray.contains(k);
    } catch (e) {
      print('Error decoding secret keys: $e');
    }
  }
  return false;
}

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

void persistConfig(Map<String, String> config, [List<String>? secretKeys]) {
  final store = getStore();
  final serializedConfig = jsonEncode(config);
  final serializedSecretKeys =
      secretKeys != null ? jsonEncode(secretKeys) : '[]';
  store.config[configEnvKey] = serializedConfig;
  store.config[configSecretKeysEnvKey] = serializedSecretKeys;
}

String cleanKey(String key) {
  final idx = key.indexOf(':');
  if (idx > 0 && key.startsWith('config:', idx + 1)) {
    return '${key.substring(0, idx)}:${key.substring(idx + 1 + 'config:'.length)}';
  }
  return key;
}
