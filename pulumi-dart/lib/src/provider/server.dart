// ignore_for_file: implementation_imports

import 'dart:async';
import 'dart:convert';

import 'package:grpc/grpc.dart';
import 'package:grpc/src/generated/google/protobuf/any.pb.dart' as anypb;
import 'package:grpc/src/generated/google/rpc/status.pb.dart' as statuspb;
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';

import '../alias.dart';
import '../constants.dart';
import '../deserializer.dart';
import '../input.dart';
import '../output.dart';
import '../resource/component_resource.dart';
import '../resource/custom_resource.dart';
import '../resource/dependency_resource.dart';
import '../resource/provider_resource.dart';
import '../resource/resource_options.dart';
import '../settings.dart';
import '../serializer.dart';
import '../store/store.dart';
import '../struct_converter.dart';
import '../pulumirpc/pulumi/alias.pb.dart' as aliaspb;
import '../pulumirpc/pulumi/errors.pb.dart' as errorspb;
import '../pulumirpc/pulumi/plugin.pb.dart' as pluginpb;
import '../pulumirpc/pulumi/provider.pb.dart' as providerpb;
import '../pulumirpc/pulumi/provider.pbgrpc.dart' as providergrpc;

import 'internals.dart';
import 'provider.dart';

/// Returns true if [value] contains nested [Output] values.
bool containsOutputs(dynamic value) {
  if (value is Output) {
    return true;
  }

  if (value is DependencyResource ||
      value is ProviderResource ||
      value is ComponentResource ||
      value is CustomResource) {
    return false;
  }

  if (value is Iterable) {
    for (final element in value) {
      if (containsOutputs(element)) {
        return true;
      }
    }
    return false;
  }

  if (value is Map) {
    for (final element in value.values) {
      if (containsOutputs(element)) {
        return true;
      }
    }
  }

  return false;
}

/// Deserializes provider input structs and applies dependency metadata.
Future<Inputs> deserializeInputs(
  Struct inputs,
  List<String> Function(String key) dependencyUrnsForKey,
) async {
  final result = <String, Input<dynamic>>{};

  for (final entry in inputs.fields.entries) {
    final key = entry.key;
    final decoded = Deserializer.deserialize<dynamic>(entry.value);
    final value = decoded.value;
    final depsUrns = dependencyUrnsForKey(key);

    if (!decoded.isSecret &&
        (depsUrns.isEmpty ||
            containsOutputs(value) ||
            await _isResourceReference(value, depsUrns))) {
      result[key] = _asInput(value);
      continue;
    }

    final deps = depsUrns.map((urn) => DependencyResource(urn)).toSet();
    final wrapped = Output<dynamic>(
      Future.value(
        OutputData<dynamic>(
          value: value,
          isKnown: decoded.isKnown,
          isSecret: decoded.isSecret,
          resources: deps,
        ),
      ),
    );
    result[key] = Input.fromOutput(wrapped);
  }

  return result;
}

Future<bool> _isResourceReference(dynamic value, List<String> depsUrns) async {
  if (value is! DependencyResource &&
      value is! ProviderResource &&
      value is! ComponentResource &&
      value is! CustomResource) {
    return false;
  }

  if (depsUrns.length != 1) {
    return false;
  }

  final urn = await (value as dynamic).urn.getValue();
  return urn == depsUrns.single;
}

Input<dynamic> _asInput(dynamic value) {
  if (value is Input<dynamic>) {
    return value;
  }
  if (value is Output<dynamic>) {
    return Input.fromOutput(value);
  }
  return Input.fromValue(value);
}

/// gRPC service implementation for custom provider authoring.
class ProviderServer extends providergrpc.ResourceProviderServiceBase {
  ProviderServer(this.provider, {this.engineAddress});

  final Provider provider;
  String? engineAddress;

  Future<void> _serial = Future<void>.value();

  Future<T> _withSerializedRuntime<T>(Future<T> Function() action) {
    final next = _serial.then((_) => action());
    _serial = next.then<void>((_) {}).catchError((_) {});
    return next;
  }

  @override
  Future<providerpb.ProviderHandshakeResponse> handshake(
    ServiceCall call,
    providerpb.ProviderHandshakeRequest request,
  ) async {
    if (request.engineAddress.isNotEmpty) {
      engineAddress = request.engineAddress;
    }

    return providerpb.ProviderHandshakeResponse(
      acceptSecrets: true,
      acceptResources: true,
      acceptOutputs: true,
      supportsAutonamingConfiguration: false,
    );
  }

  @override
  Future<providerpb.ParameterizeResponse> parameterize(
    ServiceCall call,
    providerpb.ParameterizeRequest request,
  ) async {
    if (request.hasArgs()) {
      final result = await provider.parameterizeArgs(request.args.args);
      return providerpb.ParameterizeResponse(
        name: result.name,
        version: result.version,
      );
    }

    if (request.hasValue()) {
      final decodedValue = (() {
        try {
          return utf8.decode(request.value.value);
        } on FormatException {
          throw GrpcError.invalidArgument(
            'parameterization value is not valid UTF-8',
          );
        }
      })();
      final result = await provider.parameterizeValue(
        request.value.name,
        request.value.version,
        decodedValue,
      );
      return providerpb.ParameterizeResponse(
        name: result.name,
        version: result.version,
      );
    }

    throw GrpcError.invalidArgument('parameterization payload is missing');
  }

  @override
  Future<providerpb.GetSchemaResponse> getSchema(
    ServiceCall call,
    providerpb.GetSchemaRequest request,
  ) async {
    if (request.version != 0) {
      throw GrpcError.invalidArgument(
        'unsupported schema version ${request.version}',
      );
    }

    final schema = await provider.getSchema();
    return providerpb.GetSchemaResponse(schema: schema);
  }

  @override
  Future<providerpb.CheckResponse> checkConfig(
    ServiceCall call,
    providerpb.CheckRequest request,
  ) {
    throw GrpcError.unimplemented('Not yet implemented: CheckConfig');
  }

  @override
  Future<providerpb.DiffResponse> diffConfig(
    ServiceCall call,
    providerpb.DiffRequest request,
  ) {
    throw GrpcError.unimplemented('Not yet implemented: DiffConfig');
  }

  @override
  Future<providerpb.ConfigureResponse> configure(
    ServiceCall call,
    providerpb.ConfigureRequest request,
  ) async {
    return providerpb.ConfigureResponse(
      acceptSecrets: true,
      supportsPreview: true,
      acceptResources: true,
      acceptOutputs: true,
      supportsAutonamingConfiguration: false,
    );
  }

  @override
  Future<providerpb.InvokeResponse> invoke(
    ServiceCall call,
    providerpb.InvokeRequest request,
  ) async {
    final args = StructConverter.fromStruct(request.args);
    final result = await provider.invoke(request.tok, args);

    final response = providerpb.InvokeResponse();
    response.return_1 = await StructConverter.toStruct(result.outputs);
    if (result.failures != null) {
      response.failures.addAll(
        result.failures!.map(
          (failure) => providerpb.CheckFailure(
            property: failure.property,
            reason: failure.reason,
          ),
        ),
      );
    }
    return response;
  }

  @override
  Future<providerpb.CallResponse> call(
    ServiceCall call,
    providerpb.CallRequest request,
  ) async {
    return _withSerializedRuntime(() async {
      try {
        await _configureRuntime(
          project: request.project,
          stack: request.stack,
          parallel: request.parallel,
          monitorEndpoint: request.monitorEndpoint,
          dryRun: request.dryRun,
          organization: request.organization,
          config: request.config,
          configSecretKeys: request.configSecretKeys,
        );

        final args = await deserializeInputs(
          request.args,
          (key) => request.argDependencies[key]?.urns ?? const <String>[],
        );
        final result = await provider.call(request.tok, args);

        final serialized = await _serializeInputMap(
          'call(${request.tok})',
          result.outputs,
        );

        final response = providerpb.CallResponse()
          ..return_1 = serialized.struct;
        for (final entry in serialized.dependencies.entries) {
          response.returnDependencies[entry.key] =
              providerpb.CallResponse_ReturnDependencies()
                ..urns.addAll(entry.value);
        }

        if (result.failures != null) {
          response.failures.addAll(
            result.failures!.map(
              (failure) => providerpb.CheckFailure(
                property: failure.property,
                reason: failure.reason,
              ),
            ),
          );
        }

        return response;
      } on InputPropertiesError catch (error) {
        throw _buildInvalidPropertiesError(error.message, error.errors);
      } on InputPropertyError catch (error) {
        throw _buildInvalidPropertiesError('', <InputPropertyErrorDetails>[
          InputPropertyErrorDetails(
            propertyPath: error.propertyPath,
            reason: error.reason,
          ),
        ]);
      }
    });
  }

  @override
  Future<providerpb.CheckResponse> check(
    ServiceCall call,
    providerpb.CheckRequest request,
  ) async {
    final olds = StructConverter.fromStruct(request.olds);
    final news = StructConverter.fromStruct(request.news);
    final result = await provider.check(request.urn, olds, news);

    final response = providerpb.CheckResponse();
    response.inputs = await StructConverter.toStruct(result.inputs ?? news);
    response.failures.addAll(
      result.failures.map(
        (failure) => providerpb.CheckFailure(
          property: failure.property,
          reason: failure.reason,
        ),
      ),
    );
    return response;
  }

  @override
  Future<providerpb.DiffResponse> diff(
    ServiceCall call,
    providerpb.DiffRequest request,
  ) async {
    final olds = StructConverter.fromStruct(request.olds);
    final news = StructConverter.fromStruct(request.news);
    final result = await provider.diff(request.id, request.urn, olds, news);

    final response = providerpb.DiffResponse();
    if (result.changes == true) {
      response.changes = providerpb.DiffResponse_DiffChanges.DIFF_SOME;
    } else if (result.changes == false) {
      response.changes = providerpb.DiffResponse_DiffChanges.DIFF_NONE;
    } else {
      response.changes = providerpb.DiffResponse_DiffChanges.DIFF_UNKNOWN;
    }

    if (result.replaces != null) {
      response.replaces.addAll(result.replaces!);
    }
    if (result.stables != null) {
      response.stables.addAll(result.stables!);
    }
    if (result.deleteBeforeReplace != null) {
      response.deleteBeforeReplace = result.deleteBeforeReplace!;
    }
    return response;
  }

  @override
  Future<providerpb.CreateResponse> create(
    ServiceCall call,
    providerpb.CreateRequest request,
  ) async {
    final inputs = StructConverter.fromStruct(request.properties);
    final result = await provider.create(request.urn, inputs);

    final response = providerpb.CreateResponse()..id = result.id;
    response.properties = await StructConverter.toStruct(result.outs ?? inputs);
    return response;
  }

  @override
  Future<providerpb.ReadResponse> read(
    ServiceCall call,
    providerpb.ReadRequest request,
  ) async {
    final props = request.hasProperties()
        ? StructConverter.fromStruct(request.properties)
        : null;
    final result = await provider.read(request.id, request.urn, props);

    final response = providerpb.ReadResponse();
    if (result.id != null) {
      response.id = result.id!;
    }
    response.properties = await StructConverter.toStruct(
      result.props ?? <String, dynamic>{},
    );
    if (result.inputs != null) {
      response.inputs = await StructConverter.toStruct(result.inputs!);
    }
    return response;
  }

  @override
  Future<providerpb.UpdateResponse> update(
    ServiceCall call,
    providerpb.UpdateRequest request,
  ) async {
    final olds = StructConverter.fromStruct(request.olds);
    final news = StructConverter.fromStruct(request.news);
    final result = await provider.update(request.id, request.urn, olds, news);

    final response = providerpb.UpdateResponse();
    response.properties = await StructConverter.toStruct(result.outs ?? news);
    return response;
  }

  @override
  Future<Empty> delete(
    ServiceCall call,
    providerpb.DeleteRequest request,
  ) async {
    final props = StructConverter.fromStruct(request.properties);
    await provider.delete(request.id, request.urn, props);
    return Empty();
  }

  @override
  Future<providerpb.ConstructResponse> construct(
    ServiceCall call,
    providerpb.ConstructRequest request,
  ) async {
    return _withSerializedRuntime(() async {
      await _configureRuntime(
        project: request.project,
        stack: request.stack,
        parallel: request.parallel,
        monitorEndpoint: request.monitorEndpoint,
        dryRun: request.dryRun,
        organization: request.organization,
        config: request.config,
        configSecretKeys: request.configSecretKeys,
      );

      final inputs = await deserializeInputs(
        request.inputs,
        (key) => request.inputDependencies[key]?.urns ?? const <String>[],
      );

      final options = _buildConstructOptions(request);

      try {
        final result = await provider.construct(
          request.name,
          request.type,
          inputs,
          options,
        );

        final response = providerpb.ConstructResponse();
        response.urn = await result.urn.toOutput().getValue();

        final serialized = await _serializeInputMap(
          'construct(${request.type}, ${request.name})',
          result.state,
        );
        response.state = serialized.struct;
        for (final entry in serialized.dependencies.entries) {
          response.stateDependencies[entry.key] =
              providerpb.ConstructResponse_PropertyDependencies()
                ..urns.addAll(entry.value);
        }

        return response;
      } on InputPropertiesError catch (error) {
        throw _buildInvalidPropertiesError(error.message, error.errors);
      } on InputPropertyError catch (error) {
        throw _buildInvalidPropertiesError('', <InputPropertyErrorDetails>[
          InputPropertyErrorDetails(
            propertyPath: error.propertyPath,
            reason: error.reason,
          ),
        ]);
      } on ComponentInitError catch (error) {
        throw GrpcError.unknown(error.toString());
      }
    });
  }

  GrpcError _buildInvalidPropertiesError(
    String message,
    List<InputPropertyErrorDetails> errors,
  ) {
    final detail = errorspb.InputPropertiesError(
      errors: errors
          .map(
            (error) => errorspb.InputPropertiesError_PropertyError(
              propertyPath: error.propertyPath,
              reason: error.reason,
            ),
          )
          .toList(growable: false),
    );

    final status = statuspb.Status(
      code: StatusCode.invalidArgument,
      message: message,
      details: <anypb.Any>[
        anypb.Any(
          typeUrl: 'pulumirpc.InputPropertiesError',
          value: detail.writeToBuffer(),
        ),
      ],
    );

    return GrpcError.custom(
      StatusCode.invalidArgument,
      message,
      <errorspb.InputPropertiesError>[detail],
      null,
      <String, String>{
        'grpc-status-details-bin': base64Url.encode(status.writeToBuffer()),
      },
    );
  }

  ComponentResourceOptions _buildConstructOptions(
    providerpb.ConstructRequest request,
  ) {
    final aliases = request.aliases
        .map(_aliasFromProto)
        .toList(growable: false);
    final dependsOn = request.dependencies
        .map((urn) => DependencyResource(urn))
        .toList(growable: false);

    final providers = <ProviderResource>[];
    for (final entry in request.providers.entries) {
      final packageName = entry.key;
      final (urn, id) = _parseResourceReference(entry.value);
      providers.add(ProviderResource.reference(packageName, urn, id: id));
    }

    final parent = request.parent.isEmpty
        ? null
        : DependencyResource(request.parent);
    final deletedWithRef = request.deletedWith.isEmpty
        ? null
        : _parseResourceReference(request.deletedWith);
    final deletedWith = deletedWithRef == null
        ? null
        : DependencyResource(deletedWithRef.$1);

    final customTimeouts = request.hasCustomTimeouts()
        ? CustomTimeouts(
            create: request.customTimeouts.create_1.isEmpty
                ? null
                : request.customTimeouts.create_1,
            update: request.customTimeouts.update.isEmpty
                ? null
                : request.customTimeouts.update,
            delete: request.customTimeouts.delete.isEmpty
                ? null
                : request.customTimeouts.delete,
          )
        : null;

    final replacementTrigger = request.hasReplacementTrigger()
        ? StructConverter.fromValue(request.replacementTrigger)
        : null;

    return ComponentResourceOptions(
      aliases: aliases.isEmpty ? null : aliases,
      dependsOn: dependsOn,
      protect: request.protect,
      providers: providers,
      parent: parent,
      ignoreChanges: request.ignoreChanges,
      replaceOnChanges: request.replaceOnChanges,
      customTimeouts: customTimeouts,
      retainOnDelete: request.retainOnDelete,
      deleteBeforeReplace: request.deleteBeforeReplace,
      deletedWith: deletedWith,
      additionalSecretOutputs: request.additionalSecretOutputs,
      replacementTrigger: replacementTrigger,
    );
  }

  Alias _aliasFromProto(aliaspb.Alias alias) {
    if (alias.hasUrn()) {
      return Alias(urn: alias.urn);
    }

    final spec = alias.spec;
    return Alias(
      name: spec.name.isEmpty ? null : Input.fromValue(spec.name),
      type: spec.type.isEmpty ? null : Input.fromValue(spec.type),
      stack: spec.stack.isEmpty ? null : Input.fromValue(spec.stack),
      project: spec.project.isEmpty ? null : Input.fromValue(spec.project),
      parentUrn: spec.hasParentUrn() ? Input.fromValue(spec.parentUrn) : null,
      noParent: spec.hasNoParent() ? spec.noParent : false,
    );
  }

  Future<void> _configureRuntime({
    required String project,
    required String stack,
    required int parallel,
    required String monitorEndpoint,
    required bool dryRun,
    required String organization,
    required Map<String, String> config,
    required List<String> configSecretKeys,
  }) async {
    if (engineAddress == null || engineAddress!.isEmpty) {
      throw Exception('fatal: Missing <engine> address');
    }

    final runtime = Runtime();
    runtime.resetOptions(
      project: project,
      stack: stack,
      parallel: parallel,
      engineAddr: engineAddress,
      monitorAddr: monitorEndpoint,
      preview: dryRun,
      organization: organization.isEmpty ? 'organization' : organization,
    );

    await runtime.awaitFeatureSupport();
    setAllConfig(config, configSecretKeys);
  }

  Future<({Struct struct, Map<String, List<String>> dependencies})>
  _serializeInputMap(String ctx, Inputs values) async {
    final struct = Struct();
    final dependencies = <String, List<String>>{};

    for (final entry in values.entries) {
      final serializer = Serializer();
      final serialized = await serializer.serializeAsync(
        '$ctx.${entry.key}',
        entry.value,
        true,
        keepOutputValues: true,
      );

      struct.fields[entry.key] = await StructConverter.toValue(serialized);

      final urns = await Serializer.getAllTransitivelyReferencedResourceUrns(
        serializer.dependentResources,
      );
      if (urns.isNotEmpty) {
        final sorted = urns.toList(growable: false)..sort();
        dependencies[entry.key] = sorted;
      }
    }

    return (struct: struct, dependencies: dependencies);
  }

  @override
  Future<Empty> cancel(ServiceCall call, Empty request) async {
    return Empty();
  }

  @override
  Future<pluginpb.PluginInfo> getPluginInfo(ServiceCall call, Empty request) {
    return Future.value(pluginpb.PluginInfo(version: provider.version ?? ''));
  }

  @override
  Future<Empty> attach(ServiceCall call, pluginpb.PluginAttach request) async {
    engineAddress = request.address;
    return Empty();
  }

  @override
  Future<providerpb.GetMappingResponse> getMapping(
    ServiceCall call,
    providerpb.GetMappingRequest request,
  ) async {
    return providerpb.GetMappingResponse();
  }

  @override
  Future<providerpb.GetMappingsResponse> getMappings(
    ServiceCall call,
    providerpb.GetMappingsRequest request,
  ) async {
    return providerpb.GetMappingsResponse();
  }
}

/// Starts a provider gRPC server and emits the selected port on stdout.
Future<void> serve(Provider provider, List<String> args) async {
  final parsed = parseProviderArgs(args);

  final server = Server.create(
    services: [ProviderServer(provider, engineAddress: parsed?.engineAddress)],
  );

  await server.serve(address: '127.0.0.1', port: 0);
  print('${server.port}');
}

(String, String?) _parseResourceReference(String reference) {
  final splitAt = reference.lastIndexOf('::');
  if (splitAt == -1) {
    return (reference, null);
  }

  final urn = reference.substring(0, splitAt);
  final id = reference.substring(splitAt + 2);
  if (id.isEmpty || Constants.isUnknownSentinel(id)) {
    return (urn, null);
  }
  return (urn, id);
}
