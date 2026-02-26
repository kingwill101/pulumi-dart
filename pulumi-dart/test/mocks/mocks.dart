import 'dart:async';
import 'package:pulumi/pulumi.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([
  MockSpec<Deployment>(),
  MockSpec<DeploymentImpl>(),
  MockSpec<Resource>(),
  MockSpec<Stack>(),
  MockSpec<CustomResource>(),
  MockSpec<ComponentResource>(),
])
abstract class IMocks {
  Future<(String?, Map<String, dynamic>)> newResource(MockResourceArgs args);
  Future<Map<String, dynamic>> call(MockCallArgs args);
  Future<void> registerResourceOutputs(
    MockRegisterResourceOutputsRequest args,
  ) async {}
}

class MockResourceArgs {
  final String? type;
  final String? name;
  final Map<String, dynamic> inputs;
  final String? provider;
  final String? id;

  MockResourceArgs({
    this.type,
    this.name,
    required this.inputs,
    this.provider,
    this.id,
  });
}

class MockCallArgs {
  final String? token;
  final Map<String, dynamic> args;
  final String? provider;

  MockCallArgs({this.token, required this.args, this.provider});
}

class MockRegisterResourceOutputsRequest {
  final String urn;
  final Map<String, Output<dynamic>> outputs;

  MockRegisterResourceOutputsRequest({
    required this.urn,
    required this.outputs,
  });
}
