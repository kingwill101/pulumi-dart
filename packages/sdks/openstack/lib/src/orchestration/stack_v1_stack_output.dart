// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StackV1StackOutput {
  /// The description of the stack resource.
  final pulumi.Input<String>? description;
  final pulumi.Input<String> outputKey;
  final pulumi.Input<String> outputValue;

  /// Creates a new [StackV1StackOutput].
  /// [description] The description of the stack resource.
  /// [outputKey] Required.
  /// [outputValue] Required.
  StackV1StackOutput({
    this.description,
    required this.outputKey,
    required this.outputValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'outputKey': outputKey,
      'outputValue': outputValue,
    };
  }

  factory StackV1StackOutput.fromMap(Map<String, dynamic> map) {
    return StackV1StackOutput(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      outputKey: (map['outputKey'] as String).input(),
      outputValue: (map['outputValue'] as String).input(),
    );
  }
}

