import 'dart:async';
import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/src/callback_server.dart';
import 'package:pulumi/src/config.dart';
import 'package:pulumi/src/deployment/call.dart';
import 'package:pulumi/src/deployment/invoke.dart';
import 'package:pulumi/src/deployment/models.dart' as models;
import 'package:pulumi/src/input.dart';
import 'package:pulumi/src/monitor.dart';
import 'package:pulumi/src/resource/provider_resource.dart';
import 'package:pulumi/src/resource/resource_hooks.dart';
import 'package:pulumi/src/serializer.dart';
import 'package:pulumi/src/struct_converter.dart';

import '../engine.dart';
import '../engine_logger.dart';
import '../output.dart';
import '../pulumirpc/pulumi/resource.pbgrpc.dart';
import '../resource/resource.dart';
import '../resource/resource_options.dart';
import '../resource/custom_resource.dart';
import 'stack.dart';

abstract class Deployment {
  String get organizationName;

  String get projectName;

  String get stackName;

  bool get isDryRun;

  EngineLogger get logger;

  Stack get stack;

  void setStack(Stack stack);

  String? getConfig(String key);

  bool isConfigSecret(String key);

  Future<void> readOrRegisterResource({
    required Resource resource,
    required bool remote,
    required Resource Function(String) newDependency,
    required Inputs args,
    required ResourceOptions opts,
    models.RegisterPackageRequest? registerPackageRequest,
  });

  void registerResourceOperation(Future<void> operation);

  Future<void> registerResourceOutputs(
    Resource resource,
    Output<Map<String, dynamic>> outputs,
  );

  Future<void> registerOutputs();

  Input<String> collapseAliasToUrn(
    dynamic alias,
    String name,
    String type,
    Resource? parent,
  );
}

class DeploymentImpl extends Deployment
    with ConfigMixin, InvokeMixin, CallMixin {
  static Deployment? _instance;
  late final EngineLogger _logger;
  final String _organizationName;
  final String _projectName;
  final bool _isDryRun;
  final Map<String, Resource> _resources = {};
  final Map<String, Output<dynamic>> _outputs = {};
  final List<Exception> _swallowedExceptions = [];
  final List<Future<void>> _resourceOperations = [];
  ICallbackServer? _callbacks;
  final String _stackName;

  Stack? _stack;
  late final Output<String> _stackUrn;

  @override
  final Monitor monitor;
  final Engine engine;
  static const String rootPulumiStackTypeName = 'pulumi:pulumi:Stack';

  DeploymentImpl._({
    required String organizationName,
    required String projectName,
    required String stackName,
    required bool isDryRun,
    required this.monitor,
    required this.engine,
  }) : _organizationName = organizationName,
       _projectName = projectName,
       _stackName = stackName,
       _isDryRun = isDryRun {
    _logger = EngineLogger(this, engine);
    _stackUrn = Output.create(
      'urn:pulumi:$stackName::$projectName::pulumi:pulumi:Stack::$projectName-$stackName',
    );
    initializeConfig();
  }

  static Deployment get instance {
    if (_instance == null) {
      throw StateError('Deployment.instance accessed before Run was called.');
    }
    return _instance!;
  }

  // For testing purposes only
  @visibleForTesting
  static void setInstance(Deployment deployment) {
    _instance = deployment;
  }

  // For testing purposes only
  @visibleForTesting
  static void clearInstance() {
    _instance = null;
  }

  static void setTestInstance(Deployment testInstance) {
    _instance = testInstance;
  }

  @override
  String get organizationName => _organizationName;

  @override
  String get projectName => _projectName;

  @override
  String get stackName => _stackName;

  @override
  bool get isDryRun => _isDryRun;

  @override
  EngineLogger get logger => _logger;

  @override
  Stack get stack => _stack ?? (throw StateError('Stack not set'));

  @override
  void setStack(Stack stack) {
    if (_stack != null) {
      throw StateError('Stack already set');
    }
    _stack = stack;
  }

  List<Exception> get swallowedExceptions =>
      List.unmodifiable(_swallowedExceptions);

  static Future<int> run(
    Function() func, {
    String? organizationName,
    String? projectName,
    String? stackName,
    bool? isDryRun,
    Monitor? monitor,
    Engine? engine,
  }) async {
    final monitorAddr = Platform.environment['PULUMI_MONITOR'];
    final engineAddr = Platform.environment['PULUMI_ENGINE'];
    projectName ??= Platform.environment['PULUMI_PROJECT'];
    organizationName ??= Platform.environment['PULUMI_ORGANIZATION'];
    stackName ??= Platform.environment['PULUMI_STACK'];
    final dryRun = Platform.environment['PULUMI_DRY_RUN'];

    if (monitorAddr == null ||
        engineAddr == null ||
        projectName == null ||
        stackName == null ||
        dryRun == null) {
      throw StateError(
        'Missing required environment variables for Pulumi deployment',
      );
    }

    final monitorEndpoint = _GrpcEndpoint.parse(monitorAddr);
    final engineEndpoint = _GrpcEndpoint.parse(engineAddr);

    final monitorChannel = ClientChannel(
      monitorEndpoint.host,
      port: monitorEndpoint.port,
      options: ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    final engineChannel = ClientChannel(
      engineEndpoint.host,
      port: engineEndpoint.port,
      options: ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    monitor ??= Monitor(monitorChannel);
    engine ??= Engine(engineChannel);

    _instance = DeploymentImpl._(
      organizationName: organizationName ?? 'organization',
      projectName: projectName,
      stackName: stackName,
      isDryRun: isDryRun ?? (dryRun.toLowerCase() == 'true'),
      monitor: monitor,
      engine: engine,
    );

    try {
      func();
      await _instance!.registerOutputs();
      await _instance!.logger.waitForPendingLogs();
      return _instance!.logger.loggedErrors ? 1 : 0;
    } catch (e, stackTrace) {
      await _instance!.logger.error(
        'An error occurred during deployment: $e\n$stackTrace',
      );
      return 1;
    } finally {
      if (_instance is DeploymentImpl) {
        (_instance as DeploymentImpl)._callbacks?.shutdown();
      }
      _instance = null;
      await monitorChannel.shutdown();
      await engineChannel.shutdown();
    }
  }

  @override
  Future<void> readOrRegisterResource({
    required Resource resource,
    required bool remote,
    required Resource Function(String) newDependency,
    required Inputs args,
    required ResourceOptions opts,
    models.RegisterPackageRequest? registerPackageRequest,
  }) async {
    final serializedProps = <String, dynamic>{};
    final propertyDependencies =
        <String, RegisterResourceRequest_PropertyDependencies>{};

    for (final entry in args.entries) {
      final serializer = Serializer();
      final serialized = await serializer.serializeAsync(
        'resource:${resource.getResourceName()}.${entry.key}',
        entry.value,
        true,
      );
      if (serialized == null) {
        continue;
      }

      serializedProps[entry.key] = serialized;

      final urns = await Serializer.getAllTransitivelyReferencedResourceUrns(
        serializer.dependentResources,
      );
      if (urns.isNotEmpty) {
        final sortedUrns = urns.toList()..sort();
        propertyDependencies[entry.key] =
            RegisterResourceRequest_PropertyDependencies()
              ..urns.addAll(sortedUrns);
      }
    }

    final serializedStruct = await StructConverter.toStruct(serializedProps);
    final request = RegisterResourceRequest()
      ..type = resource.getResourceType()
      ..name = resource.getResourceName()
      ..custom = resource.isCustom
      ..remote = remote
      ..object = serializedStruct
      ..protect = opts.protect ?? false
      ..acceptSecrets = true
      ..acceptResources = true
      ..supportsPartialValues = true;

    request.propertyDependencies.addAll(propertyDependencies);

    final preparedHooks = await _prepareHooks(opts.hooks);
    if (preparedHooks != null) {
      request.hooks = preparedHooks;
    }

    if (opts.parent != null) {
      request.parent = await opts.parent!.urn.getValue();
    }

    if (opts.dependsOn != null && opts.dependsOn!.isNotEmpty) {
      final deps = <String>[];
      for (final dep in opts.dependsOn!) {
        deps.add(await dep.urn.getValue());
      }
      request.dependencies.addAll(deps);
    }

    if (opts.provider != null) {
      final providerRef = await ProviderResource.register(opts.provider) ?? '';
      if (resource.isCustom) {
        request.provider = providerRef;
      } else {
        request.providers[opts.provider!.package] = providerRef;
      }
    }

    if (opts.providers.isNotEmpty) {
      for (final provider in opts.providers) {
        request.providers[provider.package] =
            await ProviderResource.register(provider) ?? '';
      }
    }

    if (opts.aliases != null && opts.aliases!.isNotEmpty) {
      final aliases = await Future.wait(
        opts.aliases!.map((a) => a.serializeAsync()),
      );
      request.aliases.addAll(aliases);
      request.aliasSpecs = true;
    }

    if (opts.version != null) {
      request.version = opts.version!;
    }
    if (opts.ignoreChanges != null && opts.ignoreChanges!.isNotEmpty) {
      request.ignoreChanges.addAll(opts.ignoreChanges!);
    }
    if (opts.pluginDownloadURL != null) {
      request.pluginDownloadURL = opts.pluginDownloadURL!;
    }
    if (opts.deleteBeforeReplace != null) {
      request.deleteBeforeReplace = opts.deleteBeforeReplace!;
      request.deleteBeforeReplaceDefined = true;
    }
    if (opts.customTimeouts != null) {
      final customTimeouts = RegisterResourceRequest_CustomTimeouts();
      if (opts.customTimeouts!.create != null) {
        customTimeouts.create_1 = opts.customTimeouts!.create!;
      }
      if (opts.customTimeouts!.update != null) {
        customTimeouts.update = opts.customTimeouts!.update!;
      }
      if (opts.customTimeouts!.delete != null) {
        customTimeouts.delete = opts.customTimeouts!.delete!;
      }
      request.customTimeouts = customTimeouts;
    }
    if (opts.retainOnDelete != null) {
      request.retainOnDelete = opts.retainOnDelete!;
    }
    if (opts.deletedWith != null) {
      request.deletedWith = await opts.deletedWith!.urn.getValue();
    }
    if (opts.additionalSecretOutputs != null &&
        opts.additionalSecretOutputs!.isNotEmpty) {
      request.additionalSecretOutputs.addAll(opts.additionalSecretOutputs!);
    }
    final replacementTrigger =
        opts.replacementTrigger ?? opts.replacementOptions;
    if (replacementTrigger != null) {
      final serializer = Serializer();
      final serialized = await serializer.serializeAsync(
        'resource:${resource.getResourceName()}.replacementTrigger',
        replacementTrigger,
        true,
      );
      if (serialized != null) {
        request.replacementTrigger = await StructConverter.toValue(serialized);
      }
    }
    if (registerPackageRequest != null) {
      final packageRef = await _resolvePackageRef(registerPackageRequest);
      if (packageRef != null) {
        request.packageRef = packageRef;
      }
    }

    final response = await monitor.registerResource(resource, request);
    resource.resolveUrn(response.urn);
    if (resource.isCustom) {
      (resource as CustomResource).resolveId(response.id, isKnown: !isDryRun);
    }
  }

  Future<String?> _resolvePackageRef(
    models.RegisterPackageRequest request,
  ) async {
    try {
      final response = await monitor.registerPackage(request.toProto());
      return response.ref;
    } catch (_) {
      if (request.parameterization != null) {
        rethrow;
      }
      return null;
    }
  }

  Future<RegisterResourceRequest_ResourceHooksBinding?> _prepareHooks(
    ResourceHookBinding? hooks,
  ) async {
    if (hooks == null || hooks.isEmpty) {
      return null;
    }

    _callbacks ??= CallbackServer(monitor.client);
    final callbacks = _callbacks!;

    final binding = RegisterResourceRequest_ResourceHooksBinding();
    binding.beforeCreate.addAll(
      await _registerHooks(callbacks, hooks.beforeCreate),
    );
    binding.afterCreate.addAll(
      await _registerHooks(callbacks, hooks.afterCreate),
    );
    binding.beforeUpdate.addAll(
      await _registerHooks(callbacks, hooks.beforeUpdate),
    );
    binding.afterUpdate.addAll(
      await _registerHooks(callbacks, hooks.afterUpdate),
    );
    binding.beforeDelete.addAll(
      await _registerHooks(callbacks, hooks.beforeDelete),
    );
    binding.afterDelete.addAll(
      await _registerHooks(callbacks, hooks.afterDelete),
    );
    binding.onError.addAll(await _registerErrorHooks(callbacks, hooks.onError));
    return binding;
  }

  Future<List<String>> _registerHooks(
    ICallbackServer callbacks,
    List<ResourceHook> hooks,
  ) async {
    if (hooks.isEmpty) {
      return const [];
    }
    return Future.wait(hooks.map(callbacks.registerResourceHook));
  }

  Future<List<String>> _registerErrorHooks(
    ICallbackServer callbacks,
    List<ErrorHook> hooks,
  ) async {
    if (hooks.isEmpty) {
      return const [];
    }
    return Future.wait(hooks.map(callbacks.registerErrorHook));
  }

  @override
  void registerResourceOperation(Future<void> operation) {
    _resourceOperations.add(operation);
  }

  @override
  Input<String> collapseAliasToUrn(
    dynamic alias,
    String name,
    String type,
    Resource? parent,
  ) {
    return Input.fromValue('$type:$name');
  }

  @override
  Future<void> registerOutputs() async {
    if (_resourceOperations.isNotEmpty) {
      await Future.wait(_resourceOperations);
      _resourceOperations.clear();
    }

    if (_stack == null) {
      return;
    }

    if (_outputs.isEmpty) {
      return;
    }

    var serializedOutputs = <String, Value>{};

    for (var entry in _outputs.entries) {
      var outputData = await entry.value.getData();
      var serializedValue = await _stack!.serializeOutputValue(outputData);
      serializedOutputs[entry.key] = serializedValue;
    }

    try {
      var request = RegisterResourceOutputsRequest();
      request.urn = await _stackUrn.getValue();
      request.outputs = Struct()..fields.addAll(serializedOutputs);

      await monitor.registerResourceOutputs(request);
    } catch (e) {
      _logger.error('Failed to register outputs: $e');
      rethrow;
    }
  }

  @override
  Future<void> registerResourceOutputs(
    Resource resource,
    Output<Map<String, dynamic>> outputs,
  ) async {
    var serializedOutputs = <String, Value>{};

    var outputsMap = await outputs.getValue();

    for (var entry in outputsMap.entries) {
      var outputData = await entry.value.getData();
      var serializedValue = await _stack!.serializeOutputValue(outputData);
      serializedOutputs[entry.key] = serializedValue;
    }

    try {
      var request = RegisterResourceOutputsRequest();
      request.urn = await resource.urn.getValue();
      request.outputs = Struct()..fields.addAll(serializedOutputs);

      await monitor.registerResourceOutputs(request);
    } catch (e) {
      _logger.error('Failed to register outputs: $e');
      rethrow;
    }
  }
}

Deployment Function() getCurrentDeployment = () => DeploymentImpl.instance;

class _GrpcEndpoint {
  final String host;
  final int port;

  const _GrpcEndpoint({required this.host, required this.port});

  static _GrpcEndpoint parse(String address) {
    final normalizedAddress =
        address.startsWith('http://') || address.startsWith('https://')
        ? address
        : 'http://$address';

    final uri = Uri.parse(normalizedAddress);
    if (uri.host.isEmpty || uri.port == 0) {
      throw StateError('Invalid gRPC endpoint: $address');
    }

    return _GrpcEndpoint(host: uri.host, port: uri.port);
  }
}
