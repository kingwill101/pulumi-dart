// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_security_operator_args_doc}
/// The set of arguments for SecurityOperator.
/// {@endtemplate}
/// {@macro pulumi_security_security_operator_args_doc}
class SecurityOperatorArgs {
  /// Name of the pricing configuration.
  final pulumi.Input<String> pricingName;
  /// Name of the security operator.
  final pulumi.Input<String?>? securityOperatorName;

  /// Creates a new [SecurityOperatorArgs].
  /// [pricingName] Name of the pricing configuration.
  /// [securityOperatorName] Name of the security operator.
  const SecurityOperatorArgs({
    required this.pricingName,
    this.securityOperatorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pricingName': pricingName,
      'securityOperatorName': ?securityOperatorName,
    };
  }

  factory SecurityOperatorArgs.fromMap(Map<String, dynamic> map) {
    return SecurityOperatorArgs(
      pricingName: pulumi.Input.fromValue(map['pricingName'] as String),
      securityOperatorName: (() { final guardedValue = map['securityOperatorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
