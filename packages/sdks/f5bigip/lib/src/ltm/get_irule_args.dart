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
    this.irule,
    required this.name,
    required this.partition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'irule': ?irule,
      'name': name,
      'partition': partition,
    };
  }

  factory GetIruleArgs.fromMap(Map<String, dynamic> map) {
    return GetIruleArgs(
      irule: map['irule'] == null ? null : (map['irule']! as String).input(),
      name: (map['name'] as String).input(),
      partition: (map['partition'] as String).input(),
    );
  }
}

