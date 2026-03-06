// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_i_rule_irule_args_doc}
/// The set of arguments for IRule.
/// {@endtemplate}
/// {@macro pulumi_ltm_i_rule_irule_args_doc}
class IRuleArgs {
  /// Body of the iRule
  final pulumi.Input<String> irule;
  /// Name of the iRule
  final pulumi.Input<String> name;

  /// Creates a new [IRuleArgs].
  /// [irule] Body of the iRule
  /// [name] Name of the iRule
  const IRuleArgs({
    required this.irule,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'irule': irule,
      'name': name,
    };
  }

  factory IRuleArgs.fromMap(Map<String, dynamic> map) {
    return IRuleArgs(
      irule: pulumi.Input.fromValue(map['irule'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

