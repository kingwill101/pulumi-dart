// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_stack_script_get_stack_script_args_doc}
/// Arguments for getStackScript.
/// {@endtemplate}
/// {@macro pulumi_index_get_stack_script_get_stack_script_args_doc}
class GetStackScriptArgs {
  /// The unique numeric ID of the StackScript to query.
  final pulumi.Input<String> id;

  /// Creates a new [GetStackScriptArgs].
  /// [id] The unique numeric ID of the StackScript to query.
  GetStackScriptArgs({
    required pulumi.Output<String> id,
  }) :
      id = pulumi.Input.asInput<String>(id);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetStackScriptArgs.fromMap(Map<String, dynamic> map) {
    return GetStackScriptArgs(
      id: pulumi.Output.create<String>(map['id'] as String),
    );
  }
}

