import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/deployment/models.dart' as deployment_models;
import 'package:pulumi/src/engine_logger.dart';
import 'package:pulumi/src/input.dart';
import 'package:pulumi/src/invoke.dart';
import 'package:pulumi/src/output.dart';
import 'package:pulumi/src/resource/resource.dart';
import 'package:pulumi/src/resource/resource_options.dart';
import 'package:pulumi/src/resource/resource_transformation.dart';
import 'package:test/test.dart';

class _RecordingDeployment extends Deployment {
  int resourceTransformRegistrations = 0;
  int invokeTransformRegistrations = 0;
  ResourceTransform? lastResourceTransform;
  InvokeTransform? lastInvokeTransform;

  @override
  String get organizationName => 'org';

  @override
  String get projectName => 'project';

  @override
  String get stackName => 'stack';

  @override
  bool get isDryRun => false;

  @override
  EngineLogger get logger =>
      throw StateError('logger is not used in this parity test');

  @override
  Stack get stack => throw StateError('stack is not used in this parity test');

  @override
  void setStack(Stack stack) {}

  @override
  String? getConfig(String key) => null;

  @override
  bool isConfigSecret(String key) => false;

  @override
  Future<void> readOrRegisterResource({
    required Resource resource,
    required bool remote,
    required Resource Function(String) newDependency,
    required Inputs args,
    required ResourceOptions opts,
    deployment_models.RegisterPackageRequest? registerPackageRequest,
  }) async {}

  @override
  void registerResourceOperation(Future<void> operation) {}

  @override
  Future<void> registerResourceOutputs(
    Resource resource,
    Output<Map<String, dynamic>> outputs,
  ) async {}

  @override
  Future<void> registerOutputs() async {}

  @override
  Input<String> collapseAliasToUrn(
    alias,
    String name,
    String type,
    Resource? parent,
  ) {
    return Input.fromValue('urn:pulumi:stack::project::$type::$name');
  }

  @override
  Future<void> registerResourceTransform(ResourceTransform transform) async {
    resourceTransformRegistrations++;
    lastResourceTransform = transform;
  }

  @override
  Future<void> registerInvokeTransform(InvokeTransform transform) async {
    invokeTransformRegistrations++;
    lastInvokeTransform = transform;
  }

  @override
  Future<T> invoke<T>(
    String token,
    Map<String, dynamic> args, {
    deployment_models.InvokeOptions? options,
    deployment_models.RegisterPackageRequest? registerPackageRequest,
  }) async {
    throw StateError('invoke is not used in this parity test');
  }

  @override
  Future<T> invokeSingle<T>(
    String token,
    Map<String, dynamic> args, {
    deployment_models.InvokeOptions? options,
    deployment_models.RegisterPackageRequest? registerPackageRequest,
  }) async {
    throw StateError('invokeSingle is not used in this parity test');
  }
}

void main() {
  group('stack helper parity', () {
    late _RecordingDeployment deployment;

    setUp(() {
      deployment = _RecordingDeployment();
      DeploymentImpl.setTestInstance(deployment);
    });

    tearDown(DeploymentImpl.clearInstance);

    test('StackException factory and toString keep expected wording', () {
      final direct = StackException('manual failure');
      expect(direct.toString(), 'StackException: manual failure');

      final typed = StackException.outputsHaveIncorrectType(['foo', 'bar']);
      expect(typed.message, "Output(s) 'foo, bar' must be of type Output<T>.");
      expect(
        typed.toString(),
        "StackException: Output(s) 'foo, bar' must be of type Output<T>.",
      );
    });

    test('registerResourceTransform delegates to current deployment', () async {
      final transform =
          (
            ResourceTransformArgs args, [
            CancellationToken? cancellationToken,
          ]) async => null;

      await registerResourceTransform(transform);

      expect(deployment.resourceTransformRegistrations, 1);
      expect(identical(deployment.lastResourceTransform, transform), isTrue);
    });

    test(
      'registerStackTransform delegates to registerResourceTransform',
      () async {
        final transform =
            (
              ResourceTransformArgs args, [
              CancellationToken? cancellationToken,
            ]) async => null;

        // ignore: deprecated_member_use
        await registerStackTransform(transform);

        expect(deployment.resourceTransformRegistrations, 1);
        expect(identical(deployment.lastResourceTransform, transform), isTrue);
      },
    );

    test('registerInvokeTransform delegates to current deployment', () async {
      final transform = (InvokeTransformArgs args) async => null;

      await registerInvokeTransform(transform);

      expect(deployment.invokeTransformRegistrations, 1);
      expect(identical(deployment.lastInvokeTransform, transform), isTrue);
    });
  });
}
