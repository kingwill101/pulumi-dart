// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_container_args_doc}
/// The set of arguments for Container.
/// {@endtemplate}
/// {@macro pulumi_index_container_args_doc}
class ContainerArgs {
  final pulumi.Input<List<String>> inputs;

  /// Creates a new [ContainerArgs].
  /// [inputs] Required.
  const ContainerArgs({
    required this.inputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputs': inputs,
    };
  }

  factory ContainerArgs.fromMap(Map<String, dynamic> map) {
    return ContainerArgs(
      inputs: pulumi.Input.fromValue((map['inputs'] as List).cast<String>()),
    );
  }
}
