// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_component_custom_ref_output_args_doc}
/// The set of arguments for ComponentCustomRefOutput.
/// {@endtemplate}
/// {@macro pulumi_index_component_custom_ref_output_args_doc}
class ComponentCustomRefOutputArgs {
  final pulumi.Input<String> value;

  /// Creates a new [ComponentCustomRefOutputArgs].
  /// [value] Required.
  const ComponentCustomRefOutputArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory ComponentCustomRefOutputArgs.fromMap(Map<String, dynamic> map) {
    return ComponentCustomRefOutputArgs(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
