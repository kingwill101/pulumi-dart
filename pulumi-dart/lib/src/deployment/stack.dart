import 'package:pulumi/src/pulumirpc/google/protobuf/struct.pb.dart';

import '../output.dart';

abstract class Stack {
  final Map<String, Output<dynamic>> _outputs = {};
  static const String rootPulumiStackTypeName = 'pulumi:pulumi:Stack';

  Stack();

  Map<String, Output<dynamic>> get outputs => Map.unmodifiable(_outputs);

  void setOutput(String name, Output<dynamic> value) {
    _outputs[name] = value;
  }

  void registerOutputs(Map<String, Output<dynamic>> outputs) {
    _outputs.addAll(outputs);
  }

  Future<Value> serializeOutputValue(OutputData outputData) async {
    var value = Value();
    if (!outputData.isKnown) {
      value.nullValue = NullValue.NULL_VALUE;
    } else if (outputData.isSecret) {
      // TODO: Implement proper secret handling
      value.stringValue = outputData.value.toString();
    } else {
      // TODO: Implement proper serialization for different types
      value.stringValue = outputData.value.toString();
    }
    return value;
  }
}
