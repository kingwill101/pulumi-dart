// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxToolFunctionSpec {
  /// Optional. The JSON schema is encapsulated in a [google.protobuf.Struct](https://protobuf.dev/reference/protobuf/google.protobuf/#struct) to describe the input of the function.
  /// This input is a JSON object that contains the function's parameters as properties of the object
  final pulumi.Input<String>? inputSchema;
  /// Optional. The JSON schema is encapsulated in a [google.protobuf.Struct](https://protobuf.dev/reference/protobuf/google.protobuf/#struct) to describe the output of the function.
  /// This output is a JSON object that contains the function's parameters as properties of the object
  final pulumi.Input<String>? outputSchema;

  /// Creates a new [CxToolFunctionSpec].
  /// [inputSchema] Optional. The JSON schema is encapsulated in a [google.protobuf.Struct](https://protobuf.dev/reference/protobuf/google.protobuf/#struct) to describe the input of the function.
  /// [outputSchema] Optional. The JSON schema is encapsulated in a [google.protobuf.Struct](https://protobuf.dev/reference/protobuf/google.protobuf/#struct) to describe the output of the function.
  const CxToolFunctionSpec({
    this.inputSchema,
    this.outputSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputSchema': ?inputSchema,
      'outputSchema': ?outputSchema,
    };
  }

  factory CxToolFunctionSpec.fromMap(Map<String, dynamic> map) {
    return CxToolFunctionSpec(
      inputSchema: (() { final guardedValue = map['inputSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputSchema: (() { final guardedValue = map['outputSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

