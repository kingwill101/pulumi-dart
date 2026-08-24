// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom.dart';

/// {@template pulumi_index_component_custom_ref_input_output_args_doc}
/// The set of arguments for ComponentCustomRefInputOutput.
/// {@endtemplate}
/// {@macro pulumi_index_component_custom_ref_input_output_args_doc}
class ComponentCustomRefInputOutputArgs {
  final pulumi.Input<Custom> inputRef;

  /// Creates a new [ComponentCustomRefInputOutputArgs].
  /// [inputRef] Required.
  const ComponentCustomRefInputOutputArgs({
    required this.inputRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputRef': inputRef,
    };
  }

  factory ComponentCustomRefInputOutputArgs.fromMap(Map<String, dynamic> map) {
    return ComponentCustomRefInputOutputArgs(
      inputRef: pulumi.Input.fromValue(map['inputRef'] as Custom),
    );
  }
}
