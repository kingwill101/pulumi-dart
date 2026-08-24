// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Data {
  final pulumi.Input<String> output;

  /// Creates a new [Data].
  /// [output] Required.
  const Data({
    required this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'output': output,
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      output: pulumi.Input.fromValue(map['output'] as String),
    );
  }
}
