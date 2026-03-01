// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_get_irule_get_irule_args_doc}
/// Arguments for getIrule.
/// {@endtemplate}
/// {@macro pulumi_ltm_get_irule_get_irule_args_doc}
class GetIruleArgs {
  /// Irule configured on bigip
  final pulumi.Input<String>? irule;
  /// Name of the irule
  final pulumi.Input<String> name;
  /// partition of the ltm irule
  final pulumi.Input<String> partition;

  /// Creates a new [GetIruleArgs].
  /// [irule] Irule configured on bigip
  /// [name] Name of the irule
  /// [partition] partition of the ltm irule
  GetIruleArgs({
    pulumi.Output<String>? irule,
    required pulumi.Output<String> name,
    required pulumi.Output<String> partition,
  }) :
      irule = pulumi.Input.asOptionalInput<String>(irule),
      name = pulumi.Input.asInput<String>(name),
      partition = pulumi.Input.asInput<String>(partition);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'irule': ?irule,
      'name': name,
      'partition': partition,
    };
  }

  factory GetIruleArgs.fromMap(Map<String, dynamic> map) {
    return GetIruleArgs(
      irule: map['irule'] == null ? null : pulumi.Output.create<String>(map['irule'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      partition: pulumi.Output.create<String>(map['partition'] as String),
    );
  }
}

