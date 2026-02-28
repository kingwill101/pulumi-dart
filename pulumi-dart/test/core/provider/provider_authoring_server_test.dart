import 'dart:convert';

import 'package:grpc/grpc.dart';
import 'package:grpc/src/generated/google/rpc/status.pb.dart' as grpcstatuspb;
import 'package:mockito/mockito.dart';
import 'package:pulumi/provider.dart';
import 'package:pulumi/src/input.dart';
import 'package:pulumi/src/output.dart';
import 'package:pulumi/src/pulumirpc/pulumi/callback.pb.dart' as callbackpb;
import 'package:pulumi/src/pulumirpc/pulumi/errors.pb.dart' as errorspb;
import 'package:pulumi/src/pulumirpc/pulumi/provider.pb.dart' as providerpb;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pb.dart' as resourcepb;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart'
    as resourcegrpc;
import 'package:pulumi/src/resource/component_resource.dart';
import 'package:pulumi/src/resource/dependency_resource.dart';
import 'package:pulumi/src/struct_converter.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:test/test.dart';

class _FakeServiceCall extends Fake implements ServiceCall {}

class _RecordingProvider extends Provider {
  _RecordingProvider({super.schema});

  List<String>? parameterizedArgs;
  String? parameterizedName;
  String? parameterizedVersion;
  String? parameterizedValue;

  String? checkUrn;
  Map<String, dynamic>? checkOlds;
  Map<String, dynamic>? checkNews;

  String? diffId;
  String? diffUrn;

  String? invokeToken;
  Map<String, dynamic>? invokeArgs;

  String? callToken;
  Inputs? callArgs;
  bool failCallWithInputPropertyError = false;
  bool failCallWithInputPropertiesError = false;

  String? constructName;
  String? constructType;
  Inputs? constructInputs;
  ComponentResourceOptions? constructOptions;
  bool failConstructWithInputPropertyError = false;
  bool failConstructWithInputPropertiesError = false;

  @override
  Future<CreateResult> create(String urn, Map<String, dynamic> inputs) async {
    return CreateResult(
      id: 'id-123',
      outs: <String, dynamic>{'urn': urn, ...inputs},
    );
  }

  @override
  Future<ParameterizeResult> parameterizeArgs(List<String> args) async {
    parameterizedArgs = args;
    return const ParameterizeResult(name: 'args-subpkg', version: '1.0.0');
  }

  @override
  Future<ParameterizeResult> parameterizeValue(
    String name,
    String version,
    String value,
  ) async {
    parameterizedName = name;
    parameterizedVersion = version;
    parameterizedValue = value;
    return ParameterizeResult(name: name, version: version);
  }

  @override
  Future<CheckResult> check(
    String urn,
    Map<String, dynamic> olds,
    Map<String, dynamic> news,
  ) async {
    checkUrn = urn;
    checkOlds = olds;
    checkNews = news;
    return const CheckResult(
      failures: <CheckFailure>[
        CheckFailure(property: 'name', reason: 'invalid'),
      ],
    );
  }

  @override
  Future<DiffResult> diff(
    String id,
    String urn,
    Map<String, dynamic> olds,
    Map<String, dynamic> news,
  ) async {
    diffId = id;
    diffUrn = urn;
    return const DiffResult(
      changes: true,
      replaces: <String>['name'],
      stables: <String>['region'],
      deleteBeforeReplace: true,
    );
  }

  @override
  Future<InvokeResult> invoke(String token, Map<String, dynamic> args) async {
    invokeToken = token;
    invokeArgs = args;
    return const InvokeResult(
      outputs: <String, dynamic>{'ok': true},
      failures: <CheckFailure>[
        CheckFailure(property: 'arg', reason: 'bad value'),
      ],
    );
  }

  @override
  Future<CallResult> call(String token, Inputs inputs) async {
    if (failCallWithInputPropertyError) {
      throw const InputPropertyError('resource.name', 'invalid value');
    }
    if (failCallWithInputPropertiesError) {
      throw const InputPropertiesError('multiple invalid properties', <
        InputPropertyErrorDetails
      >[
        InputPropertyErrorDetails(propertyPath: 'resource.a', reason: 'bad A'),
        InputPropertyErrorDetails(propertyPath: 'resource.b', reason: 'bad B'),
      ]);
    }

    callToken = token;
    callArgs = inputs;
    return CallResult(
      outputs: <String, Input<dynamic>>{
        'result': Input.fromValue('ok'),
        'dep': _inputWithDependency(
          'dep-value',
          'urn:pulumi:dev::proj::pkg:index:Dep::dep',
        ),
      },
    );
  }

  @override
  Future<ConstructResult> construct(
    String name,
    String type,
    Inputs inputs,
    ComponentResourceOptions options,
  ) async {
    if (failConstructWithInputPropertyError) {
      throw const InputPropertyError('component.name', 'invalid');
    }
    if (failConstructWithInputPropertiesError) {
      throw const InputPropertiesError(
        'component validation failed',
        <InputPropertyErrorDetails>[
          InputPropertyErrorDetails(
            propertyPath: 'component.left',
            reason: 'left invalid',
          ),
          InputPropertyErrorDetails(
            propertyPath: 'component.right',
            reason: 'right invalid',
          ),
        ],
      );
    }

    constructName = name;
    constructType = type;
    constructInputs = inputs;
    constructOptions = options;
    return ConstructResult(
      urn: Input.fromValue('urn:pulumi:dev::proj::$type::$name'),
      state: <String, Input<dynamic>>{
        'message': Input.fromValue('constructed'),
        'dep': _inputWithDependency(
          'constructed-dep',
          'urn:pulumi:dev::proj::pkg:index:ConstructDep::dep',
        ),
      },
    );
  }
}

Input<dynamic> _inputWithDependency(dynamic value, String depUrn) {
  return Input.fromOutput(
    Output<dynamic>(
      Future.value(
        OutputData<dynamic>(
          value: value,
          isKnown: true,
          isSecret: false,
          resources: <DependencyResource>{DependencyResource(depUrn)},
        ),
      ),
    ),
  );
}

class _TestMonitor extends resourcegrpc.ResourceMonitorServiceBase {
  @override
  Future<resourcepb.SupportsFeatureResponse> supportsFeature(
    ServiceCall call,
    resourcepb.SupportsFeatureRequest request,
  ) async {
    return resourcepb.SupportsFeatureResponse(hasSupport: false);
  }

  @override
  Future<providerpb.InvokeResponse> invoke(
    ServiceCall call,
    resourcepb.ResourceInvokeRequest request,
  ) {
    throw GrpcError.unimplemented('not needed in this test');
  }

  @override
  Future<providerpb.CallResponse> call(
    ServiceCall call,
    resourcepb.ResourceCallRequest request,
  ) {
    throw GrpcError.unimplemented('not needed in this test');
  }

  @override
  Future<resourcepb.ReadResourceResponse> readResource(
    ServiceCall call,
    resourcepb.ReadResourceRequest request,
  ) {
    throw GrpcError.unimplemented('not needed in this test');
  }

  @override
  Future<resourcepb.RegisterResourceResponse> registerResource(
    ServiceCall call,
    resourcepb.RegisterResourceRequest request,
  ) {
    throw GrpcError.unimplemented('not needed in this test');
  }

  @override
  Future<Empty> registerResourceOutputs(
    ServiceCall call,
    resourcepb.RegisterResourceOutputsRequest request,
  ) {
    throw GrpcError.unimplemented('not needed in this test');
  }

  @override
  Future<Empty> registerStackTransform(
    ServiceCall call,
    callbackpb.Callback request,
  ) {
    throw GrpcError.unimplemented('not needed in this test');
  }

  @override
  Future<Empty> registerStackInvokeTransform(
    ServiceCall call,
    callbackpb.Callback request,
  ) {
    throw GrpcError.unimplemented('not needed in this test');
  }

  @override
  Future<Empty> registerResourceHook(
    ServiceCall call,
    resourcepb.RegisterResourceHookRequest request,
  ) {
    throw GrpcError.unimplemented('not needed in this test');
  }

  @override
  Future<Empty> registerErrorHook(
    ServiceCall call,
    resourcepb.RegisterErrorHookRequest request,
  ) {
    throw GrpcError.unimplemented('not needed in this test');
  }

  @override
  Future<resourcepb.RegisterPackageResponse> registerPackage(
    ServiceCall call,
    resourcepb.RegisterPackageRequest request,
  ) {
    throw GrpcError.unimplemented('not needed in this test');
  }

  @override
  Future<Empty> signalAndWaitForShutdown(ServiceCall call, Empty request) {
    throw GrpcError.unimplemented('not needed in this test');
  }
}

Future<({Server server, String endpoint})> _startMonitorServer() async {
  final server = Server.create(services: <Service>[_TestMonitor()]);
  await server.serve(address: '127.0.0.1', port: 0);
  return (server: server, endpoint: '127.0.0.1:${server.port}');
}

List<errorspb.InputPropertiesError_PropertyError> _extractPropertyErrors(
  GrpcError error,
) {
  final payload = error.trailers?['grpc-status-details-bin'];
  if (payload == null || payload.isEmpty) {
    return const <errorspb.InputPropertiesError_PropertyError>[];
  }

  final padded = payload.padRight((payload.length + 3) & ~3, '=');
  final status = grpcstatuspb.Status.fromBuffer(base64Url.decode(padded));
  for (final detail in status.details) {
    if (detail.typeUrl.endsWith('pulumirpc.InputPropertiesError')) {
      return errorspb.InputPropertiesError.fromBuffer(detail.value).errors;
    }
  }

  return const <errorspb.InputPropertiesError_PropertyError>[];
}

Future<providerpb.CallRequest> _newCallRequest(String monitorEndpoint) async {
  final request = providerpb.CallRequest(
    tok: 'pkg:index:method',
    project: 'proj',
    stack: 'dev',
    parallel: 1,
    monitorEndpoint: monitorEndpoint,
    dryRun: false,
    organization: 'org',
    config: <MapEntry<String, String>>[
      const MapEntry<String, String>('proj:key', 'value'),
    ],
    configSecretKeys: <String>['proj:secret'],
    args: await StructConverter.toStruct(<String, dynamic>{'name': 'alice'}),
  );
  request.argDependencies['name'] = providerpb.CallRequest_ArgumentDependencies(
    urns: <String>['urn:pulumi:dev::proj::pkg:index:InputDep::dep'],
  );
  return request;
}

Future<providerpb.ConstructRequest> _newConstructRequest(
  String monitorEndpoint,
) async {
  final request = providerpb.ConstructRequest(
    project: 'proj',
    stack: 'dev',
    parallel: 1,
    monitorEndpoint: monitorEndpoint,
    dryRun: true,
    organization: 'org',
    type: 'pkg:index:Component',
    name: 'comp',
    parent: 'urn:pulumi:dev::proj::pkg:index:Parent::root',
    protect: true,
    deletedWith: 'urn:pulumi:dev::proj::pkg:index:Deleted::d::id-1',
    deleteBeforeReplace: true,
    retainOnDelete: true,
    customTimeouts: providerpb.ConstructRequest_CustomTimeouts(
      create_1: '60s',
      update: '120s',
      delete: '180s',
    ),
    ignoreChanges: <String>['ignored'],
    replaceOnChanges: <String>['force'],
    replacementTrigger: await StructConverter.toValue('triggered'),
    inputs: await StructConverter.toStruct(<String, dynamic>{'param': 'x'}),
  );
  request.config['proj:key'] = 'value';
  request.configSecretKeys.add('proj:secret');
  request.dependencies.add('urn:pulumi:dev::proj::pkg:index:Dep::a');
  request.providers['aws'] =
      'urn:pulumi:dev::proj::pulumi:providers:aws::default::prov-1';
  request.inputDependencies['param'] =
      providerpb.ConstructRequest_PropertyDependencies(
        urns: <String>['urn:pulumi:dev::proj::pkg:index:InputDep::dep'],
      );
  return request;
}

void main() {
  group('provider internals', () {
    test('parseProviderArgs strips --logflow injected flags', () {
      final parsed = parseProviderArgs(<String>[
        '--logtostderr',
        '-v=9',
        '--tracing',
        '127.0.0.1:6007',
        '127.0.0.1:12345',
      ]);

      expect(parsed, isNotNull);
      expect(parsed!.engineAddress, equals('127.0.0.1:12345'));
    });

    test(
      'containsOutputs ignores resource wrappers but detects nested outputs',
      () {
        expect(containsOutputs(Output.create('value')), isTrue);
        expect(
          containsOutputs(<String, dynamic>{'v': Output.create('value')}),
          isTrue,
        );
        expect(
          containsOutputs(
            DependencyResource('urn:pulumi:dev::proj::pkg:type::res'),
          ),
          isFalse,
        );
        expect(
          containsOutputs(<String, dynamic>{
            'resource': DependencyResource(
              'urn:pulumi:dev::proj::pkg:type::res',
            ),
          }),
          isFalse,
        );
      },
    );

    test(
      'deserializeInputs wraps plain values with dependency metadata',
      () async {
        final struct = await StructConverter.toStruct(<String, dynamic>{
          'value': 'hello',
        });
        final inputs = await deserializeInputs(
          struct,
          (_) => const <String>['urn:pulumi:dev::proj::pkg:type::res'],
        );

        final outputData = await inputs['value']!.toOutput().getData();
        expect(outputData.value, equals('hello'));
        expect(outputData.resources, hasLength(1));
        final urn = await outputData.resources.single.urn.getValue();
        expect(urn, equals('urn:pulumi:dev::proj::pkg:type::res'));
      },
    );
  });

  group('ProviderServer', () {
    final call = _FakeServiceCall();

    test(
      'handshake stores engine address and advertises capabilities',
      () async {
        final provider = _RecordingProvider();
        final server = ProviderServer(provider);

        final response = await server.handshake(
          call,
          providerpb.ProviderHandshakeRequest(engineAddress: '127.0.0.1:7777'),
        );

        expect(server.engineAddress, equals('127.0.0.1:7777'));
        expect(response.acceptSecrets, isTrue);
        expect(response.acceptResources, isTrue);
        expect(response.acceptOutputs, isTrue);
      },
    );

    test('parameterize supports args and value payloads', () async {
      final provider = _RecordingProvider();
      final server = ProviderServer(provider);

      final argsResponse = await server.parameterize(
        call,
        providerpb.ParameterizeRequest(
          args: providerpb.ParameterizeRequest_ParametersArgs(
            args: <String>['--env', 'dev'],
          ),
        ),
      );
      expect(provider.parameterizedArgs, equals(<String>['--env', 'dev']));
      expect(argsResponse.name, equals('args-subpkg'));

      final valueResponse = await server.parameterize(
        call,
        providerpb.ParameterizeRequest(
          value: providerpb.ParameterizeRequest_ParametersValue(
            name: 'value-subpkg',
            version: '2.0.0',
            value: utf8.encode('payload'),
          ),
        ),
      );
      expect(provider.parameterizedName, equals('value-subpkg'));
      expect(provider.parameterizedVersion, equals('2.0.0'));
      expect(provider.parameterizedValue, equals('payload'));
      expect(valueResponse.name, equals('value-subpkg'));
    });

    test('parameterize rejects missing payload', () async {
      final server = ProviderServer(_RecordingProvider());
      expect(
        () => server.parameterize(call, providerpb.ParameterizeRequest()),
        throwsA(
          isA<GrpcError>().having(
            (error) => error.code,
            'code',
            equals(StatusCode.invalidArgument),
          ),
        ),
      );
    });

    test('getSchema enforces version 0 and returns provider schema', () async {
      final server = ProviderServer(
        _RecordingProvider(schema: '{"name":"pkg"}'),
      );

      final ok = await server.getSchema(
        call,
        providerpb.GetSchemaRequest(version: 0),
      );
      expect(ok.schema, equals('{"name":"pkg"}'));

      expect(
        () => server.getSchema(call, providerpb.GetSchemaRequest(version: 1)),
        throwsA(
          isA<GrpcError>().having(
            (error) => error.code,
            'code',
            equals(StatusCode.invalidArgument),
          ),
        ),
      );
    });

    test('check, diff, and invoke delegate to provider contract', () async {
      final provider = _RecordingProvider();
      final server = ProviderServer(provider);

      final check = await server.check(
        call,
        providerpb.CheckRequest(
          urn: 'urn:pulumi:dev::proj::pkg:type::res',
          olds: await StructConverter.toStruct(<String, dynamic>{
            'name': 'old',
          }),
          news: await StructConverter.toStruct(<String, dynamic>{
            'name': 'new',
          }),
        ),
      );
      expect(provider.checkUrn, contains('pkg:type::res'));
      expect(provider.checkOlds!['name'], equals('old'));
      expect(provider.checkNews!['name'], equals('new'));
      expect(check.failures.single.property, equals('name'));

      final diff = await server.diff(
        call,
        providerpb.DiffRequest(
          id: 'id-1',
          urn: 'urn:pulumi:dev::proj::pkg:type::res',
          olds: await StructConverter.toStruct(<String, dynamic>{
            'name': 'old',
          }),
          news: await StructConverter.toStruct(<String, dynamic>{
            'name': 'new',
          }),
        ),
      );
      expect(provider.diffId, equals('id-1'));
      expect(provider.diffUrn, contains('pkg:type::res'));
      expect(
        diff.changes,
        equals(providerpb.DiffResponse_DiffChanges.DIFF_SOME),
      );
      expect(diff.replaces, contains('name'));
      expect(diff.stables, contains('region'));
      expect(diff.deleteBeforeReplace, isTrue);

      final invoke = await server.invoke(
        call,
        providerpb.InvokeRequest(
          tok: 'pkg:index:get',
          args: await StructConverter.toStruct(<String, dynamic>{'arg': 'x'}),
        ),
      );
      expect(provider.invokeToken, equals('pkg:index:get'));
      expect(provider.invokeArgs!['arg'], equals('x'));
      expect(invoke.failures.single.reason, equals('bad value'));
      expect(StructConverter.fromStruct(invoke.return_1)['ok'], isTrue);
    });

    test(
      'call and construct map runtime requests and return dependency metadata',
      () async {
        final monitor = await _startMonitorServer();
        addTearDown(() async {
          await monitor.server.shutdown();
        });

        final provider = _RecordingProvider();
        final server = ProviderServer(
          provider,
          engineAddress: '127.0.0.1:7777',
        );

        final callRequest = await _newCallRequest(monitor.endpoint);
        final callResponse = await server.call(call, callRequest);
        expect(provider.callToken, equals('pkg:index:method'));
        final callInputData = await provider.callArgs!['name']!
            .toOutput()
            .getData();
        expect(callInputData.value, equals('alice'));
        expect(callInputData.resources, hasLength(1));
        expect(
          await callInputData.resources.single.urn.getValue(),
          equals('urn:pulumi:dev::proj::pkg:index:InputDep::dep'),
        );
        expect(
          StructConverter.fromStruct(callResponse.return_1)['result'],
          'ok',
        );
        expect(
          callResponse.returnDependencies['dep']?.urns,
          contains('urn:pulumi:dev::proj::pkg:index:Dep::dep'),
        );

        final constructRequest = await _newConstructRequest(monitor.endpoint);
        final constructResponse = await server.construct(
          call,
          constructRequest,
        );
        expect(provider.constructName, equals('comp'));
        expect(provider.constructType, equals('pkg:index:Component'));
        final constructInputData = await provider.constructInputs!['param']!
            .toOutput()
            .getData();
        expect(constructInputData.value, equals('x'));
        expect(constructInputData.resources, hasLength(1));
        expect(
          await constructInputData.resources.single.urn.getValue(),
          equals('urn:pulumi:dev::proj::pkg:index:InputDep::dep'),
        );

        final options = provider.constructOptions!;
        expect(options.protect, isTrue);
        expect(options.ignoreChanges, contains('ignored'));
        expect(options.replaceOnChanges, contains('force'));
        expect(options.retainOnDelete, isTrue);
        expect(options.deleteBeforeReplace, isTrue);
        expect(options.customTimeouts?.create, equals('60s'));
        expect(options.providers.single.package, equals('aws'));
        expect(options.parent, isA<DependencyResource>());
        expect(options.deletedWith, isA<DependencyResource>());

        expect(constructResponse.urn, contains('pkg:index:Component::comp'));
        expect(
          StructConverter.fromStruct(constructResponse.state)['message'],
          equals('constructed'),
        );
        expect(
          constructResponse.stateDependencies['dep']?.urns,
          contains('urn:pulumi:dev::proj::pkg:index:ConstructDep::dep'),
        );
      },
    );

    test('call maps InputPropertyError into grpc status details', () async {
      final monitor = await _startMonitorServer();
      addTearDown(() async {
        await monitor.server.shutdown();
      });

      final provider = _RecordingProvider()
        ..failCallWithInputPropertyError = true;
      final server = ProviderServer(provider, engineAddress: '127.0.0.1:7777');

      final request = await _newCallRequest(monitor.endpoint);
      try {
        await server.call(call, request);
        fail('expected call to fail');
      } on GrpcError catch (error) {
        expect(error.code, equals(StatusCode.invalidArgument));
        final propertyErrors = _extractPropertyErrors(error);
        expect(propertyErrors, hasLength(1));
        expect(propertyErrors.single.propertyPath, equals('resource.name'));
        expect(propertyErrors.single.reason, equals('invalid value'));
      }
    });

    test(
      'construct maps InputPropertiesError into grpc status details',
      () async {
        final monitor = await _startMonitorServer();
        addTearDown(() async {
          await monitor.server.shutdown();
        });

        final provider = _RecordingProvider()
          ..failConstructWithInputPropertiesError = true;
        final server = ProviderServer(
          provider,
          engineAddress: '127.0.0.1:7777',
        );

        final request = await _newConstructRequest(monitor.endpoint);
        try {
          await server.construct(call, request);
          fail('expected construct to fail');
        } on GrpcError catch (error) {
          expect(error.code, equals(StatusCode.invalidArgument));
          expect(error.message, equals('component validation failed'));
          final propertyErrors = _extractPropertyErrors(error);
          expect(propertyErrors, hasLength(2));
          expect(propertyErrors.first.propertyPath, equals('component.left'));
          expect(propertyErrors.last.propertyPath, equals('component.right'));
        }
      },
    );
  });
}
