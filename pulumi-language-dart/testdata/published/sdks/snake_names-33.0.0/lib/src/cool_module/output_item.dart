// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OutputItem {
  final pulumi.Input<String> nestedOutput;

  /// Creates a new [OutputItem].
  /// [nestedOutput] Required.
  const OutputItem({
    required this.nestedOutput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nested_output': nestedOutput,
    };
  }

  factory OutputItem.fromMap(Map<String, dynamic> map) {
    return OutputItem(
      nestedOutput: pulumi.Input.fromValue(map['nested_output'] as String),
    );
  }
}
