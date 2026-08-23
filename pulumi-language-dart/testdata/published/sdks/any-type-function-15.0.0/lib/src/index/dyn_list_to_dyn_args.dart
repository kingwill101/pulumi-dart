// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_dyn_list_to_dyn_args_doc}
/// Arguments for dynListToDyn.
/// {@endtemplate}
/// {@macro pulumi_index_dyn_list_to_dyn_args_doc}
class DynListToDynArgs {
  final pulumi.Input<List<dynamic>?>? inputs;

  /// Creates a new [DynListToDynArgs].
  /// [inputs] Optional.
  const DynListToDynArgs({
    this.inputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputs': ?inputs,
    };
  }

  factory DynListToDynArgs.fromMap(Map<String, dynamic> map) {
    return DynListToDynArgs(
      inputs: (() { final guardedValue = map['inputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
    );
  }
}
