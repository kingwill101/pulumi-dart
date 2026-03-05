// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_security_operator_args_doc}
/// The set of arguments for SecurityOperator.
/// {@endtemplate}
/// {@macro pulumi_security_security_operator_args_doc}
class SecurityOperatorArgs {
  /// name of the pricing configuration
  final pulumi.Input<String> pricingName;
  /// name of the securityOperator
  final pulumi.Input<String>? securityOperatorName;

  /// Creates a new [SecurityOperatorArgs].
  /// [pricingName] name of the pricing configuration
  /// [securityOperatorName] name of the securityOperator
  SecurityOperatorArgs({
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

