import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/deployment/models.dart' as deployment_models;
import 'package:pulumi/src/monitor.dart' as monitorpkg;
import 'package:pulumi/src/pulumirpc/pulumi/provider.pb.dart';
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:pulumi/src/struct_converter.dart';
import 'package:test/test.dart';

import '../mocks/mock_engine.dart';
import '../test_utils/monitor_test_utils.dart';
import '../test_utils/resource_test_utils.dart';

class _InvokeProviderMonitor extends BaseMonitor {
  ResourceInvokeRequest? invokeRequest;

  @override
  Future<monitorpkg.SupportsFeatureResponse> supportsFeature(
    monitorpkg.SupportsFeatureRequest request,
  ) {
    return Future.value(monitorpkg.SupportsFeatureResponse(true));
  }

  @override
  Future<InvokeResponse> invoke(ResourceInvokeRequest request) async {
    invokeRequest = request;
    return InvokeResponse(
      return_1: await StructConverter.toStruct({'result': 'ok'}),
    );
  }
}

void main() {
  group('first_class_provider_invoke parity', () {
    late _InvokeProviderMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = _InvokeProviderMonitor();
      deployment = DeploymentImpl.createForTesting(
        organizationName: 'org',
        projectName: 'project',
        stackName: 'stack',
        isDryRun: false,
        monitor: monitor,
        engine: MockEngine(),
      );
      DeploymentImpl.setTestInstance(deployment);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test('invoke forwards provider reference in invoke options', () async {
      final provider = providerResource('aws', 'default');

      final result = await deployment.invoke<Map<String, dynamic>>(
        'aws:index/getThing:getThing',
        {},
        options: deployment_models.InvokeOptions(provider: provider),
      );

      expect(result, equals({'result': 'ok'}));
      final request = monitor.invokeRequest;
      expect(request, isNotNull);
      final providerRef = await ProviderResource.register(provider);
      expect(request!.provider, equals(providerRef));
    });
  });
}
