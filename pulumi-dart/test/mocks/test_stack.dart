import 'package:pulumi/pulumi.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';

class TestStack extends Stack {
  TestStack(void Function() createResources) {
    outputs = {};
    createResources();
  }

  TestStack.fromFuture(Future<void> Function() createResources) {
    outputs = {};
    createResources();
  }

  TestStack.withOutputs(Map<String, dynamic> Function() createResources) {
    outputs = createResources();
  }

  TestStack.withFutureOutputs(
    Future<Map<String, dynamic>> Function() createResources,
  ) {
    outputs = {};
    createResources().then((value) => outputs.addAll(value));
  }

  @override
  Future<Value> serializeOutputValue(OutputData outputData) {
    // TODO: implement serializeOutputValue
    throw UnimplementedError();
  }
}
